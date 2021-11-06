FROM ubuntu:focal
LABEL maintainer "Lumir Jasiok <lumir.jasiok@alfawolf.eu>"

ENV ETCDCTL_API="3"

RUN apt update && apt install -y etcd-server etcd-client && apt clean

EXPOSE 2379 2380

ENV ETCD_UNSUPPORTED_ARCH=arm

USER etcd

ENTRYPOINT [ "/usr/bin/etcd"]
CMD ["--name", "etcd0", \
    "--data-dir", "/var/lib/etcd", \
    "--advertise-client-urls", "http://127.0.0.1:2379", \
    "--listen-client-urls", "http://0.0.0.0:2379", \
    "--initial-advertise-peer-urls", "http://127.0.0.1:2380", \
    "--listen-peer-urls", "http://0.0.0.0:2380"]
