#!/bin/bash


hero="rancho"
villain="virus"

echo "3_Idiots ka hero hai $hero"
echo "3_idiots ka villain hai $villain"


# shell/ environment variables bhi hote hai (pre-defined)

echo "current logged in user is $USER"

# User Inputs
read -p "rancho ka pura naam kya tha? " fullname

echo "rancho ka pura naam $fullname tha"

# arguments

echo "movie ka naam: $0"

echo "first idiot is $1"

echo "second idiot is $2"

echo "third idiot is $3"

echo "hence 3_Idiots are: $@"


echo "total number of idiots are: $#"


