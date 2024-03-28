# Environment Variables
export EDITOR=nvim
export VISUAL=nvim
export QT_QPA_PLATFORMTHEME=qt6ct

typeset -U path PATH
path=(~/.local/bin $path)
path=(~/.local/share/bob/nvim-bin $path)
export PATH
