-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineKeyboardMarkup
module StripeAPI.Types.InlineKeyboardMarkup where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.InlineKeyboardButton

-- | Defines the object schema located at @components.schemas.InlineKeyboardMarkup@ in the specification.
-- 
-- This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
data InlineKeyboardMarkup = InlineKeyboardMarkup {
  -- | inline_keyboard: Array of button rows, each represented by an Array of [InlineKeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#inlinekeyboardbutton) objects
  inlineKeyboardMarkupInlineKeyboard :: ([[InlineKeyboardButton]])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineKeyboardMarkup
    where toJSON obj = Data.Aeson.Types.Internal.object ("inline_keyboard" Data.Aeson.Types.ToJSON..= inlineKeyboardMarkupInlineKeyboard obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("inline_keyboard" Data.Aeson.Types.ToJSON..= inlineKeyboardMarkupInlineKeyboard obj)
instance Data.Aeson.Types.FromJSON.FromJSON InlineKeyboardMarkup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineKeyboardMarkup" (\obj -> GHC.Base.pure InlineKeyboardMarkup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inline_keyboard"))
-- | Create a new 'InlineKeyboardMarkup' with all required fields.
mkInlineKeyboardMarkup :: [[InlineKeyboardButton]] -- ^ 'inlineKeyboardMarkupInlineKeyboard'
  -> InlineKeyboardMarkup
mkInlineKeyboardMarkup inlineKeyboardMarkupInlineKeyboard = InlineKeyboardMarkup{inlineKeyboardMarkupInlineKeyboard = inlineKeyboardMarkupInlineKeyboard}
