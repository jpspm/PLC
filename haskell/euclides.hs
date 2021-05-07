mdc:: Int -> Int -> Int
mdc x y | y == 0 = x
        | otherwise = mdc y (x `mod` y)

modulo:: Int ->Int -> Int
modulo a b = (a `mod` b)

main = do
   a <- readLn
   b <- readLn
   print (mdc (a :: Int) (b :: Int))