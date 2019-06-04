import sys

args = sys.argv
X1=args[1]
X2=args[2]
text=args[3]
flag=args[4]

def xor_func(text, key):
    return "".join([chr(ord(c1) ^ ord(c2)) for (c1,c2) in zip(text, key)])


if flag==0:
	text = xor_func(text , X1)
	ctext = xor_encrypt(text, X2)
	print("暗号文 : " + text)

else :
	text = xor_func(text, X2)
	text = xor_func(text, X1)
	print("平文 : " + text)
