FROM brainsam/pgbouncer:1.8.1

RUN apk -U add \
  bash \
  ca-certificates \
  git \
  make \
  openssl \
  curl

COPY hb-entrypoint.sh ./
ENTRYPOINT ["./hb-entrypoint.sh"]
