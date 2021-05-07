import Prelude hiding (Maybe (..))

import Prelude hiding (Maybe (..))

data Maybe a = Just a |
               Nothing
               deriving(Show)

aux:: Int -> [a]-> Maybe a
aux x [] = Nothing
aux x (c:cs) | x == 1 = aux (x+1) cs
             | x == 2 = Just c

safeSecond :: [a] -> Maybe a
safeSecond a = aux 1 a

main = do
       a <- getLine
       let result = safeSecond (read a::[Int])
       print result