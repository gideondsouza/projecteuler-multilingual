#!/bin/bash

echo "------------------------------------";
echo "Running perl solutions";

for pl in `ls perl`;
do
    echo "$pl =>" `perl perl/$pl`;
done

echo "------------------------------------";
echo "Running python3 solutions";

for py in `ls python3`;
do
    echo "$py =>" `python3 python3/$py`;
done
