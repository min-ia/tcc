FROM debian:9

RUN apt-get update \
    && apt-get install -y \
    texlive-full
    # && apt-get clean \
    # && rm -rf /var/lib/apt/lists/*

RUN apt-get install --reinstall build-essential -y
RUN apt-get install make -y
