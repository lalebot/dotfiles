# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'agnoster'
Plugin 'theme'

set fish_greeting "Ahora a hacer algo magníficou..."

# ALIAS

alias cd.. 'cd ..'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

alias ef 'vim ~/.config/fish/config.fish'
alias ev 'vim ~/.vimrc'

alias l ls
alias ll 'ls -la'
alias c clear
alias v vim
alias md 'mkdir -p'

alias g git
alias gs="git status"
alias gx gitx
alias gpom="git push origin master"
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
