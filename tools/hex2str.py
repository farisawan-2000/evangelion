from charmap import evangelion_charmap

import sys
symName = sys.argv[2]


fl = []
with open(sys.argv[1]) as f:
    fl = f.readlines()

inData = False
finalStr = ""
for i, l in enumerate(fl):
    lin = l[:-1]
    if symName in l:
        if ".size" in l:
            inData = False
        else:
            inData = True
    elif inData:
        if len(lin.split(".word ")) < 2:
            continue
        twoglyphs = int(lin.split(".word ")[1], 16)
        finalStr += evangelion_charmap[twoglyphs >> 16]
        finalStr += evangelion_charmap[twoglyphs & 0xFFFF]

        if twoglyphs >> 16 == 0 or twoglyphs & 0xFFFF == 0:
            break
    else:
        continue


print(f'.evaStr "{finalStr}"')

# if this ever becomes C
# print(f'EVA_STR("{finalStr}")')
