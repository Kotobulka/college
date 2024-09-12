def solve():
    n = int(input())
    minn = 1e9 + 7
    min2 = []
    for i in range(n):
        n = int(input())
        v = list(map(int, input().split()))

        min_e1 = min(v)
        minn = min(minn, min_e1)
        v.remove(min_e1)
        min2.append(min(v))
    print(minn + sum(min2)-min(min2))

t = int(input())
for i in range(t):
    solve()