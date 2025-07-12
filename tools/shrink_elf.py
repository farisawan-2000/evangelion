#!/usr/bin/env python3
import argparse, struct, sys

if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument('file', help='input file')
    args = parser.parse_args()

    with open(args.file, 'r+b') as f:
        magic = struct.unpack('>I', f.read(4))[0]
        if magic != 0x7F454C46:
            print('Error: Not an ELF file')
            sys.exit(1)

        f.seek(0x6574)
        flags = struct.unpack('>I', f.read(4))[0]

        flags -= 8 # remove padding
        f.seek(0x6574)
        f.write(struct.pack('>I', flags))

