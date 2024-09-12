t = int(input())
for _ in range(t):
    n = int (input())
    a = list(map(int, input() .split()))
    b = a.copy()
    b.sort()
    flag_no = False
    for i in range(0,n):
        if (a[i]-b[i])%2 != 0:
            flag_no = True
    if flag_no:
        print("No")
    else:
        print("YES")