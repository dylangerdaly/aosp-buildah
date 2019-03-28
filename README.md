# Android AOSP Dockerfile

Dockerfile for Compiling Android AOSP

## Getting Started

Assuming you're running Fedora Silverblue (Buildah & Podman) - `/work` is being used as an example.

```
git clone https://github.com/dylangerdaly/aosp-buildah.git
cd aosp-buildah
buildah bud .
# You should have a new image
podman images
# Note the Image ID
podman run --rm -it -v /work/pie:/build:Z -v /work/ccache:/ccache:Z -v /work/ssh_keys:/home/build/.ssh:Z <IMAGE_ID> bash
```

Don't forget to set the ccache size!

`prebuilts/misc/linux-x86/ccache/ccache -M 70GB`
