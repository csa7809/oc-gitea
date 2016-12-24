FROM gitea/gitea:latest

MAINTAINER claude SANSOUCY <c.sansoucy@gmail.com>

# Disabling SSH in gitea (only start gitea, not openssh nor syslog)

COPY ./.s2i/bin/ /usr/libexec/s2i

EXPOSE 3000

RUN chmod +x /usr/libexec/s2i/* && /usr/libexec/s2i/assemble

CMD ["run"]
