import Data.List (foldl')

match :: [Char] -> Char -> [Char]
match ('(':xs) ')' = xs
match ('[':xs) ']' = xs
match ('{':xs) '}' = xs
match xs x         = x:xs

isBalanced xs = null $ foldl' match [] xs
