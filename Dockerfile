FROM cgr.dev/chainguard/go@sha256:c894bc454800817b1747c8a1a640ae6d86004b06190f94e791098e7e78dbbc00 AS builder

WORKDIR /app
# dependencies, add local,dependant package here
COPY protocol/ protocol/
COPY sdk/ sdk/
COPY lib/ocrypto lib/ocrypto
COPY service/ service/
COPY examples/ examples/
COPY Makefile ./
RUN cd service \
    && go mod download \
    && go mod verify
RUN make go.work \
    && go build -o opentdf ./service

FROM cgr.dev/chainguard/glibc-dynamic

COPY --from=builder /app/opentdf /usr/bin/

CMD ["/usr/bin/opentdf"]
