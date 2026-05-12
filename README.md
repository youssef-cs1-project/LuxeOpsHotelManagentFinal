# LuxeOps — AI-Powered Hotel Operations Platform
## With Groq LLM Chatbot (LuxeOpsChat)

## How to Compile (Windows MinGW g++)

### Step 1 — Install libcurl (one time only)
Download from: https://curl.se/windows/
Extract and copy:
- include/curl/ folder → into your MinGW include folder (e.g. C:\mingw64\include\)
- lib/libcurl.a        → into your MinGW lib folder     (e.g. C:\mingw64\lib\)
- bin/libcurl.dll      → into your project folder (same folder as LuxeOps.exe)

### Step 2 — Compile
```
g++ -std=c++17 -Wall -I src -o LuxeOps.exe src/*.cpp -lcurl -lws2_32 -lwldap32 -lcrypt32 -lssl -lcrypto
```

### Step 3 — Run
```
LuxeOps.exe
```

## Chatbot (Option 5 from main menu)
- Powered by Groq API + Llama 3.3 70B
- Has live access to all hotel data (rooms, guests, staff)
- Remembers conversation history within a session
- Type 'clear' to reset conversation
- Type 'back' to return to main menu

## Example chatbot questions:
- "How many rooms are dirty right now?"
- "Which guests are currently checked in?"
- "How many housekeepers do I need today?"
- "Is Ahmed Hassan still in his room?"
- "What's the current occupancy rate?"
- "Suggest how I can improve staff efficiency"
