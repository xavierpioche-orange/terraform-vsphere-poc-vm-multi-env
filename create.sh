#!/bin/bash
if [ $# -ne 1 ] 
then
	echo "Usage : $0 <vm_name>"
else
	mkdir $1
	cp template/locals-variables.tf $1/
	cp template/main.tf $1/
	ln -s ../template/globals/ $1/
	sed -i 's/template/toto/' $1/locals-variables.tf
fi
