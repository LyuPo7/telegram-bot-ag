-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatMemberRestricted
module StripeAPI.Types.ChatMemberRestricted where

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

-- | Defines the object schema located at @components.schemas.ChatMemberRestricted@ in the specification.
-- 
-- Represents a [chat member](https:\/\/core.telegram.org\/bots\/api\/\#chatmember) that is under certain restrictions in the chat. Supergroups only.
data ChatMemberRestricted = ChatMemberRestricted {
  -- | can_add_web_page_previews: *True*, if the user is allowed to add web page previews to their messages
  chatMemberRestrictedCanAddWebPagePreviews :: GHC.Types.Bool
  -- | can_change_info: *True*, if the user is allowed to change the chat title, photo and other settings
  , chatMemberRestrictedCanChangeInfo :: GHC.Types.Bool
  -- | can_invite_users: *True*, if the user is allowed to invite new users to the chat
  , chatMemberRestrictedCanInviteUsers :: GHC.Types.Bool
  -- | can_pin_messages: *True*, if the user is allowed to pin messages
  , chatMemberRestrictedCanPinMessages :: GHC.Types.Bool
  -- | can_send_media_messages: *True*, if the user is allowed to send audios, documents, photos, videos, video notes and voice notes
  , chatMemberRestrictedCanSendMediaMessages :: GHC.Types.Bool
  -- | can_send_messages: *True*, if the user is allowed to send text messages, contacts, locations and venues
  , chatMemberRestrictedCanSendMessages :: GHC.Types.Bool
  -- | can_send_other_messages: *True*, if the user is allowed to send animations, games, stickers and use inline bots
  , chatMemberRestrictedCanSendOtherMessages :: GHC.Types.Bool
  -- | can_send_polls: *True*, if the user is allowed to send polls
  , chatMemberRestrictedCanSendPolls :: GHC.Types.Bool
  -- | is_member: *True*, if the user is a member of the chat at the moment of the request
  , chatMemberRestrictedIsMember :: GHC.Types.Bool
  -- | status: The member\'s status in the chat, always “restricted”
  , chatMemberRestrictedStatus :: Data.Text.Internal.Text
  -- | until_date: Date when restrictions will be lifted for this user; unix time. If 0, then the user is restricted forever
  , chatMemberRestrictedUntilDate :: GHC.Types.Int
  -- | user: This object represents a Telegram user or bot.
  , chatMemberRestrictedUser :: User
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatMemberRestricted
    where toJSON obj = Data.Aeson.Types.Internal.object ("can_add_web_page_previews" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanAddWebPagePreviews obj : "can_change_info" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanChangeInfo obj : "can_invite_users" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanInviteUsers obj : "can_pin_messages" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanPinMessages obj : "can_send_media_messages" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanSendMediaMessages obj : "can_send_messages" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanSendMessages obj : "can_send_other_messages" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanSendOtherMessages obj : "can_send_polls" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanSendPolls obj : "is_member" Data.Aeson.Types.ToJSON..= chatMemberRestrictedIsMember obj : "status" Data.Aeson.Types.ToJSON..= chatMemberRestrictedStatus obj : "until_date" Data.Aeson.Types.ToJSON..= chatMemberRestrictedUntilDate obj : "user" Data.Aeson.Types.ToJSON..= chatMemberRestrictedUser obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("can_add_web_page_previews" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanAddWebPagePreviews obj) GHC.Base.<> (("can_change_info" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanChangeInfo obj) GHC.Base.<> (("can_invite_users" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanInviteUsers obj) GHC.Base.<> (("can_pin_messages" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanPinMessages obj) GHC.Base.<> (("can_send_media_messages" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanSendMediaMessages obj) GHC.Base.<> (("can_send_messages" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanSendMessages obj) GHC.Base.<> (("can_send_other_messages" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanSendOtherMessages obj) GHC.Base.<> (("can_send_polls" Data.Aeson.Types.ToJSON..= chatMemberRestrictedCanSendPolls obj) GHC.Base.<> (("is_member" Data.Aeson.Types.ToJSON..= chatMemberRestrictedIsMember obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= chatMemberRestrictedStatus obj) GHC.Base.<> (("until_date" Data.Aeson.Types.ToJSON..= chatMemberRestrictedUntilDate obj) GHC.Base.<> ("user" Data.Aeson.Types.ToJSON..= chatMemberRestrictedUser obj))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON ChatMemberRestricted
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatMemberRestricted" (\obj -> (((((((((((GHC.Base.pure ChatMemberRestricted GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_add_web_page_previews")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_change_info")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_invite_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_pin_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_send_media_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_send_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_send_other_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_send_polls")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "is_member")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "until_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user"))
-- | Create a new 'ChatMemberRestricted' with all required fields.
mkChatMemberRestricted :: GHC.Types.Bool -- ^ 'chatMemberRestrictedCanAddWebPagePreviews'
  -> GHC.Types.Bool -- ^ 'chatMemberRestrictedCanChangeInfo'
  -> GHC.Types.Bool -- ^ 'chatMemberRestrictedCanInviteUsers'
  -> GHC.Types.Bool -- ^ 'chatMemberRestrictedCanPinMessages'
  -> GHC.Types.Bool -- ^ 'chatMemberRestrictedCanSendMediaMessages'
  -> GHC.Types.Bool -- ^ 'chatMemberRestrictedCanSendMessages'
  -> GHC.Types.Bool -- ^ 'chatMemberRestrictedCanSendOtherMessages'
  -> GHC.Types.Bool -- ^ 'chatMemberRestrictedCanSendPolls'
  -> GHC.Types.Bool -- ^ 'chatMemberRestrictedIsMember'
  -> Data.Text.Internal.Text -- ^ 'chatMemberRestrictedStatus'
  -> GHC.Types.Int -- ^ 'chatMemberRestrictedUntilDate'
  -> User -- ^ 'chatMemberRestrictedUser'
  -> ChatMemberRestricted
mkChatMemberRestricted chatMemberRestrictedCanAddWebPagePreviews chatMemberRestrictedCanChangeInfo chatMemberRestrictedCanInviteUsers chatMemberRestrictedCanPinMessages chatMemberRestrictedCanSendMediaMessages chatMemberRestrictedCanSendMessages chatMemberRestrictedCanSendOtherMessages chatMemberRestrictedCanSendPolls chatMemberRestrictedIsMember chatMemberRestrictedStatus chatMemberRestrictedUntilDate chatMemberRestrictedUser = ChatMemberRestricted{chatMemberRestrictedCanAddWebPagePreviews = chatMemberRestrictedCanAddWebPagePreviews,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedCanChangeInfo = chatMemberRestrictedCanChangeInfo,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedCanInviteUsers = chatMemberRestrictedCanInviteUsers,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedCanPinMessages = chatMemberRestrictedCanPinMessages,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedCanSendMediaMessages = chatMemberRestrictedCanSendMediaMessages,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedCanSendMessages = chatMemberRestrictedCanSendMessages,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedCanSendOtherMessages = chatMemberRestrictedCanSendOtherMessages,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedCanSendPolls = chatMemberRestrictedCanSendPolls,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedIsMember = chatMemberRestrictedIsMember,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedStatus = chatMemberRestrictedStatus,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedUntilDate = chatMemberRestrictedUntilDate,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      chatMemberRestrictedUser = chatMemberRestrictedUser}