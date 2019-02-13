docker run --name koel \
        --link koel-mysql:mysql \
	-p 8080:80 \
        -e DB_HOST=koel-mysql \
        -e DB_CONNECTION=mysql \
        -e DB_USERNAME=koel \
        -e DB_PASSWORD=koel \
        -e DB_DATABASE=koel \
        -e ADMIN_EMAIL="koel@example.com" \
        -e ADMIN_NAME="koel" \
        -e ADMIN_PASSWORD="password" \
        -e APP_DEBUG=false \
        -e AP_ENV=production \
        -e FFMPEG_PATH=/usr/bin/ffmpeg \
        -v /path/to/music:/music \
        -v /path/to/covers:/var/www/html/public/img/covers \
        -d 8bitbench/koel:0.0.1

echo "You need to run the following in container: "
echo -e "\t\tdocker exec -it koel bash"
echo -e "\t\tphp artisan koel:init"
