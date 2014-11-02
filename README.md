
## Note

This repo was somewhat experimental and predates further work by
Carl and Dirk in the [Rocker](https://github.com/rocker-org) organization
and its repositories. Please see the core
[rocker](https://github.com/rocker-org/rocker) repository (providing
containers for base R, R and RStudio as well R-devel builds) as well as the
associated other containers such as
[Hadleyverse](https://github.com/rocker-org/hadleyverse) or
[rOpenSci](https://github.com/rocker-org/ropensci).

If there is interest we may revive this RStudio _and_ iPython/Jupyter
container within the [Rocker](https://github.com/rocker-org) organization.

Older notes remain below.

### Docker for Software Carpentry

This repository contains a (at this point very speculative) Dockerfile which
defines an image with software used in Software Carpentry bootcamps.

At this point, this is really just to see if a Dockerfile would be useful.

### Getting Started

- [Install Docker for your system](https://docs.docker.com/installation)

- Run:

```bash
docker run -d -p 8888:8888 -p 8787:8787 --name swc cboettig/swc
```
- boot2docker users (Mac/Windows): run: `boot2docker ip` to get the IP address (`<ip>` below).  Linux users can just use `localhost`.

- For RStudio Server, go to: `http://<ip>:8787`
- For an iPython Notebook, go to: `http://<ip>:8888`

- For a bash terminal, instead do:

```bash
docker run --rm -it cboettig/swc /bin/bash
```
To save your work:

```bash
docker commit swc user/swc
```

Note  that `swc` is the name we gave when running the container above, while `user/swc` can be any name you choose for your saved image.  Use this name in future in place of `cboettig/swc` to launch
your saved container.

### Possible TODOs

* add Anaconda: default install starts from a 300mb which seems like overkill
* add Python IDEs: with Wing or PyCharm; both have installers; or just Spyder?
* add X11 exporters as [described here](http://blog.docker.com/2013/07/docker-desktop-your-desktop-over-ssh-running-inside-of-a-docker-container/) ?


### Docker Hub

This repository is linked to an
[automated build facility at Docker](https://registry.hub.docker.com/u/eddelbuettel/docker-swc/)
and one can retrieve the corresponding images via a standard `docker pull`.

### See Also

There are more images available for [Docker for R](https://github.com/eddelbuettel/rocker).

### Authors

Carl Boettiger & Dirk Eddelbuettel

### License

GPL (>= 2)

