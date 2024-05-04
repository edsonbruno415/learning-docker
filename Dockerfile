FROM node:12-alpine3.15

WORKDIR /app

COPY package.json . 

RUN apk add --no-cache python2 g++ make
RUN npm install --production

COPY . .

CMD ["node","src/index.js"]

EXPOSE 3000