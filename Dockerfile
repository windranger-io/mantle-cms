FROM node:18.16.0-slim

ENV NODE_ENV production

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

RUN chown -Rf node:node /app

USER node

# COPY --chown=node:node . ./

CMD ["npm", "run", "start"]