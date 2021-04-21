#!/bin/bash

package=nems-www

cd all
dpkg-deb --build $package
mv ${package}.deb /srv/repos/apt/nems/
cd /srv/repos/apt/nems/
reprepro includedeb 1.6 ${package}.deb
rm ${package}.deb
