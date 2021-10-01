import numpy as np
import math

def idle_gait():
    footpoint_struc = np.zeros((1,3,6))
    footpoint_struc[0,:,:] = np.mat([[0.24, 0.16 ,0],
                          [0.24,0,0],
                          [0.24,-0.16,0],
                          [-0.24,-0.16,0],
                          [-0.24,0,0],
                          [-0.24,0.16,0]]).T
    return footpoint_struc

def forward_gait():

    footpoint_struc = np.mat([[0.24, 0.16 ,0],
                          [0.24,0,0],
                          [0.24,-0.16,0],
                          [-0.24,-0.16,0],
                          [-0.24,0,0],
                          [-0.24,0.16,0]])
    smooth_factor = 4    
    step_size = 0.04
    #--step 1 +-+-+-
    step1_struc = np.mat([[0.24, 0.16+step_size ,0],
                          [0.24,0-step_size,0],
                          [0.24,-0.16+step_size,0],
                          [-0.24,-0.16-step_size,0],
                          [-0.24,0+step_size,0],
                          [-0.24,0.16-step_size,0]])
    #--step 2 -+-+-+
    step2_struc = np.mat([[0.24, 0.16-step_size ,0],
                          [0.24,0+step_size,0],
                          [0.24,-0.16-step_size,0],
                          [-0.24,-0.16+step_size,0],
                          [-0.24,0-step_size,0],
                          [-0.24,0.16+step_size,0]])
#--step 1
    s1_foot0_struc = np.linspace(step1_struc[0,:],step2_struc[0,:],smooth_factor,endpoint=True)
    s1_foot2_struc = np.linspace(step1_struc[2,:],step2_struc[2,:],smooth_factor,endpoint=True)
    s1_foot4_struc = np.linspace(step1_struc[4,:],step2_struc[4,:],smooth_factor,endpoint=True)
    s1_foot1_struc = cycloid(step1_struc[1,:],step2_struc[1,:],smooth_factor)
    s1_foot3_struc = cycloid(step1_struc[3,:],step2_struc[3,:],smooth_factor)
    s1_foot5_struc = cycloid(step1_struc[5,:],step2_struc[5,:],smooth_factor)

#--step 2 
    s2_foot1_struc = np.linspace(step2_struc[1,:],step1_struc[1,:],smooth_factor,endpoint=True)
    s2_foot3_struc = np.linspace(step2_struc[3,:],step1_struc[3,:],smooth_factor,endpoint=True)
    s2_foot5_struc = np.linspace(step2_struc[5,:],step1_struc[5,:],smooth_factor,endpoint=True)
    s2_foot0_struc = cycloid(step2_struc[0,:],step1_struc[0,:],smooth_factor)
    s2_foot2_struc = cycloid(step2_struc[2,:],step1_struc[2,:],smooth_factor)
    s2_foot4_struc = cycloid(step2_struc[4,:],step1_struc[4,:],smooth_factor)

    footpoint_struc = np.zeros((smooth_factor*2,6,3))
    for i in range(smooth_factor):
        footpoint_struc[i,0,:] = s1_foot0_struc[i,:]
        footpoint_struc[i,1,:] = s1_foot1_struc[i,:]
        footpoint_struc[i,2,:] = s1_foot2_struc[i,:]
        footpoint_struc[i,3,:] = s1_foot3_struc[i,:]
        footpoint_struc[i,4,:] = s1_foot4_struc[i,:]
        footpoint_struc[i,5,:] = s1_foot5_struc[i,:]

    for i in range(smooth_factor):
        footpoint_struc[i+smooth_factor,0,:] = s2_foot0_struc[i,:]
        footpoint_struc[i+smooth_factor,1,:] = s2_foot1_struc[i,:]
        footpoint_struc[i+smooth_factor,2,:] = s2_foot2_struc[i,:]
        footpoint_struc[i+smooth_factor,3,:] = s2_foot3_struc[i,:]
        footpoint_struc[i+smooth_factor,4,:] = s2_foot4_struc[i,:]
        footpoint_struc[i+smooth_factor,5,:] = s2_foot5_struc[i,:]
    footpoint_struc = footpoint_struc.swapaxes(1,2)

    return footpoint_struc

def backward_gait():
    footpoint_struc = np.mat([[0.24, 0.16 ,0],
                          [0.24,0,0],
                          [0.24,-0.16,0],
                          [-0.24,-0.16,0],
                          [-0.24,0,0],
                          [-0.24,0.16,0]])
    smooth_factor = 4    
    step_size = 0.04
    #--step 1 +-+-+-
    step1_struc = np.mat([[0.24, 0.16+step_size ,0],
                          [0.24,0-step_size,0],
                          [0.24,-0.16+step_size,0],
                          [-0.24,-0.16-step_size,0],
                          [-0.24,0+step_size,0],
                          [-0.24,0.16-step_size,0]])
    #--step 2 -+-+-+
    step2_struc = np.mat([[0.24, 0.16-step_size ,0],
                          [0.24,0+step_size,0],
                          [0.24,-0.16-step_size,0],
                          [-0.24,-0.16+step_size,0],
                          [-0.24,0-step_size,0],
                          [-0.24,0.16+step_size,0]])
