sqare:: Float -> Float
sqare x = x * x

imc :: Float -> Float ->Float
imc x y =  x / sqare y

gt :: Int -> Int -> Int -> Bool
gt a b c = (a<b) && (b<c)

vendas :: Int -> Int
vendas n = n

totalV :: Int -> Int
totalV n | n == 0 = vendas 0
         | otherwise = totalV (n-1) + vendas n

vendaE :: Int -> Int -> Int -> Int
vendaE s n z | n == 0 = z
             | (vendas n) == s = vendaE s (n-1) (z+1)
             | otherwise = vendaE s (n-1) z

modZ:: Int -> Int -> Bool
modZ x y | (x `mod` y) == 0 = True
         | otherwise = False


primo:: Int -> Int -> Bool
primo n m| n <= 1 = True
         | m <= 1 = True
         | n == 2 = True
         | modZ n m == True = False
         | otherwise = primo n (m-1)

fatorial :: Int -> Int
fatorial n | n == 1 = n
           | otherwise = n * fatorial (n-1)

all4equal:: Int -> Int -> Int -> Int -> Bool
all4equal a b c d = (a==b) && (b==c) && (c==d)

    
fibonacci:: Int -> Int
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | otherwise = fibonacci(n-2) + fibonacci (n-1)

solve:: Int -> String
solve n | n == 0 = "O antidoto nao e necessario"
        | otherwise = show(fibonacci n) ++ " mg/L"

main = do
        a <- getLine
        let x = read a::Int
        let y = solve x
        putStrLn y
    