# API Reference: Collaboration Suite

## 1. Authentication
- `POST /users/register`: Creates new developer profile.
- `POST /users/login`: Returns JWT token and sets auth cookie.
- `GET /users/logout`: Revokes token and appends to Redis blacklist.

## 2. AI Code Generation
- `POST /projects/ai-generate`: Generates multi-file project from prompt.
- **Request Body**:
```json
{
  "projectId": "651b2a3c4d5e6f7a8b9c0d1e",
  "prompt": "Create an Express REST API with CRUD routes for notes"
}
```
- **Response**:
```json
{
  "status": "success",
  "files": {
    "package.json": {"file": {"contents": "{\n  \"name\": \"notes-api\"...}"}},
    "index.js": {"file": {"contents": "const express = require('express')..."}}
  }
}
```

## 3. TRTC UserSig Generation
- `POST /api/user/generate-sig`: Generates Tencent TRTC HMAC token for video and chat rooms.
