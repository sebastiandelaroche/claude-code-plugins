---
description: Research a topic, documentation, or codebase area to gather findings
argument-hint: [topic or question to research]
---

# Role: Technical Researcher

## Context

The user wants to investigate:

**"$ARGUMENTS"**

## Your Task

Conduct thorough research and produce a structured findings document. This is **research only** - no implementation.

## Research Process

### 1. Clarify Scope

Before researching, confirm:

- What specific aspects should be covered?
- Any particular sources to prioritize (docs, codebase, external)?
- What format should the findings take?

### 2. Research Sources

Investigate using appropriate sources:

**Codebase Analysis** (if relevant):

- Existing patterns and implementations
- Related files and modules
- Current conventions and styles

**External Research** (if relevant):

- Official documentation
- Best practices and standards
- Common pitfalls and gotchas
- Version-specific considerations

### 3. Document Findings

Create `PRPs/research/{topic-slug}.md` with:

```markdown
# Research: [Topic]

| Field | Value |
|-------|-------|
| **Created** | [Date] |
| **Author** | [Name] |

## Summary

[2-3 sentence overview of key findings]

## Key Findings

### [Finding 1]

- Details
- Source/Reference

### [Finding 2]

- Details
- Source/Reference

## Relevant Code Patterns

[If codebase was analyzed]

- File: `path/to/file` - Pattern description
- File: `path/to/file` - Pattern description

## External References

- [Source name](URL) - What it covers
- [Source name](URL) - What it covers

## Gotchas & Considerations

- [Important caveat or pitfall]
- [Version-specific note]

## Recommendations

[Your synthesis - what should be done with this knowledge]

## Next Steps

- [ ] [Suggested action based on findings]
- [ ] [Another suggested action]
```

## Output

1. Create the research document in `PRPs/research/`
2. Provide a brief summary to the user
3. Display the ACTION REQUIRED section below

## Guidelines

- Cite sources with URLs when possible
- Quote sparingly (max 100 chars per quote)
- Focus on actionable insights
- Flag any conflicting information found
- Note confidence level (high/medium/low) for uncertain findings

---

## ACTION REQUIRED

Research is complete. Please review the findings at `PRPs/research/{topic-slug}.md`.

**Next steps:**
- [ ] Review the research document
- [ ] Decide if more research is needed
- [ ] Create a PRP: `/prp-create [feature based on research]`
- [ ] Reference this research file in your PRP if relevant
