#!/usr/bin/env python3

import rospy # Python library for ROS
from sensor_msgs.msg import Image # Image is the message type
from cv_bridge import CvBridge # Package to convert between ROS and OpenCV Images
import cv2 # OpenCV library
from chessbot.srv import ChessImage, ChessImageResponse
import base64

def callback(data):
    
    # Create a VideoCapture object
    # The argument '0' gets the default webcam.
    
     
    # Used to convert between ROS and OpenCV images
    br = CvBridge()

    # as the video frame.
    ret, frame = cap.read()

    retval, buffer = cv2.imencode('.jpg', frame)

    # Convert to base64 encoding and show start of data
    jpg_as_text = base64.b64encode(buffer).decode()
    
    rospy.loginfo('Sending Frames!!!')
    
    return(jpg_as_text)

cap = cv2.VideoCapture(-1)

rospy.init_node('service_server',anonymous=True)

service=rospy.Service('Chess_bot',ChessImage,callback)

rospy.spin()

