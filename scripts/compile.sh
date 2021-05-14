#!/bin/bash

apt-get install python-pip -y;
apt-get install python-tqdm -y;
sudo -u pi ls -la ;
sudo -u pi git reset --hard f70f39debec1bb70c80bb40ba857f4d4c2c32807;
sudo -u pi sh -c source /opt/ros/melodic/setup.bash;
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/melodic --pkg=ws_serv_A;
cd ~/ros_catkin_ws/src/ws_service_pkg_1 && echo 'in ws_service_pkg_1';
cd ~/ros_catkin_ws/ && roslaunch ws_service_pkg_1 start_configure_A.launch;


