function bck() {
    cp $1 ${2}${1}-`date +%Y%m%d%H%M`.backup;
}

function f() {
    find . -name "$1"
}

# Go up in directory tree, ex. up 3
function up() {
    local d=''
    limit=$1
    for ((i=1 ; i <= limit ; i++))
        do
        d=$d/..
    done
    d=$(echo $d | sed 's/^\///')
    if [ -z "$d" ]; then
        d=..
    fi
    cd $d
}

function take() {
  mkdir -p $1
  cd $1
}

function fuck () {
    TF_PYTHONIOENCODING=$PYTHONIOENCODING;
    export TF_ALIAS=fuck;
    export TF_HISTORY="$(fc -ln -10)";
    export PYTHONIOENCODING=utf-8;
    TF_CMD=$(
        thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
    ) && eval $TF_CMD;
    unset TF_HISTORY;
    export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
    test -n "$TF_CMD" && print -s $TF_CMD
}
