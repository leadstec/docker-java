#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    20.10
# Website           https://www.leadstec.com
# Copyright         (C) 2021 LEADSTEC Systems. All rights reserved.
#
FROM leadstec/alpine:3.12.3
ARG major=

LABEL description="Java image for VCubi platform" \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

ENV JAVA_HOME="/usr/lib/jvm/default-jvm" \
    LANG="en_US.UTF-8"

RUN apk --update add openjdk`echo ${major}`-jre && \
    rm /var/cache/apk/*

# add install/startup scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup
