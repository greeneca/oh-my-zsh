function precmd()
{
  HOST='%{$FG[081]%}$(whoami)%{$fg[green]%}@%{$FG[081]%}$(hostname -s)(%{$fg[yellow]%}$(date +%H:%M)%{$FG[081]%})'
    DIR='%{$fg[red]%}%~%{$reset_color%}'
    RVM='%{$fg[yellow]%}$(rvm current)%{$reset_color%}'

    if git status &>/dev/null
      then
        GIT=' %{$reset_color%}[%{$fg[yellow]%}$(git_prompt_info)%{$reset_color%}]'
    else
      GIT=''
    fi

    PROMPT="
$HOST:$DIR$GIT
%{$fg[green]%}$ %{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

COLIBRI=$HOME/colibri

source ~/.oh-my-zsh/themes/charlie.zsh-theme-aliases
