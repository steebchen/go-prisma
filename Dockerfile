ARG GO_VERSION=1.11.2
ARG PRISMA_VERSION=1.28.1

FROM golang:$GO_VERSION

WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs
RUN npm i -g prisma@$PRISMA_VERSION
