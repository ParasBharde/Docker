FROM node:21 

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build
RUN npx prisma generate

EXPOSE  3000/tcp

CMD  ["node", "dist/index.js"]
