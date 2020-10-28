FROM alpine:3.12
RUN apk --update upgrade && \
    apk add ca-certificates && \
    apk add tzdata && \
    apk add build-base vips-dev && \
    rm -rf /var/cache/apk/*
