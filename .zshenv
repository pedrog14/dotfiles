export EDITOR=nvim
export VISUAL=nvim
export QT_QPA_PLATFORMTHEME=qt6ct

PNPMPATH="$HOME/.local/share/pnpm"         # pnpm path
HSPATH="$HOME/.cabal/bin:$HOME/.ghcup/bin" # Haskell install path
BOBPATH="$HOME/.local/share/bob/nvim-bin"
PATH="$HOME/.local/bin:$BOBPATH:$PNPMPATH:$HSPATH:$PATH"
CPATH="$HOME/.local/include:$CPATH"

export PATH
export CPATH

export SDL_VIDEODRIVER=wayland
export SDL_DYNAMIC_API=/usr/lib/libSDL2-2.0.so
