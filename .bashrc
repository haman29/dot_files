# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

alias ls='ls --color'
alias ll='ls -la'
alias la='ls -a'

alias vi='vim'

# export
export EDITOR='vim'
export SVN_EDITOR='vim'

# 複数端末でコマンド履歴を共有する
function share_history { # 以下の内容を関数として定義
    history -a # .bash_historyに前回コマンドを1行追記
    history -c # 端末ローカルの履歴を一旦消去
    history -r # .bash_historyから履歴を読み込み直す
}
PROMPT_COMMAND='share_history' # 上記関数をプロンプト毎に自動実施
shopt -u histappend # .bash_history追記モードは不要なのでOFFに
export HISTSIZE=9999 # 履歴のMAX保存数を指定

