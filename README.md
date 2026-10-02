# Milk-V Duo image-recognition 
## Ubuntu Docker development environment

Build the Ubuntu development image from the repository root:

```sh
docker build -t milkv-duo-dev:ubuntu24 .
```

Start an interactive Ubuntu container with this repository and the Duo SDK
mounted. Set `DUO_SDK_ROOT` to the host path of your SDK checkout:

```sh
export DUO_SDK_ROOT=/path/to/duo-buildroot-sdk-v2

docker run --rm -it \
  --user "$(id -u):$(id -g)" \
  --env HOME=/tmp \
  --volume "$PWD:/work" \
  --volume "./duo-buildroot-sdk-v2:/work/duo-buildroot-sdk-v2" \
  --workdir /work \
  milkv-duo-dev:ubuntu24
```
