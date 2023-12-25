import sys, binascii

fl = []
with sys.stdin as f:
    fl = f.readlines()

fl = [int(i.split(".byte")[1], 16) for i in fl]

sym = "D_80042224_ovl7"

print(f"TextParams {sym}[] = {{")

def g(b):
    return str(hex((b[0] << 24) | (b[1] << 16) | (b[2] << 8) | b[3]))

def h(b):
    return (b[0] << 8) | (b[1])

for i in range(len(fl))[::20]:
    # print("    {")
    symbol = f"&D_{g(fl[i + 0:i + 4])[2:].upper()}_ovl7"
    if int(g(fl[i + 0:i + 4]), 16) == 0:
        symbol = "NULL"
    p1 = h(fl[i + 4:i + 6])
    p2 = h(fl[i + 6:i + 8])
    p3 = h(fl[i + 8:i + 10])
    p4 = h(fl[i + 10:i + 12])
    p5 = fl[i + 12]
    p6 = fl[i + 13]
    p7 = fl[i + 14]
    p8 = fl[i + 15]
    p9 = fl[i + 16]
    p10 = fl[i + 17]
    pad = h(fl[i + 18:i + 20])
    print(f"    {{{symbol}, 0x{p1:04X}, 0x{p2:04X}, 0x{p3:04X}, 0x{p4:04X}, 0x{p5:02X}, 0x{p6:02X}, 0x{p7:02X}, 0x{p8:02X}, 0x{p9:02X}, 0x{p10:02X}, 0x{pad:04X}}},")

print("};")
