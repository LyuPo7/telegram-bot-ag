-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ResponseParameters
module StripeAPI.Types.ResponseParameters where

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

-- | Defines the object schema located at @components.schemas.ResponseParameters@ in the specification.
-- 
-- Contains information about why a request was unsuccessful.
data ResponseParameters = ResponseParameters {
  -- | migrate_to_chat_id: *Optional*. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty\/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  responseParametersMigrateToChatId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | retry_after: *Optional*. In case of exceeding flood control, the number of seconds left to wait before the request can be repeated
  , responseParametersRetryAfter :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ResponseParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("migrate_to_chat_id" Data.Aeson.Types.ToJSON..= responseParametersMigrateToChatId obj : "retry_after" Data.Aeson.Types.ToJSON..= responseParametersRetryAfter obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("migrate_to_chat_id" Data.Aeson.Types.ToJSON..= responseParametersMigrateToChatId obj) GHC.Base.<> ("retry_after" Data.Aeson.Types.ToJSON..= responseParametersRetryAfter obj))
instance Data.Aeson.Types.FromJSON.FromJSON ResponseParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ResponseParameters" (\obj -> (GHC.Base.pure ResponseParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "migrate_to_chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "retry_after"))
-- | Create a new 'ResponseParameters' with all required fields.
mkResponseParameters :: ResponseParameters
mkResponseParameters = ResponseParameters{responseParametersMigrateToChatId = GHC.Maybe.Nothing,
                                          responseParametersRetryAfter = GHC.Maybe.Nothing}
