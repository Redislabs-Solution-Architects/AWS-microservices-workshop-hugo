FROM golang:alpine

RUN apk update && apk upgrade && \
  apk add --no-cache git build-base

WORKDIR /repos

RUN git clone https://github.com/gohugoio/hugo.git
RUN cd hugo && \
  go install --tags extended

RUN git clone https://github.com/TobyHFerguson/AWS-microservices-workshop.git
RUN cd AWS-microservices-workshop && \
  git submodule init && \
  git submodule update && \
  git submodule update --remote themes/hugo-theme-learn/

WORKDIR /repos/AWS-microservices-workshop
CMD [ "hugo", "server" ]