FROM plone:4.3.18

RUN buildDeps=" \
    build-essential \
    curl \
    gfortran \
    git \
    libblas-dev \
    libc6-dev \
    libexpat1-dev \
    libjpeg-dev \
    liblapack-dev \
    libldap2-dev \
    libmemcached-dev \
    libpq-dev \
    libreadline-dev \
    libsasl2-dev \
    libssl-dev \
    libxml2-dev \
    libxslt-dev \
    libxslt1-dev \
    libz-dev \
    zlib1g-dev" \
 && apt-get update \
 && apt-get install -y --no-install-recommends $buildDeps \
 && rm -vrf /var/lib/apt/lists/*

COPY site.cfg /plone/instance/
RUN gosu plone buildout -c site.cfg
