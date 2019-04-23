# find files and replce occurances in them 
find directory/ -name "*.ext_of_files_to_find" | xargs sed -i '' -e "s/search_string/replace_string/g"
