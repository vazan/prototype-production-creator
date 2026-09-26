---
name: service-boundary-builder
description: Découple l'UI des mocks et infrastructures pour permettre une migration propre vers la prod.
version: 2.0.0
author: ForgeKeeper Product Studio
platforms: [linux]
metadata:
  hermes:
    tags: [services, mocks, architecture]
    category: software-development
---

# Service Boundary Builder
Créer des interfaces stables:
UserService, RecipeService, ProjectService, AuthService, etc.

Puis implémentations:
- MockXService
- ApiXService

L'UI dépend du contrat, pas du mock.
Les mocks doivent reproduire les mêmes shapes, erreurs et états que l'implémentation production.
