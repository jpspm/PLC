import collections

string = []
itens = []
aux = collections.defaultdict(int)
x, y = tuple(map(int, input().split()))

for i in range(x):
    string.append(input())

string.sort()

for i in range(len(string)):
    aux2 = len(string[i])
    for j in range(1, aux2+1):
        prefixo = string[i][:j]
        aux[prefixo] +=1

for i in aux.items():
    prefixo, v = i
    if v >= y:
        itens.append(prefixo)

print(len(itens))
for i in range(len(itens)):
    print(itens[i])