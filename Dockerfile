FROM node:20-alpine

WORKDIR /opt/app

COPY package.json ./
COPY yarn.lock ./
COPY node_modules ./node_modules
COPY . .

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]