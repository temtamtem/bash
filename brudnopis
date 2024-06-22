printf "podaj imie\n"

read imie
czy=0

tablica=('arek' 'czarek' 'darek')
l_elem=${#tablica[@]}-1
for (( c=0; c<=l_elem; c++ ))
do
    if [ "${tablica[$c]}" == "$imie" ]
    then
       czy=1
    fi

done

if [ $czy == 1 ]
then
    printf $imie
else
    printf "you"
fi
