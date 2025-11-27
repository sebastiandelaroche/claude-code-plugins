---
description: Create a Product Requirement Prompt (PRP) for a new feature
argument-hint: [feature description]
---

# Role: Senior Product Architect

## Context

The user wants to implement:

**"$ARGUMENTS"**

## Your Task

Create a comprehensive PRP (Product Requirement Prompt) that provides all context needed for successful implementation. Do NOT write implementation code.

## Process

### 1. Understand the Request

- Clarify ambiguous requirements with the user
- Identify the scope and boundaries

### 2. Check for Existing Research

Scan `PRPs/research/` for potentially relevant research files:
- List any files that might be relevant to this feature
- Ask the user which (if any) should be referenced in the PRP
- Research references are OPTIONAL - user decides

### 3. Analyze the Codebase

Scan the project to understand:

- Directory structure and architecture patterns
- Existing similar implementations to follow
- Files that will need modification
- Conventions (naming, structure, style)

### 4. Create the PRP

Generate `PRPs/{feature-slug}.md` using the template structure.

**Set Status to:** `Draft`

**Required sections:**

```markdown
# PRP: [Feature Name]

| Field | Value |
|-------|-------|
| **Status** | Draft *(Draft / Approved / In Progress / Implemented)* |
| **Created** | [Date] |
| **Author** | [Name] |

## Goal

[One clear sentence describing the end state]

## Background

[Why this feature is needed, business context]

## Requirements

### Must Have

- [ ] [Requirement 1]
- [ ] [Requirement 2]

### Nice to Have

- [ ] [Optional requirement]

### Out of Scope

- [What this PRP does NOT cover]

## Technical Context

### Relevant Files

| File           | Purpose     | Action                  |
| -------------- | ----------- | ----------------------- |
| `path/to/file` | Description | Create/Modify/Reference |

### Existing Patterns to Follow

- Pattern: [Description]
  - Example: `path/to/example`

### Dependencies

- [Library/service and version if relevant]

### Related Research

<!-- OPTIONAL: List research files this PRP uses -->
<!-- If listed, /prp-verify will check they exist -->
- `PRPs/research/relevant-topic.md`

## Implementation Blueprint

### Data/Schema Changes

[If applicable - models, types, interfaces]

### Implementation Steps

1. [ ] Step 1 - Description
2. [ ] Step 2 - Description
3. [ ] Step 3 - Description

### Pseudocode

[Key logic in pseudocode, highlighting critical patterns]

## Validation

### Automated Checks

| Check | Command                     | Expected  |
| ----- | --------------------------- | --------- |
| Lint  | `[your lint command]`       | No errors |
| Types | `[your type-check command]` | No errors |
| Tests | `[your test command]`       | All pass  |

### Manual Verification

- [ ] [How to manually test this works]

## Gotchas & Warnings

- [Known pitfall to avoid]
- [Edge case to handle]

## Open Questions

*Resolve these before implementation begins*

- [ ] [Any unresolved decisions - ASK USER]

## Completion Checklist

<!-- All must be checked for PRP to be considered DONE -->
- [ ] All Must Have requirements met
- [ ] All Implementation Steps complete
- [ ] All Automated Checks pass
- [ ] All Manual Verification complete
- [ ] Status = Implemented

## Confidence Score

**[X/10]** - [Brief justification for the score]

## Implementation Log

<!-- Auto-updated during /prp-implement -->
| Timestamp | Event |
|-----------|-------|
```

### 5. Quality Check

Before presenting, verify:

- [ ] Goal is specific and measurable
- [ ] All modified files are identified
- [ ] Implementation steps are ordered correctly
- [ ] Validation commands are executable
- [ ] No assumptions made without flagging
- [ ] Research files (if any) are correctly referenced

## Output

1. Create the PRP file in `PRPs/`
2. Present a summary to the user
3. Display the ACTION REQUIRED section below

## Guidelines

- Reference existing code patterns, don't reinvent
- Keep implementation steps atomic and ordered
- Flag any decisions that need user input as "Open Questions"
- Research references are OPTIONAL - only include if user confirms
- Score your confidence (1-10) that this PRP enables one-pass implementation

---

## ACTION REQUIRED

PRP has been created at `PRPs/{feature-slug}.md` with Status: **Draft**

**Before implementation, you must:**
- [ ] Review the PRP document
- [ ] Answer any Open Questions listed
- [ ] Verify the implementation steps make sense
- [ ] Run `/prp-verify {feature-slug}.md` to validate the PRP
- [ ] Approve for implementation: `/prp-implement {feature-slug}.md`
