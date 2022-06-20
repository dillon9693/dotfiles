# Install any dependencies
brew install nvm

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install solarized Vim theme
git clone https://github.com/altercation/vim-colors-solarized.git
mkdir -p ~/.vim/colors
cp vim-colors-solarized/colors/solarized.vim ~/.vim/colors
rm -rf vim-colors-solarized/

# Bash Script to create symlinks for file in current directory
# in the current user's home directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in .{zshrc,aliases,functions,gitignore_global,vimrc}; do
  rm -f $HOME/$file
  ln -s $DIR/$file $HOME/$file
done

git config --global core.excludesfile $HOME/.gitignore_global

echo ""
echo "#################"
echo "Symlinks created!"
echo "#################"
