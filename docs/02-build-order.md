# Build Order: Reconstructing the Collaboration Suite

## Step-by-Step Implementation Sequence

```mermaid
flowchart TD
    Step1[1. Express & Socket.IO Gateway Setup] --> Step2[2. MongoDB User & Project Schemas]
    Step2 --> Step3[3. Redis Token Blacklist Service]
    Step3 --> Step4[4. Google Gemini AI Code Generator]
    Step4 --> Step5[5. React 18 & WebContainer Frontend]
    Step5 --> Step6[6. Socket.IO Room Event Synchronization]
    Step6 --> Step7[7. Tencent TRTC Video & Chat Portal]
```

1. **Gateway Server**: Configure Express and Socket.IO in `server.js` with CORS and body parsing.
2. **Database Models**: Create Mongoose schemas for users and project workspaces.
3. **Redis Security**: Implement token blacklist caching with TTLs in `redis.service.js`.
4. **AI Generation Pipeline**: Connect Google Gemini AI SDK with structured JSON prompts.
5. **WebContainer Integration**: Initialize `@webcontainer/api` in the React frontend.
6. **Real-Time Sync**: Wire Socket.IO room events for live editor updates.
7. **TRTC Messaging**: Integrate Tencent Cloud UIKit with HMAC UserSig generation.
