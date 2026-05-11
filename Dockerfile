# ── Stage 1 : dépendances ────────────────────────────────────────────
FROM node:20-alpine AS base
WORKDIR /app
COPY package*.json ./
RUN npm ci

# ── Stage 2 : développement ──────────────────────────────────────────
FROM base AS dev
COPY . .
EXPOSE 5173
CMD ["npm", "run", "dev"]

# ── Stage 3 : build production ───────────────────────────────────────
FROM base AS builder
ARG VITE_API_URL
ENV VITE_API_URL=$VITE_API_URL
COPY . .
RUN npm run build

# ── Stage 4 : serveur nginx production ───────────────────────────────
FROM nginx:1.25-alpine AS production
COPY --from=builder /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
