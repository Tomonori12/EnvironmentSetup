#Time-stamp: <2017-03-09 16:12:50 hoshi>

#Required environment
#OS: Ubuntu 14.04 LTS 64 bit
# iso links below
# http://releases.ubuntu.com/14.04/
# https://mirror.umd.edu/ubuntu-iso/14.04/

#noubeau needs to be replaved to Nvidia CUDA



#INSDIR_KERAS = ../keras
INSDIR_KERAS = ./keras

install:
	wget https://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh
	bash ./Anaconda3-4.3.0-Linux-x86_64.sh
	source ~/.bashrc

pip:
	pip install keras
	pip install tensorflow
	pip install tensorflow-gpu
	pip install theano

git:
	git clone https://github.com/fchollet/keras $(INSDIR_KERAS)

clean:
	rm -rf *~ .*~
