---
name: conductor:revert
description: Revert changes made during track implementation
arguments:
  - name: scope
    description: 'Scope of revert: track_id, phase number, or task description'
    required: false
---

Revert changes made during track implementation at various levels.

**Usage:**
```
/conductor:revert                    # Revert current active track
/conductor:revert feat-001           # Revert entire track
/conductor:revert feat-001 phase-2   # Revert specific phase
/conductor:revert "task description" # Revert specific task
```

**Revert levels:**
- **Track level**: Reverts all commits related to the track
- **Phase level**: Reverts tasks in a specific phase
- **Task level**: Reverts a specific task

**What it does:**
1. Analyzes git history for the specified scope
2. Reverts the logical unit of work
3. Updates plan.md to mark reverted tasks as incomplete
4. Updates metadata.json progress

**Warning:** This uses git revert/reset. Make sure you understand the scope before confirming.
