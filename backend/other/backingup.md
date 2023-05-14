# How to backup

Execute bash in the container

    $ docker exec -it CONTAINER_ID /bin/bash

Start RMAN

    $ rman target /

Perform the backup with the configured settings

    RMAN> BACKUP DATABASE;
