FROM alpine:3.13.0

COPY protect .

RUN apk add openjdk11 python3 && \
    wget https://github.com/hartwigmedical/hmftools/releases/download/protect-v2.0/protect.jar && \
    mkdir /usr/local/share/protect/ && \
    mv protect.jar /usr/local/share/protect/ && \
    mv protect /usr/local/share/protect/ && \
    ln -s /usr/local/share/protect/protect /usr/local/bin/protect
