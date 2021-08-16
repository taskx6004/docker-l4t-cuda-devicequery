# Purpose

This simple docker project demonstrates how to build `deviceQuery` facility from CUDA samples with Jetson devices.

# Usage

## Build Image

Clone the repo with submodule:

`git clone --recurse-submodules https://github.com/taskx6004/docker-l4t-cuda-devicequery`

Build the image:
`docker build -t dockerhub_accountname/image_name:arch` .
As per hard-encoded in source files, image was named by author's account name. Find and replace them in both `build.sh` and `run.sh` to granding your own name.

The dot at last doesn't mean you are finishing a sentence, but means you have a Dockerfile in the current folder so it will be executed by docker.

## Run Image as a container

Image is short for "Container Image" to be specific. Assuming you have your Jetson device properly setup and GPU will work as supposed, and your docker is running from what L4T package was shipped with, you are ready to role:

`docker run --rm -it --runtime nvidia dockerhub_accountname/image_name:arch`

And on my Jetson Xavier NX (L4T 23.6.1)

```
./deviceQuery Starting...

 CUDA Device Query (Runtime API) version (CUDART static linking)

Detected 1 CUDA Capable device(s)

Device 0: "Xavier"
  CUDA Driver Version / Runtime Version          10.2 / 10.2
  CUDA Capability Major/Minor version number:    7.2
  Total amount of global memory:                 7765 MBytes (8142626816 bytes)
  (006) Multiprocessors, (064) CUDA Cores/MP:    384 CUDA Cores
  GPU Max Clock rate:                            1109 MHz (1.11 GHz)
  Memory Clock rate:                             1109 Mhz
  Memory Bus Width:                              256-bit
  L2 Cache Size:                                 524288 bytes
  Maximum Texture Dimension Size (x,y,z)         1D=(131072), 2D=(131072, 65536), 3D=(16384, 16384, 16384)
  Maximum Layered 1D Texture Size, (num) layers  1D=(32768), 2048 layers
  Maximum Layered 2D Texture Size, (num) layers  2D=(32768, 32768), 2048 layers
  Total amount of constant memory:               65536 bytes
  Total amount of shared memory per block:       49152 bytes
  Total shared memory per multiprocessor:        98304 bytes
  Total number of registers available per block: 65536
  Warp size:                                     32
  Maximum number of threads per multiprocessor:  2048
  Maximum number of threads per block:           1024
  Max dimension size of a thread block (x,y,z): (1024, 1024, 64)
  Max dimension size of a grid size    (x,y,z): (2147483647, 65535, 65535)
  Maximum memory pitch:                          2147483647 bytes
  Texture alignment:                             512 bytes
  Concurrent copy and kernel execution:          Yes with 1 copy engine(s)
  Run time limit on kernels:                     No
  Integrated GPU sharing Host Memory:            Yes
  Support host page-locked memory mapping:       Yes
  Alignment requirement for Surfaces:            Yes
  Device has ECC support:                        Disabled
  Device supports Unified Addressing (UVA):      Yes
  Device supports Managed Memory:                Yes
  Device supports Compute Preemption:            Yes
  Supports Cooperative Kernel Launch:            Yes
  Supports MultiDevice Co-op Kernel Launch:      Yes
  Device PCI Domain ID / Bus ID / location ID:   0 / 0 / 0
  Compute Mode:
     < Default (multiple host threads can use ::cudaSetDevice() with device simultaneously) >

deviceQuery, CUDA Driver = CUDART, CUDA Driver Version = 10.2, CUDA Runtime Version = 10.2, NumDevs = 1
Result = PASS
```
