-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PassportElementErrorReverseSide
module StripeAPI.Types.PassportElementErrorReverseSide where

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

-- | Defines the object schema located at @components.schemas.PassportElementErrorReverseSide@ in the specification.
-- 
-- Represents an issue with the reverse side of a document. The error is considered resolved when the file with reverse side of the document changes.
data PassportElementErrorReverseSide = PassportElementErrorReverseSide {
  -- | file_hash: Base64-encoded hash of the file with the reverse side of the document
  passportElementErrorReverseSideFileHash :: Data.Text.Internal.Text
  -- | message: Error message
  , passportElementErrorReverseSideMessage :: Data.Text.Internal.Text
  -- | source: Error source, must be *reverse\\_side*
  , passportElementErrorReverseSideSource :: Data.Text.Internal.Text
  -- | type: The section of the user\'s Telegram Passport which has the issue, one of “driver\\_license”, “identity\\_card”
  , passportElementErrorReverseSideType :: PassportElementErrorReverseSideType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorReverseSide
    where toJSON obj = Data.Aeson.Types.Internal.object ("file_hash" Data.Aeson.Types.ToJSON..= passportElementErrorReverseSideFileHash obj : "message" Data.Aeson.Types.ToJSON..= passportElementErrorReverseSideMessage obj : "source" Data.Aeson.Types.ToJSON..= passportElementErrorReverseSideSource obj : "type" Data.Aeson.Types.ToJSON..= passportElementErrorReverseSideType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("file_hash" Data.Aeson.Types.ToJSON..= passportElementErrorReverseSideFileHash obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= passportElementErrorReverseSideMessage obj) GHC.Base.<> (("source" Data.Aeson.Types.ToJSON..= passportElementErrorReverseSideSource obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= passportElementErrorReverseSideType obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorReverseSide
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PassportElementErrorReverseSide" (\obj -> (((GHC.Base.pure PassportElementErrorReverseSide GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PassportElementErrorReverseSide' with all required fields.
mkPassportElementErrorReverseSide :: Data.Text.Internal.Text -- ^ 'passportElementErrorReverseSideFileHash'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorReverseSideMessage'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorReverseSideSource'
  -> PassportElementErrorReverseSideType' -- ^ 'passportElementErrorReverseSideType'
  -> PassportElementErrorReverseSide
mkPassportElementErrorReverseSide passportElementErrorReverseSideFileHash passportElementErrorReverseSideMessage passportElementErrorReverseSideSource passportElementErrorReverseSideType = PassportElementErrorReverseSide{passportElementErrorReverseSideFileHash = passportElementErrorReverseSideFileHash,
                                                                                                                                                                                                                             passportElementErrorReverseSideMessage = passportElementErrorReverseSideMessage,
                                                                                                                                                                                                                             passportElementErrorReverseSideSource = passportElementErrorReverseSideSource,
                                                                                                                                                                                                                             passportElementErrorReverseSideType = passportElementErrorReverseSideType}
-- | Defines the enum schema located at @components.schemas.PassportElementErrorReverseSide.properties.type@ in the specification.
-- 
-- The section of the user\'s Telegram Passport which has the issue, one of “driver\\_license”, “identity\\_card”
data PassportElementErrorReverseSideType' =
   PassportElementErrorReverseSideType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PassportElementErrorReverseSideType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PassportElementErrorReverseSideType'EnumDriverLicense -- ^ Represents the JSON value @"driver_license"@
  | PassportElementErrorReverseSideType'EnumIdentityCard -- ^ Represents the JSON value @"identity_card"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorReverseSideType'
    where toJSON (PassportElementErrorReverseSideType'Other val) = val
          toJSON (PassportElementErrorReverseSideType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PassportElementErrorReverseSideType'EnumDriverLicense) = "driver_license"
          toJSON (PassportElementErrorReverseSideType'EnumIdentityCard) = "identity_card"
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorReverseSideType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "driver_license" -> PassportElementErrorReverseSideType'EnumDriverLicense
                                            | val GHC.Classes.== "identity_card" -> PassportElementErrorReverseSideType'EnumIdentityCard
                                            | GHC.Base.otherwise -> PassportElementErrorReverseSideType'Other val)