function git_rebase_onto_main --description 'Rebase current branch onto main'
    set -l current_branch (git symbolic-ref --short HEAD)
    set -l base (git merge-base $current_branch main)
    git rebase --onto origin/main $base
end
