# hexapod

demo video 

https://youtu.be/je8t2UhGXK0


Usage:

install ros packages

```
 mkdir -p ~/catkin_ws
 cd ~/catkin_ws/
 git clone https://github.com/Pang-Yatian/hexapod.git
 cd ./src
 catkin_make
 source devel/setup.bash
 echo "source devel/setup.bash" >> ~/.bashrc
 source ~/.bashrc
 ```
 run ros packages
 
 ```
 roslaunch hexapod_pkg spawn.launch #create hexapod in gazebo
 rosrun hexapod_pkg body_leyboard.py #body posture control (command 1-9)
 rosrun hexapod_pkg move_leyboard.py #locomotion (command w s i)
 ```
