FROM gitea/gitea:latest

MAINTAINER claude SANSOUCY <c.sansoucy@gmail.com>

# Disabling SSH in gitea (only start gitea, not openssh nor syslog)

EXPOSE 3000

