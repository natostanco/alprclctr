FROM alpine:edge

RUN apk update \
 && apk add etcd \
 && wget http://downloads.rclone.org/rclone-current-linux-amd64.zip \
 && unzip rclone-current-linux-amd64.zip \
 && rm unzip rclone-current-linux-amd64.zip \
 && ln -s /`ls -d rclone*`/rclone /usr/local/bin \
 && rm /var/cache/apk/*

CMD ["rclone"]
