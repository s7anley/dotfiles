# Source all files in ~/.dotfiles/source/
local file
for file in ~/.dotfiles/source/*; do
  source "$file"
done

fpath=(~/.zsh/completions $fpath)
local file
for file in ~/.zsh/functions/*; do
  source "$file"
done

if [[ -f ~/.custom.zsh ]]; then
    source  ~/.custom.zsh
fi

export GVM_ROOT=/Users/jankosco/.gvm
source $GVM_ROOT/scripts/gvm-default

source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh
source ~/.dotfiles/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(jump shell --bind=z)"
eval "$(direnv hook zsh)"
