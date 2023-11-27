from charmap import evangelion_charmap_reverse

import sys

fb = []
with open(sys.argv[1]) as f:
    fb = f.read()

inData = False

with sys.stdout as f:
    i = 0
    while i < len(fb):
        if inData and fb[i] == ')':
            if fb[i + 1] == '"':
                i += 1
                f.write("0}")
                inData = False
        elif not inData and fb[i] == 'R':
            if fb[i + 1] == '"':
                if fb[i + 2] == '(':
                    i += 2
                    inData = True
                    f.write("{")
            else:
                f.write(fb[i])
        elif inData:
            if fb[i:i+4] in evangelion_charmap_reverse:
                f.write(f"{evangelion_charmap_reverse[fb[i:i+4]]}")
                idx += 4
            else:
                f.write(f"{evangelion_charmap_reverse[fb[i]]}")
            f.write(",")
        else:
            f.write(fb[i])
        i += 1


# for i, l in enumerate(fl):
#     finalStr = ".short "
#     lin = l[:-1]
#     if "EVA_STR(" in l:
#         theString = l.split('"')[1].replace('"','')
#         for i in range(len(theString)):
#             if theString[i:i+4] in evangelion_charmap_reverse:
#                 finalStr += f"{evangelion_charmap_reverse[theString[i:i+4]]:#04x}, "
#                 i += 4
#             else:
#                 finalStr += f"{evangelion_charmap_reverse[theString[i]]:#04x}, "
#             # finalStr += "0xevange
#         finalStr += "0x0000"
#         print(finalStr)
#     else:
#         print(lin)
        

