#!/bin/bash
echo                # Right command. It will print empty line
echo hello          # Right command
echohello           # Wrong command. There is not such command 'echohello', you need to put space between command end argument
echo HelLo          # Right command
Echo hello          # Wrong command. Bash commands are case-sensitive
echo HELLO, WORLD   # Right command. 'HELLO,' and 'WORLD' are 2 arguments of command 'echo'
banner              # Right command. It will do nothing
banner hello        # Right command
BANNER HELLO        # Wrong command. Bash commands are case-sensitive
