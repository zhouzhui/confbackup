(crontab -l ; echo "15 5 * * * bash /home/ubuntu/reloadnginxkey.sh > /dev/null") | sort - | uniq - | crontab -
