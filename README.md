# KreativHack – WandrEU Prototype

This project is a prototype developed during the KreativHack hackathon.
It consists of a **frontend** (Next.js + TypeScript) and a **backend** (FastAPI + Python, SQLite database, Genetic Algorithm).
The system generates optimized cultural itineraries across Europe.

---

## Requirements
- **Frontend**: Node.js (>=18), npm or yarn
- **Backend**: Python 3.10+ (tested with Python 3.13)

---

## Frontend (Next.js)
Run the client app:

```bash
cd ./frontend
npm install
npm run dev
```

The app will be available at:
[http://localhost:3000](http://localhost:3000)

---

## Backend (FastAPI)

Install Python dependencies (you can use `pip` directly):

```bash
pip install fastapi unicorn
```

Then start the server from the **root directory**:

```bash
py ./backend/mainframe.py
```

The backend will run at:
[http://localhost:8000](http://localhost:8000)

Test it in the browser:

* Root endpoint: [http://localhost:8000/](http://localhost:8000/)
* API docs (Swagger): [http://localhost:8000/docs](http://localhost:8000/docs)

---

## Project Structure

```
/frontend   # Next.js client app
/backend    # FastAPI backend
   api.py   # API endpoints
   ga.py    # Genetic algorithm
   mainframe.py  # Backend entrypoint
   wandreu.db    # SQLite database
```

---

## Features

* AI-powered itinerary generator (Genetic Algorithm)
* SQLite-based POI storage with multi-language support
* Next.js frontend with modern UI
* FastAPI backend with CORS enabled

---

## Quick Start

1. Start the backend (`py ./backend/mainframe.py`)
2. Start the frontend (`npm run dev` inside `frontend/`)
3. Open [http://localhost:3000](http://localhost:3000) and try creating your itinerary