
## Docker for Software Carpentry

This repository contains a (at this point very speculative) Dockerfile which
defines an image with software used in Software Carpentry bootcamps.

At this point, this is really just to see if a Dockerfile would be useful.

### Background

There are two existing repos which contain working images for both Debian and Ubuntu:

* [Docker for R on Debian repo](https://github.com/eddelbuettel/docker-debian-r) 
* [Docker for R on Ubuntu repo](https://github.com/eddelbuettel/docker-ubuntu-r) 

We are starting here from the base image in the Ubuntu as it already contains
R.

### Possible TODOs

* add Anaconda: default install starts from a 300mb which seems like overkill
* add Python IDEs: with Wing or PyCharm; both have installers; or just Spyder?
* add RStudio Desktop?
* add RStudio Server and export port 8787?
* add X11 exporters as [described here](http://blog.docker.com/2013/07/docker-desktop-your-desktop-over-ssh-running-inside-of-a-docker-container/) ?


### Docker Hub

This repository is linked to an
[automated build facility at Docker](https://registry.hub.docker.com/u/eddelbuettel/docker-swc/)
and one can retrieve the corresponding images via a standard `docker pull`.

### See Also

There are also corresponding 
[Docker for R on Ubuntu](https://github.com/eddelbuettel/docker-ubuntu-r) 
and
[Docker for R on Debian](https://github.com/eddelbuettel/docker-debian-r) 
repos I maintain. 

### Author

Dirk Eddelbuettel

### License

GPL (>= 2)

