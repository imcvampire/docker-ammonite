FROM openjdk:11

ENV SCALA_VERSION 2.13
ENV AMM_VERSION 2.2.0
ENV AMM_FILE $SCALA_VERSION-$AMM_VERSION
ENV AMM_URL https://github.com/lihaoyi/Ammonite/releases/download/$AMM_VERSION/$AMM_FILE

RUN apt-get update
RUN apt-get install -y --no-install-recommends curl golang-go git ca-certificates

RUN curl "$AMM_URL" --output /usr/local/bin/amm && chmod +x /usr/local/bin/amm

CMD amm
