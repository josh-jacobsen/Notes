# Bash

### Using ssh keys

```
eval `ssh-agent.exe`


ssh-add ~josh.jacobsen/.ssh/mfb_laptop
Identity added: /c/Users/Josh.Jacobsen/.ssh/mfb_laptop (mfb_laptop)
```

### Auto-launching `ss-agent`
Courtesy of [this gist](https://gist.github.com/bsara/5c4d90db3016814a3d2fe38d314f9c23)

Add the following to `.bashrc`

```
# Start SSH Agent
#----------------------------

SSH_ENV="$HOME/.ssh/environment"

function run_ssh_env {
  . "${SSH_ENV}" > /dev/null
}

function start_ssh_agent {
  echo "Initializing new SSH agent..."
  ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo "succeeded"
  chmod 600 "${SSH_ENV}"

  run_ssh_env;

  ssh-add ~josh.jacobsen/.ssh/mfb_laptop;
}

if [ -f "${SSH_ENV}" ]; then
  run_ssh_env;
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_ssh_agent;
  }
else
  start_ssh_agent;
fi
```

### .bashrc
This is after I downloaded the Princeton algorithm course and borked my Gitbash setup. So this may not be useful.....

```
# a few command-prompt colors to choose from
BLACK="\[$(tput setaf 0)\]"
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
BLUE="\[$(tput setaf 4)\]"
MAGENTA="\[$(tput setaf 5)\]"
CYAN="\[$(tput setaf 6)\]"
WHITE="\[$(tput setaf 7)\]"
DEFAULT="\[$(tput sgr0)\]"

# set command prompt to show current directory
export PS1="${BLUE}\w> ${DEFAULT}"

# Establish a safe environment.
set -o ignoreeof         # Do not log out with <Ctrl-D>
set -o noclobber         # Do not overwrite files via '>'.
alias rm="rm -i"         # Prompt before removing files via 'rm'.
alias cp="cp -i"         # Prompt before overwriting files via 'cp'.
alias mv="mv -i"         # Prompt before overwriting files via 'mv'.
alias ln="ln -i"         # Prompt before overwriting files via 'ln'.

# Use 'less' instead of 'more'.
# Windows Git Bash provides 'less', but not 'more'.
alias less="less --quit-at-eof --no-init --tabs=4 --RAW-CONTROL-CHARS"
alias more="less"

# Add colors to 'ls'.
alias ls='ls -GF'

# Add color to 'grep' and relatives (when not piped or redirected).
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# When the shell exits, append to the history file instead of overwriting it.
shopt -s histappend

# Make the command line history ignore duplicate command lines.
export HISTCONTROL=erasedups:ignoredups

# Make the command-line history show dates and times.
export HISTTIMEFORMAT="%F %T "

# Support non-ASCII characters in terminal.
# Note: use LC_ALL="C" if you want sort to behave in expected way.
export LC_ALL="en_US.UTF-8"
```

### bash_profile
```
# make .bash_profile same as .bashrc
if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
fi

```
