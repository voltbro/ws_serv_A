#!/bin/bash

apt-get install python-pip -y;
apt-get install python-tqdm -y;
sudo -u pi ls -la ;
sudo -u pi sh -c cd ~/ros_catkin_ws/src/ws_service_pkg_1 && echo 'in ws_service_pkg_1';
sudo -u pi git reset --hard b82fbb3c9e8a08df12b37006b133ee841d50bb50;
sudo -u pi sh -c source /opt/ros/melodic/setup.bash;
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/melodic --pkg=ws_serv_A;
sudo -u pi sh -c cd ~/ros_catkin_ws/ && roslaunch ws_service_pkg_1 start_configure_A.launch;


