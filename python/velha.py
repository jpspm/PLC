def getTable():
    table = []
    for i in range(3):
        line = input().split()
        table.append(line)
    return table

x = False
o = False
verify = False
countX = 0
countO = 0

quant = int(input())
for i in range(quant):
    tab = getTable()
    for h in range (3):
        for t in range (3):
            if(tab[h][t])== 'O':
                countO= countO+1
            elif(tab[h][t]) == 'X':
                countX = countX + 1

    for j in range(3):
        if(tab[j][0] == tab[j][1] == tab [j][2]):
            if(tab[j][0] != '_'):
                if(tab[j][0] == 'X'):
                    if(x):
                        verify = True
                    else:
                        x = True
                else:
                    if(o):
                        verify = True
                    else:
                        o = True
    for k in range(3):
        if(tab[0][k] == tab[1][k] == tab [2][k]):
            if(tab[0][k] != '_'):
                if(tab[0][k] == 'X'):
                    if(x):
                        verify = True
                    else:
                        x = True
                else:
                    if(o):
                        verify = True
                    else:
                        o = True

    if((tab[0][0] == tab [1][1] == tab[2][2]) or (tab[0][2] == tab[1][1] == tab[2][0])):
        if(tab[1][1] != '_'):
            if(tab[1][1] == 'X'):
                    if(x):
                        verify = True
                    else:
                        x = True
            else:
                if(o):
                    verify = True
                else:
                    o = True

    if(verify):
        print("ILEGAL")

    elif(countX >= countO):
        if ((countX == countO+ 1) or (countX==countO)):
            if(x):
                if(o):
                    print("ILEGAL")
                else:
                    if(countX <= countO):
                        print("ILEGAL")
                    else:
                        print("X_VENCEU")

            else:
                if(o):
                    if(countX > countO):
                        print("ILEGAL")
                    else:
                        print("O_VENCEU")
                else:
                    print("EM_ANDAMENTO")
        else:
            print("ILEGAL")

    else:
        print("ILEGAL")
        
    o = False
    x = False
    verify = False
    countX = 0
    countO = 0


  