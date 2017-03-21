#Time-stamp: <2017-03-14 15:25:53 hoshi>

OUTDIR_KERAS = ../keras
#INSDIR_KERAS = ./keras

message:
	echo "specify what you want to do"

basic:
	sudo apt-get install -y g++
	sudo apt-get install -y git
	
blacklist:
	echo ""                           > test.txt
	echo "blacklist nouveau"          >> test.txt
	echo "blacklist lbm-nouveau"      >> test.txt
	echo "options nouveau modeset=0"  >> test.txt
	echo "alias nouveau off"          >> test.txt
	echo "alias lbm-nouveau off"      >> test.txt
	sudo mv test.txt /etc/modprobe.d/blacklist-nouveau.conf
	echo ""                           > test2.txt
	echo "options nouveau modeset=0"  >> test2.txt
	sudo mv test2.txt /etc/modprobe.d/nouveau-kms.conf
	sudo update-initramfs -u

anainstall:
	wget https://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh
	bash ./Anaconda3-4.3.0-Linux-x86_64.sh
	source ~/.bashrc

cudainstall:
	wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run
	sudo sh cuda_8.0.61_375.26_linux.run


pip:
	pip install keras
	pip install tensorflow
	pip install tensorflow-gpu
	pip install theano


git:
	git clone https://github.com/fchollet/keras $(OUTDIR_KERAS)

clean:
	rm -rf *~ .*~
