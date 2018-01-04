# Clone the pyenv directory into the home directory
if [ ! -d "$HOME/.pyenv" ]; then
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
fi

# @TODO: can we always get the latest version?
# Install NVM
if [ ! -d "$HOME/.nvm" ]; then
    sudo wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
fi

# Bash Script to create symlinks for file in current directory
# in the current user's home directory

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in .{aliases,bash_profile,bashrc,functions,git-completion,gitignore_global,profile,vimrc}; do
  rm -f $HOME/$file
  ln -s $DIR/$file $HOME/$file
done

git config --global core.excludesfile $HOME/.gitignore_global

echo "Symlinks created!"
