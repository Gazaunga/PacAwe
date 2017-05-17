#!/usr/bin/sh

# Script for displaying the number of available updates
count=`checkupdates | wc -l`
echo "   $count"
