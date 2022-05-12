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
echo "alias cls='clear ; ls -l'
alias cgs='clear ; git status'
alias cdp='clear ; docker ps -a'
alias ct='clear ; tree'
alias cls='clear ; ls -l'
alias ct='clear ; tree'
alias gs='clear ; git status'
alias l='ls -l'
alias la='ls -A'
alias ll='ls -l'

# Customised path additions
PATH=\$PATH:~/bin
" > ~/.bash_aliases

