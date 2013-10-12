#!/bin/bash
#Yes it's a little terrible looking.
#I kept each language compiler/run separate because I plan on
# introducting command line option to compile/run only selective language or maybe 
# a particular problem.
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
    echo "$hs => " `./$hs.o` 
done 
rm haskell/*.hi haskell/*.o
rm *.o

echo "----------------------------------";
echo "Comping and running C solutions";
for c in `ls c`;
do
    cd c
    make  ${c%.*} > /dev/null 2>&1
    echo "$c =>" `./${c%.*}`
    rm ${c%.*}
    cd ../
done

echo "----------------------------------";
echo "Running javascript solutions with node";
for js in `ls javascript`
do
    echo "$js =>" `node javascript/$js`
done
