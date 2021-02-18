# import sys

# with open(sys.argv[1]) as f:
# 	for line in f:
# 		if "move" in line:
# 			tokens = line.replace(",", " ").split()
# 			if "$0" in tokens:
# 				print(line[:-1])
# 				# print("\tori %s, $0, 0" % tokens[1])
# 			else:
# 				print("\taddu %s, $0, %s" % (tokens[1], tokens[2]))
# 		else:
# 			print(line[:-1])

import sys

with open(sys.argv[1]) as f:
	for line in f:
		if "la" in line and "glabel" not in line:
			tok = line.replace(",", " ").split()
			# print(tok)
			print("\tlui %s, %%hi(%s)" % (tok[1], tok[2]))
			print("\taddiu %s, %s, %%lo(%s)" % (tok[1], tok[1], tok[2]))
			continue
		if "sw" in line and "glabel" not in line and "(" not in line:
			tok = line.replace(",", " ").split()
			print("\tlui $at, %%hi(%s)" % (tok[2]))
			print("\tsw %s, %%lo(%s)($at)" % (tok[1], tok[2]))
			continue
		else:
			print(line[:-1])
			continue

# stubscript
# import sys

# with open(sys.argv[1]) as f:
# 	for line in f:
# 		print(line[:-1])