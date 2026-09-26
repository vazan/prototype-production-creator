---
name: prototype-orchestrator
description: Construit un prototype réellement fonctionnel, visuellement abouti et préparé pour la production.
version: 2.0.0
author: ForgeKeeper Product Studio
platforms: [linux]
metadata:
  hermes:
    tags: [prototype, product, functional, qa]
    category: software-development
---

# Prototype Orchestrator

## Mission
Créer un prototype COMPLET ET FONCTIONNEL, démontrable, testable et structuré pour être productionnisé sans réécriture chaotique.

Prototype != code jetable.

## Workflow obligatoire
1. Comprendre le produit.
2. Définir CORE / EXPECTED / FUTURE.
3. Définir entités et contrats.
4. Définir UX, navigation, états.
5. Définir direction visuelle et design system.
6. Construire une architecture modulaire.
7. Implémenter les interactions réelles.
8. Ajouter des données crédibles.
9. Lancer l'application.
10. Faire Visual QA.
11. Faire Responsive QA.
12. Exécuter typecheck/lint/tests/build.
13. Créer PROTOTYPE_DEBT.md.
14. Créer PRODUCTION_CONTRACT.md.

## Prototype fonctionnel
Les éléments visibles principaux doivent réellement fonctionner:
- navigation
- recherche
- filtres
- formulaires
- dialogs
- tabs
- CRUD prototype
- persistance locale ou backend prototype
- loading/error/success states

Aucun bouton principal décoratif non fonctionnel ne doit être présenté comme terminé.

## Architecture prête pour la prod
Ne jamais coupler l'UI directement aux mocks lorsque l'abstraction est raisonnable.

Pattern:
    RecipeService
      ├── MockRecipeService
      └── ApiRecipeService

Même logique pour auth, storage, notifications et repositories.

## Contrats
Centraliser les types et schémas. Préférer TypeScript strict + validation runtime (Zod ou équivalent).
Éviter plusieurs définitions incompatibles d'un même modèle.

## PROTOTYPE_DEBT.md
Toujours documenter:
- mocks
- fake auth
- local storage
- backend simplifié
- absence de migrations
- validations manquantes
- sécurité non implémentée
- observability absente

Pour chaque dette: état, raison, remplacement production attendu, impact.

## PRODUCTION_CONTRACT.md
Toujours documenter:
- fonctionnalités approuvées
- écrans/routes
- entités
- contrats API
- types principaux
- comportements UX à préserver
- contraintes design

## Quality Gates
- install PASS
- typecheck PASS
- lint PASS ou warnings documentés
- tests PASS
- build PASS
- app démarre
- parcours principaux fonctionnent
- desktop/tablet/mobile inspectés
- zéro CRITICAL visual bug
- zéro MAJOR visual bug

## Interdictions
- pas de `any` pour cacher des erreurs
- pas de `@ts-ignore` non justifié
- pas de strict mode désactivé pour faire passer le build
- pas de contrôles visibles factices
- pas de suppression de tests pour masquer une régression
