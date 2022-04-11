{-# LANGUAGE CPP #-}

module Rollbar.Aeson
  ( Key
  , textToKey
  ) where

import Data.Text (Text)
#if MIN_VERSION_aeson(2,0,0)
import Data.Aeson.Key (Key)
import qualified Data.Aeson.Key as Key
#else
#endif

#if MIN_VERSION_aeson(2,0,0)
textToKey :: Text -> Key
textToKey = Key.fromText
#else
type Key = Text
textToKey :: Text -> Key
textToKey = id
#endif
