FROM alpine:3
LABEL maintainer="Konstantin Shavrukov <flyb1z0n@gmail.com>"
LABEL version="1.0"
LABEL description="docker image for beanstalkd (https://beanstalkd.github.io/)"

ADD install.sh install.sh
RUN chmod +x install.sh
RUN ./install.sh && rm install.sh

ENTRYPOINT [ "/usr/bin/beanstalkd" ]
EXPOSE 11300