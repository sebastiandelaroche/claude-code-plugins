# PRP: [Feature Name]

| Field | Value |
|-------|-------|
| **Status** | Draft *(Draft / Approved / In Progress / Implemented)* |
| **Created** | [Date] |
| **Author** | [Name] |

## Goal

[One clear sentence describing what this feature achieves when complete]

## Background

[Why is this feature needed? What problem does it solve? Business context.]

## Requirements

### Must Have

- [ ] [Core requirement 1]
- [ ] [Core requirement 2]
- [ ] [Core requirement 3]

### Nice to Have

- [ ] [Optional enhancement 1]
- [ ] [Optional enhancement 2]

### Out of Scope

- [Explicitly what this PRP does NOT cover]

---

## Technical Context

### Relevant Files

| File                  | Purpose             | Action                      |
| --------------------- | ------------------- | --------------------------- |
| `path/to/file.ext`    | What this file does | Create / Modify / Reference |
| `path/to/another.ext` | What this file does | Create / Modify / Reference |

### Existing Patterns to Follow

**Pattern: [Name]**

- Location: `path/to/example`
- Description: [How this pattern works and why to follow it]

### Dependencies

- [Library/service name] - [version if relevant] - [what it's used for]

### Related Research

<!-- OPTIONAL: List research files this PRP uses -->
<!-- If listed, /prp-verify will check they exist -->
<!-- If empty or section omitted, that's fine -->

- `PRPs/research/[topic].md`

---

## Implementation Blueprint

### Data/Schema Changes

```
[Define any models, types, interfaces, or database schema changes]
[Use the appropriate syntax for your project's language]
```

### Implementation Steps

1. [ ] **[Step Title]**

   - Description: [What to do]
   - Files: `path/to/file`

2. [ ] **[Step Title]**

   - Description: [What to do]
   - Files: `path/to/file`

3. [ ] **[Step Title]**
   - Description: [What to do]
   - Files: `path/to/file`

### Pseudocode

```
[Key algorithm or logic flow]
[Highlight critical patterns, error handling, edge cases]
```

---

## Validation

### Automated Checks

| Check | Command                     | Expected  |
| ----- | --------------------------- | --------- |
| Lint  | `[your lint command]`       | No errors |
| Types | `[your type-check command]` | No errors |
| Tests | `[your test command]`       | All pass  |

### Manual Verification

- [ ] [Step to manually verify feature works]
- [ ] [Another verification step]
- [ ] [Edge case to test]

---

## Gotchas & Warnings

- **[Issue]**: [Description of pitfall and how to avoid it]
- **[Issue]**: [Description of pitfall and how to avoid it]

---

## Open Questions

*Resolve these before implementation begins*

- [ ] [Decision that needs user input]
- [ ] [Unclear requirement to clarify]

---

## Confidence Score

**[X/10]** - [Brief justification for the score]

_Score meaning: Likelihood this PRP enables successful one-pass implementation_

---

## Completion Checklist

<!-- All must be checked for PRP to be considered DONE -->

- [ ] All Must Have requirements met
- [ ] All Implementation Steps complete
- [ ] All Automated Checks pass
- [ ] All Manual Verification complete
- [ ] Status = Implemented

---

## Implementation Log

<!-- Auto-updated during /prp-implement -->

| Timestamp | Event |
| --------- | ----- |
