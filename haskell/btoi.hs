aux :: String -> Int -> Int
aux "" x = x
aux ('1':as) x = aux as (2*x+1)
aux ('0':as) x = aux as (2*x)

btoi :: String -> Int
btoi (a:as) = aux (a:as) 0

main = do
    s <- getLine
    let result = btoi s
    print result