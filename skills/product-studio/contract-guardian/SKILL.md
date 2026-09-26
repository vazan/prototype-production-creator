---
name: contract-guardian
description: Protège la cohérence des types, DTO, schemas, API et formulaires.
version: 2.0.0
author: ForgeKeeper Product Studio
platforms: [linux]
metadata:
  hermes:
    tags: [contracts, api, typescript]
    category: software-development
---

# Contract Guardian
Protéger la cohérence:
Database ↔ Domain Model ↔ Backend DTO ↔ API Schema ↔ Frontend Type ↔ Form Schema.

Avant tout changement de contrat:
- trouver définitions et usages
- mesurer impact
- migrer serializers/endpoints/forms/tests
- relancer typecheck + tests + build

Ne jamais utiliser `any` comme pont permanent.
