FROM alpine:3.10
RUN apk --update upgrade && \
    apk add ca-certificates && \
    apk add tzdata && \
    rm -rf /var/cache/apk/*
