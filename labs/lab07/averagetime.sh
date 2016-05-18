#Yujian Li(yl7kd) 03/24/16 Section 102
#!/bin/sh

echo "enter the exponent for counter.cpp:"
read n
if[n=="quit"]; then
	exit 4
fi

sum=0
for i in {1..5} ; do
RUNNING_TIME=`./a.out $n | tail -1`
echo "Running iteration" $i
echo "time taken :" $RUNNING_TIME " ms"
sum=$(($sum + $RUNNING_TIME))
done
echo $i "iterations took" $sum " ms"
avg=$(($sum / $i))
echo "Average time was" $avg " ms"
