FROM ubuntu:bionic
WORKDIR /root
COPY ./python3.6.9 /root/python3.6.9
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
	ca-certificates \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN ln -s /root/python3.6.9/bin/python3 /root/python3.6.9/bin/python \
  && ln -s /root/python3.6.9/bin/pip3 /root/python3.6.9/bin/pip
ENV PATH=/root/python3.6.9/bin:$PATH
ENTRYPOINT python3
