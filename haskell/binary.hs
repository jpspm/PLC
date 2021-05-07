data Tree t = Nilt |
               Node t (Tree t) (Tree t)
               deriving (Read, Show)
               
insert :: Ord t => Tree t -> t -> Tree t
insert Nilt a = Node a Nilt Nilt
insert (Node h l r) a | a > h = Node h l (insert r a)
                      | a < h = Node h (insert l a) r
                      | a == h = Node h (insert l a) r

insertList :: Ord t => Tree t -> [t] -> Tree t
insertList t [] = t
insertList t (a:as) = insertList (insert t a) as
main = do
       a <- getLine
       b <- getLine
       let result = insertList (read a::Tree Int) (read b)
       print result