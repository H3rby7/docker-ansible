FROM ansible/ansible:ubuntu1604

LABEL version="0.1.0"
LABEL description="Simple Ubuntu with ansible installed"

RUN set -x \
    && rm -rf /etc/ansible/hosts \
	&& apt-get update \
    && apt-get install ansible -y

VOLUME /data
WORKDIR /data

ENTRYPOINT ["bash"]