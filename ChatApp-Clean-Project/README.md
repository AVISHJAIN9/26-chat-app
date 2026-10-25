# Multi-Project Chat & AI Collaboration Suite

This repository contains two production-grade real-time web applications cleaned, repaired, and organized for high-performance development:

1. **Soen (`chat app/soen-main`)**: An intelligent AI-assisted collaborative coding workspace built with React, Vite, Tailwind CSS, WebContainer API, Node.js, Express, Socket.io, Redis, MongoDB, and Google Gemini AI.
2. **Chat App (`chat app/chat-app-main`)**: A modern enterprise messaging application powered by Tencent Cloud TRTC Chat UIKit, Express, and MongoDB.

---

## Repository Structure

```
32-chat-app/
├── chat app/
│   ├── chat-app-main/            # Tencent TRTC Messaging App
│   │   ├── frontend/             # React 18 + Tailwind CSS + TRTC UIKit
│   │   │   ├── .env.example
│   │   │   └── package.json
│   │   └── server/               # Express + MongoDB + TRTC Sig Generation
│   │       ├── .env.example
│   │       └── server.js
│   └── soen-main/                # AI Collaborative Dev Workspace
│       ├── backend/              # Express + Socket.io + Redis + Gemini AI
│       │   ├── .env.example
│       │   └── server.js
│       └── frontend/             # React 18 + Vite + Tailwind + WebContainer
│           ├── .env.example
│           └── src/
├── install-all.bat               # One-click dependency installer
├── start-soen.bat                # One-click launcher for Soen
├── start-chat.bat                # One-click launcher for Chat App
├── .gitignore                    # Root clean gitignore
└── README.md
```

---

## Quick Start Guide

### 1. Prerequisites
- **Node.js**: v18+ or v20+
- **MongoDB**: Running locally on `mongodb://127.0.0.1:27017` or MongoDB Atlas URI
- **Redis**: Running locally on `127.0.0.1:6379` (for Soen token blacklist & session caching)
- **Google Gemini API Key**: Free key from [Google AI Studio](https://aistudio.google.com/) (for Soen AI coding features)

### 2. Install All Dependencies
Double-click `install-all.bat` or run:
```bash
# Chat App Server & Frontend
cd "chat app/chat-app-main/server" && npm install --legacy-peer-deps
cd "../frontend" && npm install --legacy-peer-deps

# Soen Backend & Frontend
cd "../../soen-main/backend" && npm install --legacy-peer-deps
cd "../frontend" && npm install --legacy-peer-deps
```

### 3. Environment Variables

#### Soen Backend (`chat app/soen-main/backend/.env`)
Copy `.env.example` to `.env`:
```env
PORT=3000
MONGODB_URI=mongodb://127.0.0.1:27017/soen
JWT_SECRET=your_jwt_secret_key_here
REDIS_HOST=127.0.0.1
REDIS_PORT=6379
REDIS_PASSWORD=
GOOGLE_AI_KEY=your_gemini_api_key_here
```

#### Soen Frontend (`chat app/soen-main/frontend/.env`)
Copy `.env.example` to `.env`:
```env
VITE_API_URL=http://localhost:3000
```

#### Chat App Server (`chat app/chat-app-main/server/.env`)
Copy `.env.example` to `.env`:
```env
PORT=8000
FRONTEND_URL=http://localhost:3000
MONGO_URI=mongodb://127.0.0.1:27017/chatapp
TRTC_APP_ID=your_tencent_app_id
TRTC_SECRET_KEY=your_tencent_secret_key
```

#### Chat App Frontend (`chat app/chat-app-main/frontend/.env`)
Copy `.env.example` to `.env`:
```env
REACT_APP_API_URL=http://localhost:8000/api
REACT_APP_TRTC_APP_ID=your_tencent_app_id
```

---

## Running the Applications

### Option A: Launch Soen (AI Workspace)
Double-click `start-soen.bat` or run:
```bash
# Terminal 1 - Backend
cd "chat app/soen-main/backend"
npm start

# Terminal 2 - Frontend
cd "chat app/soen-main/frontend"
npm run dev
```
Open **http://localhost:5173** in your browser.

### Option B: Launch Chat App
Double-click `start-chat.bat` or run:
```bash
# Terminal 1 - Server
cd "chat app/chat-app-main/server"
npm start

# Terminal 2 - Frontend
cd "chat app/chat-app-main/frontend"
npm start
```
Open **http://localhost:3000** in your browser.

---

## Cleanups & Improvements Made
1. **Removed OS Artifacts**: Removed all hidden `.DS_Store` files and temporary files.
2. **Fixed Corrupted Submodule**: Repaired corrupted git index caused by missing `chat app/chatify-master` submodule pointer.
3. **Fixed Bug in TRTC User Controller**: Replaced invalid `Math.round()` call with `Math.random()` to generate valid Tencent random integer query parameters.
4. **Enhanced API Reliability**: Added dynamic JWT authorization interceptor and fallback default URLs in `axios.js` and `socket.js`.
5. **Clean Bundling**: Configured Highlight.js local theme styling in Vite rather than broken relative CDN imports.
6. **Unified Launchers**: Provided single-click `.bat` scripts and complete `.env.example` templates.

---

## License & Attribution
- Original Repository Origin: `https://github.com/AVISHJAIN9/chat-app`
- Licensed under the **ISC License**.
