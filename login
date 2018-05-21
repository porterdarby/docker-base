#!/bin/bash
die() {
	echo >&2 "$@"
	exit 1
}

[ "$#" -eq 1 ] || die "ERR: 1 argument require, $# provided. Please provide a docker container name"

docker exec -it $1 /bin/bash
