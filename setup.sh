# Install any dependencies
brew install pyenv nvm

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
