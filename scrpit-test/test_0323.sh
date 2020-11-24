#!/bin/bash

#echo "Shell 传递参数实例！";
#echo "执行的文件名：$0";
#echo "第一个参数为：$1";
#echo "第二个参数为：$2";
#echo "第三个参数为：$3";

num1=100
num2=100
if test $[num1] -eq $[num2]
then
    echo '两个数相等！'
else
    echo '两个数不相等！'
fi



a=5
b=6

result=$[a+b] # 注意等号两边不能有空格
echo "result 为： $result"



if [ ! -d "/mnt/addDisk1/pro/data/" ];then
  mkdir /mnt/addDisk1/pro/data
  else
  echo "文件夹已经存在"
fi
