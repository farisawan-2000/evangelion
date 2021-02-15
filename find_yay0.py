import sys, os, binascii

fb = []

with open(sys.argv[1], 'rb') as f:
	fb = f.read()



for i in range(len(fb)):
	if binascii.hexlify(fb[i:i + 4]) == b'59617930':
		# print(" - [0x%08X, Yay0]" % i)
		print(".balign 8")
		print(".incbin \"build/yay0/%X.szp\"" % i)
