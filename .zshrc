# Lines configured by zsh-newuser-install
setopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pedrog/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Customizing prompt
setopt PROMPT_SUBST

autoload -Uz colors && colors
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'

zstyle ':vcs_info:git:*' formats       '[%b%u%c] '
zstyle ':vcs_info:git:*' actionformats '[%b|%a%u%c] '
precmd () { vcs_info }

PROMPT='%{$fg[cyan]%}[%n@%m] [%~] ${vcs_info_msg_0_}\$%{$reset_color%} '
RPROMPT='%{$fg[cyan]%}[%*]%{$reset_color%}'

ZLE_RPROMPT_INDENT=0

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
