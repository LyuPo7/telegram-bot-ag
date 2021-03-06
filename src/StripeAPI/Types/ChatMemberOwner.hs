-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatMemberOwner
module StripeAPI.Types.ChatMemberOwner where

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

-- | Defines the object schema located at @components.schemas.ChatMemberOwner@ in the specification.
-- 
-- Represents a [chat member](https:\/\/core.telegram.org\/bots\/api\/\#chatmember) that owns the chat and has all administrator privileges.
data ChatMemberOwner = ChatMemberOwner {
  -- | custom_title: *Optional*. Custom title for this user
  chatMemberOwnerCustomTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | is_anonymous: *True*, if the user\'s presence in the chat is hidden
  , chatMemberOwnerIsAnonymous :: GHC.Types.Bool
  -- | status: The member\'s status in the chat, always “creator”
  , chatMemberOwnerStatus :: Data.Text.Internal.Text
  -- | user: This object represents a Telegram user or bot.
  , chatMemberOwnerUser :: User
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatMemberOwner
    where toJSON obj = Data.Aeson.Types.Internal.object ("custom_title" Data.Aeson.Types.ToJSON..= chatMemberOwnerCustomTitle obj : "is_anonymous" Data.Aeson.Types.ToJSON..= chatMemberOwnerIsAnonymous obj : "status" Data.Aeson.Types.ToJSON..= chatMemberOwnerStatus obj : "user" Data.Aeson.Types.ToJSON..= chatMemberOwnerUser obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("custom_title" Data.Aeson.Types.ToJSON..= chatMemberOwnerCustomTitle obj) GHC.Base.<> (("is_anonymous" Data.Aeson.Types.ToJSON..= chatMemberOwnerIsAnonymous obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= chatMemberOwnerStatus obj) GHC.Base.<> ("user" Data.Aeson.Types.ToJSON..= chatMemberOwnerUser obj))))
instance Data.Aeson.Types.FromJSON.FromJSON ChatMemberOwner
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatMemberOwner" (\obj -> (((GHC.Base.pure ChatMemberOwner GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "is_anonymous")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user"))
-- | Create a new 'ChatMemberOwner' with all required fields.
mkChatMemberOwner :: GHC.Types.Bool -- ^ 'chatMemberOwnerIsAnonymous'
  -> Data.Text.Internal.Text -- ^ 'chatMemberOwnerStatus'
  -> User -- ^ 'chatMemberOwnerUser'
  -> ChatMemberOwner
mkChatMemberOwner chatMemberOwnerIsAnonymous chatMemberOwnerStatus chatMemberOwnerUser = ChatMemberOwner{chatMemberOwnerCustomTitle = GHC.Maybe.Nothing,
                                                                                                         chatMemberOwnerIsAnonymous = chatMemberOwnerIsAnonymous,
                                                                                                         chatMemberOwnerStatus = chatMemberOwnerStatus,
                                                                                                         chatMemberOwnerUser = chatMemberOwnerUser}
