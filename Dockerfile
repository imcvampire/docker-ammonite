FROM adoptopenjdk:11-hotspot

ARG SCALA_VERSION=2.13
ARG AMM_VERSION=2.2.0
ENV AMM_FILE $SCALA_VERSION-$AMM_VERSION
ENV AMM_URL https://github.com/lihaoyi/Ammonite/releases/download/$AMM_VERSION/$AMM_FILE

RUN apt-get update
RUN apt-get install -y --no-install-recommends curl wget golang-go git ca-certificates

RUN curl -L "$AMM_URL" --output /usr/local/bin/amm && chmod +x /usr/local/bin/amm

CMD amm
