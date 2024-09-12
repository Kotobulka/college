for _ in range(int(input())):
	str = int(input())
	kach = 0
	max = 0
	for i in range(str):
		a, b = map(int, input().split())
		if a < 11 and b > kach:
			max = i + 1
			kach = b
	print(max)