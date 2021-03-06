-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema BotCommand
module StripeAPI.Types.BotCommand where

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

-- | Defines the object schema located at @components.schemas.BotCommand@ in the specification.
-- 
-- This object represents a bot command.
data BotCommand = BotCommand {
  -- | command: Text of the command; 1-32 characters. Can contain only lowercase English letters, digits and underscores.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 32
  -- * Minimum length of 1
  botCommandCommand :: Data.Text.Internal.Text
  -- | description: Description of the command; 1-256 characters.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 256
  -- * Minimum length of 1
  , botCommandDescription :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BotCommand
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= botCommandCommand obj : "description" Data.Aeson.Types.ToJSON..= botCommandDescription obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= botCommandCommand obj) GHC.Base.<> ("description" Data.Aeson.Types.ToJSON..= botCommandDescription obj))
instance Data.Aeson.Types.FromJSON.FromJSON BotCommand
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BotCommand" (\obj -> (GHC.Base.pure BotCommand GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description"))
-- | Create a new 'BotCommand' with all required fields.
mkBotCommand :: Data.Text.Internal.Text -- ^ 'botCommandCommand'
  -> Data.Text.Internal.Text -- ^ 'botCommandDescription'
  -> BotCommand
mkBotCommand botCommandCommand botCommandDescription = BotCommand{botCommandCommand = botCommandCommand,
                                                                  botCommandDescription = botCommandDescription}
