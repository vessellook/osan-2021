#!/bin/bash
$trash=trash

function abspath() {
	from="$1"
	to="$2"

	if [[ "$to" =~ /.* ]]; then echo "$to";
	elif [[ "$to" =~ \.\./.* ]]; then abspath "${from%/.*}" "${to#../}"
	elif [[ "$to" = .. ]]; then echo "${from%/.*}"
	else echo "$from/$to"
	fi
}

function rmt() {
	name=$(abspath "$(pwd)" "$1")
	trash_name=$(echo "$name" | tr / -_-)
	
	if [ -f "$name" ]
	then echo "There is some file with the same name. Firstly, clear that file from the trash or move or rename this file" & exit 1
	fi

	mv "$1" "~/.$trash/$trash_name"
}

function restoret() {
	name=$(abspath "$(pwd)" "$1")
	trash_name=$(echo "$name" | tr / -_-)

	if [ -f "$name" ];
	then echo "There is some file with the same name. Firstly move or rename that file" & exit 1
	fi

	if [ -f "~/.$trash/$trash_name" ]
	then echo "Trash does not contains such file. You can check it in" ~/"$trash" $ exit 2
	fi

	mv "~/.$trash/$(echo "$name" | tr / -_-)" "$1"
}

function cleart() {
	if [ -n "$1" ]; then rm -rf "~/.$trash"/*
	else rm -rf "$1"
	fi
}

function showt() {
	ls "~/.$trash" | tr -_- /
}

cd
mkdir -p "$trash"

