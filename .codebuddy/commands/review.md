---
name: conductor:review
description: Review completed track against spec and guidelines
arguments:
  - name: track_id
    description: Optional track ID to review (defaults to active/completed track)
    required: false
---

Review completed implementation against specifications and guidelines.

**Usage:**
```
/conductor:review
/conductor:review feat-001
```

**Review checklist:**

*Product Guidelines Compliance:*
- Follows brand voice
- Meets accessibility standards
- UI/UX matches guidelines

*Spec Compliance:*
- All requirements implemented
- Acceptance criteria met
- Edge cases handled

*Code Quality:*
- Follows tech-stack conventions
- Tests included
- No code smells

**Output:**
- Detailed compliance report
- Issues found with recommendations
- Overall approval status

**After review:**
- If approved: Ready to commit/merge
- If issues found: Address recommendations and re-run review
