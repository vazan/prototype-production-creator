---
name: github-project-manager
description: Gère GitHub proprement pendant prototype et productionisation.
version: 2.0.0
author: ForgeKeeper Product Studio
platforms: [linux]
metadata:
  hermes:
    tags: [github, git, pull-request]
    category: software-development
---

# GitHub Project Manager
Prototype: commits cohérents par fonctionnalité.

Productionisation:
- branche dédiée
- checks PASS avant chaque commit d'étape
- commits atomiques
- PR avec baseline, migration, tests, sécurité, limitations et rollback

Ne jamais:
- committer des secrets
- force-push main
- contourner les protections pour finir plus vite
