zmodload zsh/zprof
skip_global_compinit=1

ZSH_DISABLE_COMPFIX="true"

ZSH_THEME=""
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_MAGIC_FUNCTIONS=true
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
	fzf
	osx
    zsh-syntax-highlighting
    docker 
    docker-compose
)

export DOT_FILES=$HOME/dotfiles 

source $HOME/.profile
source ~/.config/shell/init
source ~/.config/shell/func
source ~/.config/shell/fzf
source ~/.config/shell/aliases
source ~/.config/shell/env
source ~/.config/shell/styles

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $DOT_FILES/shell/fzf

source $ZSH/oh-my-zsh.sh

bindkey -v # vim keymapping on shell

fpath+=$HOME/.zsh
zmodload zsh/nearcolor

autoload -U promptinit; promptinit

prompt pure
