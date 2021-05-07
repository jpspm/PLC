data Cmd = Cursor Int
           | Backspace Int
           | Delete Int
           | Insert String
           deriving (Read)

delete:: Int -> Int -> String -> String
delete s e text = take (e-s) (drop s text)

insert:: Int -> Int -> String -> String -> String -> String
insert i aux a put (b:bs) | i == aux = a ++ put ++ (b:bs)
                          | otherwise = insert i (aux+1) (a ++ [b]) put bs
insert i aux a put [] = a ++ put

edit :: Int -> String -> [Cmd] -> String
edit _ text [] = text
edit i text ((Insert a):as) = edit i (insert i 0 [] a text) as
edit i text ((Delete a):as) = edit i ((delete 0 i text)++(delete (i+a) (length text) text)) as
edit i text ((Cursor a):as) = edit (i+a) text as
edit i text ((Backspace a):as) = edit (i-a) ((delete 0 (i-a) text) ++ (delete i (length text) text)) as

editText :: String -> [Cmd] -> String
editText str [] = str
editText string lista = edit 0 string lista

main = do
       a <- getLine
       b <- getLine
       let result = editText a (read b)
       print result