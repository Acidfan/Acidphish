# Bash Script for Hide Phishing URL Created by KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

   db     dP""b8 88 8888b.      88""Yb 88  88 88 .dP"Y8 88  88 
  dPYb   dP   `" 88  8I  Yb     88__dP 88  88 88 `Ybo." 88  88 
 dP__Yb  Yb      88  8I  dY     88"""  888888 88 o.`Y8b 888888 
dP""""Yb  YboodP 88 8888Y"      88     88  88 88 8bodP' 88  88 
echo -e "\e[1;31;42m######└──────────────────────────┘##### \e[0m \n"
echo -e "\e[40;38;5;82m Please Visit \e[30;48;5;82m https//www.teamacid.xyz \e[0m"
echo -e "\e[30;48;5;82m    Copyright \e[40;38;5;82m   TEAM ACID \e[0m \n\n"
echo -e "\e[1;31;42m ### Phishing URL ###\e[0m \n"
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### Masking Domain ###\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), ex: https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
if [[ -z "$words" ]]; then
echo -e "\e[31m[!] No words.\e[0m"
echo -e "\nGenerating AcidPhish Link...\n"
final=$mask@$shorter
echo -e "Here is the AcidPhish URL:\e[32m ${final} \e[0m\n"
exit
fi
if [[ "$words" =~ " " ]]; then
echo -e "\e[31m[!] Invalid words. Please avoid space.\e[0m"
echo -e "\nGenerating AcidPhish Link...\n"
final=$mask@$shorter
echo -e "Here is the AcidPhish URL:\e[32m ${final} \e[0m\n"
exit
fi
echo -e "\nGenerating AcidPhish Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the AcidPhish URL:\e[32m ${final} \e[0m\n"