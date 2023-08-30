FROM scratch

WORKDIR /script

COPY hello-world .

ENTRYPOINT [ "./hello-world" ]