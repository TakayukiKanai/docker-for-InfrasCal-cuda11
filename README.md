Docker-for-InfrasCal
=========
- Docker for [InfrasCal](https://github.com/youkely/InfrasCal), infrastructure-based calibration of a multi-camera rig
- This repository follows awesome implementation [docker-for-InfrasCal](https://github.com/AsakoKabe/docker-for-InfrasCal)

## Setup

- Prepare dataset directory
  - Such as `/data/datasets/`
  - That will be automatically mounted by [docker/start.sh](docker/start.sh)

- Enter followings
  ```bash
  git submodule sync
  git submodule update --init
  ``` 

- Docker build
  ```bash
  cd docker/
  ./build.sh
  ```

- Start container in `docker/`
  ```bash
  ./start.sh
  ./into.sh
  ```


## Test

```bash
# After going into a container by `./into.sh`
mkdir build/
source scripts/build.sh
source scripts/run_sample_code.sh
```