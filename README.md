# DeviseApp — Frontend Vue.js

Application de gestion des devises développée avec Vue.js 3 et Laravel 10.

## Prérequis

- Node.js >= 20.19
- npm >= 9
- Backend Laravel en cours d'exécution

## Installation

### 1. Cloner le dépôt

```bash
git clone git@github.com:Steph2505/deviseApp-front.git
cd deviseApp-front
```

### 2. Installer les dépendances

```bash
npm install
```

Toutes les bibliothèques listées dans `package.json` sont téléchargées dans `node_modules/`.

### 3. Configurer l'environnement

```bash
cp .env.example .env
```

Ouvrir `.env` et renseigner l'URL de l'API Laravel :

```env
VITE_API_URL=http://localhost:8000/api
```

> Le backend Laravel doit être démarré et accessible à cette adresse.

### 4. Lancer le serveur de développement

```bash
npm run dev
```

L'application est disponible sur **http://localhost:5173**.

---

### Commandes disponibles

| Commande | Description |
|---|---|
| `npm run dev` | Démarre le serveur de développement avec hot reload |
| `npm run build` | Compile l'application pour la production dans `dist/` |
| `npm run preview` | Prévisualise le build de production en local |
| `npm run lint` | Analyse et corrige le code (ESLint + oxlint) |
| `npm run format` | Formate le code source avec Prettier |

## Docker

### Développement (hot reload)

```bash
cp .env.example .env
# Éditer VITE_API_URL dans .env

docker compose up --build
# Disponible sur http://localhost:5173
```

### Production

```bash
VITE_API_URL=https://api.mondomaine.com/api \
  docker compose -f docker-compose.prod.yml up --build -d
# Disponible sur http://localhost:80
```

| Fichier | Rôle |
|---|---|
| `Dockerfile` | Build multi-stage : `base` → `dev` → `builder` → `production` (nginx) |
| `docker-compose.yml` | Développement avec hot reload (volume sur le source) |
| `docker-compose.prod.yml` | Production via nginx |
| `nginx.conf` | SPA routing, gzip, cache 1 an sur les assets |
| `.dockerignore` | Exclut `node_modules`, `dist`, `.env`, logs |

> `VITE_API_URL` est injectée au **build**. Changer l'URL en prod nécessite de reconstruire l'image.

---

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

---

## Installation des bibliothèques

> Toutes les dépendances sont installées d'un coup via `npm install`.
> Les commandes ci-dessous sont utiles pour ajouter ou réinstaller une bibliothèque individuellement.

### Dépendances principales

```bash
# Framework et routage
npm install vue@^3.5 vue-router@^5.0

# Gestion d'état
npm install pinia@^3.0

# Requêtes HTTP
npm install axios@^1.16

# Composables utilitaires
npm install @vueuse/core@^14.3

# Icônes Font Awesome
npm install @fortawesome/fontawesome-free@^7.2

# Génération de PDF
npm install jspdf@^4.2 jspdf-autotable@^5.0
```

### Outils de développement

```bash
# Bundler
npm install --save-dev vite@^8.0 @vitejs/plugin-vue

# Linting
npm install --save-dev eslint eslint-plugin-vue oxlint eslint-plugin-oxlint

# Formatage
npm install --save-dev prettier eslint-config-prettier
```