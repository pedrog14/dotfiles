# Environment Variables
export EDITOR=nvim
export VISUAL=nvim
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland-egl
export QT_QPA_PLATFORMTHEME=qt6ct

typeset -U path PATH
path=(~/.local/bin $path)
export PATH
