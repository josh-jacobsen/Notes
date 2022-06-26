# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/carnifx/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/carnifx/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/carnifx/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/carnifx/.fzf/shell/key-bindings.bash"
