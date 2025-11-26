function tree --description 'Display directory tree with eza'
    set -l level 1

    # Check if first argument is a number (level)
    if test (count $argv) -gt 0; and string match -qr '^[0-9]+$' $argv[1]
        set level $argv[1]
        set -e argv[1]  # Remove first argument
    end

    eza --tree --level=$level $argv
end
