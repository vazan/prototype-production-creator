---
name: e2e-production-tester
description: Teste les parcours utilisateurs critiques sur une build proche de production.
version: 2.0.0
author: ForgeKeeper Product Studio
platforms: [linux]
metadata:
  hermes:
    tags: [e2e, playwright, testing]
    category: software-development
---

# E2E Production Tester
Tester selon le produit:
- login/logout
- création
- modification
- suppression/archivage
- recherche/filtre
- navigation
- persistence après reload
- permissions
- erreurs API

Utiliser un état test déterministe.
Les E2E critiques doivent passer avant release.
