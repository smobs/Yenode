{-# Language OverloadedStrings, TemplateHaskell #-}
module Handler.Play where

import qualified Data.Text as T (reverse)
import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout(..) , renderBootstrap3, withSmallInput)


getPlayR :: Handler Html
getPlayR = do
  (formWidget, formEnctype) <- generateFormPost todoForm
  let mirror = Nothing :: Maybe Text
  defaultLayout $(widgetFile "play")

postPlayR :: Handler Html
postPlayR = do
  ((result, formWidget), formEnctype) <- runFormPost todoForm
  let mirror = case result of
                 FormSuccess m -> Just $ process m
                 _ -> Nothing
  defaultLayout $(widgetFile "play")
             
                     
todoForm :: Form Text
todoForm = renderBootstrap3 BootstrapBasicForm $ 
           areq textField (withSmallInput "Something Something") Nothing

process :: Text -> Text
process = T.reverse
