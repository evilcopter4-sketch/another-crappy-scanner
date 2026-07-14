#!/bin/bash
a=$(python3 dumthing1.py)
if ping -c 4 -W 10 "$a" > /dev/null 2>&1; then
    printf "$a is True \\n" > report.txt
    nmap -F "$a" >> report.txt
else
    echo "$a is False"
fi