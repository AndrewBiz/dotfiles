# Dotfile bins.
export PATH=$HOME/.bin:$PATH

# So homebrew /usr/local/bin is preferrable to /usr/bin.
export PATH=/usr/local/sbin:/usr/local/bin:$HOME/.linuxbrew/bin:$PATH

# anb's scripts
export PATH=$HOME/dev/uni:$HOME/dev/mac:$PATH

# Make autojump's "j" available.
# brew install autojump
# https://github.com/joelthelion/autojump
if command -v brew >/dev/null && [ -f `brew --prefix`/etc/autojump.sh ]; then
  . `brew --prefix`/etc/autojump.sh
fi

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
