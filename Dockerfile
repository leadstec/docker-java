#
# AUTHOR            Frank,H.L.Lai <frank@leadstec.com>
# DOCKER-VERSION    19.03
# Copyright         (C) 2020 LEADSTEC Solutions. All rights reserved.
#
FROM leadstec/alpine:3.11.3
ARG version=11.0.4
ARG build=dev

LABEL version="${version}-${build}" \
    description="JRE image for VCubi" \
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
