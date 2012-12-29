def sumcd(num):
    return sum([i for i in range(1,num) if num % i ==0])

def build_dict():
    sumdic = {}
    for i in range(1,10001):
        sumdic[i]=sumcd(i)
    return sumdic


sumdic = build_dict()

amilist = [i for i in range(1,10001) if sumdic[i]> 0 and sumdic[i]<10001  and i == sumdic[sumdic[i]]]
print sum([i for i in amilist if i != sumdic[i]])




