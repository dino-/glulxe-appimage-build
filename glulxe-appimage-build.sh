#! /bin/bash

set -e

glktermVersion='104'
glulxeVersion='054'

# Might be necessary on your system
# sudo apt-get install libncurses5-dev

# Get and unpack the glkterm source
glktermSrcArchive="glktermw-${glktermVersion}.tar.gz"
wget http://www.ifarchive.org/if-archive/programming/glk/implementations/$glktermSrcArchive
tar xzf $glktermSrcArchive

# Get and unpack the glulxe source
glulxeSrcArchive="glulxe-${glulxeVersion}.tar.gz"
wget http://www.ifarchive.org/if-archive/programming/glulx/interpreters/glulxe/$glulxeSrcArchive
tar xzf $glulxeSrcArchive

# Build glkterm
pushd glkterm
# Hack up the source for building on Ubuntu 14.04
sed -i -e "s/<ncursesw\/ncurses.h>/<ncurses.h>/g" gtncursesw.c
sed -i -e "95 a typedef int wint_t;" gtncursesw.c
make
popd

# Build glulxe
pushd glulxe
make GLKINCLUDEDIR=../glkterm GLKLIBDIR=../glkterm GLKMAKEFILE=Make.glktermw
popd

# Pack glulxe into an AppImage
linuxdeploy-x86_64.AppImage --appdir=AppDir --executable=glulxe/glulxe --desktop-file=glulxe.desktop --icon-file=unix-terminal.svg --output=appimage
