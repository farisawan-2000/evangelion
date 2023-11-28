import sys, os

for l in sys.stdin:
    os.system("git grep " + l.lstrip("0"))
