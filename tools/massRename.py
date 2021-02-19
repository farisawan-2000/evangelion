import sys, os
with open(sys.argv[1]) as f:
	for line in f:
		tokens = line.split()
		if "func" in line:
			os.system("./rename_sym.sh func_%s %s" % (tokens[2][2:-1], tokens[0]))
		if "data" in line:
			os.system("./rename_sym.sh D_%s %s" % (tokens[2][2:-1], tokens[0]))