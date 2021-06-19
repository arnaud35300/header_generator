#!/bin/bash

source "$PROGDIR/srcs/get_header_name.sh"
source "$PROGDIR/srcs/create_header.sh"
source "$PROGDIR/srcs/write_header.sh"

generate_header() {
	local header_name=
	local header_path=

	for dir in "${dirs[@]}"; do
		verbose "---- Open [$dir] directory ----"
		header_name="$(basename "$dir").h"
		get_header_name
		header_path="$dir/$header_name"
		create_header
		write_header
		verbose "Create header file: $header_name"
	done
}
