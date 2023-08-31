FROM golang AS builder

WORKDIR /script
COPY hello-world.go .

RUN go build hello-world.go

FROM scratch

WORKDIR /script

COPY --from=builder /script .
ENTRYPOINT [ "./hello-world" ]