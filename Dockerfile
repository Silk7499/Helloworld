ARG VERSION=3.13
FROM alpine:$VERSION 
ARG VERSION
ENV MSG "Hello world!!"
RUN apk update && apk upgrade && apk add bash
WORKDIR /opt
RUN echo $VERSION
ENTRYPOINT ["bash"]
CMD ["-c","echo $MSG"]