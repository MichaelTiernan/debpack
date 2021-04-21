#!/bin/bash

cd amd64
dpkg-deb --build wmic
mv wmic.deb /srv/repos/apt/nems/
cd /srv/repos/apt/nems/
reprepro includedeb 1.6 wmic.deb
rm wmic.deb

cd ../arm64
dpkg-deb --build wmic
mv wmic.deb /srv/repos/apt/nems/
cd /srv/repos/apt/nems/
reprepro includedeb 1.6 wmic.deb
rm wmic.deb
