#Time-stamp: <2017-03-14 15:25:53 hoshi>

OUTDIR_KERAS = ../keras
#INSDIR_KERAS = ./keras

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
