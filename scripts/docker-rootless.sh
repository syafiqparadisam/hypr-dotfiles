#!/bin/bash

#ntpdate  -b -s -u 0.id.pool.ntp.org &
PATH=$HOME/bin:/sbin:/usr/sbin:$PATH dockerd-rootless.sh &

