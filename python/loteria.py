def getbet():
    bet = []
    while(1):
        aux = list(input().split())
        if(aux[0] == 'FIM'):
            break
        else:
            bet.append(aux)
    return bet

def checkbet(bet, result):
    newtable = []
    for i in range(len(bet)):
        aux = []
        saux = ""
        baux = False
        for j in range(len(bet[i])):
            if j == 0:
                aux.append(bet[i][j])
            else:
                for k in range(len(result)):
                    if result[k] == bet[i][j]:
                        saux+='+'
                        break            
        aux.append(saux)
        saux=''
        for j in range(len(newtable)):
            if newtable[j][0] == aux[0]:
                newtable[j] = aux
                baux = True
        if baux==False:
            newtable.append(aux)

    return newtable
   
bet = getbet()
result = list(input().split('-'))
marck = checkbet(bet, result)
marck = sorted(marck, key = lambda kv:(kv[1], kv[0]))
#marck = checkorder(marck)

for i in range(len(marck)):
    if(marck[i][1]!=''):
        print(marck[i][0]+" "+ marck[i][1])
    else:
        print(marck[i][0]+" ")
