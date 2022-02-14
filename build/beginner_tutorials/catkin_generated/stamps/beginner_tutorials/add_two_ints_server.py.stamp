#!/usr/bin/env python

from __future__ import print_function
from pathlib import Path

from beginner_tutorials.srv import AddTwoInts,AddTwoIntsResponse
import rospy
from datetime import datetime

def handle_add_two_ints(req):
    outfile = Path('output.txt')
    outfile.touch(exist_ok=True)
    with open(outfile, 'w') as output:
        line = datetime.now().strftime('%m/%d/%Y, %H:%M:%S') + ' - ' + req.sensor_id + ': ' + req.emotion
        print(line)
        output.write(line)
        output.write('\n')
    return AddTwoIntsResponse(req.sensor_id + req.emotion)

def add_two_ints_server():
    rospy.init_node('add_two_ints_server')
    s = rospy.Service('add_two_ints', AddTwoInts, handle_add_two_ints)
    print("Ready to recieve sensor input")
    rospy.spin()

if __name__ == "__main__":
    add_two_ints_server()
