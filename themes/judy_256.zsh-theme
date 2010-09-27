# zsh theme requires 256 color enabled terminal
# i.e TERM=xterm-256color

PROMPT='$(git_prompt_info)$(hitch_prompt_info)$(rvm_prompt_info) %F{208}%c%f
%B%F{154}〓%f%b %{$reset_color%}'
RPROMPT='%F{208}%n%f%{$reset_color%}@%F{039}%m%f%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}±❮%f%F{124}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B✘%b%{$fg[blue]%}❯%f%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$fg[blue]%}❯"

ZSH_THEME_HITCH_PROMPT_PREFIX="%{$fg[blue]%}❮%f%F{124}"
ZSH_THEME_HITCH_PROMPT_SUFFIX="%{$fg[blue]%}❯%{$reset_color%}"

ZSH_THEME_RVM_PROMPT_PREFIX="%{$fg[blue]%}❮%f%F{124}"
ZSH_THEME_RVM_PROMPT_SUFFIX="%{$fg[blue]%}❯%{$reset_color%}"
