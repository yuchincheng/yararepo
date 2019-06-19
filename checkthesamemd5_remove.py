#!/usr/bin/env python3
from collections import defaultdict
import hashlib
import os
import sys


def md5checksum(filepath):
    with open(filepath, "rb") as afile:
        m = hashlib.md5()
        data = afile.read()
        m.update(data)
    return m.hexdigest()


def calculate_checksums(search_dir):
    checksums = defaultdict(list)

    for root, dirs, files in os.walk(search_dir):
        for filename in files:
            path = os.path.join(root, filename)
            checksum = md5checksum(path)
            checksums[checksum].append(path)
    return checksums


def display_equal_files(checksums):
    for checksum, paths in checksums.items():
        if len(paths) > 1:
            #print("MD5 sum: {}".format(checksum))
	    index=0
            for path in paths:
		if (index>0):
			os.remove(path) 
			print("{}".format(path))

		index=index+1

if __name__ == "__main__":
    search_dir = sys.argv[1]
    checksums = calculate_checksums(search_dir)
    display_equal_files(checksums)
