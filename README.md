# Yuki「清醒梦」 — Autosplitter (In Development)

## Current Status
The development of the **autosplitter for *Yuki「清醒梦」*** continues to progress.  
The team is currently working on accurately detecting in-game events, as some **memory addresses** change or overlap with others, making it difficult to precisely identify each section or level.

---

## Development Team
The project is led by **GatoNautica**, with support from the game’s creator **VisualMemoryUnit (VMU)**, and the recent addition of programmer **Decrare**, who joined to strengthen the technical side of the autosplitter and improve its performance.

---

## Technical Overview
During testing, it was discovered that many addresses within the executable  
`yumenikki-Win64-Shipping.exe` may vary between sessions or share values across different game areas.  

This required rethinking how the autosplitter detects level transitions and important events for LiveSplit.

To address this, **VMU is implementing an internal improvement** that will store the player's progress within the *Game Instance*.  
Thanks to this, it will be possible to precisely identify where the player is — for example: *Intro*, *Sunset Corridor*, *Teacher Room*, *Heaven*, etc. — which will allow for the creation of a fully functional and stable autosplitter.

---

## Community & Collaboration
There is an **official Discord server** dedicated to the **speedrunning community of *Yuki「清醒梦」***, with **direct support from VMU**.  
There you’ll find development updates, documentation, testing builds, and technical assistance for anyone interested in contributing or preparing for the official release of the autosplitter.

**You are welcome to join the official server to participate, test future versions, or share ideas for the project.**  
[https://discord.gg/tRstn7DuzY](https://discord.gg/tRstn7DuzY)

---

**© 2025 — Collaborative project by the *Yuki「清醒梦」* speedrunning community**  
With the support of the game’s creator **VisualMemoryUnit (VMU)**.
