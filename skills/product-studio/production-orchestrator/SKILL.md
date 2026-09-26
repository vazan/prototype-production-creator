---
name: production-orchestrator
description: Transforme un prototype approuvé en application production-ready par migration incrémentale avec quality gates strictes.
version: 2.0.0
author: ForgeKeeper Product Studio
platforms: [linux]
metadata:
  hermes:
    tags: [production, migration, testing, release]
    category: software-development
---

# Production Orchestrator

## Mission
Transformer un prototype approuvé en application réellement production-ready.

PRODUCTIONIZATION IS NOT A REWRITE.

## Règle absolue
Après chaque changement significatif:
1. typecheck
2. lint
3. tests affectés
4. build si pertinent

Ne jamais poursuivre avec de nouvelles erreurs.

## Phase 0 — Protection
- vérifier Git
- créer une branche productionization
- vérifier .gitignore
- vérifier les secrets
- créer un baseline commit propre

## Phase 1 — Baseline
Exécuter:
- install
- typecheck
- lint
- unit tests
- integration tests
- build
- lancement
- smoke tests

Créer PRODUCTION_STATUS.md avec l'état initial.

## Phase 2 — Lire le prototype
Lire obligatoirement:
- PROTOTYPE_DEBT.md
- PRODUCTION_CONTRACT.md
- DESIGN.md
- README.md
- ARCHITECTURE.md si présent

## Phase 3 — Plan production
Créer PRODUCTION_PLAN.md avec:
- environnements
- persistence
- migrations
- API
- auth
- authorization
- validation
- secrets
- logging
- observability
- deployment
- backup/recovery si pertinent
- ordre de migration
- quality gate par étape

## Phase 4 — Migration incrémentale
Migrer un domaine à la fois:
    contrat
      ↓
    implémentation production
      ↓
    intégration
      ↓
    tests
      ↓
    quality gates
      ↓
    commit

## Phase 5 — Remplacement des mocks
Ne jamais supprimer un mock avant que le remplacement production fonctionne et soit testé.

## Phase 6 — Sécurité
Vérifier selon le projet:
- validation serveur
- auth/session
- authorization
- secrets
- CORS
- CSRF si applicable
- XSS
- injection
- uploads
- rate limiting
- headers
- dépendances

## Phase 7 — Reliability
Vérifier:
- error handling
- retries
- timeouts
- transactions
- idempotency si utile
- migrations reproductibles
- rollback strategy

## Phase 8 — Observability
Ajouter selon pertinence:
- structured logging
- health endpoint
- readiness endpoint
- error reporting
- metrics

## Phase 9 — Production QA
Exécuter:
- typecheck
- lint
- unit
- integration
- E2E
- build
- production start
- smoke tests
- responsive QA
- visual QA
- security review

## Release Gate
READY seulement si:
- zéro erreur TypeScript connue
- zéro erreur build
- tests critiques PASS
- migrations testées
- secrets externalisés
- validation serveur
- auth/authorization testées si applicables
- logs exploitables
- E2E critiques PASS
- aucun mock critique actif
- aucune TODO bloquante
- aucun CRITICAL security finding
- aucun CRITICAL/MAJOR regression
- documentation déploiement à jour

Si une gate critique manque, ne pas dire "100% production ready".
