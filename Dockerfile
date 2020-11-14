# stage 1
FROM node:lts-alpine as build-stage
LABEL stage=intermediate
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
ARG VUE_APP_RUNTIME_MODE
RUN yarn build --mode $VUE_APP_RUNTIME_MODE

# stage 2
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY extras/nginx-default-vhost.conf /etc/nginx/conf.d/default.conf
EXPOSE 1080
CMD ["nginx", "-g", "daemon off;"]
