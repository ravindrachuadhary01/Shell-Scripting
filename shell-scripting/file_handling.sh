#!/bin/bash
echo "Enter the filename to check:"
read filename
if [ -f $filename ]
then
echo "File exists"
else
echo "File not found!"
fi
