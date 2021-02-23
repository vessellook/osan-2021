#1/bin/bash
function print_dir() {
	echo "$2$(basename $(cd "$1"; pwd))"
	for name in $(ls $1)
	do
		if [[ $(file "$1/$name") =~ .*directory.* ]]
		then print_dir "$1/$name" "$2  "
		fi
	done
}

if [ -z $1 ]; then start=$(pwd); else start=$1; fi

print_dir $start

