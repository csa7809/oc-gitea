FROM gitea/gitea:latest

MAINTAINER claude SANSOUCY <c.sansoucy@gmail.com>

# Disabling SSH in gitea (only start gitea, not openssh nor syslog)

COPY . .

EXPOSE 3000

RUN chmod +x assemble run && ./assemble

CMD ["run"]
