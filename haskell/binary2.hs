data Tree t = Nilt |
              Node t (Tree t) (Tree t)
              deriving (Read, Eq)

isBST :: Ord t => Tree t -> Bool
isBST Nilt = True
isBST (Node h l r) = f (<=h) l && f (>=h) r && isBST l && isBST r
    where
        f _ Nilt = True
        f c (Node h l r) = c h && f c l && f c r

main = do
       s <- getLine
       let result = isBST (read s::Tree Int)
       print result