# Vim like keybind
bindkey -v

# 環境変数の設定で重複パスを登録しないようにする
typeset -U path cdpath fpath manpath

# pathに~/toolsを追加
path=($HOME/tools(N-/) ${path})

# prompt
autoload colors
colors
local p_cdir="%B%F{magenta}[%~]%f%b"$'\n'
local p_info="%n@%m"
local p_mark="%B%(?,%F{green},%F{yellow})%(!,#,>)%f%b"
PROMPT=" $p_cdir$p_info $p_mark "

# 文字コードの設定
export LANG=ja_JP.UTF-8

# default editor
export EDITOR='vim'

# 補完設定を読み込んで設定する
autoload -U compinit
compinit
# 補完候補を詰めて表示する
setopt list_packed
# 補完候補表示時にビープ音を鳴らさない
setopt nolistbeep
# 入力したコマンド名が間違っている場合には修正
setopt correct

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=50000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# 履歴を共有する
setopt share_history
# 開始と終了を記録
setopt EXTENDED_HISTORY
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# 余分な空白は詰めて記録
setopt hist_reduce_blanks
# 古いコマンドと同じものは無視
setopt hist_save_no_dups
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 補完時にヒストリを自動的に展開
setopt hist_expand

# cdコマンドの設定
# ディレクトリ名だけで移動する
setopt auto_cd
# 自動でpushdする
setopt auto_pushd
# pushdで同じディレクトリを重複してpushしない
setopt pushd_ignore_dups

# rm * を実行する前に確認する
setopt rmstar_wait

# coloring ls
case "${OSTYPE}" in
  # Mac OSX
  darwin*) alias ls='gls --color' ;;
  # Linux, Cygwin
  linux*|cygwin*) alias ls='ls --color=auto' ;;
esac

# 大小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

