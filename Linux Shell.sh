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
read answer

if [[ ${answer,,}  == 'y' ]] ; then
    echo 'YES'
elif [[ ${answer,,} == 'n' ]] ; then
    echo 'NO'
fi
