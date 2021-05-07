def getDic(a):
    palavras=[]
    for i in range(a):
        aux = list(input().split())
        palavras.append(aux)

    return palavras

quant = int(input())
words = getDic(quant)

while(True):
    letter = list(input().split())
    traducao = ""
    if letter[0] != '*':
        for i in range(len(letter)):
            for j in range(len(words)):
                if(letter[i]==words[j][0]):
                    traducao+=words[j][2]
                    if(i != len(letter)-1):
                        traducao+=" "
        print(traducao)
    else:
        break