# Project Chimera — Autonomous Influencer System

## Overview
Project Chimera is an autonomous influencer system composed of coordinated AI agents that identify trends, generate content ideas, and manage publishing with human oversight.  
This repository is structured according to the **GitHub Spec Kit framework** and designed for **spec-driven development (SDD)**, where executable specifications guide agent behavior.

---

## Project Structure

.
├── specs/ # Project specifications
│ ├── meta.md # High-level vision and constraints
│ ├── functional.md # User stories for agents
│ ├── technical.md # API contracts, database ERD

├── skills/ # Agent Skills definitions
│ ├── MCP_SERVERS.md
│ └── README.md
├── tests/ # Failing tests (TDD)
│ ├── test_agent_contracts.py
├── research/ # Architecture & domain research
│ ├── MCP.md
│ ├── Swarm_Architecture.md
│ └── openclaw_integration.md
├── rules/ # AI agent rules/context
│ └── agent_rules.md
├── Dockerfile # Containerized environment for tests
├── Makefile # Standardized commands: setup, test, spec-check
└── .github/
└── workflows/
└── main.yml # CI workflow to run tests on push


---

## Getting Started

1. **Install dependencies**  
```bash
make setup
Run tests (expected to fail)

make test
Check spec alignment (optional)

make spec-check
💡 Note: The failing tests are intentional to define “empty slots” for AI agents in a TDD approach.

Agent Rules & Context
Project Context: This is Project Chimera, an autonomous influencer system.

Prime Directive: NEVER generate code without checking specs/ first.

Traceability: Explain which specification governs any action.

Human-in-the-Loop: All final publishing actions require human approval.

Docker
The repository includes a minimal Dockerfile that:

Uses Python 3.11

Copies the repository into the container

Installs only pytest

Runs tests in /tests/

This ensures reproducibility across environments.

CI/CD
GitHub Actions workflow (.github/workflows/main.yml) runs make test on every push to main.

Demonstrates TDD and spec-driven development with automated logging and testing.

MCP Telemetry
Tenx MCP Sense connection was active during development.

All agent actions (test creation, spec exploration) were intended to be logged for traceability and governance.

Submission
This repository includes all required artifacts for Project Chimera:

specs/

skills/

tests/

rules/

Dockerfile & Makefile

.github/workflows/

It is ready for AI agents to enter and implement functionality with minimal human conflict.
