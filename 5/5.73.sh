#!/bin/bash

database=.database-phone

! [ -e "$database" ] && touch "$database"

arg="$1"
case arg in
    set)
        [ $# != 3 ] && echo Error 1 && exit 1
        name="$2"
        phone="$3"
        if [ $(grep "$name:-:" "$database" | wc -l) = 0 ]
        then
            echo "$name:-:$phone" >> "$database"
        else
            sed -i "s/$name:-:.*$/$name:-:$phone/" "$database"
        fi
        ;;
    get)
        [ $# != 2 ] && echo Error 2 && exit 2
        name="$2"
        if [ $(grep "$name:-:" "$database" | wc -l) = 0 ]
        then
            echo
        else
            grep "$name:-:" "$database" | sed "s/$name:-://"
        fi
        ;;
    del)
        [ $# != 2 ] && echo Error 3 && exit 3
        name="$2"
        if [ $(grep "$name:-:" "$database" | wc -l) = 0 ]
        then
            echo Error 4 && exit 4
        else
            sed -i "/$name:-:/d" "$database"
        fi
        ;;
    ?)
        echo Error 5 && exit 5
        ;;
esac

