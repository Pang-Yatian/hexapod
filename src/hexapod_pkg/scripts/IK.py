from math import sin,cos,asin,acos,atan,sqrt,degrees,radians, pi
import numpy as np
import gait

body_struc = np.mat([[0.06, 0.11, 0],
                     [0.06, 0, 0],
                     [0.06,-0.11, 0],
                     [-0.06,-0.11,0],
                     [-0.06, 0, 0],
                     [-0.06, 0.11,0]]).T

six_leg_offset = [0, 0, -0 , 0, 0, -0]

def coordinate_to_degrees(x, y): # function to convert coordinates to angles from the x-axis (0~360)
    x += 0.00001 # this is to avoid zero division error in case x == 0
 
    if x >= 0 and y >= 0:   # first quadrant
        angle = degrees(atan(y/x))
    elif x < 0 and y >= 0:  # second quadrant
        angle = 180 + degrees(atan(y/x))
    elif x < 0 and y < 0:   # third quadrant
        angle = 180 + degrees(atan(y/x))
    elif x >= 0 and y < 0:  # forth quadrant
        angle = 360 + degrees(atan(y/x))
    return round(angle,1)


def bodyIK(pos,rpy,foot_struc):

  # 将欧拉角转换为旋转矩阵
    R, P, Y = rpy[0], rpy[1], rpy[2]
    rotx = np.mat([[ 1,       0,            0          ],
                 [ 0,       cos(R), -sin(R)],
                 [ 0,       sin(R),  cos(R)]])
    roty = np.mat([[ cos(P),  0,      -sin(P)],
                 [ 0,            1,       0          ],
                 [ sin(P),  0,       cos(P)]]) 
    rotz = np.mat([[ cos(Y), -sin(Y),  0     ],
                 [ sin(Y),  cos(Y),  0     ],
                 [ 0,            0,            1     ]])

    rot_mat = rotx * roty * rotz\


    leg_vector = np.mat(np.zeros((3, 6)))
    for i in range(6):
        leg_vector[:, i] = -pos - rot_mat * body_struc[:, i] + foot_struc[:, i]

    return leg_vector

def IK(leg_vector): # pos = [x, y, z]
    # specify the length of the leg components
    coxa    = 0.08      # coxa length
    femur   = 0.10      # femur length
    tibia   = 0.16      # tibia length
    angles_list = []
    for leg_id in range(6):
        x, y, z = leg_vector[0,leg_id], leg_vector[1,leg_id], leg_vector[2,leg_id]
        x += 0.0000001 # this is to avoid zero-division math error
        theta1 = coordinate_to_degrees(x, y)    # this is the angle from x-axis in anticlockwise rotation
        # remove the offset due to the length of coxa    
        x -= coxa*cos(radians(theta1))
        y -= coxa*sin(radians(theta1))

        if leg_id >= 3:
            theta1 = theta1 - 180
           
        if theta1 > 180:          
            #print(theta1)
            theta1 -= 360
            #print("Warning:leg " + str(leg_id) +" theta1 may cause error")
            #print(theta1)
            
        theta1 -= degrees(six_leg_offset[leg_id])

        P = sqrt(x**2 + y**2)
        
        if sqrt(x**2 + y**2 + z**2) > femur + tibia: 
            print("MATH ERROR: coordinate too far")
            return [theta1, 0, 0]
    
        alpha = atan(z/P)

        c = sqrt(P**2 + z**2)
    
        beta = acos((femur**2+c**2-tibia**2)/(2*femur*c))
        theta2 = beta + alpha
        theta3 = pi/2 - acos((tibia**2+femur**2-c**2)/(2*tibia*femur))


        angles_list.append(radians(theta1))
        angles_list.append(-theta2)
        angles_list.append(theta3)
    
    return angles_list

def get_angle(command1,command2):
    pos , rpy = gait.posrpy(command2)
    if command1 == 'i':
        footpoint_struc = gait.idle_gait()
    elif command1 == 'w':
       footpoint_struc = gait.forward_gait()
    elif command1 == 's':
        footpoint_struc = gait.backward_gait() 
    else:
        footpoint_struc = gait.idle_gait()
    n = footpoint_struc.shape[0]
    angles_list = np.zeros((n,18))
    for i in range(n):
        footpoint = np.zeros((3,6))
        footpoint[:,:] = footpoint_struc[i,:,:]

        leg_vector= bodyIK(pos,rpy,np.mat(footpoint))
        angles= IK(leg_vector)
        angles_list[i,:] = angles

    return angles_list

if __name__ == '__main__':
    get_angle()


