from charmap import evangelion_charmap

import sys
# symName = sys.argv[2]


fl = []
with open(sys.argv[1]) as f:
    fl = f.readlines()

inData = False
finalStr = ""

curSym = ""
for i, l in enumerate(fl):
    lin = l[:-1]
    # if ".size" in l:
    #     inData = False
    #     print(f'{curSym}: EVA_STR(R"({finalStr})")')
    #     finalStr = ""
    if "glabel" in l:
        # print(lin)
        curSym = lin.split()[1]
        inData = True
    elif inData:
        # print(lin, f";{finalStr};")
        if ".word" in lin:
            if len(lin.split(".word ")) < 2:
                continue
            twoglyphs = int(lin.split(".word ")[1], 16)
            finalStr += evangelion_charmap[twoglyphs >> 16]
            finalStr += evangelion_charmap[twoglyphs & 0xFFFF]

            if twoglyphs >> 16 == 0 or twoglyphs & 0xFFFF == 0:
                print(f'{curSym}: EVA_STR(R"({finalStr})")')
                finalStr = ""
                inData = False
        # elif ".short" in lin:
        #     if len(lin.split(".short ")) < 2:
        #         continue
        #     glyph = int(lin.split(".short ")[1], 16)
        #     finalStr += evangelion_charmap[glyph]

        #     if glyph == 0:
        #         print(f'EVA_STR(R"({finalStr})")')
        #         finalStr = ""
        #         inData = False
    else:
        continue


# print(f'.evaStr "{finalStr}"')

# if this ever becomes C

