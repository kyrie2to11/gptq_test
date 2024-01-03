#!/bin/bash
srun \
-p f4465474-d083-490e-9ea0-7cbee1b1f819 \
--workspace-id bb502ff7-ca20-439c-bc55-6e59e38d476f \
-r N3lS.Ii.I60.1 \
-N 1 \
-f pt \
-o /mnt/afs/user/liyawei/project/gptq/test_log/log_c4 \
--container-image registry.cn-sh-01.sensecore.cn/lepton-trainingjob/centos7.9-pytorch1.12-py3.9-cuda11.6-ofed5.8-deepspeed0.8.4-transformer4.28-mpi4.1.3-ds0.8.3:v1.0.00-20230719 \
bash /mnt/afs/user/liyawei/projects/gptq/test_script/gptq_test.sh