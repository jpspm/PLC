main :: IO()
main = interact $ show . sumTo . read

sumTo:: Int -> Int
sumTo x | x == 0 = 0
        | otherwise = sumTo(x-1) + x
