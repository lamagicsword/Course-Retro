#Yujian LI(yl7kd) averagetime.sh 03/15/16 section 102
#!/bin/sh

echo "Enter the dictionary file then enter the grid file: "
read dicton
read grid
Runtim1=`./a.out $dicton $grid | tail -1`
Runtim2=`./a.out $dicton $grid | tail -1`
Runtim3=`./a.out $dicton $grid | tail -1`
Runtim4=`./a.out $dicton $grid | tail -1`
Runtim5=`./a.out $dicton $grid | tail -1`
Totaltime=$((i=Runtim1+Runtim2,j=i+Runtim3,k=j+Runtim4,l=k+Runtim5,m=l/5))
echo $Totaltime
