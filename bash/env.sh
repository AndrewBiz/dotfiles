export EDITOR='vim'
export OCTOPRESS_EDITOR='vim +'  # Go to last line.

#history
export HISTSIZE=2000
export HISTTIMEFORMAT='%b %d %I:%M %p '
export HISTCONTROL=ignoreboth # ignoredups:ignorespace
export HISTIGNORE="history:exit:df:h"

# Colors in Vim.
export TERM='xterm-256color'

# GREP_COLOR codes
#  Attributes:          Text color:             Background:
#  0 reset all          30 black                40 black
#  1 bright             31 red                  41 red
#  2 dim                32 green                42 green
#  4 underscore         33 yellow               43 yellow
#  5 blink              34 blue                 34 blue
#  7 reverse            35 purple               45 purple
#  8 hidden             36 cyan                 46 cyan
#                       37 white                47 white
# separate with ";"
export GREP_COLOR="34;47"
export GREP_OPTIONS="--color=auto"

# Pow shouldn't hide errors in non-ASCII apps:
# https://github.com/37signals/pow/issues/268
# Also fixes UTF-8 display in e.g. git log.
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG

# mailer
export SEND_ROBOT_PASSWORD='robot123qwe'

