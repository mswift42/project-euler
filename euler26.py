biggestcycle = 0
biggestdenominator = 0
for d in range(1,1000):
    for i in range(1,1000):

        rem = (10**i-1) % d
        if rem == 0:
            if biggestcycle < i:
                biggestcycle = i 
                biggestdenominator = d
            break

print "Biggest cycle: %d" % biggestcycle
print "Denominator : %d" % biggestdenominator
