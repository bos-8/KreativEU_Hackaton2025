# @file: mainframe.py
from fastapi import FastAPI, Request, Response
from fastapi.middleware.cors import CORSMiddleware
import uvicorn

app = FastAPI()

# ---- CORS ----
# Don't use "*" with allow_credentials=True.
# Either list origins explicitly or use a regex for localhost dev.
app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:3000",
        "http://127.0.0.1:3000",
    ],
    # Or use a regex instead of the list above:
    # allow_origin_regex=r"^https?://(localhost|127\.0\.0\.1)(:\d+)?$",
    allow_credentials=True,
    allow_methods=["*"],   # includes OPTIONS
    allow_headers=["*"],
)

# Root endpoint
@app.get("/")
async def root():
    return {"message": "Backend is running 🎉"}

# Catch-all OPTIONS (for preflight requests)
@app.options("/{path:path}")
async def catch_all_options(path: str) -> Response:
    # 204 No Content is typical for preflight
    return Response(status_code=204)

# Catch-all POST (handles /itinerary and others)
@app.post("/{path:path}")
async def catch_all_post(path: str, request: Request):
    data = await request.json()
    return {
        "received_path": path,
        "received_data": data,
        "status": "ok"
    }

# Catch-all GET
@app.get("/{path:path}")
async def catch_all_get(path: str):
    return {"received_path": path, "status": "ok"}

if __name__ == "__main__":
    uvicorn.run("mainframe:app", host="0.0.0.0", port=8000, reload=False)
