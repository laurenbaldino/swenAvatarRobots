#!/usr/bin/env python

from __future__ import print_function
from pathlib import Path
import socket
from beginner_tutorials.srv import AddTwoInts,AddTwoIntsResponse
import rospy
from datetime import datetime

HOST = "192.168.1.133"
PORT_NUMBER = 1755
SIZE = 1024

def add_two_ints_server():
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((HOST, PORT_NUMBER))
        s.sendall(b"foobar")
        data = s.recv(SIZE)

    print(data)
    print('Success!')

if __name__ == "__main__":
    add_two_ints_server()
