# @file: ga.py
import random, math
from typing import List, Dict

# ==== GLOBALS ====
WALKING_SPEED_MIN_PER_KM = 10     # 10 minutes per km
WORK_BLOCK_MIN = 8 * 60           # 480 minutes per active block
DAY_MIN = 24 * 60                 # 1440 minutes in a day

# ==== Helpers ====
def haversine(lat1, lon1, lat2, lon2):
    """Distance in km between two coordinates."""
    R = 6371
    dlat = math.radians(lat2 - lat1)
    dlon = math.radians(lon2 - lon1)
    a = (
        math.sin(dlat/2)**2
        + math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) * math.sin(dlon/2)**2
    )
    return R * (2 * math.atan2(math.sqrt(a), math.sqrt(1-a)))

def travel_time_minutes(p1, p2):
    km = haversine(p1["lat"], p1["lon"], p2["lat"], p2["lon"])
    return km * WALKING_SPEED_MIN_PER_KM

def fitness(path: List[Dict]) -> float:
    score = sum(p["nice_score"] for p in path)
    travel_penalty = sum(travel_time_minutes(path[i], path[i+1]) for i in range(len(path)-1))
    return score - 0.05 * travel_penalty

# ==== GA ====
def genetic_algorithm(pois: List[Dict], days: int, generations=200, pop_size=30):
    max_pois = min(len(pois), days * 6)  # simple cap
    pois = random.sample(pois, max_pois)

    # init population
    population = [random.sample(pois, len(pois)) for _ in range(pop_size)]

    for _ in range(generations):
        scored = sorted(population, key=fitness, reverse=True)
        next_gen = scored[:5]  # elitism

        while len(next_gen) < pop_size:
            p1, p2 = random.sample(scored[:10], 2)
            cut = random.randint(1, len(pois)-2)
            child = p1[:cut] + [p for p in p2 if p not in p1[:cut]]

            if random.random() < 0.2:  # mutation
                i, j = random.sample(range(len(child)), 2)
                child[i], child[j] = child[j], child[i]

            next_gen.append(child)

        population = next_gen

    best = max(population, key=fitness)

    # === Build timeline with 8h active blocks, hard cap at days ===
    enriched = []
    cumulative_time = 0
    prev_poi = None
    max_allowed_time = days * WORK_BLOCK_MIN  # active minutes only
    active_today = 0

    for poi in best:
        travel = 0 if prev_poi is None else travel_time_minutes(prev_poi, poi)
        required = travel + poi["visit_time"]

        # if this POI would exceed the total allowed time (days × 480), stop
        if (cumulative_time + required) > max_allowed_time:
            break

        # if this POI would exceed today’s 480 min, jump to next day morning
        if active_today + required > WORK_BLOCK_MIN:
            # jump to next 24h slot
            cumulative_time = ((cumulative_time // DAY_MIN) + 1) * DAY_MIN
            active_today = 0
            travel = 0  # reset travel for first POI of new day

        # apply times
        cumulative_time += travel
        active_today += travel

        cumulative_time += poi["visit_time"]
        active_today += poi["visit_time"]

        segment = dict(poi)
        segment["travel_minutes"] = int(travel)
        segment["visit_minutes"] = poi["visit_time"]
        segment["cumulative_time"] = int(cumulative_time)

        enriched.append(segment)
        prev_poi = poi

    return enriched
