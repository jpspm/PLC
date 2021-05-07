square:: Int -> Int
square n = n*n
cd:: Int -> Int
cd n = n `mod` 100
ab::Int -> Int
ab n = n `div` 100

charmander :: Int -> String
charmander n | n == square((ab n) + cd n ) = "Charmander vitorioso"
             | otherwise = "Charmander derrotado"
main = do
   a <- getLine
   let x = read a::Int
   let y = charmander x
   putStrLn y