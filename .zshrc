export ZSH="/Users/nchen/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(zsh-completions zsh-autosuggestions git history-substring-search extract vi-mode zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"

export HOMEBREW_NO_AUTO_UPDATE=true
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/bottles

export EDITOR='/usr/local/bin/nvim'

bindkey jk vi-cmd-mode
bindkey ',' autosuggest-accept


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nchen/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nchen/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nchen/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nchen/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# tmux conda
# source /Users/nchen/miniconda3/etc/profile.d/conda.sh
[[ -z $TMUX ]] || conda deactivate; conda activate base

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

alias vim="nvim"
alias vi="nvim"
alias svim="sudo -E nvim"
alias nvi="nvim"
alias cl="clear"
alias ex="extract"
alias tnew="tmux new -s"
alias tsw="tmux select-window -t"
alias tnw="tmux new-window -n"
alias ta="tmux attach -t"
alias tls="tmux ls"
alias trs="tmux rename-session -t"
alias tk="tmux kill-session -t"
alias cel="conda env list"
alias ca="conda activate"
alias cls="conda list"
eval $(thefuck --alias)
