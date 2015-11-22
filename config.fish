################################################################################
# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf
# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

################################################################################
set fish_greeting "¡Ahora a hacer algo magníficouch!"

# ALIAS

alias r 'sudo reflector --sort rate -l 5 --save /etc/pacman.d/mirrorlist'
alias u 'yaourt -Syu'
alias uy 'yaourt -Syu --aur'
alias uc 'yaourt -Syyu --aur --devel'
alias y 'yaourt'
alias yr 'yaourt -R'
alias ys 'yaourt -S'
alias ai 'sudo systemctl start org.cups.cupsd.service'

alias cd.. 'cd ..'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

alias ef 'vim ~/.config/fish/config.fish'
alias eau 'vim ~/.config/openbox/autostart'
alias ev 'vim ~/.vimrc'

alias l ls
alias ll 'ls -la'
alias c clear
alias v vim
alias jd 'JDownloader'
alias md 'mkdir -p'

alias g git
alias gs="git status"
alias gx gitx
alias gpom="git push origin master"
alias gpo="git push origin"
alias gpl="git pull"
alias ga="git add"
alias gaa="git add ."
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias gc="git commit"
alias gb="git branch"
alias gcob="git checkout -b"
alias gbd="git branch -D"

alias gst="git status -sb --ignore-submodules"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git lg"
alias gd="git diff"
alias gdc="git diff --cached"
