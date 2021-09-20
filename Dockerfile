FROM ghcr.io/dion-ricky/python3.6.9:release as python-build-image

FROM ubuntu:bionic as main

ENV DEBIAN_FRONTEND="noninteractive" TZ="America/New_York"
ENV PATH=/usr/local/bin:$PATH

COPY --chown=root:root --from=python-build-image /usr/local/bin /usr/local/bin
COPY --chown=root:root --from=python-build-image /usr/local/include /usr/local/include
COPY --chown=root:root --from=python-build-image /usr/local/lib /usr/local/lib
COPY --chown=root:root --from=python-build-image /usr/local/share /usr/local/share

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
	ca-certificates libbluetooth-dev \
	tk-dev uuid-dev \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /
CMD ["python3"]
