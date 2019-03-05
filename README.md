# Go docker image with Prisma

[![docker pull steebchen/go-prisma][image shield]][docker hub]

This is a [Go](https://golang.org/) docker image with the [Prisma](https://www.prisma.io/) CLI pre-installed.

## Quickstart

Simply use steebchen/go-prisma tags.

```Dockerfile
FROM steebchen/go-prisma:latest

COPY . ./

RUN prisma generate

RUN go test -v
```

You can use golang version tags like `go-prisma:1.11.2`.
For available tags, check [releases](https://github.com/steebchen/go-prisma/releases).
