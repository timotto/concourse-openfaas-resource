FROM alpine

RUN apk --update --no-cache add jq bash ca-certificates

ADD assets /opt/resource

ADD faas-cli /usr/bin/

RUN chmod +x /opt/resource/* /usr/bin/faas-cli
