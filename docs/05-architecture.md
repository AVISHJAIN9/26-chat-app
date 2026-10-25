# Architecture & System Design: Collaboration Suite

## System Topology

```mermaid
graph TD
    Client[React 18 Developer Workspace] -->|REST / HTTP| Express[Express Gateway]
    Client -->|WebSockets| SocketIO[Socket.IO Real-Time Cluster]
    Client -->|Local Wasm Process| WebContainer[In-Browser WebContainer Wasm]

    Express --> Gemini[Google Gemini 1.5 Flash AI API]
    Express --> Redis[(Redis Token Blacklist)]
    Express --> Mongo[(MongoDB Users & Projects)]

    SocketIO --> ProjectRooms[Project Room Broadcast Engine]
    ProjectRooms --> Client
```

## WebContainer Virtual Operating System
The WebContainer API executes a localized virtual file system directly within browser memory. Code modifications triggered by the developer or Gemini AI are mounted as virtual directory trees without writing unverified user code to backend servers.
