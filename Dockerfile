FROM node:24.1.0-alpine3.21 AS builder

WORKDIR /app/

COPY package.json package-lock.json .

RUN npm ci

COPY . .

RUN npx vite build

FROM node:24.1.0-alpine3.21 AS runner

WORKDIR /app/

COPY --from=builder /app/build ./build

CMD ["node", "build"]