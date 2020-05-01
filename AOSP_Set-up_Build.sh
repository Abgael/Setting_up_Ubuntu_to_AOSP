#!/bin/bash
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
#Installing required packages
sudo apt install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip -y
#Recommended
sudo apt install python-networkx libnss-sss:i386 gradle maven clang llvm ninja -y
#Installing Make-3.81
sudo apt install wget
wget https://ftp.gnu.org/gnu/make/make-3.81.tar.gz
tar -xvf make-3.81.tar.gz
cd make-3.81
./configure
make -j4
sudo make install
#Installing Heimdall Suite from Source:
sudo apt install build-essential cmake zlib1g-dev qt5-default libusb-1.0-0-dev libgl1-mesa-glx libgl1-mesa-dev -y
cd ~
wget https://gitlab.com/BenjaminDobell/Heimdall/-/archive/master/Heimdall-master.tar.gz
tar -xvf Heimdall-master.tar.gz
cd Heimdall-master/
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make
sudo mv ./bin/heimdall* /usr/local/bin
#SOLVING FAILED TO LOAD MODULE “CANBERRA-GTK-MODULE”
sudo apt install libcanberra-gtk-module
#Install Android Studio
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/3.6.3.0/android-studio-ide-192.6392135-linux.tar.gz
tar -xvf android-studio-ide-192.6392135-linux.tar.gz
sudo mv android-studio /usr/local/
cd /usr/local
sudo chown root:root android-studio
sudo chmod -R 755 android-studio
cd android-studio/bin
./studio.sh
#KVM/Installation
sudo apt install cpu-checker -y
kvm-ok
sudo apt install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils -y
sudo apt install virt-viewer -y
sudo adduser `id -un` libvirtd
sudo adduser `id -un` kvm
virsh list --all
sudo chown root:libvirtd /dev/kvm
sudo apt-get install virt-manager
sudo apt install virt-manager
