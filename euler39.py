"""Integer right triangles
Problem 39
If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p  1000, is the number of solutions maximised?"""



max = 0
result = 0

for i in range(20,1001,2):
    count = 0
    for j in range(2,int(i/4)+1):
        if i*(i-2*j) % (2*(i-j)) ==0:
            count +=1
    if count > max:
        max = count
        result = i
print result1
    
