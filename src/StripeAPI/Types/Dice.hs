-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Dice
module StripeAPI.Types.Dice where

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

-- | Defines the object schema located at @components.schemas.Dice@ in the specification.
-- 
-- This object represents an animated emoji that displays a random value.
data Dice = Dice {
  -- | emoji: Emoji on which the dice throw animation is based
  diceEmoji :: Data.Text.Internal.Text
  -- | value: Value of the dice, 1-6 for “🎲”, “🎯” and “🎳” base emoji, 1-5 for “🏀” and “⚽” base emoji, 1-64 for “🎰” base emoji
  , diceValue :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Dice
    where toJSON obj = Data.Aeson.Types.Internal.object ("emoji" Data.Aeson.Types.ToJSON..= diceEmoji obj : "value" Data.Aeson.Types.ToJSON..= diceValue obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("emoji" Data.Aeson.Types.ToJSON..= diceEmoji obj) GHC.Base.<> ("value" Data.Aeson.Types.ToJSON..= diceValue obj))
instance Data.Aeson.Types.FromJSON.FromJSON Dice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Dice" (\obj -> (GHC.Base.pure Dice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "emoji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))
-- | Create a new 'Dice' with all required fields.
mkDice :: Data.Text.Internal.Text -- ^ 'diceEmoji'
  -> GHC.Types.Int -- ^ 'diceValue'
  -> Dice
mkDice diceEmoji diceValue = Dice{diceEmoji = diceEmoji,
                                  diceValue = diceValue}
