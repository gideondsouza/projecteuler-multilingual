a = 0
b = 1
c = 0
A = 0
while c <= (4 * 1000*1000):
    c = a + b 
    if c % 2 == 0:
        A = A + c
    a = b
    b = c

print(A)

    
