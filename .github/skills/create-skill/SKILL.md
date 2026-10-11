---
name: create-skill
description: "Use when you need to turn a repeatable workflow, debugging method, or review checklist into a reusable SKILL.md for Copilot or another agent customization system. Covers extracting process steps, decision branches, completion checks, and packaging it in a discoverable, reusable format."
---

# Create Skill

## Purpose

Turn a proven multi-step workflow into a reusable skill that future agents or users can invoke to reproduce the same process consistently.

This skill is for packaging workflows that are already working in practice, not for creating generic advice. It should capture the real decision flow, the exact steps taken, and the quality bar that indicates success.

## Decision Flow

### 1. Check whether a workflow already exists

Look for a sequence of actions the user or agent has been following repeatedly.
Examples:
- debugging method
- implementation pattern
- review checklist
- project setup workflow
- validation and verification process

If the process has a clear order, examples, or branch points, it is a good candidate for a skill.

### 2. Extract the workflow

Document the workflow in a reusable form:
- step-by-step process
- decision points and branching logic
- completion checks or quality criteria
- expected output or artifact

Convert conversational behavior into explicit instructions, not vague intent.

### 3. Clarify if the workflow is incomplete

If the process is not clear enough, ask focused questions before writing the skill:
- What outcome should this skill produce?
- Is this for a workspace or for personal use?
- Is this a short checklist or a full multi-step workflow?
- What makes the task complete?

Do not write a skill too early if the path is still fuzzy.

### 4. Choose scope and location

Decide where the customization should live:
- Workspace-specific: use .github/
- Personal across projects: use the user prompt folder

For a skill, the standard pattern is:
- .github/skills/<skill-name>/SKILL.md
- or a user-scoped equivalent if this is personal

### 5. Draft the skill

The skill should include:
- clear purpose
- decision flow
- required actions
- success criteria
- suitable prompts to invoke it

Keep it practical and task-oriented.

## Quality bar

A good skill is effective when all of the following are true:

- The workflow is specific and repeatable.
- The steps are ordered and actionable.
- Decision points are explicit enough to guide branching.
- Completion checks are objective.
- The skill is discoverable by description and domain keywords.
- It is written for a real use case, not for abstract generalization.

## Write the final skill

Structure the final content as:

1. Frontmatter
   - name
   - description
   - optional arguments or notes if needed

2. Header and purpose
   - what the skill produces
   - when to use it

3. Workflow
   - step-by-step instructions
   - decision branches
   - validation steps

4. Completion checks
   - expected artifact
   - explicit success criteria
   - errors to catch before finishing

5. Example prompts
   - a few concrete prompts the skill can answer well

## Typical output

The final artifact is a reusable SKILL.md that can be invoked for the workflow it captures. It should help future agents follow the same process without needing the original conversation context.

## Example usage

- "Turn this debugging workflow into a reusable skill."
- "Package our review checklist into a SKILL.md for recurring code quality checks."
- "Create a skill for our project setup workflow with steps, checkpoints, and example prompts."
- "Generalize this multi-step implementation process into a reusable skill for future work."

## Related customizations

After a skill is created, consider these next steps:
- create a prompt for the single frequent task
- add workspace instructions for always-on defaults
- create a custom agent when the workflow needs isolated context or special tool limits
- add a hook if the workflow needs enforcement at lifecycle boundaries
