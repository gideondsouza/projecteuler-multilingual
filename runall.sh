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

echo "-----------------------------------";
echo "Compiling* and running the Haskell Solutions 8-)";

for hs in `ls haskell`;
do 
    ghc -o $hs.o haskell/$hs > /dev/null 2>&1;
    echo "$hs=>" `./$hs.o` 
done 
rm haskell/*.hi haskell/*.o
rm *.o
