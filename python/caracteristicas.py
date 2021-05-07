countFLV = 0
person = 0
maxAge = 0
while(1):
    age = int(input())
    if age != -1:
        caracteristicas = list(input().split())
        if caracteristicas[0] == 'f' and caracteristicas[1]=='l' and caracteristicas[2] == 'v' and age >= 18 and age <=35:
            countFLV+=1
        if age > maxAge:
            maxAge = age
        person+=1
    else:
        break
print("Mais velho:", maxAge)
if person != 0:
    percent = float((countFLV*100)/person)
    print("Mulheres com olhos verdes, loiras com 18 a 35 anos: {:.2f}".format(percent)+"%")
else:
    print("Mulheres com olhos verdes, loiras com 18 a 35 anos: -nan%")