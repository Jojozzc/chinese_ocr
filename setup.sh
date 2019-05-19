#!/bin/bash
mode_arg = "cpu"; # cpu or gpu
while [ $# -ge 2 ] ; do
        case "$1" in
                --mode) mode_arg=$2; shift 2;;
#                *) echo "unknown parameter $1." ; exit 1 ; break;;
                *) echo "warning:unknown parameter $1." ; break;;
        esac
done

pip install numpy scipy matplotlib pillow
pip install easydict opencv-python keras h5py PyYAML
pip install cython==0.24

echo "${mode_arg} mode"

if [ $mode_arg = "gpu" -a $mode_arg = "GPU" ]; then
    # for gpu

    pip install tensorflow-gpu==1.3.0
    chmod +x ./ctpn/lib/utils/make.sh
    cd ./ctpn/lib/utils/ && ./make.sh
else
        #for cpu
    pip install tensorflow==1.3.0
    chmod +x ./ctpn/lib/utils/make_cpu.sh
    cd ./ctpn/lib/utils/ && ./make_cpu.sh
fi



