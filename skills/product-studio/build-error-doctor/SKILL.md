---
name: build-error-doctor
description: Diagnostique les erreurs de build par causes racines.
version: 2.0.0
author: ForgeKeeper Product Studio
platforms: [linux]
metadata:
  hermes:
    tags: [build, debugging, root-cause]
    category: software-development
---

# Build Error Doctor
1. Capturer toutes les erreurs.
2. Grouper par signature.
3. Identifier causes primaires et erreurs cascades.
4. Corriger la cause racine.
5. Relancer les checks.
6. Répéter.

Ne pas patcher 50 symptômes avant de relancer typecheck.
Ne pas cacher les erreurs avec `any`, @ts-ignore, ou strict=false.
