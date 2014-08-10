## Emacs, make this -*- mode: makefile; -*-
## start with the Ubuntu docker-ubuntu-r/add-r which has R on top of the latest Ubuntu
FROM eddelbuettel/docker-ubuntu-r:add-r

## That's me
MAINTAINER Dirk Eddelbuettel edd@debian.org

## Remain current
RUN apt-get update -qq
RUN apt-get dist-upgrade -y

## And components -- we do this in separate commands as each 'RUN' gets
## mapped to a different AUFS layer and container component file

## Python
RUN apt-get install -y --no-install-recommends python
RUN apt-get install -y --no-install-recommends ipython
RUN apt-get install -y --no-install-recommends ipython-notebook
RUN apt-get install -y --no-install-recommends python-matplotlib
RUN apt-get install -y --no-install-recommends python-numpy
RUN apt-get install -y --no-install-recommends python-scipy
RUN apt-get install -y --no-install-recommends python-statsmodels

## Git
RUN apt-get install -y --no-install-recommends git

## SQL(ite)
RUN apt-get install -y --no-install-recommends sqlite3


