FROM ubuntu:20.04
COPY server.c /root/
RUN true \
  && apt update && apt -y install gcc-9 \
  && gcc-9 -o /root/server /root/server.c \
  && apt -y remove gcc-9 && apt -y autoremove
EXPOSE 38182
CMD ["/root/server", ""]
