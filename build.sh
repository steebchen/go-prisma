export GO=1.13
export PRISMA=1.34.10

export tag="go_v$GO-prisma_v$PRISMA"

docker build -t "go-prisma:$tag" --build-arg "GO_VERSION=$GO" --build-arg "PRISMA_VERSION=$PRISMA" .
docker tag "go-prisma:$tag" "steebchen/go-prisma:$tag"
docker tag "go-prisma:$tag" "steebchen/go-prisma:latest"
docker push "steebchen/go-prisma:$tag"
docker push "steebchen/go-prisma:latest"
