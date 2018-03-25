#!/bin/bash

HOMEDIR=/home/vagrant

# Updates
#sudo update-locale LANG=en_US.UTF-8 LANGUAGE=en.UTF-8
sudo add-apt-repository ppa:cwchien/gradle -y
#sudo add-apt-repository ppa:webupd8team/java -y 

sudo apt-get -y update
sudo apt-get install -y linux-headers-$(uname -r) build-essential dkms
sudo apt-get -y install git
sudo apt-get -y install vim
sudo apt-get -y install python-pip
sudo apt-get -y install gdb gdb-multiarch
sudo apt-get -y install virtualenv
sudo apt-get -y install git
sudo apt-get -y install openjdk-8-jdk  
sudo apt-get -y install android-tools-adb android-tools-fastboot
sudo apt-get -y install wget unzip
#echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
#echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
#sudo apt-get -y install oracle-java8-installer # Need Oracle (not openjdk) for apktool
sudo apt-get -y install gradle
sudo apt-get -y install libncurses5-dev
sudo apt-get install libxml2-dev libxslt1-dev # to install needle reqs
 



cd $HOMEDIR
mkdir $HOMEDIR/tools
mkdir $HOMEDIR/tools/android
mkdir $HOMEDIR/tools/ios
mkdir $HOMEDIR/tools/misc
mkdir $HOMEDIR/docs

cd $HOMEDIR/docs
git clone https://github.com/OWASP/owasp-mstg
git clone https://github.com/OWASP/owasp-masvs

sudo pip install pyopenssl
sudo pip install drozer
sudo pip install frida
sudo pip install readline twisted paramiko sshtunnel  biplist # Needle requirements
# sudo pip install mitmproxy

cd $HOMEDIR/tools/android
git clone https://github.com/skylot/jadx
cd jadx
./gradlew dist

cd $HOMEDIR/tools/android
wget https://github.com/mwrlabs/drozer/releases/download/2.3.4/drozer-agent-2.3.4.apk
git clone https://github.com/linkedin/qark/
git clone https://github.com/AndroBugs/AndroBugs_Framework
git clone https://github.com/pxb1988/dex2jar

cd $HOMEDIR/tools/android
git clone git://github.com/iBotPeaches/Apktool.git
#cd Apktool
#./gradle build shadowJar

cd $HOMEDIR/tools/ios
git clone https://github.com/mwrlabs/needle
wget http://www.newosxbook.com/tools/jtool.tar

cd $HOMEDIR/tools/misc
git clone https://github.com/radare/radare2
cd radare2
./sys/install.sh
