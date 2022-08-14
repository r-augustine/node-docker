# syntax=docker/dockerfile:1

FROM node

# You can increase performance by setting NODE_ENV to performance
# ENV NODE_ENV=production

# This instructs Docker to use this path as the default location for all
# subsequent commands
WORKDIR /app:

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install 

COPY . .

CMD ["node", "server.js"]