#--step 1
    s1_foot0_struc = np.linspace(step1_struc[0,:],step2_struc[0,:],smooth_factor,endpoint=True)
    s1_foot2_struc = np.linspace(step1_struc[2,:],step2_struc[2,:],smooth_factor,endpoint=True)
    s1_foot4_struc = np.linspace(step1_struc[4,:],step2_struc[4,:],smooth_factor,endpoint=True)
    s1_foot1_struc = cycloid(step1_struc[1,:],step2_struc[1,:],smooth_factor)
    s1_foot3_struc = cycloid(step1_struc[3,:],step2_struc[3,:],smooth_factor)
    s1_foot5_struc = cycloid(step1_struc[5,:],step2_struc[5,:],smooth_factor)

#--step 2 
    s2_foot1_struc = np.linspace(step2_struc[1,:],step1_struc[1,:],smooth_factor,endpoint=True)
    s2_foot3_struc = np.linspace(step2_struc[3,:],step1_struc[3,:],smooth_factor,endpoint=True)
    s2_foot5_struc = np.linspace(step2_struc[5,:],step1_struc[5,:],smooth_factor,endpoint=True)
    s2_foot0_struc = cycloid(step2_struc[0,:],step1_struc[0,:],smooth_factor)
    s2_foot2_struc = cycloid(step2_struc[2,:],step1_struc[2,:],smooth_factor)
    s2_foot4_struc = cycloid(step2_struc[4,:],step1_struc[4,:],smooth_factor)

    footpoint_struc = np.zeros((smooth_factor*2,6,3))
    for i in range(smooth_factor):
        footpoint_struc[smooth_factor*2-i-1,0,:] = s1_foot0_struc[i,:]
        footpoint_struc[smooth_factor*2-i-1,1,:] = s1_foot1_struc[i,:]
        footpoint_struc[smooth_factor*2-i-1,2,:] = s1_foot2_struc[i,:]
        footpoint_struc[smooth_factor*2-i-1,3,:] = s1_foot3_struc[i,:]
        footpoint_struc[smooth_factor*2-i-1,4,:] = s1_foot4_struc[i,:]
        footpoint_struc[smooth_factor*2-i-1,5,:] = s1_foot5_struc[i,:]

    for i in range(smooth_factor):
        footpoint_struc[-i+smooth_factor-1,0,:] = s2_foot0_struc[i,:]
        footpoint_struc[-i+smooth_factor-1,1,:] = s2_foot1_struc[i,:]
        footpoint_struc[-i+smooth_factor-1,2,:] = s2_foot2_struc[i,:]
        footpoint_struc[-i+smooth_factor-1,3,:] = s2_foot3_struc[i,:]
        footpoint_struc[-i+smooth_factor-1,4,:] = s2_foot4_struc[i,:]
        footpoint_struc[-i+smooth_factor-1,5,:] = s2_foot5_struc[i,:]
    
    footpoint_struc = footpoint_struc.swapaxes(1,2)
    return footpoint_struc

def cycloid(start, end, smooth_factor): #start [x,y,z]
    x = np. linspace(start[0,0], end[0,0], smooth_factor)
    r = (end[0,1] - start[0,1])/(2*math.pi)
    y_offset = start[0,1]
    t_step = 2*math.pi / (smooth_factor-1)
    t = 0
    result = np.zeros((smooth_factor,3))

    for n in range(smooth_factor):
        y = r*(t - math.sin(t))+y_offset
        z = 2*r*(1 - math.cos(t))
        result[n,:]=[x[n],y,z]
        t = t + t_step

    return result

def posrpy(command2):
    pos = np.mat([0.0,  0.0,  0.12 ]).T # 目标位置向量
    rpy = np.array([0.0,  0.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    if command2 == '1':
        pos = np.mat([0.03,  0.0,  0.12 ]).T # 目标位置向量
        rpy = np.array([0.0,  0.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    elif command2 == '2':
        pos = np.mat([-0.03,  0.0,  0.12 ]).T # 目标位置向量
        rpy = np.array([0.0,  0.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    elif command2 == '3':
        pos = np.mat([0.0,  0.05,  0.12 ]).T # 目标位置向量
        rpy = np.array([0.0,  0.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值    
    elif command2 == '4':
        pos = np.mat([0.0,  -0.05,  0.12 ]).T # 目标位置向量
        rpy = np.array([0.0,  0.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    elif command2 == '5':
        pos = np.mat([0.0,  0.0,  0.12 ]).T # 目标位置向量
        rpy = np.array([10.0,  0.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    elif command2 == '6':
        pos = np.mat([0.0,  0.0,  0.12 ]).T # 目标位置向量
        rpy = np.array([-10.0,  0.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    elif command2 == '7':
        pos = np.mat([0.0,  0.0,  0.12 ]).T # 目标位置向量
        rpy = np.array([0.0,  10.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    elif command2 == '8':
        pos = np.mat([0.0,  0.0,  0.12 ]).T # 目标位置向量
        rpy = np.array([0.0,  -10.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    elif command2 == '9':
        pos = np.mat([0.0,  0.0,  0.09 ]).T # 目标位置向量
        rpy = np.array([0.0,  0.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    elif command2 == '0':
        pos = np.mat([0.0,  0.0,  0.15 ]).T # 目标位置向量
        rpy = np.array([0.0,  0.0,  0.0]) * math.pi / 180 # 欧拉角，化为弧度值
    return pos, rpy

if __name__ == '__main__':
    forward_gait()



