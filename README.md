### Installation
```
cd ~/ros_catkin_ws/src/
git clone https://github.com/voltbro/ws_serv_A.git
```
### Compilation
```
cd ~/ros_catkin_ws/
sudo ./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/melodic --pkg=ws_serv_A
```
### Usage

Just run configure.launch
```
roslaunch ws_serv_A start_configure.launch
```
