#!/bin/bash
pacaur -Syyu --noconfirm --noprogressbar --needed
paccache -ruk0 && paccache -rk0 
paccache -ruk2 && paccache -rk1 
paccache -ruk2 && paccache -rk2 
pacman -Rscn $(pacman -Qttdq) --noconfirm --noprogressbar
pacman -Scc --noconfirm --noprogressbar --needed
pacman-optimize && sync
