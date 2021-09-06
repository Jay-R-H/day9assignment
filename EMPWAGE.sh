#!/bin/bash -x
partTime=1
fullTime=2
emprateperhr=20
noOfWorkingDays=20
totalEmphr=0
totalworkingdays=0
maxhrsinmnth=4
declare -A dailyWage

function workhrs() {
	local $empcheck=$1
	case $empcheck in
	$fullTime)
	empHrs=8
	;;
	$partTime)
	empHrs=4
	;;
	*)
	empHrs=0
	;;
esac
echo "$empHrs"
}

function EmpWage() {
	local empHr=$1
	echo $(($empHr*$emprateperhr))
}

while [[ $totalEmpHrs -lt $maxhrsinmnth && $totalworkingdays -lt $noOfWorkingdays]]
do
	((totalworkingdays++))
	empcheck=$((RANDOM%3))
	empHrs="$(workhrs $empcheck )"
	totalEmphr=$(($totalEmphr+$empHrs))
	dailyWage["$totalworkingdays"]="$( EmpWage $empHrs )"
done

totalsalary=$(($totalEmphr*$emprateperhr))
echo ${dailywage[@]}
