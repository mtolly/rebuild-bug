module Main where

import MyLib (magicNumber)

main :: IO ()
main = putStrLn $ "Executable 1: " <> show magicNumber
