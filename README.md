# Hermes Product Studio V2

Deux workflows compatibles:

## Prototype
`/prototype-studio <idée>`

Le prototype doit être visuellement abouti ET fonctionnel.
Il crée aussi:
- PROTOTYPE_DEBT.md
- PRODUCTION_CONTRACT.md

## Production
`/production-studio Transforme le prototype approuvé en application production-ready.`

La productionisation:
- établit une baseline
- lit le contrat et la dette du prototype
- crée PRODUCTION_PLAN.md et PRODUCTION_STATUS.md
- migre domaine par domaine
- exécute les quality gates après chaque étape
- bloque si une nouvelle erreur apparaît
- effectue sécurité + E2E + release readiness review

## Installation
```bash
chmod +x INSTALL.sh
./INSTALL.sh
```

Installation par défaut:
- `~/.hermes/skills/product-studio/`
- `~/.hermes/skill-bundles/`
