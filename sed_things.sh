# (macOS) duplicate a line (e.g line no 6), change the duplicate
sed -i '' -e "6s/^//p; 6s/^.*/replacement_text_goes_here/" file.txt

# (macOS) delete the last line of file
sed -i '' -e "$ d" file.txt

# take entire content of a JSON and convert it to jsonString (java)
# first remove the (\") (this gets rid of already escaped " in JSON file, later causing trouble)
# add the escaping (\") back
# using awk print out the entire content of current state of $JSON_FILE
# add a variable name and first " at the beginning (^): e.g{String jsonString = "} 
# add last " at the end ($)
echo 
$(sed 's/\\"/"/g' $JSON_FILE 
| sed 's/"/\\"/g' 
| awk -v ORS='' '1' 
| sed 's/^/String jsonString = \"/g' 
| sed 's/$/\";/g') 
>> $JAVA_FILE
