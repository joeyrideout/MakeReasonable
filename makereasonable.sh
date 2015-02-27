#!/bin/bash
# Script I run to set up my development environment on a new machine.
# https://github.com/joeyrideout/MakeReasonable

# Enable partially-typed commands to be searched for in history
# as if being searched with Ctrl-R.
echo '"\e[A":history-search-backward' >> ~/.inputrc
echo '"\e[B":history-searc-forward' >> ~/.inputrc

# Make bash history infinite (unsetting these variables makes it infinite).
# Add the following lines to ~/.bashrc manually:
# export HISTFILESIZE=
# export HISTSIZE=
# export HISTTIMEFORMAT="[%F %T] "
# export HISTFILE=~/.bash_eternal_history
# PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Add my custom bash aliases.
echo "alias g='git status'" >> ~/.bashrc
echo "alias gs='git status'" >> ~/.bashrc
echo "alias gl='git log'" >> ~/.bashrc
echo "alias gb='git branch'" >> ~/.bashrc
echo "alias cd ...='cd ../..'" >> ~/.bashrc
echo "alias cd ...='cd ../../..'" >> ~/.bashrc
echo "alias b='cd -'" >> ~/.bashrc
echo "alias v='vim'" >> ~/.bashrc
echo "alias c='clear'" >> ~/.bashrc

# Make sure Vim is installed.
sudo apt-get install vim

# Get my vimrc.
wget https://raw.githubusercontent.com/joeyrideout/myvimrc/master/vimrc
mv vimrc ~/.vimrc

# Install vim-pathogen.
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install pathogen plugins.
cd ~/.vim/bundle
git clone https://github.com/nvie/vim-flake8.git
git clone git://github.com/davidhalter/jedi-vim.git
git clone https://github.com/mattn/emmet-vim.git

# Install ack-grep.
sudo apt-get install ack-grep

# Make sure git is installed.
sudo apt-get install git

