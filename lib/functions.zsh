function zsh_stats() {
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

function uninstall_oh_my_zsh() {
  /usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  /usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/upgrade.sh
}

function take() {
  mkdir -p $1
  cd $1
}

gif-ify() {
  if [[ -n "$1" && -n "$2" ]]; then
    ffmpeg -i $1 -pix_fmt rgb24 temp.gif
    convert -layers Optimize temp.gif $2
    rm temp.gif
  else
    echo "proper usage: gif-ify <input_movie.mov> <output_file.gif>. You DO need to include extensions."
  fi
}

function application {
  echo "$(pwd | awk -F/ '{print$NF}')"
}

function git_branch {
  echo "$(git symbolic-ref HEAD | cut -d'/' -f3)"
}

resque_web_run() {
  echo "Running resque-web -p 8283 -r $1 -N resque:$2"
  echo "Stop with resque_web_stop"
  resque-web -p 8283 -r $1 -N resque:$2
}

resque_web_stop() {
  resque-web -K
}

migrate() {
  rake db:migrate db:rollback && rake db:migrate
}


# Make directory and change into it.
# from https://github.com/thoughtbot/dotfiles/blob/master/zsh/functions/mcd
mcd() {
  mkdir -p "$1" && cd "$1";
}
