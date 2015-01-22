# docker-mysql-client
Simple MySQL client to connect to any MySQL server.

## Usage

### One-off Commands

    docker run --rm shopigniter/mysql-client -h 1.2.3.4 -uroot -e 'use foo; select * from bar;'

### Interactive Shell

    docker run --rm -it shopigniter/mysql-client -h 1.2.3.4 -uroot
