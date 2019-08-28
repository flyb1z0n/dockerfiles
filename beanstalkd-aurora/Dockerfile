# TODO finish the file (see https://hub.docker.com/r/okkyhtf/aurora/dockerfile/)
FROM alpine:3
LABEL maintainer="Konstantin Shavrukov <flyb1z0n@gmail.com>"
LABEL description="Docker image for aurora (https://github.com/xuri/aurora)"

RUN apk add -no-cache curl \
    && cd /usr/bin \
    && curl -LO https://github.com/xuri/aurora/releases/download/2.2/aurora_linux_i386_v2.2.tar.gz \
    && tar xvvzpf aurora_linux_i386_v2.2.tar.gz \
    && rm aurora_linux_i386_v2.2.tar.gz


COPY aurora.toml /opt/aurora

ENTRYPOINT [ "/usr/bin/beanstalkd" ]
EXPOSE 11300