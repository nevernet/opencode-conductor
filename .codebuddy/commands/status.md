---
name: conductor:status
description: Show Conductor project status and track progress
---

Display the current status of all Conductor tracks.

**Usage:**
```
/conductor:status
```

**Shows:**
- Active tracks with progress
- Completed tracks
- Pending tracks
- Overall project statistics

**Example output:**
```
Active Tracks:
| ID       | Name       | Phase | Progress |
|----------|------------|-------|----------|
| feat-001 | Dark Mode  | 2/3   | 4/6      |
| fix-002  | Login bug  | 1/2   | 1/3      |

Completed Tracks:
| ID       | Name         | Completed Date |
|----------|--------------|----------------|
| feat-000 | User profile | 2026-02-20     |

Total: 4 tracks (2 active, 2 completed)
```

**Use this to:**
- Check overall project progress
- Identify what's currently being worked on
- Find completed work ready for review
