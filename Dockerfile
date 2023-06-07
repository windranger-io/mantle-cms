FROM node:18.16.0-slim

ENV NODE_ENV production

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

# RUN chown -Rf node:node /app

COPY --chown=node:node . ./

USER node

CMD ["npm", "run", "start"]