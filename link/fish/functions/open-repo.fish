function open-repo --description 'Open Git repository in browser'
    if not git rev-parse --git-dir &>/dev/null
        echo "Error: Not a git repository" >&2
        return 1
    end

    set -l ssh_url (git config remote.origin.url)

    if test -z "$ssh_url"
        echo "Error: No remote origin configured" >&2
        return 1
    end

    set -l https_url ""
    if string match -qr "^git@" $ssh_url
        set -l host (string split ':' $ssh_url)[1]
        set host (string split '@' $host)[2]
        set -l repo_path (string split ':' $ssh_url)[2]
        set https_url (string replace '.git' '' "https://$host/$repo_path")
    else
        set https_url (string replace '.git' '' $ssh_url)
    end

    open $https_url
end
