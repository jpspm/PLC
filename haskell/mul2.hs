mul2:: [Int] -> [Int] -> [Int]
mul2 x y | length x == length y = [a*b | (a,b)<- zip x y]
         | otherwise = [a*b | (a,b)<- zip x y] ++ zero (length x - length y)

zero :: Int -> [Int]
zero n | n == 1 = [0]
       | n < 0 = zero(n *(-1))
       | otherwise = [0] ++ zero (n-1)  
main = do
    sa <- getLine
    let a = read sa :: [Int]
    sb <- getLine
    let b = read sb :: [Int]
    let result = mul2 a b
    print result