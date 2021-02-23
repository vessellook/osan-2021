#!/bin/bash
echo Number of active users: "$(who | wc -l)"
echo Active users: "$(who | cut -f1 -d' ' | tr '\n' ' ')"
echo My terminal: "$(who | grep "$(whoami) " | cut -f2 -d' ')"
