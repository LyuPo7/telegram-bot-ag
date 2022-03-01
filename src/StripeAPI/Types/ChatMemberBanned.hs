-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatMemberBanned
module StripeAPI.Types.ChatMemberBanned where

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

-- | Defines the object schema located at @components.schemas.ChatMemberBanned@ in the specification.
-- 
-- Represents a [chat member](https:\/\/core.telegram.org\/bots\/api\/\#chatmember) that was banned in the chat and can\'t return to the chat or view chat messages.
data ChatMemberBanned = ChatMemberBanned {
  -- | status: The member\'s status in the chat, always “kicked”
  chatMemberBannedStatus :: Data.Text.Internal.Text
  -- | until_date: Date when restrictions will be lifted for this user; unix time. If 0, then the user is banned forever
  , chatMemberBannedUntilDate :: GHC.Types.Int
  -- | user: This object represents a Telegram user or bot.
  , chatMemberBannedUser :: User
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatMemberBanned
    where toJSON obj = Data.Aeson.Types.Internal.object ("status" Data.Aeson.Types.ToJSON..= chatMemberBannedStatus obj : "until_date" Data.Aeson.Types.ToJSON..= chatMemberBannedUntilDate obj : "user" Data.Aeson.Types.ToJSON..= chatMemberBannedUser obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("status" Data.Aeson.Types.ToJSON..= chatMemberBannedStatus obj) GHC.Base.<> (("until_date" Data.Aeson.Types.ToJSON..= chatMemberBannedUntilDate obj) GHC.Base.<> ("user" Data.Aeson.Types.ToJSON..= chatMemberBannedUser obj)))
instance Data.Aeson.Types.FromJSON.FromJSON ChatMemberBanned
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatMemberBanned" (\obj -> ((GHC.Base.pure ChatMemberBanned GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "until_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user"))
-- | Create a new 'ChatMemberBanned' with all required fields.
mkChatMemberBanned :: Data.Text.Internal.Text -- ^ 'chatMemberBannedStatus'
  -> GHC.Types.Int -- ^ 'chatMemberBannedUntilDate'
  -> User -- ^ 'chatMemberBannedUser'
  -> ChatMemberBanned
mkChatMemberBanned chatMemberBannedStatus chatMemberBannedUntilDate chatMemberBannedUser = ChatMemberBanned{chatMemberBannedStatus = chatMemberBannedStatus,
                                                                                                            chatMemberBannedUntilDate = chatMemberBannedUntilDate,
                                                                                                            chatMemberBannedUser = chatMemberBannedUser}