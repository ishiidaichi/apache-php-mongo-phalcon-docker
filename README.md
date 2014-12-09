apache-php-mongo-phalcon-docker
===============================

Dockerfile for Apache 2.2, PHP 5.6, MongoDB &amp; PHP Mongo Extension, Phalcon PHP, and MySQL on CentOS 6

## Usage

Download the source code from github:

`git clone https://github.com/ishiidaichi/apache-php-mongo-phalcon-docker`

Build a docker image from the downloaded Dockerfile:

`cd apache-php-mongo-phalcon-docker & docker build -t YOURTAG .`

Actually, it may take 10-15 minutes to finish the building process. 
 Why don't you wait over a cup of coffee?
 
Then, run the docker image:

`docker run -d -p 80:80 -v /path/to/the/webroot:/var/www/html YOURTAG`

If you want to run the image at your local machine using port 8080, type this:

`docker run -d -p 8080:80 -v /path/to/the/webroot:/var/www/html YOURTAG`

That's it!

## Use docker hub repository

You can also get the docker image directly from docker hub:

`docker pull ishiidaichi/apache-php-mongo-phalcon`

Once you donload the image, all you need to do is to run the `docker run` command like above.

The Docker repository page is the link below:

https://registry.hub.docker.com/u/ishiidaichi/apache-php-mongo-phalcon/

