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

# My custom bash aliases
alias g='git status'
alias gs='git status'
alias gl='git log'
alias gb='git branch'
alias gd='git diff'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias b='cd -'
alias v='vim'
alias c='clear'
echo "alias g='git status'" >> ~/.bashrc
echo "alias gs='git status'" >> ~/.bashrc
echo "alias gl='git log'" >> ~/.bashrc
echo "alias gd='git diff'" >> ~/.bashrc
echo "alias gb='git branch'" >> ~/.bashrc
echo "alias ..='cd ..'" >> ~/.bashrc
echo "alias ...='cd ../..'" >> ~/.bashrc
echo "alias ....='cd ../../..'" >> ~/.bashrc
echo "alias b='cd -'" >> ~/.bashrc
echo "alias v='vim'" >> ~/.bashrc
echo "alias c='clear'" >> ~/.bashrc
echo "alias a='ack-grep'" >> ~/.bashrc
echo "alias ack='ack-grep'" >> ~/.bashrc
echo "alias grm='git diff --diff-filter=D --name-only -z | xargs -0 git rm'" >> ~/.bashrc
echo "alias rmpyc='find . -name \*.pyc -delete'" >> ~/.bashrc

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
git clone https://github.com/nvie/vim-flake8.git  # PEP 8
pip install jedi
git clone git://github.com/davidhalter/jedi-vim.git  # Python code-completion
git clone https://github.com/mattn/emmet-vim.git  # Fast HTML eiditing

# Install ack-grep.
sudo apt-get install ack-grep

# Make sure git is installed.
sudo apt-get install git

