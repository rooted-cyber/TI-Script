#!/bin/bash
folder () {
	cd $PREFIX/bin
	}
	fl() {
		cd ~/TI-Script
		}
	ch () {
		folder
		if [ -e random ];then
		echo
		else
		printf "#!/data/data/com.termux/files/usr/bin/python3\nimport random\nimport os\ncolor=['\033[1;91m','\033[1;92m','\033[1;93m','\033[1;94m','\033[1;95m','\033[1;96m']\nprint(random.choice(color))\nexit()" >> $PREFIX/bin/random
		chmod 777 $PREFIX/bin/random
		fi
		}
		spe() {
			echo
			echo -e "\033[1;96m Checking your internet speed .....\n"
			sp="$(speedtest)"
			printf "\n\033[1;92m Your downloading speed :- \033[1;97m"
			printf "$sp"|grep -e "Download"
			printf "\n\n\033[1;92m Your uploading speed :- \033[1;97m"
			printf "$sp"|grep -e "Upload"
			echo
			echo
			}
		p-c() {
			folder
			if [ -e TI ];then
			echo
			else
			cd ~/TI-Script
			dpkg -i TI.deb
			fi
			folder
			if [ -e python ];then
			echo
			else
			printf "\n\033[1;92m Installing python\n"
			pkg install python
			fi
			folder
			if [ -e wget ];then
			echo
			else
			random
			printf "\n\nInstalling wget\n"
			pkg install wget
			fi
			folder
			if [ -e figlet ];then
			echo
			else
			random
			printf "\n\n Installing figlet \n"
			pkg install figlet
			fi
			folder
			if [ -e curl ];then
			echo
			else
			random
			printf "\n\n Installing curl \n"
			pkg install curl
			fi
			folder
			if [ -e speedtest ];then
			echo
			else
			fl
			pip install -r requirement.txt
			fi
			folder
			if [ -e termux-location ];then
			echo
			else
			pkg install termux-api
			fi
			}
