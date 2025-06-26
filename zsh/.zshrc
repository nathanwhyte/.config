### DOOM EMACS ###
if [ -d "$HOME/.config/emacs/bin" ]; then
    export PATH=$HOME/.config/emacs/bin:$PATH
fi

### PERSONAL BINARIES ###
if [ -d "$HOME/Code/bin" ]; then
    export PATH=$HOME/Code/bin:$PATH
fi

### DOCKER ###
FPATH="$HOME/.docker/completions:$FPATH"

### BREW ###
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

if [ -d "/opt/homebrew/bin" ]; then
    export PATH=/opt/homebrew/bin:$PATH
fi

if [ -d "/opt/homebrew/sbin" ]; then
    export PATH=/opt/homebrew/sbin:$PATH
fi

### PNPM ###
export PNPM_HOME="/Users/natew/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

### PYTHON ###
if [ -d "$HOME/.local/bin" ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

### RUST ###
if [ -d "$HOME/.cargo/bin" ]; then
    export PATH=$HOME/.cargo/bin:$PATH
fi

if [ -d "$HOME/.local/share/cargo/bin" ]; then
    export PATH=$HOME/.local/share/cargo/bin:$PATH
fi

### GO ###
export GOPATH="$HOME/.go/bin"

if [ -d "$HOME/.go/bin" ]; then
    export PATH=$HOME/.go/bin:$PATH
fi

### RUBY ###
if [ -d "$HOME/.rbenv/bin" ]; then
    export PATH=$HOME/.rbenv/bin:$PATH
fi

### JAVA ###
export JAVA_HOME=`/usr/libexec/java_home -v 23.0.2`

### BAT ###
export BAT_THEME="Dracula"

# pipe `--help` command output through bat
alias -g -- -h="-h 2>&1 | bat --language=help --style=plain"
alias -g -- --help="--help 2>&1 | bat --language=help --style=plain"

### STARSHIP ###
export STARSHIP_CONFIG="/Users/natew/.config/starship/starship.toml"

##### FROM ZSH-NEWUSER-INSTALL #####

HISTFILE=~/.config/zsh/.histfile
HISTSIZE=5000
SAVEHIST=5000

zstyle :compinstall filename "$HOME/.config/zsh/.zshrc"


##### PLUGINS #####

### AUTOCOMPLETE ###
# source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

### SYNTAX HIGHLIGHTING ###
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### # HISTORY SUBSTRING SEARCH ###
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR="$(brew --prefix)/share/zsh-syntax-highlighting/highlighters"

### AUTOSUGGESTIONS ###
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

### VI MODE ###
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

export ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

export ZVM_VI_HIGHLIGHT_BACKGROUND="#414d58"

function zvm_after_init() {
    ### FZF ###
    source <(fzf --zsh)
    export FZF_DEFAULT_OPTS="--style full"

    ### SYSTEM CLIPBOARD ###
    source $(brew --prefix)/share/zsh-system-clipboard/zsh-system-clipboard.zsh

    ### TELEVISION ###
    source $HOME/.config/television/shell/integration.zsh

    ### AUTOSUGGESTIONS ###
    bindkey '^ ' autosuggest-accept
}

##### ZSH CONFIG #####

### OPTIONS ###
setopt correct
setopt extendedglob
setopt nocaseglob
setopt rcexpandparam
setopt nocheckjobs
setopt numericglobsort
setopt nobeep
setopt appendhistory
setopt histignorealldups
setopt autocd
setopt autopushd
setopt pushdignoredups
setopt pushdminus

### COMPLETION ###
zstyle ':completion:*:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:*' rehash true
zstyle ':completion:*:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:*' menu select
zstyle ':completion:*:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:*' accept-exact '*(N)'
zstyle ':completion:*:*' use-cache on
zstyle ':completion:*:*' cache-path ~/.cache/zcache
zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'


##### SHELL DEFAULTS #####

export EDITOR="nvim"
export PAGER="less"
export LAUNCH_EDITOR="code"
export GPG_TTY=$(tty)

##### APP CONFIG #####

### YAZI ###
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}


##### ALIASES #####

### ZSH ###
alias sourcez="source ~/.config/zsh/.zshrc"

### CD ###
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

### TAR ###
alias tarnow="tar -acf "
alias untar="tar -zxvf "

### LS -> EZA ###
alias ls="eza -al --color=always --group-directories-first --icons --sort=extension"
alias la="eza -a --color=always --group-directories-first --icons"
alias ll="eza --color=always --group-directories-first --icons"
alias lt="eza -al --color=always --group-directories-first --icons --sort=extension --tree"

### GIT ###
alias glog="git log --decorate --graph --oneline --all"
alias gstat="git status"
alias gcheck="git checkout"
alias gdiff="git diff"

### NERDFETCH ###
alias neofetch="fastfetch"

### GREP/RIPGREP ###
alias grep="grep --color=always"
alias rg="rg --color=always"

### PYTHON ###
alias python="python3"
alias pip="pip3"

### BAT ###
alias batman="BAT_THEME=\"TwoDark\" batman"
alias man="batman"
alias bman="batman"
alias bdiff="batdiff"

function bgrep() {
    batgrep --terminal-width $(tput cols) "$@"
}

function bfind() {
    find "$@" -exec bat {} +
}

function bfd() {
    fd "$@" -X bat
}

### COWSAY ###
alias cowsay="cowsay -f $HOME/.config/cowsay/elephant.cow"
alias ducksay="cowsay -f $HOME/.config/cowsay/ducklings.cow"

### TELEVISION ###
alias tvt="tv text"

### MISC ###
alias vim="nvim"
alias ranger="yazi"
alias clip="pbcopy"

##### EVAL #####

eval "$(rbenv init - zsh)"
eval "$(starship init zsh)"
