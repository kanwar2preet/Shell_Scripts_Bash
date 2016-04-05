#!/bin/bash
# Adding ssh-key in multiple servers

for ip in `cat /Users/kansingh/Scripts/poolx`; do
    ssh-copy-id  $ip
done
