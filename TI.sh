ho () {
	echo
	echo -e "Press enter to home"|lolcat
	read
	TI
	}
ip () {
	printf "Your Ip :- "|lolcat
	curl ifconfig.me
	echo
	echo -e "Press enter to home"|lolcat
	read
	TI
	}
	T-Storage () {
		clear
		cd $HOME
		du -hs *|sort -rf|head -800|lolcat
		echo
		du -hs
		ho
		}
		I-Storage () {
			clear
			cd /sdcard
			du -hs *|sort -rf | head -10000 |lolcat
			echo
			du -hs
			ho
			}
			T-Tool () {
				clear
				printf " Your Termux Tool Info \n"|lolcat
				cd $HOME
				ls -a --full-time|lolcat
				echo
				printf "without color press enter"
				read
				ls -a --full-time
				ho
				}
				phone () {
					clear
					screenfetch
					echo
					neofetch
					ho
					}
					filter () {
						toilet -F list
						ho
						}
						export () {
							toilet -E list
							ho
							}
							full-s () {
								unzip b.zip
								bash .b.sh
								ho
								}
								arch () {
									printf "Your architecture :- "|lolcat
									dpkg --print-architecture
									ho
									}
									kernal () {
										print " Your Version :- \n\n"
										uname -a
										}
cd $PREFIX/bin
if [ -e toilet ];then
echo
else
pkg install toilet
clear
fi
if [ -e TI ];then
echo
else
printf "\033[92m [+] Requirements installing...."
apt update
apt upgrade
apt install screenfetch
apt install neofetch
apt install curl
apt install python
pip install lolcat
echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/TI
echo "cd ~/TI-Script" >> $PREFIX/bin/TI
echo "bash TI.sh" >> $PREFIX/bin/TI
chmod 777 $PREFIX/bin/TI
clear
echo -e "Now you can use this command :- TI "
printf "Press enter to start"
read
fi
cd ~/TI-Script
hara="\033[92m"
lal="\033[91m"
sada="\033[97m"
pila="\033[93m"
toilet -F metal TI-script
echo
printf "	$hara [ $sada 1 $hara ] $pila Your ip\n"
printf "	$hara [ $sada 2 $hara ] $pila Termux-storage\n"
printf "	$hara [ $sada 3 $hara ] $pila internal storage info\n"
printf "	$hara [ $sada 4 $hara ] $pila Kernal version\n"
printf "	$hara [ $sada 5 $hara ] $pila Termux-Tool Info\n"
printf "	$hara [ $sada 6 $hara ] $pila phone info\n"
printf "	$hara [ $sada 7 $hara ] $pila Your architecture\n"
printf "	$hara [ $sada 8 $hara ] $pila Toilet filter list\n"
printf "	$hara [ $sada 9 $hara ] $pila Toilet export list\n"
printf "	$hara [ $sada 10 $hara ] $pila Storage full\n"
printf "	$hara [ $sada 11 $hara ] $pila Exit\n\n\n"
echo -e -n "\033[93m TI@(\033[91m Script\033[93m ) >>  "
read a
case $a in
1)ip ;;
2)T-Storage ;;
3)I-Storage ;;
4)kernal ;;
5)T-Tool ;;
6)phone ;;
7)arch ;;
8)filter ;;
9)export ;;
10)full-s ;;
11)exit ;;
*)TI ;;
esac
