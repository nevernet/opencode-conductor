---
name: conductor:newTrack
description: Create a new feature or bug fix track with spec and plan
arguments:
  - name: description
    description: Description of the feature or bug to implement
    required: true
---

Create a new development track for implementing a feature or fixing a bug.

**Usage:**
```
/conductor:newTrack "Add dark mode support"
/conductor:newTrack "Fix login timeout issue"
```

**What it creates:**
- `.conductor/tracks/{track_id}/spec.md` - Feature specification
- `.conductor/tracks/{track_id}/plan.md` - Implementation plan
- `.conductor/tracks/{track_id}/metadata.json` - Track metadata

**Workflow:**
1. Creates track with unique ID (e.g., feat-001, fix-002)
2. Generates spec.md with requirements and acceptance criteria
3. Generates plan.md with phased implementation tasks
4. Updates tracks.md index

**Next steps:**
- `/conductor:review-plan` - Review spec and plan before implementing
- `/conductor:implement` - Start implementation
- `/conductor:status` - Check project status
