# Superpowers Skill Distribution

This reference defines how the 'Superpowers' (obra/superpowers) methodologies are distributed across the PIPO Agent Syndicate. These are mandatory SOPs for all knowledge and engineering work.

## Distribution Map

| Skill | Description | Primary Users |
| :--- | :--- | :--- |
| **brainstorming** | Intent exploration, requirement design, 2-3 option contrast. | All Agents (Mandatory before execution) |
| **writing-plans** | Breaking design into 2-5 min granular tasks. | All Agents (Mandatory before coding/complex tasks) |
| **test-driven-development** | Red-Green-Refactor cycle. No implementation without failing test. | Ted, Victor, Adam |
| **systematic-debugging** | Root cause analysis (Phase 1) before any fix attempts. | Ted, Adam, Flash |
| **using-superpowers** | Meta-guidance on the entire superpower workflow. | All Agents (System-level awareness) |

## Audit Logic
The `claw-init` skill should verify:
1. Presence of these skill directories in `vault/00-System/skills/`.
2. Integration of these skills into the system prompt or agent metadata.
3. Adherence to these protocols in the `memory/` logs.
