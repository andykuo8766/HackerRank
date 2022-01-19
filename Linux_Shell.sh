# Let's Echo
#!/bin/bash
echo HELLO

# A Personalized Echo
#!/bin/bash
read name
echo "Welcome ${name}"

# Looping with Numbers
#!/bin/bash
for i in {1..50}
do
    echo $i
done

# The World of Numbers
#!/bin/bash
read X
read Y
echo $((X+Y))
echo $((X-Y))
echo $((X*Y))
echo $((X/Y))

# Comparing Numbers
#!/bin/bash
read X 
read Y
if (( $X < $Y )); then
    echo 'X is less than Y'
elif (( $X > $Y )); then
    echo 'X is greater than Y'
else
    echo 'X is equal to Y'
fi

# Getting started with conditionals
#!/bin/bash
read answer

if [[ ${answer,,}  == 'y' ]] ; then
    echo 'YES'
elif [[ ${answer,,} == 'n' ]] ; then
    echo 'NO'
fi

# More on Conditionals
#!/bin/bash
read X
read Y
read Z
if (( $X == $Y )); then
    if (( $X == $Z )); then
        if (( $Y == $Z )); then
            echo 'EQUILATERAL'
        fi
    fi
fi
if (( $X == $Y )); then
    if (( $X != $Z )); then
        echo 'ISOSCELES'
    fi
elif (( $X == $Z )); then
    if (( $X != $Y )); then
        echo 'ISOSCELES'
    fi
elif (( $Y == $Z )); then
    if (( $Y != $X )); then
        echo 'ISOSCELES'
    fi
fi
if (( $X != $Y )); then
    if (( $X != $Z )); then
        if (( $Y != $Z )); then
            echo 'SCALENE'
        fi
    fi
fi

# Arithmetic Operations
#!/bin/bash
read input
printf "%.3f\n" `echo "$input" | bc -l`


# Compute the Average
#!/bin/bash
sum=0
read n
while read -r line || [[ -n "$line" ]]; do
    sum=$(($sum + $line))
done
printf "%.3f" $(echo "scale=10; $sum/$n" | bc -l)

# Functions and Fractals - Recursive Trees - Bash!
#!/bin/bash

declare -A a

# d - depth
# l = length
# r = row
# c = column

f() {
    local d=$1 l=$2 r=$3 c=$4
    [[ $d -eq 0 ]] && return
    for ((i=l; i; i--)); do
        a[$((r-i)).$c]=1
    done
    ((r -= l))
    for ((i=l; i; i--)); do
        a[$((r-i)).$((c-i))]=1
        a[$((r-i)).$((c+i))]=1
    done
    f $((d-1)) $((l/2)) $((r-l)) $((c-l))
    f $((d-1)) $((l/2)) $((r-l)) $((c+l))
}
read n
f $n 16 63 49
for ((i=0; i<63; i++)); do
    for ((j=0; j<100; j++)); do
        if [[ ${a[$i.$j]} ]]; then
            printf 1
        else
            printf _
        fi
    done
    echo
done


# Cut #1
#!/bin/bash
while read line
do
echo $line | cut -c3
done


# Cut #2
echo "$(cut -c2,7)"

# Cut #3
cut -c2-7

# Cut #4
echo "$(cut -c1-4)"

# Cut #5
cut -f-3

# Cut #6
cut -c13-