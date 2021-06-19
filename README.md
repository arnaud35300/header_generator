# HG - Header Generator

usage: header.sh [OPTION]... DIRECTORY...

Description:
```
Program generate a HEADER file containing all the C functions present
in the current directory or passed by argument.
```

Requirements:

You need to write your own 42 header in the `includes/42header.c` file to comply with the norm42.

Options:
```
Mandatory arguments to long options are mandatory for short options too.
OPTIONS:
	-i,	--interactive		interactive mode allowing to name each header file
					By default, the header file has the name of the current directory
	-v,	--verbose		Verbose. Print a message for each actions
	-h,	--help			show this help
		--version		output version information
```

Examples:
```
Run in current directory:
	bash header.sh

Run in specifics directories:
	bash header.sh [dir1] [dir2]

Run with interactive and verbose mode:
	bash header.sh --interactive --verbose

Run this help:
	bash header.sh --help
  ```
  
Online help:
```
<arguilla@student.42.fr>
<https://github.com/arnaud35300/header_generator/issues>
```
  
Version:
```
hg Header Generator (arguilla) 1.0.0
```
