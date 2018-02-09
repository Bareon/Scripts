staircase :: Int -> [String]
staircase n = go n 1 where
  go n s
    | n == 0    = []
    | otherwise = step (n - 1) s : go (n - 1) (s + 1)

step :: Int -> Int -> String
step gap tile = replicate gap ' ' ++ replicate tile '#'

putStaircase :: Int -> IO ()
putStaircase n = mapM_ putStrLn $ staircase n