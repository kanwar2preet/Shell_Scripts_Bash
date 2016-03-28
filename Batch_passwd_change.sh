# Purpose : Password change for multiple users in file named userlist.txt

#!/bin/sh
for i in `more userlist.txt `
do
echo $i
echo $i:$i"123" | chpasswd
#echo $i"123" | passwd –-stdin "$i"
echo; echo "User $username’s password changed!"
done


#END
