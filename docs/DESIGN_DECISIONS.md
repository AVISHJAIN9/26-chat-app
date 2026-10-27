# Design Decisions: Soen AI Workspace & Real-time Chat

## Stack Rationale
- **Selection**: `Node.js (Express, Socket.io, MongoDB Atlas), Vanilla JS / CSS3`
- **Reasoning**: Balances developer velocity, component modularity, and smooth user interactions.

## Trade-offs
- **Client-Side vs Server-Side**: Architecture optimized for fast initial render and responsive client state transitions.
- **Data Persistence**: Clear separation between stateless frontend clients and secured backend services.
