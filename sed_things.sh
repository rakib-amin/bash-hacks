# (macOS) duplicate a line (e.g line no 6), change the duplicate
sed -i '' -e "6s/^//p; 6s/^.*/replacement_text_goes_here/" file.txt

# (macOS) delete the last line of file
sed -i '' -e "$ d" file.txt
