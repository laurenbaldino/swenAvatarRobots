#!/usr/bin/env python

from __future__ import print_function
from pathlib import Path
import socket
from beginner_tutorials.srv import AddTwoInts,AddTwoIntsResponse
import rospy
from datetime import datetime
import rosbag
from std_msgs.msg import String

HOST = "192.168.1.133"
PORT_NUMBER = 1755
SIZE = 1024
write_bag = rosbag.Bag('test.bag', 'w')

def add_two_ints_server():
    try:
        i = String()
	i.data = 'affirmative'
	write_bag.write('numbers', i)
    finally
	write_bag.close()
    read_bag = rosbag.Bag('test.bag')

    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((HOST, PORT_NUMBER))
	for, topic, msg, t in read_bag.read_messages(topics=['numbers']):
            s.sendall(str(msg).encode('utf-8'))

if __name__ == "__main__":
    add_two_ints_server()
