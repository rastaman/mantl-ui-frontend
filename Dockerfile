FROM centos:7

RUN curl --silent --location https://rpm.nodesource.com/setup_7.x | bash -

RUN yum -y install \
    python \
    nodejs \
    git \
    netpbm \
    netpbm-progs \
    libjpeg-turbo-utils \
    optipng

WORKDIR /tmp

RUN npm install -g \
        elm@0.17.0 \
        brunch

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN mkdir /srv/mantl-ui-frontend
WORKDIR /srv/mantl-ui-frontend

VOLUME /srv/mantl-ui-frontend

EXPOSE 3333

CMD /entrypoint.sh

