-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ShippingOption
module StripeAPI.Types.ShippingOption where

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
import {-# SOURCE #-} StripeAPI.Types.LabeledPrice

-- | Defines the object schema located at @components.schemas.ShippingOption@ in the specification.
-- 
-- This object represents one shipping option.
data ShippingOption = ShippingOption {
  -- | id: Shipping option identifier
  shippingOptionId :: Data.Text.Internal.Text
  -- | prices: List of price portions
  , shippingOptionPrices :: ([LabeledPrice])
  -- | title: Option title
  , shippingOptionTitle :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingOption
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= shippingOptionId obj : "prices" Data.Aeson.Types.ToJSON..= shippingOptionPrices obj : "title" Data.Aeson.Types.ToJSON..= shippingOptionTitle obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= shippingOptionId obj) GHC.Base.<> (("prices" Data.Aeson.Types.ToJSON..= shippingOptionPrices obj) GHC.Base.<> ("title" Data.Aeson.Types.ToJSON..= shippingOptionTitle obj)))
instance Data.Aeson.Types.FromJSON.FromJSON ShippingOption
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ShippingOption" (\obj -> ((GHC.Base.pure ShippingOption GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "prices")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title"))
-- | Create a new 'ShippingOption' with all required fields.
mkShippingOption :: Data.Text.Internal.Text -- ^ 'shippingOptionId'
  -> [LabeledPrice] -- ^ 'shippingOptionPrices'
  -> Data.Text.Internal.Text -- ^ 'shippingOptionTitle'
  -> ShippingOption
mkShippingOption shippingOptionId shippingOptionPrices shippingOptionTitle = ShippingOption{shippingOptionId = shippingOptionId,
                                                                                            shippingOptionPrices = shippingOptionPrices,
                                                                                            shippingOptionTitle = shippingOptionTitle}
