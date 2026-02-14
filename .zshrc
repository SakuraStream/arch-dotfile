# 语法检查和高亮
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# 命令提示  出现灰色按 ➡️ 补全
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# 开启上下左右选择补全
zstyle ':completion:*' menu select
# 初始化zsh-completions
autoload -Uz compinit
compinit
# 历史记录文件路径
HISTFILE=~/.zsh_history
# 会话和内存中保存的记录数
HISTSIZE=10000
SAVEHIST=10000
# 忽略重复命令记录
setopt HIST_IGNORE_DUPS
# 忽略空格开头的命令
setopt HIST_IGNORE_SPACE
# 多终端同步
setopt SHARE_HISTORY
# 新历史记录追加到文件
setopt APPEND_HISTORY
# 记录执行时间和持续时间
setopt EXTENDED_HISTORY

eval "$(starship init zsh)"
# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix
# bindkey  "^[[H"   beginning-of-line
# bindkey  "^[[F"   end-of-line
# bindkey  "^[[3~"  delete-char

# nvm
source /usr/share/nvm/init-nvm.sh

# fastfetch  lolcat
fastfetch | lolcat
