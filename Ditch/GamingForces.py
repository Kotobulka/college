t=int(input())
for _ in range(t):
	n=int(input())
	a=list(map(int,input().split()))
	cnt=0
	b=0
	for i in a:
		if i==1: b+=1
		else: cnt+=1
	print(cnt+(b+1)//2)