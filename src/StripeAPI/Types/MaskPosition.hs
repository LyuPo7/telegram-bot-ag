-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema MaskPosition
module StripeAPI.Types.MaskPosition where

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

-- | Defines the object schema located at @components.schemas.MaskPosition@ in the specification.
-- 
-- This object describes the position on faces where a mask should be placed by default.
data MaskPosition = MaskPosition {
  -- | point: The part of the face relative to which the mask should be placed. One of “forehead”, “eyes”, “mouth”, or “chin”.
  maskPositionPoint :: MaskPositionPoint'
  -- | scale: Mask scaling coefficient. For example, 2.0 means double size.
  , maskPositionScale :: GHC.Types.Double
  -- | x_shift: Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. For example, choosing -1.0 will place mask just to the left of the default mask position.
  , maskPositionXShift :: GHC.Types.Double
  -- | y_shift: Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. For example, 1.0 will place the mask just below the default mask position.
  , maskPositionYShift :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MaskPosition
    where toJSON obj = Data.Aeson.Types.Internal.object ("point" Data.Aeson.Types.ToJSON..= maskPositionPoint obj : "scale" Data.Aeson.Types.ToJSON..= maskPositionScale obj : "x_shift" Data.Aeson.Types.ToJSON..= maskPositionXShift obj : "y_shift" Data.Aeson.Types.ToJSON..= maskPositionYShift obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("point" Data.Aeson.Types.ToJSON..= maskPositionPoint obj) GHC.Base.<> (("scale" Data.Aeson.Types.ToJSON..= maskPositionScale obj) GHC.Base.<> (("x_shift" Data.Aeson.Types.ToJSON..= maskPositionXShift obj) GHC.Base.<> ("y_shift" Data.Aeson.Types.ToJSON..= maskPositionYShift obj))))
instance Data.Aeson.Types.FromJSON.FromJSON MaskPosition
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "MaskPosition" (\obj -> (((GHC.Base.pure MaskPosition GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "point")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "scale")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "x_shift")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "y_shift"))
-- | Create a new 'MaskPosition' with all required fields.
mkMaskPosition :: MaskPositionPoint' -- ^ 'maskPositionPoint'
  -> GHC.Types.Double -- ^ 'maskPositionScale'
  -> GHC.Types.Double -- ^ 'maskPositionXShift'
  -> GHC.Types.Double -- ^ 'maskPositionYShift'
  -> MaskPosition
mkMaskPosition maskPositionPoint maskPositionScale maskPositionXShift maskPositionYShift = MaskPosition{maskPositionPoint = maskPositionPoint,
                                                                                                        maskPositionScale = maskPositionScale,
                                                                                                        maskPositionXShift = maskPositionXShift,
                                                                                                        maskPositionYShift = maskPositionYShift}
-- | Defines the enum schema located at @components.schemas.MaskPosition.properties.point@ in the specification.
-- 
-- The part of the face relative to which the mask should be placed. One of “forehead”, “eyes”, “mouth”, or “chin”.
data MaskPositionPoint' =
   MaskPositionPoint'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | MaskPositionPoint'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | MaskPositionPoint'EnumForehead -- ^ Represents the JSON value @"forehead"@
  | MaskPositionPoint'EnumEyes -- ^ Represents the JSON value @"eyes"@
  | MaskPositionPoint'EnumMouth -- ^ Represents the JSON value @"mouth"@
  | MaskPositionPoint'EnumChin -- ^ Represents the JSON value @"chin"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MaskPositionPoint'
    where toJSON (MaskPositionPoint'Other val) = val
          toJSON (MaskPositionPoint'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (MaskPositionPoint'EnumForehead) = "forehead"
          toJSON (MaskPositionPoint'EnumEyes) = "eyes"
          toJSON (MaskPositionPoint'EnumMouth) = "mouth"
          toJSON (MaskPositionPoint'EnumChin) = "chin"
instance Data.Aeson.Types.FromJSON.FromJSON MaskPositionPoint'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "forehead" -> MaskPositionPoint'EnumForehead
                                            | val GHC.Classes.== "eyes" -> MaskPositionPoint'EnumEyes
                                            | val GHC.Classes.== "mouth" -> MaskPositionPoint'EnumMouth
                                            | val GHC.Classes.== "chin" -> MaskPositionPoint'EnumChin
                                            | GHC.Base.otherwise -> MaskPositionPoint'Other val)