{-# LANGUAGE OverloadedStrings #-}

import Data.Monoid (mconcat)
import Web.Scotty

main :: IO ()
main = scotty 3000 $ do
  get "/" $ do
    text "Hello World"
  get "/:word" $ do
    beam <- pathParam "word"
    html $ mconcat ["<h1>Scotty Says: ", beam, "</h1>"]
