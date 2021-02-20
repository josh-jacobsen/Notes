# Bash

### Configuring colors
[Here](https://misc.flogisoft.com/bash/tip_colors_and_formatting) is some good background 

To get colors working, commands have to be invoked with `--color`. For example `ls -lah --color`

Customise console colors by adding a `~.minttyrc` file

### Auto complete for git commands 
Save the file from [here](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) as `~/.git-completion.bash`

Add `source ~/.git-completion.bash` to `.bashrc`

### Configuring prompt
Save the file from [here](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) as `~/.git-prompt.sh`

Add the following to `~/.bashrc`:

```
# store colors
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[01;33m\]"
BLUE="\[\033[00;34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[00;32m\]"
RED="\[\033[0;31m\]"
VIOLET='\[\033[01;35m\]'
 
function color_my_prompt {
  local __user_and_host="$GREEN\u@\h"
  local __cur_location="$BLUE\W"           # capital 'W': current directory, small 'w': full file path
  local __git_branch_color="$GREEN"
  local __prompt_tail="$VIOLET$"
  local __user_input_color="$GREEN"
  local __git_branch=$(__git_ps1); 
  
  # colour branch name depending on state
  if [[ "${__git_branch}" =~ "*" ]]; then     # if repository is dirty
      __git_branch_color="$RED"
  elif [[ "${__git_branch}" =~ "$" ]]; then   # if there is something stashed
      __git_branch_color="$YELLOW"
  elif [[ "${__git_branch}" =~ "%" ]]; then   # if there are only untracked files
      __git_branch_color="$LIGHT_GRAY"
  elif [[ "${__git_branch}" =~ "+" ]]; then   # if there are staged files
      __git_branch_color="$CYAN"
  fi
   
  # Build the PS1 (Prompt String)
  PS1="$__user_and_host $__cur_location$__git_branch_color$__git_branch $__prompt_tail$__user_input_color "
}
 
# configure PROMPT_COMMAND which is executed each time before PS1
export PROMPT_COMMAND=color_my_prompt
 
# if .git-prompt.sh exists, set options and execute it
if [ -f ~/.git-prompt.sh ]; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWSTASHSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM="auto"
  GIT_PS1_HIDE_IF_PWD_IGNORED=true
  GIT_PS1_SHOWCOLORHINTS=true
  . ~/.git-prompt.sh
fi
```




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
