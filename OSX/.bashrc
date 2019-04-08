# Source config files in .bash/
[ -f ~/.bash/.bash_history_config ] && source ~/.bash/.bash_history_config
[ -f ~/.bash/.bash_prompt_config ] && source ~/.bash/.bash_prompt_config
[ -f ~/.bash/.bash_aliases ] && source ~/.bash/.bash_aliases
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.bash/.bash_path_config ] && source ~/.bash/.bash_path_config
[ -f ~/.bash/.bash_colors_config ] && source ~/.bash/.bash_colors_config

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Set editor
export EDITOR=nvim

# FZF settings
export FZF_DEFAULT_COMMAND='rg --files --no-messages --hidden --follow --glob "!.git/" --glob "!yarn/" --glob "!node_modules/"'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
