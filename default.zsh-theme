# Customized zsh theme (~/.oh-my-zsh/themes/default.zsh-theme)
# set ZSH_THEME="default" in ~/.zshrc

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[blue]%}%3~ %{$fg_bold[magenta]%}$(git_prompt_info)%{$fg_bold[magenta]%} % %{$reset_color%}'
RPROMPT='[%*]'

ZSH_THEME_GIT_PROMPT_PREFIX=" ☁  %{$fg[green]%}[%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}]%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}] ✓"

