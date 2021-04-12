compiler = "WINEPATH=tools/kmc/gcc/mipse/BIN wine tools/kmc/gcc/mipse/BIN/exew32.exe tools/kmc/gcc/mipse/BIN/GCC"
cflags = "-O2 -c -G0 -mgp32 -mfp32 -mips3"
import sys, os

o_file = sys.argv[1]

kmc_o = o_file.lower()

c_file = sys.argv[2]

os.system("%s %s -o %s %s" % (compiler, cflags, o_file, c_file))

os.system("mv %s %s" % (kmc_o, o_file))
