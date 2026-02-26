---
name: conductor:archive
description: Archive completed Conductor tracks to keep the project organized
---

Archive completed tracks to keep the project organized and maintain a clean workspace.

**Usage:**
```
/conductor:archive
/conductor:archive feat-001
/conductor:archive all
```

**Parameters:**
- `[track_id]` - Optional. Specific track ID to archive (e.g., `feat-001`)
- `all` - Archive all completed tracks

**What it does:**
1. Validates track status is "completed"
2. Moves track from "Completed Tracks" to "Archived Tracks" in tracks.md
3. Updates metadata.json with status "archived" and archived_date
4. Maintains clean separation between active, completed, and archived work

**Example output:**
```
ARCHIVE COMPLETED
=================
Track(s) archived: feat-001, feat-002

Files updated:
  - .conductor/tracks.md
  - .conductor/tracks/feat-001/metadata.json
  - .conductor/tracks/feat-002/metadata.json

Active Tracks: 2
Completed Tracks: 0
Archived Tracks: 5
```

**Use this to:**
- Clean up completed tracks from the main view
- Maintain historical records of finished work
- Keep the project workspace organized

**Note:** Only tracks with status "completed" can be archived. Active or pending tracks must be completed first.
