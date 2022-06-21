FROM debian:11

RUN set -eu \
 && apt-get update \
 && apt-get install -y build-essential equivs \
 && apt-get clean

ENTRYPOINT [ "/bin/bash" ]