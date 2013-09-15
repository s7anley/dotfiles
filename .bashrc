# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Load dotfiles
for file in "$HOME/"{.aliases,.bash_prompt,.exports,.functions,bin/z/z.sh}; do
    [ -r "$file" ] && source "$file"
done
unset file
