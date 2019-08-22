#! /bin/sh

# exit if a command fails
set -e

#dependencies
apk add --no-cache git make gcc libc-dev
git clone http://github.com/kr/beanstalkd
cd ./beanstalkd/
git checkout v1.11

#build
make
cp ./beanstalkd /usr/bin/
cd /

rm -rf /beanstalkd
apk del libc-dev gcc make git

