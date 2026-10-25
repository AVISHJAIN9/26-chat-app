# Interview Preparation: 150+ Questions & Answers

## Core Architectural Questions

### Q1: Can you walk me through the architecture of Soen?
**Answer**:
Soen is an intelligent collaborative development workspace built with React 18, Express, Socket.IO, Redis, and MongoDB. It solves the problem of slow environment setup by running Node.js directly inside the user's browser using the WebContainer WebAssembly API. When a developer asks our integrated Google Gemini AI to build an application, Gemini generates a structured JSON file tree. The frontend mounts this tree into the WebContainer virtual filesystem, installs dependencies, and boots a live dev server in an iframe preview. Multi-user collaboration is handled via Socket.IO project rooms, while user sessions are secured using a Redis-backed JWT blacklist.

### Q2: What is the WebContainer API and how does it work?
**Answer**:
WebContainers are a WebAssembly-based micro-operating system created by StackBlitz that runs entirely within the browser tab. Using `SharedArrayBuffer` and WebAssembly, it executes Node.js binaries, package managers, and local HTTP servers without communicating with backend servers. This allows users to run and test full-stack JavaScript applications with zero server compute costs.

### Q3: How do you handle real-time code synchronization?
**Answer**:
When a user opens a project, their client joins a dedicated Socket.IO room indexed by `projectId`. File edits, cursor positions, and chat messages are emitted as real-time socket events and broadcast to all other sockets in that room, delivering a sub-20ms collaborative coding experience.

### Q4: How do you prevent unauthorized code execution on your backend?
**Answer**:
We completely avoid running user code on backend servers. All code execution, `npm install` commands, and server processes occur strictly inside the client's WebContainer browser sandbox. Even if a user attempts to run malicious shell scripts, it is isolated inside their local browser WebAssembly thread.

### Q5: How does your Redis JWT blacklist work?
**Answer**:
When a user logs out, their JWT token is sent to our logout endpoint and added to Redis with a Time-To-Live (TTL) matching the token's remaining validity duration. In our authentication middleware, every request checks Redis before verifying the JWT signature, ensuring immediate session revocation upon logout.
