isword = [i for i in range (65, 123) if i>= 65 and i<=90 or i>= 97 and i<=122]

def first(texto):
    newText = ""
    for i in range(len(texto)):
        if ord(texto[i]) in isword:
            newText+=(chr(ord(texto[i])+3))
        else:
            newText+=texto[i]
    return newText

def second(texto):
    inverted = ""
    counter = 0
    while(True):
        if counter != len(texto):
            inverted+= texto[(len(texto)-1)-counter]
            counter+=1
        else:
            #inverted+= texto[0]
            break
    return inverted

def third(texto):
    i= ((len(texto)))
    newText = ""
    for j in range(len(texto)):
        if j < i:
            newText+=texto[j]
        else:
            newText+=(chr(ord(texto[j])-1))
    return newText

quant = int(input())

for i in range(quant):
    text = input()
    text = first(text)
    #print(text)
    text = second(text)
    #print(text)
    text = third(text)
    print(text)