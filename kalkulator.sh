#!/bin/bash
wynik=0;
function dodaj(){
wynik=$(( wynik + $1 ));
}
function odejmij(){
wynik=$(( wynik - $1 ));
}
while true
do
	liczba=0;
	echo -e "\t\t'+' - dodaj\n\t\t'-' - odejmij\n\t\t'x' - wyjście\n";
	read -n 1 wybor;
	if [ $wybor = x ]; then
	echo -e "\nOstateczny wynik to $wynik"; 
	exit;
	else
		if [ $wybor  = + ]; then
		echo -e "\nLiczba do dodania: \c";
		read liczba;
		dodaj $liczba;
		elif [ $wybor = - ]; then
		echo -e "\nLiczba do odjecia: \c";
                read liczba;
		odejmij $liczba;
		else
		echo -e "\nzly wybor";
		fi
		echo -e "\nObecny wynik to $wynik";
	fi
done