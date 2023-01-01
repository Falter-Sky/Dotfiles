
#
# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#

neofetch

# pnpm
export PNPM_HOME="/home/adalan/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias q='exit'
alias ..='cd ..'
alias ls='lsd -Fl'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias t='tree'
alias rm='rm -v'
alias open='xdg-open'

alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias nv='neovide'

alias gs='git status'
alias ga='git add -A'
alias gc='git commit'
alias gp='git push'
alias gd='git diff * | bat'

alias pu='sudo pacman -Syu'
alias pi='sudo pacman -S'
alias pr='sudo pacman -Rsu'
alias pq='sudo pacman -Qe'
alias autoclean='sudo pacman -Qtdq | sudo pacman -Rns -'

alias b='bat'
alias rr='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias z='zathura'

# System aliases
alias standby='xset dpms force standby' 

# Colored Output
#alias ls='ls -laGH --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'

export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER='less -R --use-color -Dd+r -Du+b'
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Setting Default Editor
export EDITOR='nvim'

# History in cache directory:
HISTFILE=~/.cache/zsh/history
export HISTSIZE=1000
export SAVEHIST=1000

# ZSH Case-Insensitive Autocomplete
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Load Version Control System into Prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Set up Git Branch Details into Prompt
zstyle ':vcs_info:git:*' formats 'on %F{red} %b%f '

# Prompt Appearance
setopt PROMPT_SUBST
PROMPT='%B%F{green}[%n%f@%F{green}%m]%f %F{blue} %1~%f%b ${vcs_info_msg_0_}>===> '

# Setting default Ranger RC to false to avoid loading it twice
export RANGER_LOAD_DEFAULT_RC='false'

# Theme for bat (batcat)
export BAT_THEME='base16'

# Keybindings for FZF
#source /usr/share/fzf/key-bindings.zsh
#source /usr/share/fzf/completion.zsh

# StarShip Init
eval "$(starship init zsh)"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# ZSH Autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH Syntax Highlighting - must be at the end of .zshrc!
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
