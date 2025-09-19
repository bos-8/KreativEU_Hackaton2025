# @file: api.py

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from typing import List, Dict, Any
import sqlite3

from ga import genetic_algorithm

# ==== GLOBALS ====
DB_PATH = "./backend/wandreu.db"  # 👈 your sqlite database file name

# ==== FastAPI setup ====
app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:3000",
        "http://127.0.0.1:3000",
    ],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ==== Schemas ====
class ItineraryRequest(BaseModel):
    country: str
    days: int
    lang: str

# ==== DB Access ====

def get_pois(country: str, lang: str) -> List[Dict[str, Any]]:
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    cur = conn.cursor()

    # One query with LEFT JOIN
    cur.execute(
        """
        SELECT p.id,
               p.lat,
               p.lng,
               p.nice_score,
               COALESCE(p.visit_time, 60) AS visit_time,
               i.name,
               i.description
        FROM poi AS p
        LEFT JOIN poi_i18n AS i
               ON i.poi_id = p.id AND i.lang = ?
        WHERE p.country_code = ?
        """,
        (lang, country),
    )
    rows = cur.fetchall()

    results = []
    for row in rows:
        results.append({
            "id": row["id"],
            "name": row["name"] if row["name"] else f"POI {row['id']}",
            "desc": row["description"] or "",
            "lat": row["lat"],
            "lon": row["lng"],   # keep API consistent
            "nice_score": row["nice_score"],
            "visit_time": row["visit_time"],
        })

    conn.close()
    return results

# ==== Endpoints ====
@app.get("/")
async def root():
    return {"status": "ok", "message": "Backend is running 🎉"}

@app.post("/itinerary")
async def itinerary(req: ItineraryRequest):
    pois = get_pois(req.country, req.lang)
    if not pois:
        return {"error": f"No POIs found for {req.country}"}

    # Run GA
    best_path = genetic_algorithm(pois, req.days)

    return {
        "country": req.country,
        "lang": req.lang,
        "days": req.days,
        "best_path": best_path,
    }
