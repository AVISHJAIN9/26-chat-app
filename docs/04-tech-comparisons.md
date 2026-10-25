# Technology Comparisons & Architectural Decisions

## 1. Cloud Execution: WebContainers vs Docker Containers on AWS

| Comparison Factor | WebContainers (Used) | Cloud Docker (AWS ECS) |
|---|---|---|
| **Server Compute Cost** | \$0 (Runs in User Browser) | \$50-\$500+/month per active cluster |
| **Startup Latency** | $<1 second$ | $15-45$ seconds (Container provisioning) |
| **Scalability** | Infinite (Zero server bottleneck) | Limited by cloud server capacity |
| **Security Isolation** | Browser Sandbox (Same-Origin) | Linux cgroups / VM isolation |

- **Why WebContainers**: Eliminates server-side sandbox hosting costs and delivers instant startup times directly inside the user's browser. [CONFIRM WITH DEVELOPER]

---

## 2. Real-Time Transport: Socket.IO vs Raw WebSockets vs WebRTC

| Comparison Factor | Socket.IO (Used) | Raw WebSockets | WebRTC DataChannels |
|---|---|---|---|
| **Room Multiplexing** | Native `socket.join(room)` | Manual implementation | Complex peer signaling |
| **Reconnection & Fallback**| Automatic HTTP long-polling | Manual reconnection loops | Complex peer mesh |
| **Ecosystem & Libraries**| Massive Node/React ecosystem | Low-level protocol | Heavy peer-to-peer setup |

- **Why Socket.IO**: Built-in room abstractions and automatic reconnection guarantees smooth pair programming over unreliable network connections.
