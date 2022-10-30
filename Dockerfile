FROM ubuntu:latest

COPY files/ .

RUN apt-get update \
    && apt-get install --no-install-recommends -y build-essential cmake pkg-config ca-certificates git \
    && chmod 755 build.sh pkg/DEBIAN/postinst \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
