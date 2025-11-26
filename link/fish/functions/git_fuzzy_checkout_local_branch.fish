function git_fuzzy_checkout_local_branch --description 'Fuzzy checkout local branch'
    git branch --format='%(refname:short)' | fzf --height 40% --reverse --border | read -l branch
    and git switch $branch
end
