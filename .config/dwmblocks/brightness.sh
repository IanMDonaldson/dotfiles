brightness="$(xbacklight | awk '{printf "%s\n", substr($1,1,2) }' )"
icon=""
printf "%s " "^c#58d4e1^$icon ^d^$brightness "
