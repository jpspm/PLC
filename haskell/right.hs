addEspacos :: Int -> String
addEspacos x | x == 1 = " "
             | x == 0 = ""
             | otherwise = " " ++ addEspacos (x-1)

paraDireita :: Int -> String -> String
paraDireita x (c:cs) = addEspacos x ++ (c:cs)

parseInput str = let [n, s] = words str
                 in (read n, s)
main :: IO()
main = interact $ uncurry paraDireita . parseInput