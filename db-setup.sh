docker run --name=koel-mysql \
        -e MYSQL_DATABASE=koel \
        -e MYSQL_USER=koel \
        -e MYSQL_PASSWORD=koel \
        -e MYSQL_ROOT_PASSWORD=password \
        -v /path/to/mysql:/var/lib/mysql \
        -d mysql:5.7
