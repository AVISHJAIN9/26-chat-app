# Architecture Decisions Log (ADR)

| Decision | Chosen Option | Alternative Considered | Deciding Factor |
|---|---|---|---|
| **Execution Engine** | WebContainer Wasm API | Server-Side Docker Sandboxes | Zero cloud server compute costs and instant startup latency. |
| **AI Model** | Google Gemini 1.5 Flash | OpenAI GPT-4 | Large context window and high-speed JSON code generation. |
| **Real-Time Layer** | Socket.IO | Raw WebSockets | Built-in room multiplexing and automatic reconnection handling. |
