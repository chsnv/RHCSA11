#!/bin/bash
paste usernames passwords | while read i j 
do if grep -q "$i" /etc/passwd; then
	echo "$i does exist!!!"
else
	echo "Setting $i user and $j pass."
	useradd $i && echo $j | passwd --stdin $i &>/dev/null
       tar fczP /backups/$i.tar.gz /home/$i #tar fcjP ..*.bz2  
       fi
done
