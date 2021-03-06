# Contains user-defined functions.

# Make a directory and immediately change into it
mkdirc() {
    mkdir $(pwd)/$1
    cd $(pwd)/$1
}

# Make a directory recursively, and change into it if specified
mkdirp() {
    while :; do
        case $1 in
            -c|--change)
                mkdir -p $(pwd)/$2
                cd $(pwd)/$2
                # exit
                ;;
            *)
                mkdir -p $(pwd)/$1
                # exit
                ;;
        esac
    done
}

doc() {
    cd ~/Documents/$1
}

dow() {
    cd ~/Downloads/$1
}
