function git_fuzzy_checkout_remote_branch --description 'Fuzzy checkout remote branch'
    git branch -r --format='%(refname:lstrip=3)' | fzf --height 40% --reverse --border | read -l branch
    and git switch --track origin/$branch
end
