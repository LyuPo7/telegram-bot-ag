-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PassportElementErrorFile
module StripeAPI.Types.PassportElementErrorFile where

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

-- | Defines the object schema located at @components.schemas.PassportElementErrorFile@ in the specification.
-- 
-- Represents an issue with a document scan. The error is considered resolved when the file with the document scan changes.
data PassportElementErrorFile = PassportElementErrorFile {
  -- | file_hash: Base64-encoded file hash
  passportElementErrorFileFileHash :: Data.Text.Internal.Text
  -- | message: Error message
  , passportElementErrorFileMessage :: Data.Text.Internal.Text
  -- | source: Error source, must be *file*
  , passportElementErrorFileSource :: Data.Text.Internal.Text
  -- | type: The section of the user\'s Telegram Passport which has the issue, one of “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration”, “temporary\\_registration”
  , passportElementErrorFileType :: PassportElementErrorFileType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorFile
    where toJSON obj = Data.Aeson.Types.Internal.object ("file_hash" Data.Aeson.Types.ToJSON..= passportElementErrorFileFileHash obj : "message" Data.Aeson.Types.ToJSON..= passportElementErrorFileMessage obj : "source" Data.Aeson.Types.ToJSON..= passportElementErrorFileSource obj : "type" Data.Aeson.Types.ToJSON..= passportElementErrorFileType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("file_hash" Data.Aeson.Types.ToJSON..= passportElementErrorFileFileHash obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= passportElementErrorFileMessage obj) GHC.Base.<> (("source" Data.Aeson.Types.ToJSON..= passportElementErrorFileSource obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= passportElementErrorFileType obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorFile
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PassportElementErrorFile" (\obj -> (((GHC.Base.pure PassportElementErrorFile GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PassportElementErrorFile' with all required fields.
mkPassportElementErrorFile :: Data.Text.Internal.Text -- ^ 'passportElementErrorFileFileHash'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorFileMessage'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorFileSource'
  -> PassportElementErrorFileType' -- ^ 'passportElementErrorFileType'
  -> PassportElementErrorFile
mkPassportElementErrorFile passportElementErrorFileFileHash passportElementErrorFileMessage passportElementErrorFileSource passportElementErrorFileType = PassportElementErrorFile{passportElementErrorFileFileHash = passportElementErrorFileFileHash,
                                                                                                                                                                                   passportElementErrorFileMessage = passportElementErrorFileMessage,
                                                                                                                                                                                   passportElementErrorFileSource = passportElementErrorFileSource,
                                                                                                                                                                                   passportElementErrorFileType = passportElementErrorFileType}
-- | Defines the enum schema located at @components.schemas.PassportElementErrorFile.properties.type@ in the specification.
-- 
-- The section of the user\'s Telegram Passport which has the issue, one of “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration”, “temporary\\_registration”
data PassportElementErrorFileType' =
   PassportElementErrorFileType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PassportElementErrorFileType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PassportElementErrorFileType'EnumUtilityBill -- ^ Represents the JSON value @"utility_bill"@
  | PassportElementErrorFileType'EnumBankStatement -- ^ Represents the JSON value @"bank_statement"@
  | PassportElementErrorFileType'EnumRentalAgreement -- ^ Represents the JSON value @"rental_agreement"@
  | PassportElementErrorFileType'EnumPassportRegistration -- ^ Represents the JSON value @"passport_registration"@
  | PassportElementErrorFileType'EnumTemporaryRegistration -- ^ Represents the JSON value @"temporary_registration"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorFileType'
    where toJSON (PassportElementErrorFileType'Other val) = val
          toJSON (PassportElementErrorFileType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PassportElementErrorFileType'EnumUtilityBill) = "utility_bill"
          toJSON (PassportElementErrorFileType'EnumBankStatement) = "bank_statement"
          toJSON (PassportElementErrorFileType'EnumRentalAgreement) = "rental_agreement"
          toJSON (PassportElementErrorFileType'EnumPassportRegistration) = "passport_registration"
          toJSON (PassportElementErrorFileType'EnumTemporaryRegistration) = "temporary_registration"
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorFileType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "utility_bill" -> PassportElementErrorFileType'EnumUtilityBill
                                            | val GHC.Classes.== "bank_statement" -> PassportElementErrorFileType'EnumBankStatement
                                            | val GHC.Classes.== "rental_agreement" -> PassportElementErrorFileType'EnumRentalAgreement
                                            | val GHC.Classes.== "passport_registration" -> PassportElementErrorFileType'EnumPassportRegistration
                                            | val GHC.Classes.== "temporary_registration" -> PassportElementErrorFileType'EnumTemporaryRegistration
                                            | GHC.Base.otherwise -> PassportElementErrorFileType'Other val)