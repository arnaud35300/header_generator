#!/bin/bash

get_header_name() {
	[[ -f $dir/$header_name ]] \
		&& read -p "[$dir/$header_name] file already exist. Delete it? (Y/N): " \
		&& [[ $REPLY == [yY] || $REPLY == [yY][eE][sS] ]] \
		&& rm -f "$dir/$header_name"

	if [[ -f $dir/$header_name || $INTERACTIVE == true ]]; then
		read -p "Give a name for the header file in [$dir] directory. Default [$(basename "$dir").h] : " header_name \
			&& [[ -z "$header_name" ]] \
			&& header_name="$(basename "$dir").h"

		while [[ -f "$dir/$header_name" || "$(echo "${header_name: -2}")" != ".h" || -z "$header_name" ]]; do
			read -p "Incorrect name or already existing file. Please retry: " header_name
		done
	fi
}
