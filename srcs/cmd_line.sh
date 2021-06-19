#!/bin/bash

source "$PROGDIR/srcs/usage.sh"
source "$PROGDIR/srcs/verbose.sh"
source "$PROGDIR/srcs/version.sh"

cmd_line() {
	local readonly args=("$@")
	
	for arg in "${args[@]}"; do
		case $arg in
			-i|--interactive) INTERACTIVE=true ;;
			-v|--verbose) VERBOSE=true ;;
			-h|--help) usage && exit 0 ;;
			--version) version && exit 0;;
			*) [[ -d "$arg" ]] \
				&& dirs+=("$(echo "$arg" | sed 's/\/*$//')") ;;
		esac
	done
	
	[[ $INTERACTIVE == true ]] \
		&& verbose "Active interactive mode."
	verbose "Active verbose mode."
	
	[[ ${#dirs[@]} -eq 0 ]] \
		&& dirs=("$(pwd)")
}
