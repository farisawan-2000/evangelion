from charmap import evangelion_charmap_reverse

import sys

fl = []
with open(sys.argv[1]) as f:
    fl = f.readlines()

inData = False
for i, l in enumerate(fl):
    finalStr = ".short "
    lin = l[:-1]
    # if "EVA_STR(" in l:
    if ".evaStr" in l:
        theString = l.split('"')[1].replace('"','')
        for i in range(len(theString)):
            if theString[i:i+4] in evangelion_charmap_reverse:
                finalStr += f"{evangelion_charmap_reverse[theString[i:i+4]]:#04x}, "
                i += 4
            else:
                finalStr += f"{evangelion_charmap_reverse[theString[i]]:#04x}, "
            # finalStr += "0xevange
        finalStr += "0x0000"
        print(finalStr)
    else:
        print(lin)
        

