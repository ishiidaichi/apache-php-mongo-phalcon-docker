apache-php-mongo-phalcon-docker
===============================

Dockerfile for Apache 2.2, PHP 5.6, MongoDB &amp; PHP Mongo Extension, Phalcon PHP, and MySQL on CentOS 6

Download Source Code:

`git clone https://github.com/ishiidaichi/apache-php-mongo-phalcon-docker`

Build a docker image from the downloaded Dockerfile:

`cd apache-php-mongo-phalcon-docker & docker build -t YOURTAG .`

Then, run the docker image:

`docker run -p 80:80 -v /path/to/the/webroot/:/var/www/html YOURTAG`

That's it!

