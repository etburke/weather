# Can't use Alpine on M1 until new binaries are available
FROM node:16
WORKDIR /usr/server/app
COPY ./package.json ./
RUN yarn
COPY ./ .
# Reinstall Prisma client to generate needed files
RUN yarn add @prisma/client
CMD yarn run dev
