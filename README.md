# glulxe-appimage-build


## Synopsis

Build an AppImage of the glulxe interactive fiction interpreter


## Description

glulxe-appimage-build will download source code for `glkterm` and `glulxe` and
build all of it. If successful, the `glulxe` binary will be packaged into an
AppImage.

It's normal to build AppImages on an older version of a Linux distro. To that
end, glulxe-appimage-build was written to run on Ubuntu 14.04

You will need these tools on your PATH:  
linuxdeploy: https://github.com/linuxdeploy/linuxdeploy/releases  
linuxdeploy-plugin-appimage: https://github.com/linuxdeploy/linuxdeploy-plugin-appimage/releases


## Getting and running glulxe-appimage-build

Browse [the source](https://github.com/dino-/glulxe-appimage-build)

Get source with git and run the included script

    $ git clone https://github.com/dino-/glulxe-appimage-build.git
    $ cd glulxe-appimage-build
    $ ./glulxe-appimage-build.sh

If it was successful you should see a `glulxe-x86_64.AppImage` binary in `.`

To test functionality a Glulx version of Adventure has been included, it's the
file `Advent.ulx`


## Related material

- [glulxe](https://www.eblong.com/zarf/glulx/)
- [glkterm](https://www.eblong.com/zarf/glk/index.html)
- [AppImage](https://appimage.org/)


## Contact

Dino Morelli <dino@ui3.info>
