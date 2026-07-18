# ~/.config/fish/config.fish

# Homebrew (Apple Silicon)
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# Common paths
fish_add_path ~/bin
fish_add_path ~/.local/bin

#ALIASES
alias cls="clear"
alias bridgedir="cd ~/developer/fastbridge/"
alias fishconfig="nano ~/.config/fish/config.fish"
alias homelab="ssh a@liuhomelab"
alias dev="cd ~/developer"
alias ls="ls -a"

function start-bridge
        cd ~/developer/fastbridge
        source env/bin/activate.fish
        docker-compose -f compose-dev.yaml up
end

function start-pih
	cd ~/developer/pih-advocacy-engage
	npm run supabase:start
	npm run dev
end
#END ALIASES

# Suppress the greeting
set -g fish_greeting

# Editor
set -gx EDITOR "code --wait"  # or vim, nvim, etc.

fortune | cowsay -f kitty | lolcat

# Homebrew completions
if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end
if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d

# Commands to run in interactive sessions can go here
end
set -g theme_nerd_fonts yes
