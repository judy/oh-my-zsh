# who's hitched?
function hitch_prompt_info() {
  if [[ -z $(hitch 2> /dev/null) ]]; then
    return
  fi
  hitch_pairs=$(hitch | awk '{print $1 "+" $4}' 2> /dev/null) || return
  echo "$ZSH_THEME_HITCH_PROMPT_PREFIX$hitch_pairs$ZSH_THEME_HITCH_PROMPT_SUFFIX"
}
