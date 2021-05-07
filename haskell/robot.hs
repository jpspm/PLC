data Command = Forward Int | Backward Int | TurnLeft | TurnRight 
               deriving (Eq, Show, Read)

data Direction = North | South | West | East
                 deriving (Read, Show, Eq)

faces :: Direction -> [Command] -> Direction
faces direcao [] = direcao
faces direcao (a:as) | (a == TurnLeft) && (direcao == South) = faces East as
                     | (a == TurnLeft) && (direcao == North) = faces West as
                     | (a == TurnLeft) && (direcao == West) = faces South as
                     | (a == TurnLeft) && (direcao == East) = faces North as
                     | (a == TurnRight) && (direcao == South) = faces West as
                     | (a == TurnRight) && (direcao == North) = faces East as
                     | (a == TurnRight) && (direcao == West) = faces North as
                     | (a == TurnRight) && (direcao == East) = faces South as
                     | otherwise = faces direcao as

main = do
       a <- getLine
       b <- getLine
       let result = faces (read a) (read b)
       print result