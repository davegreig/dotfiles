# handy shortcuts
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"
alias utc-timestamp="date -u +"%Y-%m-%dT%H:%M:%SZ""
alias resource="source ~/.zshrc"

# general bash shortcuts
alias c='clear'
alias cls='clear'
alias h='history'
alias v="vim"
alias _="sudo"
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias copy="tr -d '\n' | pbcopy"
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias vz="vim ~/.zshrc"

# osx shortcuts
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"

# git aliases
alias gadog='git log --all --decorate --oneline --graph'