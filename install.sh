#!/bin/bash

folder=$1

git clone https://github.com/Agrover112/bash_utils.git $folder 


[  -f ~/.bash_aliases ] && cat $folder/Agrover112/bash_utils >> ~/.bashrc  || cat $folder/Agrover112/bash_utils >> ~/.bash_aliases 

