-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema MessageId
module StripeAPI.Types.MessageId where

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

-- | Defines the object schema located at @components.schemas.MessageId@ in the specification.
-- 
-- This object represents a unique message identifier.
data MessageId = MessageId {
  -- | message_id: Unique message identifier
  messageIdMessageId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MessageId
    where toJSON obj = Data.Aeson.Types.Internal.object ("message_id" Data.Aeson.Types.ToJSON..= messageIdMessageId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("message_id" Data.Aeson.Types.ToJSON..= messageIdMessageId obj)
instance Data.Aeson.Types.FromJSON.FromJSON MessageId
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "MessageId" (\obj -> GHC.Base.pure MessageId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message_id"))
-- | Create a new 'MessageId' with all required fields.
mkMessageId :: GHC.Types.Int -- ^ 'messageIdMessageId'
  -> MessageId
mkMessageId messageIdMessageId = MessageId{messageIdMessageId = messageIdMessageId}
