# get line number of occurrance
grep -n 'some_text_whose_line_no_i_need' file.txt | cut -d':' -f1 | tr -d '\n'
