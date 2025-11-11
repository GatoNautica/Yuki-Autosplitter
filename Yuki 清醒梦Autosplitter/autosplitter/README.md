# Yuki「清醒梦」 — Autosplitter Script (WIP)

> **Note:**  
> This autosplitter script has gone through multiple revisions and is currently unstable.  
> It may cause false positives or fail to detect events properly.  
> The script will be updated once all memory addresses become stable and reliable.

---

## Overview
This autosplitter is being developed for **Yuki「清醒梦」**, a fan project supported by the game’s creator, **VisualMemoryUnit (VMU)**.  
Its goal is to allow *LiveSplit* to automatically start, split, and end runs based on in-game events.

Currently, the script relies on reading memory addresses directly from the executable  
`yumenikki-Win64-Shipping.exe`.  
However, many of these addresses are dynamic and may shift or overlap between sessions, which causes unstable detection.

---

## Planned Structure
The autosplitter will use **four main memory addresses** to control the full run:

| Function | Purpose | Game Section |
|-----------|----------|---------------|
| **Address #1** | Triggers the timer when selecting “New Game.” | Start of the run |
| **Address #2** | Marks the end of the first split when the elevator animation plays or when entering *SunsetCorridor*. | Split 1 — *Intro → SunsetCorridor* |
| **Address #3** | Marks the second split when entering *Library* from *Garden*. | Split 2 — *Garden → Library* |
| **Address #4** | Detects the final event when the credits appear, stopping the timer. | Final Split — *Credits / End* |

These will define the standard run structure for all categories related to the full-game speedrun.