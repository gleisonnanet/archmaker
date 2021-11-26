#!/bin/bash
gpg --keyserver pgp.mit.edu --recv-key DBD2CE893E2D1C87
sudo pacman -S base-devel git qt5-base archiso xterm qconf make cmake fakeroot boost qt5ct   plasma kio-extras kdevelop kdesvn kde-development-environment-meta yay

sudo pacman -S yay automoc4

sudo pacman -S kde-runtime
