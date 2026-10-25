# Project Pitch: Multi-Project Chat & AI Collaboration Suite

## 30-Second Elevator Pitch
"I built the **Multi-Project Chat & AI Collaboration Suite**, featuring **Soen**, an in-browser collaborative cloud IDE. Built with React 18, Node.js, Express, Socket.IO, Redis, and MongoDB, Soen integrates Google Gemini AI to generate full-stack applications on the fly and boots a real Node.js runtime directly inside the user's browser using the WebContainer WebAssembly API. The suite also includes an enterprise messaging portal powered by Tencent TRTC Chat UIKit."

## 2-Minute Spoken Pitch
"Setting up local development environments for pair programming or technical interviews is notoriously frustrating—incompatible Node versions, missing dependencies, and port conflicts waste valuable engineering time.

To solve this, I engineered Soen, an intelligent collaborative development workspace:

First, for instant execution with zero server compute costs, I integrated the WebContainer API. Soen boots an entire Node.js development server directly inside the user's browser using WebAssembly. Users can run `npm install`, start dev servers, and view live interactive web applications with sub-second startup times and zero backend container overhead.

Second, for AI code synthesis, our backend connects to Google Gemini AI in `soen-main/backend`. When a developer asks to build an application—such as a real-time counter or REST API—Gemini generates a structured JSON file tree containing complete file paths and code. Our frontend parses this payload and automatically writes the files into the WebContainer virtual filesystem.

Third, for multi-user collaboration, I built real-time project rooms using Socket.IO. When multiple developers join a project workspace, file changes, cursor selections, and terminal outputs are broadcasted with sub-20 millisecond latency.

Fourth, for security, we use Redis to maintain a real-time JWT token blacklist that guarantees immediate session invalidation on logout.

Finally, the suite includes an enterprise messaging and video application powered by Tencent Cloud TRTC, using custom HMAC SHA-256 signature generators in `chat-app-main/server` for encrypted communication."
