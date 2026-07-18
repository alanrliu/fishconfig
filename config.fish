fortune | cowsay -f kitty | lolcat
set -g fish_greeting
export PATH="$HOME/.local/bin:$PATH"
pyenv init - | source
set -gx PYENV_ROOT "$HOME/.pyenv"
string match -q "$PYENV_ROOT/bin" $PATH; or set -gx PATH "$PYENV_ROOT/bin" $PATH
status is-interactive; and pyenv init - | source

#ALIASES
alias cls="clear"
alias bridgedir="cd /mnt/d/developer/fastbridge"
alias fishconfig="nano ~/.config/fish/config.fish"
alias homelab="ssh a@liuhomelab"
alias c="cd /mnt/c/"
alias d="cd /mnt/d/"
alias dev="cd /mnt/d/developer"
alias developer="cd /mnt/d/developer"
alias userprofile="cd /mnt/c/users/al"
alias ls="ls -a"

function start-bridge
	cd /mnt/d/developer/fastbridge
	source env/bin/activate.fish
	docker-compose -f compose-dev.yaml up
end

function start-pih
	cd /mnt/d/developer/pih-advocacy-engage
	npm run supabase:start
	npm run dev
end
#END ALIASES

if status is-interactive
    set FLINE_PATH $HOME/.config/fish/fishline
    source $FLINE_PATH/init.fish
end
set -g theme_nerd_fonts yes
set -g theme_color_scheme catppuccin-macchiato
set -g theme_nerd_fonts yes
set -g theme_color_scheme catppuccin-macchiato
set -g theme_nerd_fonts yes
set -g theme_color_scheme catppuccin-macchiato
set -g theme_nerd_fonts yes
