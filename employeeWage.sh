#!/bin/bash -x
fulltime=1
parttime=2
wageperhr=10
workingdays=20
totalsalary=0
declare 
for ((day=1;day<=20;day++))
do
        empcheck=$((RANDOM%3))
case $empcheck in
$fulltime)
        workinghrs=8
        ;;
$parttime)
        workinghrs=4
        ;;
*)
        workinghrs=0
        ;;
esac
salary=$(( $wageperhr * $workinghrs ))
totalsalary=$(( $salary + $totalsalary ))
done

