#!/bin/sh
tpid=`cat tpid | awk '{print $1}'`
if [ ${tpid} ]; then
 tpid=`ps -aef | grep $tpid | awk '{print $2}' |grep $tpid`
 if [ ${tpid} ]; then
  kill -9 $tpid
 fi
fi
> tpid
