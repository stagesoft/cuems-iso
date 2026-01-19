# cuems-iso
Creation of live-usb iso images for system-wide installation on FormitGo machines

## Structure
ISO configurations are placed inside `debian-images` for each codename

`scripts` folder contains utility scripts to unify common operations

`common` folder contains reused files among different images that are added after a fresh imamge creation.


## Usage
New releases can be created with:
```bash
./scripts/new_build.sh <RELEASE_CODENAME>
```

## Installation
Requires `live-build` to run new images creation:

```bash
# Add package dependencies
apt install live-build --install-suggests
```
