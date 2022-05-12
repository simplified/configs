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
# Git configuration
#
read -p "Enter your name [Ollie Sheridan]: " NAME
NAME=${NAME:-Ollie Sheridan}
read -p "Enter your email : " EMAIL
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global credential.helper store
#
# Update Root CA Certificate into trust store
#
sudo echo "-----BEGIN CERTIFICATE-----
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
-----END CERTIFICATE----- 
" >> /etc/ssl/certs/ca-certificates.crt
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

