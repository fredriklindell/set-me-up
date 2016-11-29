#!/bin/bash

curl -L -s -o RPM-GPG-KEY-rpmfusion-nonfree-fedora-$(rpm -E %fedora) "http://rpmfusion.org/keys?action=AttachFile&do=get&target=RPM-GPG-KEY-rpmfusion-nonfree-fedora-$(rpm -E %fedora)"
curl -L -s -o RPM-GPG-KEY-rpmfusion-free-fedora-$(rpm -E %fedora) "http://rpmfusion.org/keys?action=AttachFile&do=get&target=RPM-GPG-KEY-rpmfusion-free-fedora-$(rpm -E %fedora)"
rpm --import RPM-GPG-KEY-rpmfusion-free-fedora-$(rpm -E %fedora)
rpm --import RPM-GPG-KEY-rpmfusion-nonfree-fedora-$(rpm -E %fedora)
rm RPM-GPG-KEY-rpmfusion-*free-fedora-$(rpm -E %fedora)
dnf install -y http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
