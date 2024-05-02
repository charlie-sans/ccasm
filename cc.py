import sys
import os 
import time


def Write_bytes(string, file):
    # write bytes to the file
    for i in range(len(string)):
        file.write(string[i].encode())

 