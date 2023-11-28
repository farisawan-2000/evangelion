import sys

ram = int(sys.argv[1], 16)
rom = int(sys.argv[2], 16)


print(ram, rom)

for l in sys.stdin:
    if "rom:\n" in l:
        tok = l.split()
        sym = tok[0]
        newram = int(tok[2][:-1], 16)
        newrom = rom + (newram - ram)
        print(f"{sym} = 0x{newram:08X}; // rom:0x{newrom:04X}")


