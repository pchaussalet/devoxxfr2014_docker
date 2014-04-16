devoxxfr2014_docker
=================

This project is the tools in action presentation on docker given at DevoxxFR 2014.

Code : https://github.com/pchaussalet/devoxxfr2014_docker

Slides : http://pchaussalet.github.io/devoxxfr2014_docker


Steps
-----

Initialization
mysql :
    cd mysql
    docker build -t devoxx/mysqld .

nginx
    cd nginx
    docker build -t devoxx/nginx .

Dev

    cd 1/app
    ./run_app.sh


UAT

    cd 2
    ./start_platform.sh
    ./stop_platform.sh


Perf

    cd 3
    ./start_platform.sh
    docker logs -f appA
    docker logs -f appB
    ./launch_test.sh
    ./stop_platform.sh


Pre Prod

    cd 4
    fig up
