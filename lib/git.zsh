# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  branch=${ref#refs/heads/}
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX$branch$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

parse_git_dirty () {
  if [[ -n $(git status -s 2> /dev/null) ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}
