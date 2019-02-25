all: roi_align_kernel.cu roi_align_kernel.h
	/usr/local/cuda/bin/nvcc -c -o roi_align.cu.o roi_align_kernel.cu -x cu -Xcompiler -fPIC -arch=sm_52
clean:
	rm roi_align.cu.o
