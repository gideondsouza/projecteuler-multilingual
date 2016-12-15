'''
Essenttially the problem is asking you to get the lcm of 1..20
You do this by lcm(1..10) / gcd(1..20)
'''


import fractions

A = 1
for i in range(1, 21):
    A *= i // fractions.gcd(i, A)

print(A)
    
