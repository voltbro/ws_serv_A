#!/bin/bash

apt-get install python-pip -y;
apt-get install python-tqdm -y;
sudo -u pi ls -la ;
sudo -u pi sh -c cd ~/ros_catkin_ws/src/ws_service_pkg_1 && echo 'in ws_service_pkg_1';
sudo -u pi git reset --hard 48aa30ccc74008d7a4aba8f8855184cbecd1c5e8;
#sudo -u pi sh -c source /opt/ros/melodic/setup.bash;
cd ~ros_catkin_ws && ./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/melodic --pkg=ws_serv_A;
#sudo -u pi sh -c source /opt/ros/melodic/setup.bash &&
sudo -u pi roslaunch ws_service_pkg_1 start_configure_A.launch;


