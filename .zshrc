# alias
alias sz="source ~/.zshrc"
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -al"
alias mkdir="mkdir -p"

# Homebrew
function () {
    local BREW_PATH=/opt/homebrew/bin
    if [ -d $BREW_PATH ]; then
        eval $($BREW_PATH/brew shellenv)
    fi
}

# rbenv
function () {
    local RBENV_PATH=$HOME/.rbenv/bin
    if ! [[ $PATH =~ $RBENV_PATH ]]; then
        export PATH=$RBENV_PATH:$PATH
    fi
}
if ! [[ $PATH =~ $HOME/.rbenv/shims ]]; then
    eval "$(rbenv init -)"
fi

# -----------------------------
# General
# -----------------------------

# 色を使用
autoload -Uz colors ; colors

# cd した先のディレクトリをディレクトリスタックに追加する
# cd [TAB] でディレクトリのヒストリが表示されるので、選択して移動できる
# ※ ディレクトリスタック: 今までに行ったディレクトリのヒストリのこと
setopt auto_pushd
 
# pushd したとき、ディレクトリがすでにスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups

# -----------------------------
# Completion
# -----------------------------

# 自動補完を有効にする
autoload -Uz compinit ; compinit

# コマンドのスペルを訂正する
setopt correct

# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# -----------------------------
# History
# -----------------------------

# 基本設定
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000

# historyに日付を表示
alias h='fc -lt '%F %T' 1'

# 直前と同じコマンドの場合はヒストリに追加しない
setopt hist_ignore_dups
 
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# 他のターミナルとヒストリーを共有
setopt share_history

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks