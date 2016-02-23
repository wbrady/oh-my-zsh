# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

# alias g='grep -in'

alias g='git'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -flGh'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

# Ruby
alias zspec='zeus rspec spec/'
alias be='bundle exec'
alias bake='be rake'

alias sub='subl .'
alias server='open http://localhost:8000 && python -m SimpleHTTPServer'

alias s='echo -n "Please enter your name for screen: " && read && screen -dRR "$REPLY"'

# Personal projects
alias cd.='cd ~/.dotfiles'
alias cdomz='cd ~/.oh-my-zsh'
alias cdgo='cd $GOPATH'
