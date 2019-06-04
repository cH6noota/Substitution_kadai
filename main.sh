echo ""
echo "Python3.5"
echo "暗号化"
echo "macintosh : 0"
echo "Linux : 1"
echo "-------------"
echo "復号 "
echo "macintosh : 2"
echo "Linux : 3"
echo "-------------"
echo "対象の番号を入力してください(例: 暗号化,自身のOSがLinuxなら1を入力)"

read -p "Hit enter: " num

while :
do
if [ $num -eq 0 ]; then
	bash ./encode_mac.sh
	break	
elif [ $num -eq 1 ] ; then
	bash ./encode_linux.sh
	break
elif [ $num -eq 2 ] ; then
	bash ./decode_mac.sh
	break
elif [ $num -eq 3 ] ; then
	bash ./decode_linux.sh
	break
fi
read -p "Hit enter: " num

done
