daquant = int(input())
carrossel = list(map(int, input().split()))
aux = False
contador = 0
maxCounter = 0
n=0
while (n < quant):
    if n+1 < (quant):
        if (carrossel[n]< carrossel[n+1]):
            contador = contador + 1
            n+=1
        else:
            if aux == True:
                break  
            if contador > maxCounter:
                maxCounter = contador
                contador = 0
                n+=1
            else:
                contador = 0
                n+=1
    else:
        if carrossel[n] < carrossel[0]:
            contador = contador + 1
            aux = True
            n = 0
        else:
            if contador > maxCounter:
                maxCounter = contador
            else:
                break

if contador > maxCounter:
    maxCounter = contador
print(maxCounter+1)

