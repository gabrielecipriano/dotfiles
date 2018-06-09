
#Installing zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#VIM-CONFIG
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#POWERLINE-FONTS
git clone https://github.com/powerline/fonts.git --depth=1
fonts/install.sh
rm -rf fonts
