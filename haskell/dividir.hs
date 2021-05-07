aux :: ([String], [String]) -> [String] -> Bool -> ([String], [String])
aux (a, b) [] y = (a, b)
aux (a, b) (x:xs) y  | y == True = aux ((a ++ [x]), b) xs False
                     | otherwise = aux (a, (b ++ [x])) xs True 

halve :: [String] -> ([String], [String])
halve x = aux ([], []) x True 

main = do
  x <- getLine
  print $ halve (words x )