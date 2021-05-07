data Command = Forward Int | Backward Int | TurnLeft | TurnRight 
               deriving (Eq, Show, Read)

data Direction = North | South | West | East
                 deriving (Read, Show, Eq)

faces :: Direction -> Command -> Direction
faces direcao a     | (a == TurnLeft) && (direcao == South) = East
                    | (a == TurnLeft) && (direcao == North) = West
                    | (a == TurnLeft) && (direcao == West) = South 
                    | (a == TurnLeft) && (direcao == East) = North 
                    | (a == TurnRight) && (direcao == South) = West
                    | (a == TurnRight) && (direcao == North) = East
                    | (a == TurnRight) && (direcao == West) = North
                    | (a == TurnRight) && (direcao == East) = South

aux :: (Int, Int) -> [Command] -> Direction -> (Int, Int)
aux (a,b) [] _ = (a,b)
aux (a,b) ((TurnLeft):cs) dir = aux (a,b) cs (faces dir TurnLeft)

aux (a,b) ((TurnRight):cs) dir = aux (a,b) cs (faces dir TurnRight)
                       
aux (a,b) ((Forward n):cs) dir | dir == North = aux (a,b+n) cs North 
                              | dir == South = aux (a,b-n) cs South
                              | dir == East = aux (a+n, b) cs East
                              | dir == West = aux (a-n, b) cs West
                      
aux (a,b) ((Backward n):cs) dir | dir == North = aux (a,b-n) cs North 
                                | dir == South = aux (a,b+n) cs South
                                | dir == East = aux (a-n, b) cs East
                                | dir == West = aux (a+n, b) cs West


destination :: (Int,Int) -> [Command] -> (Int,Int)
destination (a,b) (c:cs) = aux (a,b) (c:cs) North


main = do
       a <- getLine
       b <- getLine
       let result = destination (read a) (read b)
       print result