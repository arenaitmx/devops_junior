FROM node:13.12.0-alpine as BUILD

ENV SESSION
ENV PORT
ENV BACK_PORT
ENV BACK_IP
ENV BACK=ip${BACK_IP}${SESSION}-${BACK_PORT}.direct.arena-it.com

COPY . /app

WORKDIR /app

RUN npm install \
      && npm run build:clean


FROM nginx:alpine

ENV SESSION
ENV PORT
ENV BACK
ENV BACK_PORT

COPY --from=BUILD /app/public /var/www/public

COPY default.conf /etc/nginx/conf.d/default.conf

RUN sed -i "s|PORT|$PORT|g" /etc/nginx/conf.d/default.conf

CMD nginx -g 'daemon off'
