with open('names.txt', 'r+') as f:
    read_data = f.read()
read_data = sorted(read_data.split(','))


def ordvalue(character):
    return ord(character) - 64

def getsum(ind):
    sum = 0

    for i in read_data[ind]:
        for j in i:
            if ordvalue(j) >=0:
                sum += ordvalue(j)
           
    return  sum * (read_data.index(read_data[ind]) + 1 )

total = 0
for i,j in enumerate(read_data):
    total += getsum(i)
print total

        


    
