FROM node:20-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production

# Save 1MB lol
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY . .

EXPOSE 3000
CMD ["node", "app.js"]
