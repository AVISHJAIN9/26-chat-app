# Project Map: 32-chat-app

## Folder Structure
```
32-chat-app/
├── docs/                               # Comprehensive VitePress Documentation Suite
├── ChatApp-Clean-Project/              # Master Project Directory
│   ├── chat app/
│   │   ├── chat-app-main/              # Enterprise TRTC Messaging Application
│   │   │   ├── server/                 # Express 5 + Mongoose 9 + TRTC UserSig generator
│   │   │   │   ├── server.js
│   │   │   │   └── package.json
│   │   │   └── frontend/               # React 18 + Tencent Chat UIKit
│   │   │       ├── src/
│   │   │       └── package.json
│   │   └── soen-main/                  # AI Collaborative Development Workspace
│   │       ├── backend/                # Express + Socket.IO + Redis + Gemini AI
│   │       │   ├── server.js           # Server entry point & socket room manager
│   │       │   ├── controllers/        # User, project & AI generation controllers
│   │       │   ├── services/           # Gemini AI service & Redis blacklist service
│   │       │   └── package.json
│   │       └── frontend/               # React 18 + Vite + WebContainers
│   │           ├── src/
│   │           │   ├── routes/         # Home, Login, Register, Project Workstation
│   │           │   └── config/         # WebContainer API and Socket client config
│   │           ├── vite.config.js
│   │           └── package.json
│   ├── install-all.bat                 # Multi-project dependency installer
│   ├── start-soen.bat                  # One-click launcher for Soen AI IDE
│   └── start-chat.bat                  # One-click launcher for TRTC Chat App
```

## Tech Stack & Dependencies
- `express`: Fast, unopinionated Node.js web framework.
- `socket.io@^4.8.1`: Real-time bidirectional event-based communication.
- `@webcontainer/api@^1.5.1`: WebAssembly micro-operating system booting Node.js in-browser.
- `@google/generative-ai@^0.21.0`: Official Google Gemini AI SDK.
- `ioredis@^5.4.1`: High-performance Redis client for token blacklisting.
- `mongoose@^8.8.4`: Schema validation and database persistence for users and projects.
- `@tencentcloud/chat-uikit-react@^4.5.3`: Commercial-grade chat and video calling UI.
