#! /bin/bash

# 1. Install Homebrew
if ! [ -x "$(command -v brew)" ]; then
  echo -e "Downloading and installing Homebrew 🍺"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# 2. Install all the brews
./brewlist.sh

# 3. Set up zshrc file
echo -e "\n🗄 Copying across zshrc file and dependencies..."
cp ./zshrc ~/.zshrc
mkdir ~/.dotfiles
cp functions.zsh ~/.dotifles/functions.zsh
cp ./aliases.sh ~/.dotfiles/aliases.zsh
cp ./git ~/.dotfiles/git.zsh

# 4. Set up ZSH
if ! [ -x $ZSH_VERSION ]; then
  echo -e "\nSetting shell to ZSH... \n🔐 You will need to input your password\n"
  chsh -s /bin/zsh
fi

# 5. Set up ZSH options
./setopt.sh

# 5. Setup MacOS preferences
./macos.sh

#6. Set up iTerm2
echo -e "\nCopying across iTerm2 Preferences...\n"
cp iTerm/itermProfile.json ~/Library/Application\ Support/iTerm2/DynamicProfiles

#7. AWS Timer
git clone git@github.com:roadwig/aws-timer.git ~/.aws-timer

#8. NVM plugin
git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm
