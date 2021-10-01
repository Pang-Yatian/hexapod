#!/usr/bin/env python
# license removed for brevity
from numpy.core.fromnumeric import size
import rospy
from rospy.core import rospyinfo
from std_msgs.msg import Float64
from std_msgs.msg import Float32
from std_msgs.msg import String
from std_msgs.msg import Float32MultiArray
import IK

import init

def pub(angle):
    num = angle.shape[0]
    pause = rospy.Rate(num)
    for t in range(num):
        
        joint0_pos_pub.publish(angle[t,0])
        joint1_pos_pub.publish(angle[t,3])
        joint2_pos_pub.publish(angle[t,6])
        joint3_pos_pub.publish(angle[t,9])
        joint4_pos_pub.publish(angle[t,12])
        joint5_pos_pub.publish(angle[t,15])

        joint01_pos_pub.publish(angle[t,1])
        joint11_pos_pub.publish(angle[t,4])
        joint21_pos_pub.publish(angle[t,7])
        joint31_pos_pub.publish(angle[t,10])
        joint41_pos_pub.publish(angle[t,13])
        joint51_pos_pub.publish(angle[t,16])

        joint03_pos_pub.publish(angle[t,2])
        joint13_pos_pub.publish(angle[t,5])
        joint23_pos_pub.publish(angle[t,8])
        joint33_pos_pub.publish(angle[t,11])
        joint43_pos_pub.publish(angle[t,14])
        joint53_pos_pub.publish(angle[t,17])
        pause.sleep()



if __name__ == '__main__':
    try:
        rospy.init_node('pos_pub_node', anonymous=True)
        joint0_pos_pub = rospy.Publisher('/hexapod/joint0_1_position_controller/command', Float64, queue_size=1000)
        joint1_pos_pub = rospy.Publisher('/hexapod/joint1_1_position_controller/command', Float64, queue_size=1000)
        joint2_pos_pub = rospy.Publisher('/hexapod/joint2_1_position_controller/command', Float64, queue_size=1000)
        joint3_pos_pub = rospy.Publisher('/hexapod/joint3_1_position_controller/command', Float64, queue_size=1000)
        joint4_pos_pub = rospy.Publisher('/hexapod/joint4_1_position_controller/command', Float64, queue_size=1000)
        joint5_pos_pub = rospy.Publisher('/hexapod/joint5_1_position_controller/command', Float64, queue_size=1000)

        joint01_pos_pub = rospy.Publisher('/hexapod/joint0_2_position_controller/command', Float64, queue_size=1000)
        joint11_pos_pub = rospy.Publisher('/hexapod/joint1_2_position_controller/command', Float64, queue_size=1000)
        joint21_pos_pub = rospy.Publisher('/hexapod/joint2_2_position_controller/command', Float64, queue_size=1000)
        joint31_pos_pub = rospy.Publisher('/hexapod/joint3_2_position_controller/command', Float64, queue_size=1000)
        joint41_pos_pub = rospy.Publisher('/hexapod/joint4_2_position_controller/command', Float64, queue_size=1000)
        joint51_pos_pub = rospy.Publisher('/hexapod/joint5_2_position_controller/command', Float64, queue_size=1000)

        joint03_pos_pub = rospy.Publisher('/hexapod/joint0_3_position_controller/command', Float64, queue_size=1000)
        joint13_pos_pub = rospy.Publisher('/hexapod/joint1_3_position_controller/command', Float64, queue_size=1000)
        joint23_pos_pub = rospy.Publisher('/hexapod/joint2_3_position_controller/command', Float64, queue_size=1000)
        joint33_pos_pub = rospy.Publisher('/hexapod/joint3_3_position_controller/command', Float64, queue_size=1000)
        joint43_pos_pub = rospy.Publisher('/hexapod/joint4_3_position_controller/command', Float64, queue_size=1000)
        joint53_pos_pub = rospy.Publisher('/hexapod/joint5_3_position_controller/command', Float64, queue_size=1000)

        init_flag = True

        while not rospy.is_shutdown():
            command1 = rospy.get_param('/hexapod/action_state_param1', 'i')
            command2 = rospy.get_param('/hexapod/action_state_param2', 'i')

            #1 -- get command #2 -- get angle
            if (init_flag):
                angle = init.initialize()
                init_flag = False
                rospy.sleep(3)
            else:
                angle = IK.get_angle(command1,command2)
     
            #3 --pub
            pub(angle)  #pub


            
            
    except rospy.ROSInterruptException:
        pass