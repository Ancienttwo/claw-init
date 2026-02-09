# Knowledge Work Plugins Distribution

This reference defines how the Anthropic Knowledge Work plugins are distributed across the PIPO Agent Syndicate.

## Distribution Map

| Agent | Domain | Target Directory | Key Plugins / Skills |
| :--- | :--- | :--- | :--- |
| **Flash** | 00-System | `vault/00-System/knowledge-work/` | Productivity, Enterprise Search, Task Management |
| **Victor** | 10-Strategy | `vault/10-Strategy/research/knowledge-work/` | Sales, Product Management, Finance, Competitive Intel |
| **Sophia** | 20-Creative | `vault/20-Creative/knowledge-work/` | Marketing, Brand Voice, Content Creation |
| **Adam** | 30-Operations | `vault/30-Operations/knowledge-work/` | Customer Support, Knowledge Management |
| **Ted** | 40-Engineering | `vault/40-Engineering/knowledge-work/` | Data (SQL/Analysis), Legal (Compliance/NDA) |

## Audit Logic
The `claw-init` skill should verify:
1. Presence of these directories in the respective Agent vaults.
2. Presence of core `.md` instruction files within those directories.
3. Alignment of the Agent's `SOUL.md` with these knowledge domains.
