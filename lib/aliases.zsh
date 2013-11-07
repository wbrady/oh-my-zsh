# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

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

# Taxi Magic
## Move around
alias cdrc='cd ~/projects/rc'
alias cdshed='cd ~/projects/shed'
alias cdf='cd ~/projects/fleet-magic'
alias cdfm='cd ~/projects/fleet-magic'
alias cdv='cd ~/projects/vehicle'
alias cdtools='cd ~/projects/devops-tools'
alias cdchef='cd ~/projects/devops-chef'
alias cdv='cd ~/projects/vehicle'

## Resque workers
alias resque_rc_worker="cdrc; bake resque:work QUEUE=* VVERBOSE=1;"
alias resque_rc_scheduler="cdrc; bake resque:scheduler;"
alias resque_fm_worker="cdf; bake resque:work QUEUE=* VVERBOSE=1;"
alias resque_fm_scheduler="cdf; bake resque:scheduler;"
alias resque_vw_worker="cdv; bake resque:work QUEUE=* VVERBOSE=1;"
alias resque_vw_scheduler="cdv; bake resque:scheduler;"

