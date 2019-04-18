# convert a value to uppercase (or lowercase)
country=`echo $country | tr '[:lower:]' '[:upper:]'`

# trim new lines
country=`echo $country | tr -d '\n'`
