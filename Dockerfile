FROM ubuntu:18.04

# Install dependencies
RUN apt-get update && apt-get install -yy curl chromium-browser wget jq parallel

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -yy nodejs
RUN npm install -g lighthouse

ARG UNAME=testuser
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME

RUN mkdir -p /app/output
COPY entrypoint /app
RUN chmod +x /app/entrypoint 

RUN chown -R $UID:$GID /app
USER $UNAME

# Create app folder with mounted output volume
VOLUME /app/output

WORKDIR /app


ENTRYPOINT ["/app/entrypoint"]
