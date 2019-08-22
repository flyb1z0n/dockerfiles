FROM alpine:3
LABEL maintainer="Konstantin Shavrukov <flyb1z0n@gmail.com>"
LABEL version="1.0"
LABEL description="docker image for beanstalkd (https://beanstalkd.github.io/)"

#dependencies
RUN apk add --no-cache git make gcc libc-dev
RUN git clone http://github.com/kr/beanstalkd
WORKDIR /beanstalkd/
RUN git checkout v1.11


#build
RUN make
RUN cp ./beanstalkd /usr/bin/
WORKDIR /

#clean-up
RUN rm -rf /beanstalkd
RUN apk del libc-dev gcc make git

ENTRYPOINT [ "/usr/bin/beanstalkd" ]
EXPOSE 11300