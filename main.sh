if command -v cowsay  > /dev/null 2>&1; then
  :
else
  pkg install cowsay -y
fi

clear

USER="dogsock"

PS1="\[\e[31m\]╭─$USER@android:\w\n╰─\$\[\e[0m\] "


HOUR=$(date +%H)

if [ $HOUR -ge 5 -a $HOUR -lt 12 ]; then
    cowsay -f fox "hello Good morning"
elif [ $HOUR -ge 12 -a $HOUR -lt 18 ]; then
    cowsay -f fox "hello Good afternoon"
else
    cowsay -f fox "hello Good evening"
fi
