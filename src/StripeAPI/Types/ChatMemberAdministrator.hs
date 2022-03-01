-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatMemberAdministrator
module StripeAPI.Types.ChatMemberAdministrator where

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

-- | Defines the object schema located at @components.schemas.ChatMemberAdministrator@ in the specification.
-- 
-- Represents a [chat member](https:\/\/core.telegram.org\/bots\/api\/\#chatmember) that has some additional privileges.
data ChatMemberAdministrator = ChatMemberAdministrator {
  -- | can_be_edited: *True*, if the bot is allowed to edit administrator privileges of that user
  chatMemberAdministratorCanBeEdited :: GHC.Types.Bool
  -- | can_change_info: *True*, if the user is allowed to change the chat title, photo and other settings
  , chatMemberAdministratorCanChangeInfo :: GHC.Types.Bool
  -- | can_delete_messages: *True*, if the administrator can delete messages of other users
  , chatMemberAdministratorCanDeleteMessages :: GHC.Types.Bool
  -- | can_edit_messages: *Optional*. *True*, if the administrator can edit messages of other users and can pin messages; channels only
  , chatMemberAdministratorCanEditMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_invite_users: *True*, if the user is allowed to invite new users to the chat
  , chatMemberAdministratorCanInviteUsers :: GHC.Types.Bool
  -- | can_manage_chat: *True*, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
  , chatMemberAdministratorCanManageChat :: GHC.Types.Bool
  -- | can_manage_voice_chats: *True*, if the administrator can manage voice chats
  , chatMemberAdministratorCanManageVoiceChats :: GHC.Types.Bool
  -- | can_pin_messages: *Optional*. *True*, if the user is allowed to pin messages; groups and supergroups only
  , chatMemberAdministratorCanPinMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_post_messages: *Optional*. *True*, if the administrator can post in the channel; channels only
  , chatMemberAdministratorCanPostMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_promote_members: *True*, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
  , chatMemberAdministratorCanPromoteMembers :: GHC.Types.Bool
  -- | can_restrict_members: *True*, if the administrator can restrict, ban or unban chat members
  , chatMemberAdministratorCanRestrictMembers :: GHC.Types.Bool
  -- | custom_title: *Optional*. Custom title for this user
  , chatMemberAdministratorCustomTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | is_anonymous: *True*, if the user\'s presence in the chat is hidden
  , chatMemberAdministratorIsAnonymous :: GHC.Types.Bool
  -- | status: The member\'s status in the chat, always “administrator”
  , chatMemberAdministratorStatus :: Data.Text.Internal.Text
  -- | user: This object represents a Telegram user or bot.
  , chatMemberAdministratorUser :: User
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatMemberAdministrator
    where toJSON obj = Data.Aeson.Types.Internal.object ("can_be_edited" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanBeEdited obj : "can_change_info" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanChangeInfo obj : "can_delete_messages" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanDeleteMessages obj : "can_edit_messages" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanEditMessages obj : "can_invite_users" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanInviteUsers obj : "can_manage_chat" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanManageChat obj : "can_manage_voice_chats" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanManageVoiceChats obj : "can_pin_messages" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanPinMessages obj : "can_post_messages" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanPostMessages obj : "can_promote_members" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanPromoteMembers obj : "can_restrict_members" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanRestrictMembers obj : "custom_title" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCustomTitle obj : "is_anonymous" Data.Aeson.Types.ToJSON..= chatMemberAdministratorIsAnonymous obj : "status" Data.Aeson.Types.ToJSON..= chatMemberAdministratorStatus obj : "user" Data.Aeson.Types.ToJSON..= chatMemberAdministratorUser obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("can_be_edited" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanBeEdited obj) GHC.Base.<> (("can_change_info" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanChangeInfo obj) GHC.Base.<> (("can_delete_messages" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanDeleteMessages obj) GHC.Base.<> (("can_edit_messages" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanEditMessages obj) GHC.Base.<> (("can_invite_users" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanInviteUsers obj) GHC.Base.<> (("can_manage_chat" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanManageChat obj) GHC.Base.<> (("can_manage_voice_chats" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanManageVoiceChats obj) GHC.Base.<> (("can_pin_messages" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanPinMessages obj) GHC.Base.<> (("can_post_messages" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanPostMessages obj) GHC.Base.<> (("can_promote_members" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanPromoteMembers obj) GHC.Base.<> (("can_restrict_members" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCanRestrictMembers obj) GHC.Base.<> (("custom_title" Data.Aeson.Types.ToJSON..= chatMemberAdministratorCustomTitle obj) GHC.Base.<> (("is_anonymous" Data.Aeson.Types.ToJSON..= chatMemberAdministratorIsAnonymous obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= chatMemberAdministratorStatus obj) GHC.Base.<> ("user" Data.Aeson.Types.ToJSON..= chatMemberAdministratorUser obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON ChatMemberAdministrator
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatMemberAdministrator" (\obj -> ((((((((((((((GHC.Base.pure ChatMemberAdministrator GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_be_edited")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_change_info")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_delete_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_edit_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_invite_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_manage_chat")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_manage_voice_chats")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_pin_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_post_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_promote_members")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "can_restrict_members")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "is_anonymous")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user"))
-- | Create a new 'ChatMemberAdministrator' with all required fields.
mkChatMemberAdministrator :: GHC.Types.Bool -- ^ 'chatMemberAdministratorCanBeEdited'
  -> GHC.Types.Bool -- ^ 'chatMemberAdministratorCanChangeInfo'
  -> GHC.Types.Bool -- ^ 'chatMemberAdministratorCanDeleteMessages'
  -> GHC.Types.Bool -- ^ 'chatMemberAdministratorCanInviteUsers'
  -> GHC.Types.Bool -- ^ 'chatMemberAdministratorCanManageChat'
  -> GHC.Types.Bool -- ^ 'chatMemberAdministratorCanManageVoiceChats'
  -> GHC.Types.Bool -- ^ 'chatMemberAdministratorCanPromoteMembers'
  -> GHC.Types.Bool -- ^ 'chatMemberAdministratorCanRestrictMembers'
  -> GHC.Types.Bool -- ^ 'chatMemberAdministratorIsAnonymous'
  -> Data.Text.Internal.Text -- ^ 'chatMemberAdministratorStatus'
  -> User -- ^ 'chatMemberAdministratorUser'
  -> ChatMemberAdministrator
mkChatMemberAdministrator chatMemberAdministratorCanBeEdited chatMemberAdministratorCanChangeInfo chatMemberAdministratorCanDeleteMessages chatMemberAdministratorCanInviteUsers chatMemberAdministratorCanManageChat chatMemberAdministratorCanManageVoiceChats chatMemberAdministratorCanPromoteMembers chatMemberAdministratorCanRestrictMembers chatMemberAdministratorIsAnonymous chatMemberAdministratorStatus chatMemberAdministratorUser = ChatMemberAdministrator{chatMemberAdministratorCanBeEdited = chatMemberAdministratorCanBeEdited,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanChangeInfo = chatMemberAdministratorCanChangeInfo,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanDeleteMessages = chatMemberAdministratorCanDeleteMessages,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanEditMessages = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanInviteUsers = chatMemberAdministratorCanInviteUsers,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanManageChat = chatMemberAdministratorCanManageChat,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanManageVoiceChats = chatMemberAdministratorCanManageVoiceChats,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanPinMessages = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanPostMessages = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanPromoteMembers = chatMemberAdministratorCanPromoteMembers,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCanRestrictMembers = chatMemberAdministratorCanRestrictMembers,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorCustomTitle = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorIsAnonymous = chatMemberAdministratorIsAnonymous,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorStatus = chatMemberAdministratorStatus,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           chatMemberAdministratorUser = chatMemberAdministratorUser}