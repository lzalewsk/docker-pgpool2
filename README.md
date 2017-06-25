Pgpool2 Dockerfile
==================

This project can be used to deploy pgpool2 inside a Docker container for transparent failover between two postgresql hosts without requiring a floating IP address.

### Running the Container

```sudo docker run -it --name pgpool2 -p 5432:5432 lzalewsk/pgpool2```

