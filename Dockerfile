FROM golang:alpine

ENV GO111MODULE on

COPY build.sh .
RUN apk --no-cache add git
RUN chmod +x build.sh && ./build.sh



##### Binary only image ######

FROM scratch

COPY --from=0 /go/caddockery /

ENTRYPOINT ["/caddockery"]
