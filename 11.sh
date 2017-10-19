 #!/bin/bash
 
 read op
 read num
 case "$op" in
     +) sum=0
         for ((i=0; i<$num; i++)); do
             read a
             sum=`echo "scale=4; $sum +$a" | bc -l`
         done
         echo $sum;;
     -)  read a
         diff=$a
         for ((i=0; i<`expr $num - 1` ; i++)); do
             read b
             diff=`echo "scale=4; $diff -$b" | bc -l`
         done
         echo $diff;;
     \*) product=1
         for ((i=0; i<$num ;i++)); do
             read a
             product=`echo "scale=4; $product \* $a" | bc -l`
         done
         echo $product;;
     /) read a
         quo=$a
         for ((i=0; i<`expr $num - 1` ; i++)); do
             read b
             quo=`echo "scale=4; $quo / $b" | bc -l`
         done
         echo $quo;;
 esac
