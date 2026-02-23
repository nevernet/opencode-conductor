---
name: conductor:implement
description: Execute the current track implementation plan
arguments:
  - name: track_id
    description: Optional track ID to implement (defaults to active track)
    required: false
---

Execute the implementation plan for the current or specified track.

**Usage:**
```
/conductor:implement
/conductor:implement feat-001
```

**How it works:**
1. Loads track context (spec, plan, product guidelines)
2. Finds the next incomplete task
3. Executes the task with proper context
4. Asks for verification before marking complete
5. Updates progress and continues to next task

**Task execution:**
- Reads relevant code and context files
- Implements according to spec and code styles
- Follows workflow requirements (TDD, etc.)
- Respects tech stack conventions

**Verification:**
After each task, you'll be asked to verify:
- Code works as expected
- Tests pass
- Follows project conventions

Reply "done" to continue to next task.

**Completion:**
When all tasks complete, track status is updated and you're prompted for next actions.
