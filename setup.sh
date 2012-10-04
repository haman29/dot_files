#!/bin/bash
ln -s ~/dot_files/.screenrc ~/.screenrc
ln -s ~/dot_files/.vimrc ~/.vimrc

if [ ! -L ~/.bashrc ] && [ -e ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.org
fi
ln -s ~/dot_files/.bashrc ~/.bashrc

if [ ! -L ~/.bash_profile ] && [ -e ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile.org
fi
ln -s ~/dot_files/.bash_profile ~/.bash_profile
