# Basis-Image auf Ubuntu 24.04 LTS setzen
FROM ubuntu:24.04

# Setzen von Umgebungsvariablen
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

# Installieren der benötigten Pakete
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    zip \
    gnupg2 \
    wget \
    ca-certificates \
    curl \
    unzip \
    x11-apps \
    xauth \
    xvfb \
    x11vnc \
    ktimetracker && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


# install dbus launch
RUN apt-get update && apt-get install -y dbus-x11



# Wechsel zum neuen Benutzer
USER ubuntu

# Arbeitsverzeichnis setzen (optional)
WORKDIR /home/ubuntu

# Standardkommando festlegen
CMD ["ktimetracker"]
