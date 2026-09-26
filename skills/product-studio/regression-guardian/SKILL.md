---
name: regression-guardian
description: Bloque la progression lorsqu'un changement introduit une régression.
version: 2.0.0
author: ForgeKeeper Product Studio
platforms: [linux]
metadata:
  hermes:
    tags: [regression, tests, quality-gate]
    category: software-development
---

# Regression Guardian
Conserver une baseline:
- typecheck
- lint
- nombre/résultat tests
- build
- routes principales
- parcours critiques

Si une nouvelle erreur, un nouveau test cassé, une route critique cassée ou une régression MAJOR apparaît:
STOP et corriger avant de continuer.
