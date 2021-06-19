#!/bin/bash

parse_file() {	
	find "$dir" -maxdepth 1 -type f -name "*.c" -print0 \
		| while IFS= read -r -d '' file; do
			verbose "parse [$file]"
			awk '$1 !~ "static" && /^[a-zA-Z0-9_-]+\t.*/ {
			do {
				current_line=$N
				getline;
				if ($N == "{") print current_line";"
				else print current_line
				}
			while ($N != "{")
		}' "$file"
		done
}
