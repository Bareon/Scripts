--Bubble Sort

bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort as = bubbleSort' as 0

bubbleSort' :: (Ord a) => [a] -> Int -> [a]
bubbleSort' as i
  | i == (length as) = as
  | otherwise = bubbleSort' (bubbleIter as) (i + 1)

bubbleIter :: (Ord a) => [a] -> [a]
bubbleIter (a:b:as)
  | a > b = b : bubbleIter (a:as)
  | otherwise = a : bubbleIter (b:as)
bubbleIter a = a

