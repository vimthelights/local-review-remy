FROM node:14.15.1

ENV NODE_ENV=production

RUN mkdir -p /src/app

WORKDIR /src/app

COPY . /src/app

RUN npm install --production

EXPOSE 3000

CMD [ "npm", "run", "start" ]