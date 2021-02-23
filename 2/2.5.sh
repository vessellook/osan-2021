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

if [ -n $1 ]; then start=$1; else start=.; fi

print_dir $start

