echo "----------------------------------";
echo "Comping and running C solutions";
for c in `ls *.c`;
do
    cd c
    make  ${c%.*} > /dev/null 2>&1
    echo "$c =>" `./${c%.*}`
    rm ${c%.*}
    cd ../
done
