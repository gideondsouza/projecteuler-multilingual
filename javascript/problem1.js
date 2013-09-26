
var i = 1, A = 0;
while(i < 1000)
{
    if(i %3 == 0 || i % 5 == 0)
    {
        A+=i;
    }
    i++;
}
console.log(A);
