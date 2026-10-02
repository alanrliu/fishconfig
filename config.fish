# ~/.config/fish/config.fish

# Homebrew (Apple Silicon)
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# Common paths
fish_add_path ~/bin
fish_add_path ~/.local/bin

#ALIASES
alias c="clear"
alias bridgedir="cd ~/developer/fastbridge/"
alias invest="cd ~/developer/investment-pipeline/"
alias fishconfig="micro ~/.config/fish/config.fish"
alias fishconfigdir="cd ~/.config/fish/"
alias homelab="ssh a@liuhomelab"
alias dev="cd ~/developer"
alias ls="ls -a"
alias l="ls -a"
alias hc="ssh aliu5@yao.cs.haverford.edu"
alias cc="claude"
alias gpt="codex"
alias x="codex"

# lab machines
alias yao="ssh aliu5@yao.cs.haverford.edu"
alias dean="ssh aliu5@dean.cs.haverford.edu"
alias gray="ssh aliu5@gray.cs.haverford.edu"

function lab
    env TERM=xterm-256color ssh -tt aliu5@yao.cs.haverford.edu 'bash /homes/students/enroll_courseproject_self-service.sh'
end

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

pyenv init - fish | source

# Commands to run in interactive sessions can go here
end

