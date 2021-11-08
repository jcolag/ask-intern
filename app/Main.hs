module Main where

import Data.List
import Lib
import System.Environment

main :: IO ()
main = do
    args <- getArgs
    requestFromServer (unwords args)

