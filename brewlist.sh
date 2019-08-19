#! /bin/bash
echo -e "\n🍻 Update Homebrew settings...\n"
brew analytics off

echo -e "\n💻 Install terminal goodies...\n"
brew install bash
brew install zsh zsh-completions
brew install thefuck
brew install bat
brew install shellcheck
brew install jq
brew install tree
brew install vim
brew tap sambadevi/powerlevel9k
brew install powerlevel9k

echo -e "\n🛠 Install programming goodies...\n"
brew install awscli
brew install rbenv 
brew install elm
brew install elm-format
brew install sbt
brew install ammonite-repl

echo -e "\n💾 Install common applications...\n"
brew cask install brave-browser
brew cask install google-chrome
brew cask install intellij-idea-ce
brew cask install java
brew cask install spotify
brew cask install tableplus
brew cask install typora
brew cask install visual-studio-code
brew cask install whatsapp

echo -e "\n🖋 Install fancy fonts...\n"
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
brew cask install font-hack-nerd-font-mono