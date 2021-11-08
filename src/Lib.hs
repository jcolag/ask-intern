module Lib
    ( requestFromServer
    ) where

requestFromServer :: String -> IO ()
requestFromServer query = putStrLn query
