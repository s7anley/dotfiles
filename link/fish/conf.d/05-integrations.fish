# Jump shell integration
if status --is-interactive
    source (jump shell fish | psub)
end

# OrbStack integration
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
