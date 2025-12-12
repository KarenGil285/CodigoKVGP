def factoresPrimos(n):
    i = 2
    while n>1:
      if n%i==0:
          print (i)
          n//=i
      else:
          i=i+1
     
x = int(input("Número mayor a 1: "))
if x <= 1:
    print(x)
else:
    factoresPrimos(x)