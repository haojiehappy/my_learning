#!/bin/bash

#eg. sh test.sh ./client/test_data/aipe_adapt21.jpg 201 female debug(可选)

echo "传输的文件名为：$1";
if [ "$1" = "post" ] 
then
    echo "post"
    scp -r $2 a@172.20.124.13:/home/a/liuhaojie_file
else
    echo "get"
    scp -r a@172.20.124.13:/home/a/liuhaojie_file/pta_batch_0607 $2
fi
#scp a@172.20.124.13:/home/a/liuhaojie_file/pta_batch_0607/run.sh $2
#SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
#echo "SHELL_FOLDER：$SHELL_FOLDER";
#if [ -e $1 ] #判断文件是否存在
#then
#   echo "图像文件存在"
#else
#   echo "图像文件不存在"
#fi
#
#echo "传入的参数数量:"$#
#if [ 4 -le $# \] # a 小于等于 b" 判断是否为 debug模式 如果参数小于4则为 非debug模式
#then
#    echo "debug"
#    python3 AvatarCreator_client.py run_lmks $1 $2 $4
#    python3 AvatarCreator_client.py run_pta $1 $3 $4
#    python3 AvatarCreator_client.py run_pta_skeleton $1 $3 $4
#else
#    echo "非 debug"
#    python3 AvatarCreator_client.py run_lmks $1 $2
#    python3 AvatarCreator_client.py run_pta $1 $3
#    python3 AvatarCreator_client.py run_pta_skeleton $1 $3
#fi

# print ("		示例：python3 AvatarCreator_client.py run_lmks ./client/test_data/aipe_adapt21.jpg 150")
# print ("		示例：python3 AvatarCreator_client.py run_pta ./client/test_data/aipe_adapt21.jpg female")
# print ("		示例：python3 AvatarCreator_client.py run_pta_skeleton ./client/test_data/aipe_adapt21.jpg", "female")
