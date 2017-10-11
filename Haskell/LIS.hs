--Longest increasing subsequence
module LIS where

lis :: [Int] -> Int
lis xs = lis' xs 1 0

lis' :: [Int] -> Int -> Int -> Int
lis' [] c m = 0
lis' [_] c m = c
lis' (x0:x1:xs) c m
  | x1 > x0 = lis' (x1:xs) (c+1) m 
  | otherwise = lis' (x1:xs) c m
   
main :: IO ()
main = do
   putStrLn $ "Insert array:"
   list <- readLn
   print $ lis list
 {- putStr $ "Longest of [15,27,14,38,26,55,46,65,85]: "
  print (lis [15,27,14,38,26,55,46,65,85])
  putStr $ "Longest of [2,1,2,3,4,5]: "
  print (lis [2,1,2,3,4,5])
  putStr $ "Longest of [1,1,2,2,4,5]: "
  print (lis [1,1,2,2,4,5])-}
