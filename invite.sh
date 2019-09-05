#!/bin/bash
printf "Invite Code = %s"$(curl -s -X POST https://www.hackthebox.eu/api/invite/generate | cut -d: -f4 | sed 's/\"//g' | sed 's/\,format//g' | base64 -d) 
printf \\n
