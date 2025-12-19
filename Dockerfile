FROM debian:stable-slim

COPY goserver /bin/goserver

EXPOSE 8991

CMD ["/bin/goserver"]
