FROM alpine:edge

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
 && apk update \
 && apk add ca-certificates etcd \
 && wget http://downloads.rclone.org/rclone-current-linux-amd64.zip \
 && unzip rclone-current-linux-amd64.zip \
 && rm rclone-current-linux-amd64.zip \
 && ln -s /`ls -d rclone*`/rclone /usr/local/bin \
 && rm -rf /var/cache/apk/*

CMD ["rclone"]
