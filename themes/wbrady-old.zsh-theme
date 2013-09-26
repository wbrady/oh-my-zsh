_red="%{$fg[red]%}"
_green="%{$fg_bold[green]%}"
_cyan="%{$fg[cyan]%}"
_blue="%{$fg_bold[blue]%}"
_rc="%{$reset_color%}"
_yellow="%{$fg[yellow]%}"

PROMPT='${_green}%p ${_cyan}%~$(git_prompt_info)${_blue} % ${_rc}'

ZSH_THEME_GIT_PROMPT_PREFIX=" ${_blue}git:(${_red}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${_rc}"
ZSH_THEME_GIT_PROMPT_DIRTY="${_blue}) ${_yellow}✗${_rc}"
ZSH_THEME_GIT_PROMPT_CLEAN="${_blue})"
