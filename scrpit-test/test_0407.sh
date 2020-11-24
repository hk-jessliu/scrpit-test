#!/bin/bash

#dd burnin

mkdir -p /tmp/tmp7;mount -t tmpfs tmpfs /tmp/tmp7
while :; do dd if=/dev/urandom of=/tmp/tmp7/test1.bin bs=1M count=500 &> /dev/null; done &


