FROM ubuntu:latest
LABEL maintainer="jesse@compile.fail"

ENTRYPOINT curl -sSL https://install.pi-hole.net | bash && sleep 1200
