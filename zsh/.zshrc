# ==============================================
# SYSTEM SETUP
# ==============================================

# 1. Path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# 2. Theme
ZSH_THEME="robbyrussell"

# 3. Plugins
plugins=(git)

# 4. Set Neovim as default editor (Important for git commits!)
export EDITOR='nvim'

# 5. Load Homebrew (Safety net for M1/M2/M3 Macs)
if [[ -f /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# 6. Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# ==============================================
# USER CONFIGURATION (ALIASES)
# ==============================================

# --- Modern LS Replacement (eza) ---
# NOTE: Requires 'brew install eza'. If not installed, remove these lines.
alias ls="eza --icons --git"
alias lt="eza --tree --level=2 --icons"

# --- Navigation ---
alias dot="cd ~/dotfiles"
alias dev="cd ~/dev" 
alias zshconf="nvim ~/dotfiles/zsh/.zshrc"
alias nvimconf="cd ~/dotfiles/nvim && nvim"
alias ghostconf="nvim ~/dotfiles/ghostty/config"
alias compass="cd /Users/sebastian/Library/Mobile Documents/iCloud~md~obsidian/Documents/Compas"

# --- Git ---
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"

# --- Safety ---
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# --- Shortcuts ---

alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias nv="nvim"
alias nvim="nvim"
# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

. "$HOME/.local/bin/env"
alias reload='source ~/.bashrc'
# or:
alias reload='source ~/.zshrc'

