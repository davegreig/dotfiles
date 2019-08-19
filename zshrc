POWERLEVEL9K_MODE='nerdfont-complete'

source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
source ~/.dotfiles/aliases.zsh
source ~/.dotfiles/git.zsh
source ~/.dotfiles/functions.zsh

# ZSH OPTIONS


# AWS
source ~/.aws-timer/timer.sh

# NVM
source ~/.zsh-nvm/zsh-nvm.plugin.zsh
export NVM_LAZY_LOAD=true

# RBENV
eval "$(rbenv init -)"

# POWERLEVEL9K
POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_CUSTOM_AWS_TIMER=awsTimeRemaining
POWERLEVEL9K_CUSTOM_AWS_ROLE=awsRoleMessage
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir nvm rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time custom_aws_role custom_aws_timer time)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_first_and_last"

# SSH AGENT FUCKERY
ssh-add -A 2>/dev/null;

# THEFUCK
eval $(thefuck --alias fuck)                                                                                                                                          36,1          All