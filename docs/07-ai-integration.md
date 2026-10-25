# Google Gemini AI Integration

## Prompt Engineering & AST Synthesis
- **Model**: `gemini-1.5-flash` via `@google/generative-ai`.
- **System Prompt Guardrails**: Instructs the model to output valid, parseable JSON representations of multi-file projects with strict folder hierarchies.
- **Auto-Mount Pipeline**: The frontend JSON parser converts the AI response into a WebContainer directory tree and executes `npm install` automatically.
