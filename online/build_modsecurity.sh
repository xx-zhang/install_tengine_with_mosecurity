#!/bin/bash


function dynamic_install(){
    echo "===="
    # https://github.com/SpiderLabs/ModSecurity/wiki/Compilation-recipes-for-v3.x#centos-7-minimal-dynamic
}


function install(){
        git clone https://github.com/SpiderLabs/ModSecurity \
        &&  cd ModSecurity  \
        &&  git checkout -b v3/master origin/v3/master && /bin/bash build.sh  \
        && yum install -y https://archives.fedoraproject.org/pub/archive/fedora/linux/updates/23/x86_64/b/bison-3.0.4-3.fc23.x86_64.rpm \
        &&  git submodule init  \
        &&  git submodule update  \
        &&  ./configure \
        && make && make install
}



git clone https://github.com/SpiderLabs/ModSecurity \
        &&  cd ModSecurity  \
        &&  /bin/bash build.sh  \
        && yum install -y https://archives.fedoraproject.org/pub/archive/fedora/linux/updates/23/x86_64/b/bison-3.0.4-3.fc23.x86_64.rpm \
        &&  git submodule init  \
        &&  git submodule update  \
        &&  ./configure \
        && make && make install