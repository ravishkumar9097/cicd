FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    software-properties-common \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update && apt-get install -y \
    php8.1 \
    php8.1-cli \
    php8.1-mbstring \
    php8.1-xml \
    php8.1-curl \
    php8.1-mysql

CMD ["php", "-v"]
