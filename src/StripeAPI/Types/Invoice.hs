-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Invoice
module StripeAPI.Types.Invoice where

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

-- | Defines the object schema located at @components.schemas.Invoice@ in the specification.
-- 
-- This object contains basic information about an invoice.
data Invoice = Invoice {
  -- | currency: Three-letter ISO 4217 [currency](\/bots\/payments\#supported-currencies) code
  invoiceCurrency :: Data.Text.Internal.Text
  -- | description: Product description
  , invoiceDescription :: Data.Text.Internal.Text
  -- | start_parameter: Unique bot deep-linking parameter that can be used to generate this invoice
  , invoiceStartParameter :: Data.Text.Internal.Text
  -- | title: Product name
  , invoiceTitle :: Data.Text.Internal.Text
  -- | total_amount: Total price in the *smallest units* of the currency (integer, **not** float\/double). For example, for a price of \`US\$ 1.45\` pass \`amount = 145\`. See the *exp* parameter in [currencies.json](https:\/\/core.telegram.org\/bots\/payments\/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  , invoiceTotalAmount :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Invoice
    where toJSON obj = Data.Aeson.Types.Internal.object ("currency" Data.Aeson.Types.ToJSON..= invoiceCurrency obj : "description" Data.Aeson.Types.ToJSON..= invoiceDescription obj : "start_parameter" Data.Aeson.Types.ToJSON..= invoiceStartParameter obj : "title" Data.Aeson.Types.ToJSON..= invoiceTitle obj : "total_amount" Data.Aeson.Types.ToJSON..= invoiceTotalAmount obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("currency" Data.Aeson.Types.ToJSON..= invoiceCurrency obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= invoiceDescription obj) GHC.Base.<> (("start_parameter" Data.Aeson.Types.ToJSON..= invoiceStartParameter obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= invoiceTitle obj) GHC.Base.<> ("total_amount" Data.Aeson.Types.ToJSON..= invoiceTotalAmount obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Invoice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Invoice" (\obj -> ((((GHC.Base.pure Invoice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start_parameter")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_amount"))
-- | Create a new 'Invoice' with all required fields.
mkInvoice :: Data.Text.Internal.Text -- ^ 'invoiceCurrency'
  -> Data.Text.Internal.Text -- ^ 'invoiceDescription'
  -> Data.Text.Internal.Text -- ^ 'invoiceStartParameter'
  -> Data.Text.Internal.Text -- ^ 'invoiceTitle'
  -> GHC.Types.Int -- ^ 'invoiceTotalAmount'
  -> Invoice
mkInvoice invoiceCurrency invoiceDescription invoiceStartParameter invoiceTitle invoiceTotalAmount = Invoice{invoiceCurrency = invoiceCurrency,
                                                                                                             invoiceDescription = invoiceDescription,
                                                                                                             invoiceStartParameter = invoiceStartParameter,
                                                                                                             invoiceTitle = invoiceTitle,
                                                                                                             invoiceTotalAmount = invoiceTotalAmount}
