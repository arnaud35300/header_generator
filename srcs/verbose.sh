#!bin/bash

verbose() {
	local readonly msg="$1"

	[[ $VERBOSE == true ]] \
		&& echo "$msg" \
		|| :
}
