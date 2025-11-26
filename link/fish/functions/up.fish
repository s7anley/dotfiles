function up --description "Go up N directories"
    set -l levels $argv[1]
    if test -z "$levels"
        set levels 1
    end

    set -l path ""
    for i in (seq $levels)
        set path "$path../"
    end

    cd $path
end
