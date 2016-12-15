def is_pal(n):
	return str(n)[::-1] == str(n)
	
answer = 0

for i in range(100, 999):
	for j in range(100, 999):
		n = i * j
		if is_pal(n):
			if n > answer:
				answer = n
			
print answer
