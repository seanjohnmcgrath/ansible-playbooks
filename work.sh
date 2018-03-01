#!/bin/sh
for i in `cat $1`;do echo "________________________";echo $i; echo $i; ssh $i $2;done
