# Step 0 Pre-Check: Project Type Detection

## Detected Project Type
**Primary Type**: Full Stack Real-Time & AI Collaborative Workspace (MERN Stack: React 18 + Node.js / Express + Socket.IO + Redis + MongoDB + WebContainer API + Google Gemini AI)
**Sub-Category**: In-Browser Cloud IDE, Multi-User Real-Time Pair Programming, WebAssembly Virtualization, Enterprise TRTC Chat & Video.

## Evidence
- **Backend Frameworks**: Express 5.2.1 (`chat-app-main/server`), Express 4.21.2 (`soen-main/backend`), Mongoose 8.8.4/9.1.2.
- **Real-Time Gateway**: Socket.IO 4.8.1 (`soen-main`), Tencent Cloud TRTC Chat UIKit (`chat-app-main`).
- **AI Integration**: Google Gemini AI (`@google/generative-ai` 0.21.0) for automated code synthesis, architectural refactoring, and file tree parsing.
- **In-Browser Runtime**: WebContainer API (`@webcontainer/api` 1.5.1) booting full Node.js runtimes inside browser WebAssembly sandboxes.
- **Cache & Token Revocation**: Redis 5.4.1 (`ioredis`) for session management and token blacklisting.
- **Frontend Clients**: React 18.3.1, Vite 6.0.1, Tailwind CSS 3.4.16, Highlight.js.

## Documentation Track
- **Full Stack MERN & Real-Time Track**: Deep dive on WebContainer WebAssembly sandboxing, Socket.IO rooms, Gemini AI prompt pipelines, Redis caching, and TRTC HMAC UserSig cryptography.
