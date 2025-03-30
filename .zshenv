export EDITOR=nvim
export VISUAL=nvim
export QT_QPA_PLATFORMTHEME=qt6ct

CARGOPATH="$HOME/.cargo/bin"               # cargo path
PNPMPATH="$HOME/.local/share/pnpm"         # pnpm path
HSPATH="$HOME/.cabal/bin:$HOME/.ghcup/bin" # Haskell install path
PATH="$HOME/.local/bin:$CARGOPATH:$PNPMPATH:$HSPATH:$PATH"

CPATH="$HOME/.local/include:$CPATH"

export PATH
export CPATH

export SDL_DYNAMIC_API=/usr/lib/libSDL2-2.0.so
