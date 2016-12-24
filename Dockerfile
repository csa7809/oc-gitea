FROM gitea/gitea:latest

MAINTAINER claude SANSOUCY <c.sansoucy@gmail.com>

# Disabling SSH in gitea (only start gitea, not openssh nor syslog)

EXPOSE 3000

COPY . /app/gitea

RUN chmod +x /app/gitea/assemble /app/gitea/run && /app/gitea/assemble

USER 1000

CMD ["/app/gitea/run"]
