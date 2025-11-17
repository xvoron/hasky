import Data.Word (Word8)

main :: IO ()


first a b = a
increment n = n + 1
decrement n = n - 1

add n m =
    if m /= 0
        then add (increment n) (decrement m)
        else n

repl :: Int -> a -> [a]
repl n x =
    if n <= 0
        then []
        else
            x : repl (n - 1) x


meven :: Int -> Bool

meven n =
    if n == 0
    then True
    else modd (n - 1)


modd :: Int -> Bool
modd n =
    if n == 0
    then False
    else meven (n - 1)


main = print (meven 4)


data Color = RGB Word8 Word8 Word8

getBluePart :: Color -> Word8
getBluePart color = 
    case color of
        RGB _ _ blue -> blue
