def mayor(a,b):
    if a>b:
        return a
    elif b>a:
        return b
    else:
        return 0
def menor(a,b):
    if a>b:
        return b
    elif b>a:
        return a
    else:
        return 0
def factorial(a):
    r=1 
    for i in range(1,a+1):
        r=r*i 
    return r
x = int(input("Número 1: "))
z = int(input("Número 2: "))
a=mayor(x,z)
b=menor(x,z)
if (a>b):
    d=a-b
    c=(factorial(a))/((factorial(d))*(factorial(b)))
    p=(factorial(a))/(factorial(d))
    print ("la Combinatoria es ", (c))
    print ("la Permutación es ", (p))
else:
    d=x-z
    c=(factorial(x))/((factorial(d))*(factorial(z)))
    p=(factorial(x))/(factorial(d))
    print ("la Combinatoria es ", (c))
    print ("la Permutación es ", (p))


    