FROM gitea/gitea:latest

MAINTAINER claude SANSOUCY <c.sansoucy@gmail.com>

# Disabling SSH in gitea (only start gitea, not openssh nor syslog)

COPY .s2i 

EXPOSE 3000

