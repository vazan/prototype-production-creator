# Prompt prototype

/prototype-studio

Construis un prototype complet et fonctionnel de l'application décrite ci-dessous.
Le prototype doit être visuellement abouti, responsive et réellement interactif.
Tous les contrôles principaux visibles doivent fonctionner.
Prépare dès maintenant l'architecture pour une future version production:
isole les mocks derrière des interfaces/services, centralise les contrats et types,
et crée PROTOTYPE_DEBT.md ainsi que PRODUCTION_CONTRACT.md.

Exécute typecheck, lint, tests et build.
Lance ensuite l'application, inspecte-la visuellement et corrige les défauts CRITICAL et MAJOR.

[DESCRIPTION]

# Prompt production

/production-studio

Le prototype actuel est approuvé fonctionnellement et visuellement.

Transforme maintenant cette application en version réellement production-ready.

Ne fais PAS une réécriture massive.
Commence par établir une baseline complète puis lis PROTOTYPE_DEBT.md et PRODUCTION_CONTRACT.md.
Crée PRODUCTION_PLAN.md et PRODUCTION_STATUS.md.

Procède domaine par domaine et infrastructure par infrastructure.
Après chaque changement significatif, exécute les quality gates.
Ne continue jamais à l'étape suivante si tu as introduit de nouvelles erreurs.

Remplace progressivement les mocks par des implémentations production sans casser les contrats.
Ajoute persistence réelle, migrations, validation, sécurité, auth/authorization si nécessaire,
gestion d'erreurs, logs/health checks, tests d'intégration/E2E et documentation de déploiement.

À la fin, effectue une release-readiness review indépendante.
Ne déclare l'application production-ready que si toutes les gates critiques réellement exécutées passent.
