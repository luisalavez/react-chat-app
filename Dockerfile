FROM node:alpine

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

COPY ./ ./

RUN npm i

ENV PORT=3000

EXPOSE 3000

CMD ["npm", "run", "start"]

