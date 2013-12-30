#!/bin/bash

#
# packages
#
# update & upgrade
pacman --noconfirm -Syyu

pacman --needed --noconfirm -S base-devel lsb-release git vim 
