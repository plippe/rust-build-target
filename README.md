# Rust build target

Compiling rust for certain targets, with certain linkers, can be a pain.
To facilitate the process, a set of images are described in this repository, and hosted on [Docker Hub](https://hub.docker.com/r/plippe/rust-build-target/).

```sh
docker run --rm -it -v $(PWD):/opt/src -w /opt/src plippe/rust-build-target:gl-ar150
```
