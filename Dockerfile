## Emacs, make this -*- mode: makefile; -*-
## Provides RStudio-server on 8787 and IPython-notebooks on 8888

FROM rocker/rstudio

## This handle reaches Carl and Dirk
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com

## Remain current
RUN apt-get update -qq \
&& apt-get dist-upgrade -y

## Packages 
RUN apt-get install -y --no-install-recommends \
  git \
  ipython \
  ipython-notebook \
  python \
  python-matplotlib \
  python-numpy \
  python-scipy \
  python-statsmodels \
  sqlite3

# iPython Notebook port
EXPOSE 8888
## We need a modifed supervisord.conf to run ipython on the container 
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

## Create a user 
RUN adduser --disabled-password --gecos '' swc
RUN adduser swc sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN chown swc:swc /var/log/supervisor 
USER swc
WORKDIR /home/swc

## To have a container run multiple & persistent tasks, we use the very simple supervisord as recommended in Docker documentation.
ENTRYPOINT ["/usr/bin/sudo"]
CMD ["/usr/bin/supervisord"] 



