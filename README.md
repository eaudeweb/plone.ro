plone.ro
========

# Build

```
$ docker-compose build
```

# Start

```
$ docker-compose up -d
```

# Stop

```
$ docker-compose down
```

# Restore

```
$ docker cp var.tgz plonero_zeo_1:/tmp/
$ docker-compose exec zeo bash
$ tar -zxvf /tmp/var.tgz
$ cp /tmp/var/filestorage /data/filestorage
$ rsync -avx /tmp/var/blobstorage/ /data/blobstorage/
```
