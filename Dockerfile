FROM alpine:3.11

RUN apk add --no-cache \
  bash jq docker-compose docker

COPY --from=mikefarah/yq:3.1.1 /usr/bin/yq /usr/bin
COPY doc /usr/bin/doc

ENTRYPOINT [ "/usr/bin/doc" ]
