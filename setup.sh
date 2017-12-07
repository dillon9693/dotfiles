# Clone the pyenv directory into the home directory
git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv

# Bash Script to create symlinks for file in current directory
# in the current user's home directory

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in .{aliases,bash_profile,bashrc,functions,git-completion,profile}; do
  rm -f $HOME/$file
  ln -s $DIR/$file $HOME/$file
done

echo "Symlinks created!"