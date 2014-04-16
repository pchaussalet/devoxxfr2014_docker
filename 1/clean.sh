#!/bin/sh
cd app
rm -rf 1.0.0
cd my-great-app
mvn clean
cd ../..
