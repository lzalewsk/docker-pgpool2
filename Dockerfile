# Pgpool2.

FROM debian:jessie
MAINTAINER luka <lzalewsk@gmail.com>

# Install Dependencies.
RUN apt-get update && apt-get install -y postgresql-client-9.4 pgpool2

# Post Install Configuration.
ADD conf/pcp.conf /etc/pgpool2/pcp.conf
ADD conf/pgpool.conf /etc/pgpool2/pgpool.conf
ADD conf/pool_hba.conf /etc/pgpool2/pool_hba.conf
ADD conf/pool_passwd /etc/pgpool2/pool_passwd
RUN chown 105:110 /etc/pgpool2/pool_passwd

# Start script
ADD start-pgpool2.sh /start-pgpool2.sh
RUN chmod 0755 /start-pgpool2.sh

# Start the container.
CMD /start-pgpool2.sh
