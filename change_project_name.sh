#!/usr/bin/env sh
# Author: javy liu
#Date & Time: 2019-12-02 17:30:28
#Description: 更改整个项目的名字，比如把该项目从pearl_platform 更改为 new_app
new_name=$1
new_constant=`echo new_name|sed -r 's/\b\w|_./\U&/g;s/_//g'`
sed -i "s/pearl_platform/${new_name}/g" `ack -rl pearl_platform`
sed -i "s/PearlPlatform/${new_constant}/g" `ack -rl PearlPlatform`

