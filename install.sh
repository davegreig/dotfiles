#! /bin/bash

# 0. Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 1. Install Homebrew
if ! [ -x "$(command -v brew)" ]; then
  echo -e "Downloading and installing Homebrew 🍺"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# 2. Install all the brews
echo -e "\n🍻 Update Homebrew settings...\n"
brew analytics off
brew install $(<brew-list)
brew install --cash $(<brew-cask-list)

# 3. Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
## Manual step - set the theme
```Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.```

# 4. Setup MacOS preferences
./macos.sh

#5. Set up iTerm2
echo -e "\nCopying across iTerm2 Preferences...\n"
cp iTerm/itermProfile.json ~/Library/Application\ Support/iTerm2/DynamicProfiles
