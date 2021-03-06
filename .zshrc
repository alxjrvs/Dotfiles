export PYTHON_CONFIGURE_OPTS="--enable-framework"
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export ZSH=~/.oh-my-zsh

export EDITOR="/usr/local/bin/nvim"

printf '\n%.0s' {1..100}

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME=powerlevel10k/powerlevel10k
autoload -U promptinit; promptinit
export UPDATE_ZSH_DAYS=1

# Enable autocorrection
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  asdf
  git
  docker
  npm
  rails
  git zsh-z
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  jsontools
  node
  pip
  web-search
  zsh-autosuggestions
  colored-man-pages
  colorize
  common-aliases
  copyfile
)

source $ZSH/oh-my-zsh.sh

# My useful aliases
alias c="clear"
alias q="exit"
alias gs="git status"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias zsh="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias vimrc='nvim ~/.config/nvim/init.vim'
alias ta='tmux attach -t'
alias gpr='git pull --rebase'
local ret_status="%(?:%{$fg[yellow]%}=> :%{$fg[red]%}=> %s)"

bindkey -v
# npm global
export PATH=~/.npm-global/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh
