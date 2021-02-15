import sys
with open(sys.argv[1]) as f:
	for line in f:
		print("BUILD_DIR/src/%s.o(.text);" % line[:-1])