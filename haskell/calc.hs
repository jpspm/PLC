data Ops = SUM | MUL | SUB
           deriving (Read, Eq)

data IntTree = Nilt Int |
               Node Ops IntTree IntTree
               deriving (Read, Eq)

evalTree :: IntTree -> Int
evalTree (Nilt b) = b
evalTree (Node a l r) | a == SUM = evalTree l + evalTree r
                      | a == MUL = evalTree l * evalTree r
                      | a == SUB = evalTree l - evalTree r

main = do
    s <- getLine
    let result = evalTree (read s)
    print result