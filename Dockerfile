FROM node:alpine3.15
COPY . /app
WORKDIR /app
COPY /package.json .
RUN yarn install
EXPOSE 3000
CMD ["yarn", "start"]