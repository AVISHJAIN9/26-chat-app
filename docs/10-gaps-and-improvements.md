# Gaps & Technical Roadmap

## Known Gaps
1. **Operational Transformation (OT) / CRDTs**: Real-time editor synchronization currently uses event broadcasts rather than Yjs or Automerge CRDTs for resolving concurrent conflicting keystrokes.
2. **Python/Go Language Support**: WebContainers currently only support Node.js and WebAssembly runtimes; running Python or Go requires Pyodide or server-side containers.

## High-Priority Improvements
- Integrate Yjs CRDTs with Monaco Editor for conflict-free concurrent editing.
- Add Pyodide WebAssembly runtime for client-side Python execution.
