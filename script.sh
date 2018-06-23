LEX_DIR="/home/$USER/.lexidest"
cd "$LEX_DIR"
EXIT_STATUS="$?"
if [ "$EXIT_STATUS" != "0" ]; then
    echo "Unable to cd"
    exit "$EXIT_STATUS"
fi
CUR=$(xclip -o)
CUR=$(echo "${CUR}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$// ')
PREV=$(cat .temp)
WORDS=$(echo "${CUR}" | wc -w )

if [ -n "$CUR" ] && [ "$CUR" != "$PREV" ] && [ "$WORDS" = "1" ] ; then
    MEANING=$(curl -X GET --header "Accept: application/json" "http://api.pearson.com/v2/dictionaries/entries?headword=$CUR" |jq .| tr "{" "\n" | grep "\"definition\"" |tr ":" "\n" |grep -v "definition"|grep -v "\[")
    #MEANING=$(cat data.txt| grep -i "^${CUR}")
    notify-send --icon=gtk-notify "$CUR" "$MEANING"
fi

echo $CUR > .temp