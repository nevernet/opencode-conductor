---
name: conductor:setup
description: Initialize Conductor project context and configuration
---

Initialize the Conductor Context-Driven Development workflow for this project.

This will guide you through:
1. Product context definition
2. Product guidelines setup
3. Tech stack configuration
4. Workflow definition
5. Code styles setup

**Usage:**
```
/conductor:setup
```

**What it creates:**
- `.conductor/product.md` - Product context
- `.conductor/product-guidelines.md` - Brand voice and guidelines
- `.conductor/tech-stack.md` - Technology stack
- `.conductor/workflow.md` - Development workflow
- `.conductor/code-styles.md` - Coding standards
- `.conductor/tracks.md` - Tracks index

**Next steps after setup:**
- `/conductor:newTrack "feature description"` - Create a new development track
