# update & upgrade
apt-get update -y
apt-get upgrade -y

# install with apt-get
apt-get install -y git zsh apache2

# install git-now from github
git clone --recursive git://github.com/iwata/git-now.git
cd git-now
make prefix=/usr install

# get setting files
cd /home/vagrant
wget https://raw.githubusercontent.com/yterajima/dotfiles/master/.zshrc
wget https://raw.githubusercontent.com/yterajima/dotfiles/master/.vimrc

# get theme file for vim
mkdir -p .vim/colors
cd .vim/colors
wget https://raw.githubusercontent.com/yterajima/dotfiles/master/.vim/colors/e2esound.vim

# Change SHELL
chsh -s /usr/bin/zsh vagrant
echo "Change SHELL: bash => zsh"

# Start Apache2
service apache2 start

