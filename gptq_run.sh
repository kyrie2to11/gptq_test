#!/bin/bash
export LD_LIBRARY_PATH=/usr/local/cuda-11.3/lib64:/usr/local/cuda-11.3/extras/CUPTI/lib64:$LD_LIBRARY_PATH
export PATH=/mnt/afs/user/liyawei/.scc/bin:$PATH
export http_proxy=http://fvgroup:48423590@10.54.0.93:3128
export https_proxy=http://fvgroup:48423590@10.54.0.93:3128

echo "PATH = $PATH"
echo "LD_LIBRARY_PATH = $LD_LIBRARY_PATH"
# 进入项目目录
cd /mnt/afs/user/liyawei/project/gptq
echo "dir = $(pwd)"

env="/mnt/afs/user/liyawei/.conda/envs/cu113/bin"
$env/python llama.py \
/mnt/afs/user/liyawei/project/llama/llama-2-7b-hf \
c4 \
--wbits 4 \
--true-sequential \
--act-order \
--new-eval \
--save /mnt/afs/user/liyawei/project/llama/q_llama-2-7b-hf/4bit_c4

# 改变输出目录的权限
# chmod 777 -R checkpoints/debug/
