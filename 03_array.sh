#!/bin/bash

myarray=(1 2 3 4 5 hello "hello world!")

echo "Array first elements : ${myarray[0]}"
echo "Array second elements : ${myarray[1]}"
echo "Array third elements : ${myarray[2]}"
echo "Array fourth elements : ${myarray[3]}"
echo "Array fifth elements : ${myarray[4]}"
echo "Array sixth elements : ${myarray[5]}" 
echo "Array seventh elements : ${myarray[6]}" 

# pericular array element printing
echo "Array 2-3 elements: ${myarray[@]:1:2}"

echo "Array 4-6 elements: ${myarray[@]:1:3}"
 
 #updating array element

myarray[0]=100
echo "Updated first element: ${myarray[0]}"
# adding new element to array

 myarray+=(6 7 8 9 10)

 echo "All array elements: ${myarray[*]}"

 # keypair

 declare -a MyArray
 MyArray=( ["name"]=Ravindra ["age"]=21 ["city"]=Jaipur )

 echo "Name is : ${MyArray[name]}"
 echo "Age is : ${MyArray[age]}"
 echo "City is : ${MyArray[city]}"

 # how to find lenth of array

 array=(1 2 3 4 5 6 7 8 9 0)
 echo "${#array[*]}"