echo "Linuxのみサポート"
key_self=$(cat `find /sys/devices/ -name eth0`/address)  #これでmac取得
echo "自分のmacアドレス:"$key_self

read -p "送り元のmacアドレス: " key_target
read -p "暗号文: " plaintext

python3.5 xor.py ${key_self} ${key_target} ${plaintext} 1



