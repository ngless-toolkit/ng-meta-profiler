# Usage

These containers can then be used directly or via the convenience script [ng-meta-profiler.sh](https://github.com/ngless-toolkit/ng-meta-profiler/blob/master/ng-meta-profiler.sh).


# Creation

These Dockerfiles create ng-meta-profiler docker images that include all required data ready to be used.

For bugfix releases an alternative set of docker recipes exist (`docker_reuse/*`) that reuse previous images instead of building from scratch.

In the base folder or `docker_reuse/*` run either `docker-compose build` to build all containers at once or use the `build_and_push.sh` script to build and upload one at a time.
If using `build_and_push.sh` you should first run `docker login`. In addition this script also creates singularity images if all docker images are successfully built.
This operation will take several hours and requires +300GB of disk space and ~60GB of RAM.
If using the `docker_reuse/` recipes the only requirement is the disk space, memory and cpu time are negligible.


# Update

In order to create a new release the following steps are required:
* Edit `Dockerfile-ngless` to download the new version binary.
* Edit `Dockerfile-ng-*` to build from `nglesstoolkit/ngless:NEW_VERSION`
* Edit `docker-compose.yml` to have all images mention the new version
* Edit `singularity/` recipes to use the new version.

The same procedure is necessary if using the recipes in `docker_reuse/`.
