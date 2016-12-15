


def sum_of_sq(a, b):
    return sum([x*x for x in range(a, b)])
    
def sq_of_sum(a, b):
    s = sum([x for x in range(a, b)])
    return s * s

print(sq_of_sum(1, 101) - sum_of_sq(1, 101))
