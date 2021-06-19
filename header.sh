#!/bin/bash

readonly PROGNAME=$(basename $0)
readonly PROGDIR=$(readlink -m $(dirname $0))
readonly ARGS="$@"

source "$PROGDIR/srcs/cmd_line.sh"
source "$PROGDIR/srcs/generate_header.sh"

main() {
	local dirs=()
	cmd_line $ARGS
	generate_header
}

main
