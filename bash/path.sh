# Dotfile bins.
export PATH=~/.bin:$PATH

# So homebrew /usr/local/bin is preferrable to /usr/bin.
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

# anb's scripts
export PATH=~/dev/uni:~/dev/mac:$PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Make autojump's "j" available.
# brew install autojump
# https://github.com/joelthelion/autojump
if command -v brew >/dev/null && [ -f `brew --prefix`/etc/autojump.sh ]; then
  . `brew --prefix`/etc/autojump.sh
fi
