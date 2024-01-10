# Environment Variables
export EDITOR=nvim
export VISUAL=nvim
# export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORMTHEME=qt6ct
export QT_WAYLAND_FORCE_DPI=physical
export SDL_VIDEODRIVER=wayland

typeset -U path PATH
path=(~/.local/bin $path)
export PATH
