ARG PORT

FROM node:13.12.0-alpine as BUILD

ARG SESSION
ARG BACK_PORT
ARG BACK_PWD
ARG IP

ENV BACK_PORT $BACK_PORT

RUN env
ENV BACK=ip${IP}-${SESSION}-${BACK_PWD}.direct.arena-it.com
RUN echo $BACK

COPY . /app

WORKDIR /app

RUN npm install \
      && npm run build:clean


FROM nginx:alpine

ARG PORT
RUN env
COPY --from=BUILD /app/public /var/www/public
COPY default.conf /etc/nginx/conf.d/default.conf
RUN sed -i s/PORT/$PORT/g /etc/nginx/conf.d/default.conf 

CMD nginx -g 'daemon off;'
