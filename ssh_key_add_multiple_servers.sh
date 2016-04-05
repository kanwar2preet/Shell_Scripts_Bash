#!/bin/bash
# Purpose : Adding ssh-key in multiple servers
# Downside is we have to enter passwords each time

for ip in `cat /Users/kansingh/Scripts/poolx`; do
    ssh-copy-id  $ip
done


#END
