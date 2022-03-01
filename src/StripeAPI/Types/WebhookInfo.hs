-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema WebhookInfo
module StripeAPI.Types.WebhookInfo where

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

-- | Defines the object schema located at @components.schemas.WebhookInfo@ in the specification.
-- 
-- Contains information about the current status of a webhook.
data WebhookInfo = WebhookInfo {
  -- | allowed_updates: *Optional*. A list of update types the bot is subscribed to. Defaults to all update types except *chat\\_member*
  webhookInfoAllowedUpdates :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | has_custom_certificate: *True*, if a custom certificate was provided for webhook certificate checks
  , webhookInfoHasCustomCertificate :: GHC.Types.Bool
  -- | ip_address: *Optional*. Currently used webhook IP address
  , webhookInfoIpAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_error_date: *Optional*. Unix time for the most recent error that happened when trying to deliver an update via webhook
  , webhookInfoLastErrorDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | last_error_message: *Optional*. Error message in human-readable format for the most recent error that happened when trying to deliver an update via webhook
  , webhookInfoLastErrorMessage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | max_connections: *Optional*. Maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery
  , webhookInfoMaxConnections :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | pending_update_count: Number of updates awaiting delivery
  , webhookInfoPendingUpdateCount :: GHC.Types.Int
  -- | url: Webhook URL, may be empty if webhook is not set up
  , webhookInfoUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON WebhookInfo
    where toJSON obj = Data.Aeson.Types.Internal.object ("allowed_updates" Data.Aeson.Types.ToJSON..= webhookInfoAllowedUpdates obj : "has_custom_certificate" Data.Aeson.Types.ToJSON..= webhookInfoHasCustomCertificate obj : "ip_address" Data.Aeson.Types.ToJSON..= webhookInfoIpAddress obj : "last_error_date" Data.Aeson.Types.ToJSON..= webhookInfoLastErrorDate obj : "last_error_message" Data.Aeson.Types.ToJSON..= webhookInfoLastErrorMessage obj : "max_connections" Data.Aeson.Types.ToJSON..= webhookInfoMaxConnections obj : "pending_update_count" Data.Aeson.Types.ToJSON..= webhookInfoPendingUpdateCount obj : "url" Data.Aeson.Types.ToJSON..= webhookInfoUrl obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allowed_updates" Data.Aeson.Types.ToJSON..= webhookInfoAllowedUpdates obj) GHC.Base.<> (("has_custom_certificate" Data.Aeson.Types.ToJSON..= webhookInfoHasCustomCertificate obj) GHC.Base.<> (("ip_address" Data.Aeson.Types.ToJSON..= webhookInfoIpAddress obj) GHC.Base.<> (("last_error_date" Data.Aeson.Types.ToJSON..= webhookInfoLastErrorDate obj) GHC.Base.<> (("last_error_message" Data.Aeson.Types.ToJSON..= webhookInfoLastErrorMessage obj) GHC.Base.<> (("max_connections" Data.Aeson.Types.ToJSON..= webhookInfoMaxConnections obj) GHC.Base.<> (("pending_update_count" Data.Aeson.Types.ToJSON..= webhookInfoPendingUpdateCount obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= webhookInfoUrl obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON WebhookInfo
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "WebhookInfo" (\obj -> (((((((GHC.Base.pure WebhookInfo GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allowed_updates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_custom_certificate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_error_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_error_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_connections")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pending_update_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'WebhookInfo' with all required fields.
mkWebhookInfo :: GHC.Types.Bool -- ^ 'webhookInfoHasCustomCertificate'
  -> GHC.Types.Int -- ^ 'webhookInfoPendingUpdateCount'
  -> Data.Text.Internal.Text -- ^ 'webhookInfoUrl'
  -> WebhookInfo
mkWebhookInfo webhookInfoHasCustomCertificate webhookInfoPendingUpdateCount webhookInfoUrl = WebhookInfo{webhookInfoAllowedUpdates = GHC.Maybe.Nothing,
                                                                                                         webhookInfoHasCustomCertificate = webhookInfoHasCustomCertificate,
                                                                                                         webhookInfoIpAddress = GHC.Maybe.Nothing,
                                                                                                         webhookInfoLastErrorDate = GHC.Maybe.Nothing,
                                                                                                         webhookInfoLastErrorMessage = GHC.Maybe.Nothing,
                                                                                                         webhookInfoMaxConnections = GHC.Maybe.Nothing,
                                                                                                         webhookInfoPendingUpdateCount = webhookInfoPendingUpdateCount,
                                                                                                         webhookInfoUrl = webhookInfoUrl}
