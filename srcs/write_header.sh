#!/bin/bash

source "$PROGDIR/srcs/parse_file.sh"

write_header() {
	local readonly header_h=$(echo "${header_name%.h}_h" | tr [a-z] [A-Z])
	local readonly header_content="$(cat "$PROGDIR/includes/42header.c")

#ifndef $header_h
# define $header_h
	
$(parse_file)

#endif"

	printf "%s" "$header_content" > "$header_path"
}