banner() {
	clear
	ch
	p-c
	clear
	random
	figlet TI-Script
	printf "\n\033[1;92m[\033[0m::\033[1;92m]	\033[1;93mCreated by : \033[1;97mhttps://github.com/rooted-cyber	\033[1;92m[\033[0m::\033[1;92m]\n"
	}
	fake-else () {
		cd ~/TI-Script
		if [ -e .fake-storage ];then
		rm -Rf .fake2 >> /dev/null 2>&1
		mkdir .fake2
		cp -f .c.sh ~/TI-Script/.fake2
		cd .fake2
		bash .c.sh
		else
		echo
		fi
		}
		el () {
			cd ~/TI-Script
			if [ -e .c.sh ];then
			echo
			else
			unzip b.zip
			fi
			}
			int() {
				cd ~
				wget https://raw.githubusercontent.com/rooted-cyber/TI-Script/master/requirement.txt > /dev/null 2>&1
				cd ~
				if [ -e requirement.txt ];then
				printf "\033[1;96m Internet is connected"
				rm -f *txt > /dev/null 2>&1
				else
				printf "\033[1;91m Not connected to internet !!!"
				fi
				}
			phone () {
				banner
				printf "\n\n\033[1;92m Checking Internet .... :\033[1;97m "
				int
				printf "\n\n\033[1;92m Checking Your ip :\033[1;97m "
				ip="$(curl -s -N ifconfig.me)"
				printf "\033[1;96m Your ip :\033[1;97m $ip"
				printf "\n\n\033[1;93m Checking your phone information........."
				kernal="$(uname -r)"
				ver="$(getprop ro.build.version.release)"
				sdk="$(getprop ro.build.version.sdk)"
				arch="$(getprop ro.product.cpu.abilist)"
				cpu="$(getprop ro.board.platform)"
				phone2="$(getprop ro.product.brand)"
				phone="$(getprop ro.product.name)"
				time="$(date +"%r")"
				date="$(date +"%F")"
				cd $PREFIX/var/lib/dpkg > /dev/null 2>&1
				packk="$(grep -c -e "Package" status)"
				battery="$(termux-battery-status|grep -e "percentage")"
				locate="$(termux-location|grep -e "lat" 	-e "long")"
				printf "\n\n\033[1;92m Your phone name :\033[0m $phone2\n"
				printf "\033[1;92m Your phone name & modal :\033[0m $phone\n"
				printf "\033[1;92m Android Version :\033[0m Android version $ver\n"
				printf "\033[1;92m CPU :\033[0m $cpu\n"
				printf "\033[1;92m Architecture :\033[0m $arch\n"
				printf "\033[1;92m SDK :\033[0m SDK$sdk\n"
				printf "\033[1;92m Kernal :\033[0m $kernal\n"
				printf "\033[1;92m Packages :\033[0m $packk Packages installed\n"
				printf "\033[1;92m Time :\033[1;97m $time\n"
				printf "\033[1;92m Date :\033[1;97m $date\n"
				printf "\033[1;92m Battery :\033[1;97m $battery\n"
				printf "\033[1;92m Your location :\033[1;97m $locate\n"
				}
				c2() {
					echo
					echo -e -n "\033[1;92m Enter folder name :\033[0m "
					read ab
					cd /sdcard
					#du -hs *|sort -rf |head -1000
					if [ ! -z $a ];then
					cd ~
					du -hs *|sort -rf |head -1000|grep -e "$ab"
					fi
					}
				custom() {
					echo
					echo -e -n "\033[1;92m Enter folder name :\033[0m "
					read a
					cd /sdcard
					#du -hs *|sort -rf |head -1000
					if [ ! -z $a ];then
					cd /sdcard
					du -hs *|sort -rf |head -1000|grep -e "$a"
					fi
					}
			full-s () {
								cd ~/TI-Script
								el
								bash .b.sh
								}
										full-fake () {
											cd ~/TI-Script
											el
											termux-setup-storage
											fake-else
											mkdir .fake-storage
											cp -f .c.sh ~/TI-Script/.fake-storage
											cd .fake-storage
											bash .c.sh
											}
											check() {
												cd $PREFIX/bin
												if [ -e $a ];then
												sleep 1
												printf "\033[1;96m\n $a is installed\n\n"
												else
												sleep 1
												printf "\033[1;91m\n $a is not install.\n"
												fi
												}
											pack() {
												echo
												echo -e -n "\033[1;93m Enter command :\033[1;97m "
												read a
												if [ $a ];then
												check
												fi
												}
												contacts() {
													banner
													termux-contact-list
													}
													lat() {
														echo
														echo -e -n "\033[1;96m Enter latitude :\033[0m "
														read b
														if [ $b ];then
														sleep 0.50
														echo
														echo -e -n "\033[1;96m Enter longitude :\033[0m "
														fi
														read c
														if [ ! -z $c ];then
														echo
														sleep 1
														printf "\033[1;92m Google maps : \033[1;97m https://www.google.com/maps/place/$b+$c/\n\n"
														fi
														}
menu () {
	banner
	printf "\n\033[1;91m[\033[0m1\033[1;91m]\033[1;96m Your Phone information\n"
	printf "\033[1;91m[\033[0m2\033[1;91m]\033[1;96m Check internet speed\n"
	printf "\033[1;91m[\033[0m3\033[1;91m]\033[1;96m Check custom directory size\033[1;91m (\033[0m/sdcard\033[1;91m)\n"
	printf "\033[1;91m[\033[0m4\033[1;91m]\033[1;96m Check custom directory size\033[1;91m (\033[0m$HOME\033[1;91m)\n"
	printf "\033[1;91m[\033[0m5\033[1;91m]\033[1;96m Checking packages\n"
	printf "\033[1;91m[\033[0m6\033[1;91m]\033[1;96m Contacts\n"
	printf "\033[1;91m[\033[0m7\033[1;91m]\033[1;96m Latitude or longitude covert into google map\n"
	printf "\033[1;91m[\033[0m8\033[1;91m]\033[1;96m Exit\n\n\n"
	
	
	
	echo -e -n "\033[1;93mTI\033[0m@\033[1;92mScript\033[1;97m -->> "
	read a
	case $a in
	1)phone ;;
	2)spe ;;
	3)custom ;;
	4)c2 ;;
	5)pack ;;
	6)contacts ;;
	7)lat ;;
	8)exit ;;
	*)menu ;;
	esac
	}
	menu