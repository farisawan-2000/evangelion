import sys, binascii

binstr = """  - name: ovl%d
    type: code
    start: 0x%s
    vram: 0x%s
    subsections:
    - [0x%s, asm, ovl%d]

   - name: code_%s_data
     type: bin
     start: %s
    """

fb = []
with open(sys.argv[1], "rb") as f:
	fb = f.read()

def g(b):
	return binascii.hexlify(b).decode('ascii').upper()

c = 1
for i in range(len(fb))[:-8:40]:
	slce = binascii.hexlify(fb[i:i+4]).decode('ascii').upper()
	print(binstr % (
		c,
		g(fb[i:i + 4]),
		g(fb[i + 8:i + 12]),
		g(fb[i:i + 4]),
		c,
		g(fb[i:i + 4]),

		str(hex(
		int(g(fb[i + 20:i + 24]),16)
		-
		0x80025C00
		# int(g(fb[i + 8:i + 12]),16)
		+
		int(g(fb[i:i + 4]), 16)
		)),
		
		))

	# print(g(fb[i + 16:i + 20])
	# 	,
	# 	g(fb[i + 8:i + 12])
	# 	,
	# 	g(fb[i:i + 4])
	# 	)
	c += 1
