#!/bin/bash

for pkgName in $(cat packages.txt)
  
do
  pacman -S --forece --noconfirm $pkgName
done
echo "Reinstalled All Packages"

