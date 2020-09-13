ARG IMAGE

FROM ${IMAGE}

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh \
    && npm i create-nuxt-app

ENTRYPOINT ["/docker-entrypoint.sh"]