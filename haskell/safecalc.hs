import Prelude hiding (Maybe (..))

data Maybe a = Just a |
               Nothing
               deriving(Show)

getX:: String -> String
getX (a:as) | (a == '0') ||  (a == '1') || (a == '2') || (a == '3') || (a == '4') || (a == '5') || (a == '6') || (a == '7') || (a == '8') || (a == '9') = [a]++ getX as       
            | otherwise = []

getOp:: String -> String
getOp (a:as) | (a == 's') ||  (a == 'u') || (a == 'm') || (a == 'b') || (a == 'l') || (a == 'd') || (a == 'i') || (a == 'v') = [a] ++ getOp as
             | otherwise = getOp as
getOp [] = []

getY:: Int -> Int -> String -> String
getY s e text = take (e-s) (drop s text)

calc :: String -> Maybe Int
calc text | y == 0 && op == "div" = Nothing
              | op == "sum" = Just (x + y)
              | op == "sub" = Just (x - y)
              | op == "mul" = Just (x * y)
              | op == "div" = Just (x `div` y)
       where
              a = getX text
              op = getOp text
              c = getY (length a + length op) (length text) text
              x = read a::Int
              y = read c:: Int

safeCalc :: String -> IO ()
safeCalc str = putStrLn (show(calc str))

main = do
       a <- getLine
       safeCalc a