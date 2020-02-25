module Main where

import MyLib (magicNumber)

main :: IO ()
main = putStrLn $ "Executable 2: " <> show magicNumber
