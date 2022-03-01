-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema LoginUrl
module StripeAPI.Types.LoginUrl where

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

-- | Defines the object schema located at @components.schemas.LoginUrl@ in the specification.
-- 
-- This object represents a parameter of the inline keyboard button used to automatically authorize a user. Serves as a great replacement for the [Telegram Login Widget](https:\/\/core.telegram.org\/widgets\/login) when the user is coming from Telegram. All the user needs to do is tap\/click a button and confirm that they want to log in:
-- 
-- Telegram apps support these buttons as of [version 5.7](https:\/\/telegram.org\/blog\/privacy-discussions-web-bots\#meet-seamless-web-bots).
-- 
-- Sample bot: [\@discussbot](https:\/\/t.me\/discussbot)
data LoginUrl = LoginUrl {
  -- | bot_username: *Optional*. Username of a bot, which will be used for user authorization. See [Setting up a bot](https:\/\/core.telegram.org\/widgets\/login\#setting-up-a-bot) for more details. If not specified, the current bot\'s username will be assumed. The *url*\'s domain must be the same as the domain linked with the bot. See [Linking your domain to the bot](https:\/\/core.telegram.org\/widgets\/login\#linking-your-domain-to-the-bot) for more details.
  loginUrlBotUsername :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | forward_text: *Optional*. New text of the button in forwarded messages.
  , loginUrlForwardText :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | request_write_access: *Optional*. Pass *True* to request the permission for your bot to send messages to the user.
  , loginUrlRequestWriteAccess :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | url: An HTTP URL to be opened with user authorization data added to the query string when the button is pressed. If the user refuses to provide authorization data, the original URL without information about the user will be opened. The data added is the same as described in [Receiving authorization data](https:\/\/core.telegram.org\/widgets\/login\#receiving-authorization-data).  
  -- 
  -- **NOTE:** You **must** always check the hash of the received data to verify the authentication and the integrity of the data as described in [Checking authorization](https:\/\/core.telegram.org\/widgets\/login\#checking-authorization).
  , loginUrlUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LoginUrl
    where toJSON obj = Data.Aeson.Types.Internal.object ("bot_username" Data.Aeson.Types.ToJSON..= loginUrlBotUsername obj : "forward_text" Data.Aeson.Types.ToJSON..= loginUrlForwardText obj : "request_write_access" Data.Aeson.Types.ToJSON..= loginUrlRequestWriteAccess obj : "url" Data.Aeson.Types.ToJSON..= loginUrlUrl obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bot_username" Data.Aeson.Types.ToJSON..= loginUrlBotUsername obj) GHC.Base.<> (("forward_text" Data.Aeson.Types.ToJSON..= loginUrlForwardText obj) GHC.Base.<> (("request_write_access" Data.Aeson.Types.ToJSON..= loginUrlRequestWriteAccess obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= loginUrlUrl obj))))
instance Data.Aeson.Types.FromJSON.FromJSON LoginUrl
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LoginUrl" (\obj -> (((GHC.Base.pure LoginUrl GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bot_username")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "forward_text")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_write_access")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'LoginUrl' with all required fields.
mkLoginUrl :: Data.Text.Internal.Text -- ^ 'loginUrlUrl'
  -> LoginUrl
mkLoginUrl loginUrlUrl = LoginUrl{loginUrlBotUsername = GHC.Maybe.Nothing,
                                  loginUrlForwardText = GHC.Maybe.Nothing,
                                  loginUrlRequestWriteAccess = GHC.Maybe.Nothing,
                                  loginUrlUrl = loginUrlUrl}
