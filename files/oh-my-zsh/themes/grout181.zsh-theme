local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local user_color="magenta"
if [ "$USER" = "root" ]; then
    user_color="red"
fi;
PROMPT='%{$fg_bold[$user_color]%}%n%{$fg[blue]%}@%M%{$reset_color%} %{$fg[cyan]%}%~%{$reset_color%} ${ret_status}%{$reset_color%}'
