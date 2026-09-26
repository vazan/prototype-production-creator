---
name: production-auditor
description: Audite le prototype avant productionisation.
version: 2.0.0
author: ForgeKeeper Product Studio
platforms: [linux]
metadata:
  hermes:
    tags: [audit, risk, technical-debt]
    category: software-development
---

# Production Auditor
Avant modifications, inspecter:
architecture, manifests, scripts, TS config, lint, tests, API, DB, migrations, auth, env, secrets,
mocks, localStorage, hardcoded URLs, TODO/FIXME, error handling, logging, Docker, CI, deployment.

Créer PRODUCTION_PLAN.md:
- baseline
- risques CRITICAL/HIGH/MEDIUM/LOW
- mapping de PROTOTYPE_DEBT.md vers actions
- ordre de migration
- gates par étape
