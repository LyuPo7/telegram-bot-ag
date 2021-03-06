-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ProximityAlertTriggered
module StripeAPI.Types.ProximityAlertTriggered where

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
import {-# SOURCE #-} StripeAPI.Types.User

-- | Defines the object schema located at @components.schemas.ProximityAlertTriggered@ in the specification.
-- 
-- This object represents the content of a service message, sent whenever a user in the chat triggers a proximity alert set by another user.
data ProximityAlertTriggered = ProximityAlertTriggered {
  -- | distance: The distance between the users
  proximityAlertTriggeredDistance :: GHC.Types.Int
  -- | traveler: This object represents a Telegram user or bot.
  , proximityAlertTriggeredTraveler :: User
  -- | watcher: This object represents a Telegram user or bot.
  , proximityAlertTriggeredWatcher :: User
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ProximityAlertTriggered
    where toJSON obj = Data.Aeson.Types.Internal.object ("distance" Data.Aeson.Types.ToJSON..= proximityAlertTriggeredDistance obj : "traveler" Data.Aeson.Types.ToJSON..= proximityAlertTriggeredTraveler obj : "watcher" Data.Aeson.Types.ToJSON..= proximityAlertTriggeredWatcher obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("distance" Data.Aeson.Types.ToJSON..= proximityAlertTriggeredDistance obj) GHC.Base.<> (("traveler" Data.Aeson.Types.ToJSON..= proximityAlertTriggeredTraveler obj) GHC.Base.<> ("watcher" Data.Aeson.Types.ToJSON..= proximityAlertTriggeredWatcher obj)))
instance Data.Aeson.Types.FromJSON.FromJSON ProximityAlertTriggered
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ProximityAlertTriggered" (\obj -> ((GHC.Base.pure ProximityAlertTriggered GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "distance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "traveler")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "watcher"))
-- | Create a new 'ProximityAlertTriggered' with all required fields.
mkProximityAlertTriggered :: GHC.Types.Int -- ^ 'proximityAlertTriggeredDistance'
  -> User -- ^ 'proximityAlertTriggeredTraveler'
  -> User -- ^ 'proximityAlertTriggeredWatcher'
  -> ProximityAlertTriggered
mkProximityAlertTriggered proximityAlertTriggeredDistance proximityAlertTriggeredTraveler proximityAlertTriggeredWatcher = ProximityAlertTriggered{proximityAlertTriggeredDistance = proximityAlertTriggeredDistance,
                                                                                                                                                   proximityAlertTriggeredTraveler = proximityAlertTriggeredTraveler,
                                                                                                                                                   proximityAlertTriggeredWatcher = proximityAlertTriggeredWatcher}
