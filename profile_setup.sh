#
# SSH Configuration
#
mkdir ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
curl https://github.com/simplified.keys >> ~/.ssh/authorized_keys
#
# Vim Configuration
#
curl https://raw.githubusercontent.com/simplified/configs/main/.vimrc > ~/.vimrc
#
# Set up alias'
#
echo "alias ct='clear ; tree'
alias cdp='clear ; docker ps -a'
alias cgs='clear ; git status'
alias cls='clear ; ls -l'
alias gs='git status'
alias l='ls -l'
alias la='ls -A'
alias ll='ls -l'
" > ~/.bash_aliases
#
# Customised path additions
#
PATH=\$PATH:~/bin
