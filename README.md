# Docker Boilerplate for Symfony 4 Development

This repository provides a local Docker development environment for Symfony 4 applications based on a customised version of the `php:7.2.19-fpm-alpine` Docker image pulled from [foxsoup/alpine](https://hub.docker.com/r/foxsoup/alpine). It provides Nginx, PHP-FPM, s6, Composer, MySQL client, Git, OpenSSL and other assorted goodies, and forces all connections over SSL. The Dockerfile for building this image can be found at https://github.com/foxsoup/docker-alpine.

## Assumptions

Following this README assumes that your Docker configuration will live in a directory called `docker` in the project root, while the Symfony application will be in a directory called `app` in the project root. If this is not the case then you will need to modify the `COPY` commands in `dev.Dockerfile` and the appropriate lines in `docker-compose.yaml` after running the setup command.

## Setup

In your project root:

```bash
git clone git@github.com:foxsoup/docker-boilerplate-symfony.git docker
cd ./docker
./setup.sh
```

After running the setup script your project root should look something like:

```
.
├── /app # your Symfony application
├── dev.Dockerfile # Dockerfile for development
├── /docker # Docker Boilerplate
└── docker-compose.yaml # compose file for dev
```

## Setting up SSL

If you already have a private key and certificate for your development environment you should copy them into the `docker/dev/certs` directory with the respective filenames `server.key` and `server.crt`.

If you do not yet have these files, follow the steps described [here](https://www.freecodecamp.org/news/how-to-get-https-working-on-your-local-development-environment-in-5-minutes-7af615770eec/) to create a trusted Root key and certificate, then a site key and certificate (by successfully following this tutorial these will be named `server.key` and `server.crt`, you can copy these directly into the `docker/dev/certs` directory).

The `.gitignore` file will prevent any .crt, .pem and .key files being commited to your project repository by Git.

## Entrypoint

There is a `run.sh` script which forms the entrypoint of all your Docker containers. Modify this as required.

## docker-compose.yaml

A barebones docker-compose file has been put in the project root directory, add to this as required.

## Launch Docker container

Once successfully installed and configured for your Symfony 4 project, launch the container with `docker-compose up` in the project root.
