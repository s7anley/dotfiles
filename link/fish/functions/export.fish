function export --description 'Bash-style export compatibility'
    if test (count $argv) -eq 0
        # No args - show all exported variables (like bash)
        set --export --names
        return
    end

    for arg in $argv
        if string match -q '*=*' $arg
            set -l parts (string split -m 1 '=' $arg)
            set -gx $parts[1] $parts[2]
        else
            echo "export: invalid syntax: $arg" >&2
            return 1
        end
    end
end
