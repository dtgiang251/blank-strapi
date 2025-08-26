FROM node:20-alpine

WORKDIR /opt/app

ENV NODE_ENV=development

COPY package.json ./
COPY yarn.lock ./
RUN yarn install
RUN ls -l node_modules/@types
RUN ls -l node_modules/@types/minimatch

COPY . .

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]