#LOGIN Auth
count=1

while [ $count -le 3 ]
do
	echo "Enter username: "
	read username
	echo "Enter pass: "
	read password

	if [[ "$username" = "admin" ]] && [[ "$password" = "Admin@123" ]]; then
		echo "login done!!"
		exit
	else
		echo "Noooooooooooooo"
	fi

	count=$((count+1))
done

echo "Acc locked"
