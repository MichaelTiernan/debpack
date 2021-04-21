#!/bin/bash
cd all
dpkg-deb --build 9590
mv 9590.deb /srv/repos/apt/nems/
cd /srv/repos/apt/nems/
reprepro includedeb 1.6 9590.deb
rm 9590.deb
