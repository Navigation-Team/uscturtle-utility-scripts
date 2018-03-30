#!/bin/bash -x

# Script to install ROS Lunar on the jetson
# source: http://wiki.ros.org/lunar/Installation/Ubuntu


sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update

sudo apt-get install ros-lunar-desktop

sudo rosdep init
rosdep update

if [ ! grep 'source /opt/ros/lunar/setup.zsh' ~/.zshrc ] ; then
	echo "source /opt/ros/lunar/setup.zsh" >> ~/.zshrc
fi

sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential

