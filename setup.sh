# Clone the pyenv directory into the home directory
git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv

# @TODO: can we always get the latest version?
# Install NVM
sudo wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# Bash Script to create symlinks for file in current directory
# in the current user's home directory

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in .{aliases,bash_profile,bashrc,functions,git-completion,profile,vimrc}; do
  rm -f $HOME/$file
  ln -s $DIR/$file $HOME/$file
done

echo "Symlinks created!"
