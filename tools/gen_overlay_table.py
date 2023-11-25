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

def h(b):
    return int(binascii.hexlify(b).decode('ascii').upper(), 16)
    # return (b[0] << 24) | (b[1] << 16) | (b[2] << 8) | b[3]
    # return binascii.hexlify(b).decode('ascii').upper()

c = 1
for i in range(len(fb))[:-8:40]:
    # slce = binascii.hexlify(fb[i:i+4]).decode('ascii').upper()
    # print(f"number {i}")
    print(f"ovl{c}_ROM_START = 0x{g(fb[i:i + 4])};")
    print(f"ovl{c}_ROM_END = 0x{g(fb[i + 4:i + 8])};")
    # print("\t", g(fb[i + 8:i + 12]))
    # print("\t", g(fb[i + 12:i + 16]))
    # print("\t", g(fb[i + 12:i + 16]))
    # print("\t", g(fb[i + 16:i + 20]))
    # print("\t", g(fb[i + 20:i + 24]))
    # print("\t", g(fb[i + 24:i + 28]))
    # print("\t", g(fb[i + 28:i + 32]))
    # print("\t", g(fb[i + 32:i + 36]))
    # print("\t", g(fb[i + 36:i + 40]))
    # print("bss_size:", str(hex(h(fb[i + 36:i + 40]) - h(fb[i + 32:i + 36]))))
    # print(f"- {{type: bss, vram: 0x{g(fb[i + 32:i + 36])}, name: ovl{c}/ovl{c}}}")
    # print(binstr % (
    #   c,
    #   g(fb[i:i + 4]),
    #   g(fb[i + 8:i + 12]),
    #   g(fb[i:i + 4]),
    #   c,
    #   g(fb[i:i + 4]),

    #   str(hex(
    #   int(g(fb[i + 20:i + 24]),16)
    #   -
    #   0x80025C00
    #   # int(g(fb[i + 8:i + 12]),16)
    #   +
    #   int(g(fb[i:i + 4]), 16)
    #   )),
        
    #   ))

    # print(g(fb[i + 16:i + 20])
    #   ,
    #   g(fb[i + 8:i + 12])
    #   ,
    #   g(fb[i:i + 4])
    #   )
    c += 1
