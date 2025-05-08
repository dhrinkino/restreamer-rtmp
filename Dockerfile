FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /entrypoint /etc/stunnel

RUN apt-get update && \
    apt-get install -y nginx libnginx-mod-rtmp stunnel4 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint/entrypoint.sh
COPY nginx.conf /etc/nginx/nginx.conf
COPY stunnel.conf /etc/stunnel/stunnel.conf

RUN chmod +x /entrypoint/entrypoint.sh


VOLUME ["/etc/nginx", "/etc/stunnel"]


EXPOSE 1935

# Entry point
ENTRYPOINT ["/entrypoint/entrypoint.sh"]
