#!/bin/bash

if hash yum 2>/dev/null; then
    sudo yum -y install ctags cscope vim htop
else
    sudo apt-get install ctags cscope vim htop
fi
