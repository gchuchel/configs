set -g fish_greeting ""

# Starship prompt
starship init fish | source

# Aliases
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias g='git'
alias grep='grep --color=auto'
alias df='df -h'
alias free='free -h'

# Development environment
alias dev='nix-shell ~/.dev/shell.nix'

# Telegram with proxy
alias telegram='telegram-desktop'

# FZF integration
fzf --fish | source
