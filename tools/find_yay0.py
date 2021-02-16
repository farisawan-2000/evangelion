import sys, os, binascii

fb = []

with open(sys.argv[1], 'rb') as f:
	fb = f.read()

print(".include \"macro.inc\"")
print(".section .data")

idx = 0

c_sizes = {}

with open("yo.txt") as f:
	for line in f:
		t = line.split()
		c_sizes[t[0]] = t[2]

def align4(i):
	return (i + 3) & -4

def align8(i):
	return (i + 7) & -8

for i in range(len(fb)):
	if binascii.hexlify(fb[i:i + 4]) == b'59617930':
		# print("  - [0x%08X, Yay0]" % i)
		# j = i + align8(int(c_sizes["%X" % i]))
		# if binascii.hexlify(fb[j:j + 4]) != b'59617930':
		# 	print("  - [0x%08X, bin]" % j)

		print(".balign 8")
		print("glabel yay0_%08X" % i)
		print(".incbin \"bin/Yay0/%X.szp\"" % i)
		j = i + align8(int(c_sizes["%X" % i]))
		if binascii.hexlify(fb[j:j + 4]) != b'59617930':
			print(".balign 8")
			print("glabel bin_%08X" % j)
			print(".incbin \"bin/bin_%X.bin\"" % j)
		# if "%08X" % i == "001C0128":
		# 	print(hardcode1)

print(".balign 8")
print("glabel bin_%08X" % j)
print(".incbin \"bin/bin_%X.bin\"" % j)
