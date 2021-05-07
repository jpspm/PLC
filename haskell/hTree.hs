data Tree t = Node t (Tree t) (Tree t) 
              | Nilt
              deriving (Read, Eq)

greather :: Int -> Int -> Int
greather a b | a > b = a
             | b > a = b
             | a == b = a

alturaArvore :: Tree t -> Int
alturaArvore Nilt = 0
alturaArvore (Node _ l r )= 1 + (greather (alturaArvore l) (alturaArvore r))

main = do
       a <- getLine
       let result = alturaArvore (read a::Tree Int)
       print result