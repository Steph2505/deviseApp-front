# DeviseApp — Frontend Vue.js

Application de gestion des devises développée avec Vue.js 3 et Laravel 10.

## Prérequis

- Node.js >= 20.19
- npm >= 9
- Backend Laravel en cours d'exécution

## Installation

# Cloner le projet
git clone https://github.com/TON_USERNAME/deviseApp.git
cd deviseApp

# Installer les dépendances
npm install

# Configurer l'environnement
cp .env.example .env

# Modifier VITE_API_URL dans .env selon votre configuration
VITE_API_URL=http://localhost:8000/api

# Lancer le serveur de développement
npm run dev

## Stack technique

### Runtime
| Bibliothèque | Version | Rôle |
|---|---|---|
| [Vue.js 3](https://vuejs.org) | ^3.5 | Framework UI (Composition API) |
| [Vue Router](https://router.vuejs.org) | ^5.0 | Routage côté client |
| [Pinia](https://pinia.vuejs.org) | ^3.0 | Gestion d'état global |
| [Axios](https://axios-http.com) | ^1.16 | Requêtes HTTP vers l'API Laravel |
| [VueUse](https://vueuse.org) | ^14.3 | Composables utilitaires (hooks réactifs) |
| [Font Awesome Free](https://fontawesome.com) | ^7.2 | Icônes (via classes CSS `fas fa-*`) |
| [jsPDF](https://github.com/parallax/jsPDF) | ^4.2 | Génération de fichiers PDF côté client |
| [jspdf-autotable](https://github.com/simonbengtsson/jsPDF-AutoTable) | ^5.0 | Plugin jsPDF pour la mise en forme de tableaux dans les PDF |

### Outillage
| Outil | Rôle |
|---|---|
| [Vite](https://vitejs.dev) | Bundler et serveur de développement |
| [ESLint](https://eslint.org) + [oxlint](https://oxc.rs/docs/guide/usage/linter) | Lint JavaScript/Vue |
| [Prettier](https://prettier.io) | Formatage du code |