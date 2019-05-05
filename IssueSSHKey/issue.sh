#!/bin/bash

user="maning"
passwd="a123999"
for i in `cat $(dirname $0)/ip.txt`; do
ip="$i"
$(dirname $0)/auto_issue_ssh_key.sh $user $passwd $ip    #调用下发ssh公钥的脚本，且传入三个对应的参数
done
