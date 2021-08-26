#!/bin/bash
# @ HACKEAMEESTA VIP
# Herramienta creada por @Bin_Floppa del grupo HackeameEsta VIP (https://t.me/hackeeameesta)
figlet -f slant SMS-Sender

echo -e " \033[1;33m\nUNICAMENTE PUEDES ENVIAR UN MENSAJE POR DIA, USALO SABIAMENTE\n "

echo -e "\033[1;32m  INSERTA EL NUMERO CON EL CODIGO DE TU PAIS    \n"
read -p "NUMERO: "  numero

read -p "MENSAJE: "  mensaje
curl -X POST https://textbelt.com/text --data-urlencode phone="${numero}" --data-urlencode mensaje="${mensaje}" -d key=textbelt > /dev/null 2>&1

if [[ $(echo $?) == "0" ]]; then
	echo -e "\n EL MENSAJE SE ENVIÓ CORRECTAMENTE :D"
else
	echo -e "\n OCURRIÓ UN ERROR CON EL ENVIO DEL MENSAJE :("
fi
echo " gracias por usar! !Unete a mi comunidad de telegram! (https://t.me/hackeeameesta)"



