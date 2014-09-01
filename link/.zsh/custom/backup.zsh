# Backup files to $2 destination
function bck() {
    cp $1 ${2}${1}-`date +%Y%m%d%H%M`.backup;
}