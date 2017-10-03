-- Palindrome.hs
-- Checks if string is a palindrome along with its variants of a single removed char

import Control.Monad (forever)
import System.Exit (exitSuccess)
import Data.Char (toLower, isLetter)

palProc :: String -> String
palProc [] = ""
palProc (c:cs)
  | isLetter c = toLower c : palProc cs
  | otherwise  = palProc cs

palProc' :: String -> [String]
palProc' [] = []
palProc' (c:cs) = cs : map (c:) (palProc' cs)

palValid :: [String] -> [Bool]
palValid [] = []
palValid (c:cs) = (c == reverse c) : palValid cs
  
palindrome :: IO ()
palindrome = forever $ do
  line1 <- getLine
  case any  (==True) (palValid $ palProc' $ palProc line1) of
    True ->  putStrLn "It's a palindrome!"
    otherwise -> do
      putStrLn "Nope!"
      exitSuccess
