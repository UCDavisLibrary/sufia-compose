# Run docker exec in a container searched by name. The first parameter
# is the name or fragment to search for, and the remainder of parameters
# are passed to exec. Runs in the first matching container.
function de() {
    if [[ -z $2 ]]; then
        echo "Usage: dexec <container search> <exec args>"
        echo "Example: dexec web bash"
    fi

    NAME=$1
    shift

    docker exec -it $(dps $NAME | head -1) "$@"
}


alias dm='docker-machine'
alias dc='docker-compose'

dmequiet
