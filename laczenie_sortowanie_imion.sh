for imie in  $( cat $(find kod/zabawa -name 'imiona*' -print)  | sort | uniq ); do echo "z$imie"; done
