# build stage
FROM node:lts-alpine as build

# install dependencies
WORKDIR /app
COPY package*.json ./
RUN npm install

# copy and build app
COPY . .
RUN npm run build

# runtime stage
FROM node:lts-alpine

# install simple http server for serving static content
RUN npm install -g http-server

# copy built app to runtime image
WORKDIR /app
COPY --from=build /app/dist .

EXPOSE 8080
CMD [ "http-server", "." ]
