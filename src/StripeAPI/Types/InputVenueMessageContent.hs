-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InputVenueMessageContent
module StripeAPI.Types.InputVenueMessageContent where

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

-- | Defines the object schema located at @components.schemas.InputVenueMessageContent@ in the specification.
-- 
-- Represents the [content](https:\/\/core.telegram.org\/bots\/api\/\#inputmessagecontent) of a venue message to be sent as the result of an inline query.
data InputVenueMessageContent = InputVenueMessageContent {
  -- | address: Address of the venue
  inputVenueMessageContentAddress :: Data.Text.Internal.Text
  -- | foursquare_id: *Optional*. Foursquare identifier of the venue, if known
  , inputVenueMessageContentFoursquareId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | foursquare_type: *Optional*. Foursquare type of the venue, if known. (For example, “arts\\_entertainment\/default”, “arts\\_entertainment\/aquarium” or “food\/icecream”.)
  , inputVenueMessageContentFoursquareType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_id: *Optional*. Google Places identifier of the venue
  , inputVenueMessageContentGooglePlaceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_type: *Optional*. Google Places type of the venue. (See [supported types](https:\/\/developers.google.com\/places\/web-service\/supported_types).)
  , inputVenueMessageContentGooglePlaceType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | latitude: Latitude of the venue in degrees
  , inputVenueMessageContentLatitude :: GHC.Types.Double
  -- | longitude: Longitude of the venue in degrees
  , inputVenueMessageContentLongitude :: GHC.Types.Double
  -- | title: Name of the venue
  , inputVenueMessageContentTitle :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InputVenueMessageContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= inputVenueMessageContentAddress obj : "foursquare_id" Data.Aeson.Types.ToJSON..= inputVenueMessageContentFoursquareId obj : "foursquare_type" Data.Aeson.Types.ToJSON..= inputVenueMessageContentFoursquareType obj : "google_place_id" Data.Aeson.Types.ToJSON..= inputVenueMessageContentGooglePlaceId obj : "google_place_type" Data.Aeson.Types.ToJSON..= inputVenueMessageContentGooglePlaceType obj : "latitude" Data.Aeson.Types.ToJSON..= inputVenueMessageContentLatitude obj : "longitude" Data.Aeson.Types.ToJSON..= inputVenueMessageContentLongitude obj : "title" Data.Aeson.Types.ToJSON..= inputVenueMessageContentTitle obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= inputVenueMessageContentAddress obj) GHC.Base.<> (("foursquare_id" Data.Aeson.Types.ToJSON..= inputVenueMessageContentFoursquareId obj) GHC.Base.<> (("foursquare_type" Data.Aeson.Types.ToJSON..= inputVenueMessageContentFoursquareType obj) GHC.Base.<> (("google_place_id" Data.Aeson.Types.ToJSON..= inputVenueMessageContentGooglePlaceId obj) GHC.Base.<> (("google_place_type" Data.Aeson.Types.ToJSON..= inputVenueMessageContentGooglePlaceType obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= inputVenueMessageContentLatitude obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= inputVenueMessageContentLongitude obj) GHC.Base.<> ("title" Data.Aeson.Types.ToJSON..= inputVenueMessageContentTitle obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InputVenueMessageContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InputVenueMessageContent" (\obj -> (((((((GHC.Base.pure InputVenueMessageContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title"))
-- | Create a new 'InputVenueMessageContent' with all required fields.
mkInputVenueMessageContent :: Data.Text.Internal.Text -- ^ 'inputVenueMessageContentAddress'
  -> GHC.Types.Double -- ^ 'inputVenueMessageContentLatitude'
  -> GHC.Types.Double -- ^ 'inputVenueMessageContentLongitude'
  -> Data.Text.Internal.Text -- ^ 'inputVenueMessageContentTitle'
  -> InputVenueMessageContent
mkInputVenueMessageContent inputVenueMessageContentAddress inputVenueMessageContentLatitude inputVenueMessageContentLongitude inputVenueMessageContentTitle = InputVenueMessageContent{inputVenueMessageContentAddress = inputVenueMessageContentAddress,
                                                                                                                                                                                       inputVenueMessageContentFoursquareId = GHC.Maybe.Nothing,
                                                                                                                                                                                       inputVenueMessageContentFoursquareType = GHC.Maybe.Nothing,
                                                                                                                                                                                       inputVenueMessageContentGooglePlaceId = GHC.Maybe.Nothing,
                                                                                                                                                                                       inputVenueMessageContentGooglePlaceType = GHC.Maybe.Nothing,
                                                                                                                                                                                       inputVenueMessageContentLatitude = inputVenueMessageContentLatitude,
                                                                                                                                                                                       inputVenueMessageContentLongitude = inputVenueMessageContentLongitude,
                                                                                                                                                                                       inputVenueMessageContentTitle = inputVenueMessageContentTitle}
