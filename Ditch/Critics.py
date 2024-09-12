for i in range(int(input())):
    a,b,c=map(int,input().split())
    print("YES") if b+a>=10 or b+c>=10 or a+c>= 10 else print("NO")