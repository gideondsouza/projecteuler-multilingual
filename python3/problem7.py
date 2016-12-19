import itertools


def is_prime(n):
    for i in range(2, n):
        if n % i == 0:
            return False
    return True
	
X = itertools.islice(filter(is_prime, itertools.count(2)), 10000, None)
print(next(X))
