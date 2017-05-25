#!/bin/bash
sudo pacman -Syu
sudo paccache -ruk0 && sudo paccache -rk0 
sudo paccache -ruk1 && sudo paccache -rk1 
sudo paccache -ruk2 && sudo paccache -rk2 
sudo pacman -Rscn $(pacman -Qttdq)
sudo pacman -Scc
sudo pacman-optimize && sudo sync
