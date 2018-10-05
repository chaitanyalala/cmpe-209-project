#!/bin/bash

ifconfig -a 
ifconfig eth0 
ifconfig eth0 0
ifconfig eth0 
ifconfig eth1 0
ifconfig -a 
ethtool -i eth0
ethtool -i eth1
brctl addbr snoopbr
brctl snoopbr addif eth0
brctl addif snoopbr eth0
brctl addif snoopbr eth1
brctl show 
ifconfig -a 
ifconfig snoopbr 0
ifconfig -a 
/bin/bash
