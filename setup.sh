# Enter email to be used for Git
echo "Enter email below:"
read -p 'Email: ' useremail

echo $useremail

# Install any dependencies
brew install nvm

echo "Installing Fira Code font"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
echo "Fira Code font installed. Make sure to update programs (e.g. ITerm, VS Code) to use it!"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install solarized Vim theme
git clone https://github.com/altercation/vim-colors-solarized.git
mkdir -p ~/.vim/colors
cp vim-colors-solarized/colors/solarized.vim ~/.vim/colors
rm -rf vim-colors-solarized/

# Install zsh extensions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


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

echo "Setting up Xcode"
xcode-select --install
echo "Xcode setup complete!"

cp .gitconfig ~/.gitconfig

git config --global user.name "Dillon Kerr"
git config --global user.email $useremail

echo "#################"
echo "Done!"
echo "#################"
