# .bash_profile

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

[[ -s ~/.profile ]] && source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.bash/path.sh
source ~/.bash/env.sh
source ~/.bash/completion.sh
source ~/.bash/aliases.sh
source ~/.bash/functions.sh
source ~/.bash/prompt.sh
# source ~/.bash/lib/gitpair.sh
source ~/.bash/greeting.sh

