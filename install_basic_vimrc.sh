#!/bin/bash

#cd ~/.vim_runtime
#cat ~/.vim_runtime/vimrcs/basic.vim > ~/.vimrc
cat ./vimrcs/basic.vim > ~/.vimrc

#install pathogen for vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

if [ $? -eq 0 ]; then
    git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
    sudo bash -c "curl https://beyondgrep.com/ack-2.18-single-file > /bin/ack && chmod 0755 /bin/ack"
else
	exit
fi

if [ $? -eq 0 ]; then
	echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
else
	echo "Failed to install Basic Vim configuration."
fi
