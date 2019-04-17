# ask for [y/n], if n, then exits
read -e -p 'Did you finish homework? [Yes/No]? ' response
[[ "$response" == [Yy]* ]] && echo "Proceeding..." || exit 1
