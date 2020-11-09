FROM node:lts-alpine as build

ENV API_URL=http://localhost:8000

WORKDIR /frontend
COPY . ./

RUN npm install && \
    npm audit fix && \
    npm run build

FROM nginx

COPY --from=build /frontend/dist/ /usr/share/nginx/html

