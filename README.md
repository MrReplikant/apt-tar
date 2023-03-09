Master
# Apt-Tar: The Spiritual Successor to apt-zip!
ACKNOWLEDGEMENT:
This work is based on the work of mishalew1, credit goes to them for laying the groundwork of this effort. 

WARNING: This program DOES support serving packages cross-architecture now, and such requires the target arches being enabled on your marchine, but you cannot pull a package from more than one architecture at a time!

## What makes Apt-Tar unique?
It doesn't just pull dependencies your own machine still needs, it retrieves them recursively. This means you can install this program regardless of whether the target machine has all the same packages or not. No need to use VM's to get all the dependencies! Apt-Tar also does one thing that Cube-Get, and Apt-Offline, and even it's spiritual predecessor Apt-Zip cannot: it can use packages from local repositories! This includes packages obtained via apt-cdrom, and packages from a local mirror created by apt-mirror, or whatever program you use to make your own local repos.

## How to install Apt-Tar 
Use the following steps: 

git clone https://github.com/MrReplikant/apt-tar

cd apt-tar

sudo ./install-apt-tar.sh

Voila, installation complete!

## How to use Apt-Tar
Master
example: sudo apt-tar i386 inkscape

The above will pull all of the dependencies, and put them all in the file "debs-$ARCH.tar.gz", where $ARCH is your given architecture, which can then be transferred to another machine by any media you wish!

Once transferred over to the target machine, extract the debs-$ARCH.tar.gz file, and then cd into the "debs" folder. From here you will run:

sudo ./installdebs.sh

from there, let the script do the rest! 
