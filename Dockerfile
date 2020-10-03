#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    19.03
# Website           https://www.leadstec.com
# Copyright         (C) 2020 LEADSTEC Systems. All rights reserved.
#
ARG arch=
FROM leadstec.tencentcloudcr.com/leadstec/alpine${arch}:3.12.0
ARG version=15.0.0
ARG build=dev

LABEL version="${version}-${build}" \
    description="Java image for VCubi platform" \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

ENV JAVA_VERSION="${version}" \
    JAVA_HOME="/usr/lib/jvm/default-jvm" \
    LANG="en_US.UTF-8"

RUN apk --update add openjdk`echo ${version} | cut -d'.' -f 1`-jre && \
    rm /var/cache/apk/*

# add install/startup scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup
