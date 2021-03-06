-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema BotCommandScopeChatMember
module StripeAPI.Types.BotCommandScopeChatMember where

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

-- | Defines the object schema located at @components.schemas.BotCommandScopeChatMember@ in the specification.
-- 
-- Represents the [scope](https:\/\/core.telegram.org\/bots\/api\/\#botcommandscope) of bot commands, covering a specific member of a group or supergroup chat.
data BotCommandScopeChatMember = BotCommandScopeChatMember {
  -- | chat_id: Unique identifier for the target chat or username of the target supergroup (in the format \`\@supergroupusername\`)
  botCommandScopeChatMemberChatId :: BotCommandScopeChatMemberChatId'Variants
  -- | type: Scope type, must be *chat\\_member*
  , botCommandScopeChatMemberType :: Data.Text.Internal.Text
  -- | user_id: Unique identifier of the target user
  , botCommandScopeChatMemberUserId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BotCommandScopeChatMember
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= botCommandScopeChatMemberChatId obj : "type" Data.Aeson.Types.ToJSON..= botCommandScopeChatMemberType obj : "user_id" Data.Aeson.Types.ToJSON..= botCommandScopeChatMemberUserId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= botCommandScopeChatMemberChatId obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= botCommandScopeChatMemberType obj) GHC.Base.<> ("user_id" Data.Aeson.Types.ToJSON..= botCommandScopeChatMemberUserId obj)))
instance Data.Aeson.Types.FromJSON.FromJSON BotCommandScopeChatMember
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BotCommandScopeChatMember" (\obj -> ((GHC.Base.pure BotCommandScopeChatMember GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_id"))
-- | Create a new 'BotCommandScopeChatMember' with all required fields.
mkBotCommandScopeChatMember :: BotCommandScopeChatMemberChatId'Variants -- ^ 'botCommandScopeChatMemberChatId'
  -> Data.Text.Internal.Text -- ^ 'botCommandScopeChatMemberType'
  -> GHC.Types.Int -- ^ 'botCommandScopeChatMemberUserId'
  -> BotCommandScopeChatMember
mkBotCommandScopeChatMember botCommandScopeChatMemberChatId botCommandScopeChatMemberType botCommandScopeChatMemberUserId = BotCommandScopeChatMember{botCommandScopeChatMemberChatId = botCommandScopeChatMemberChatId,
                                                                                                                                                      botCommandScopeChatMemberType = botCommandScopeChatMemberType,
                                                                                                                                                      botCommandScopeChatMemberUserId = botCommandScopeChatMemberUserId}
-- | Defines the oneOf schema located at @components.schemas.BotCommandScopeChatMember.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target supergroup (in the format \`\@supergroupusername\`)
data BotCommandScopeChatMemberChatId'Variants =
   BotCommandScopeChatMemberChatId'Int GHC.Types.Int
  | BotCommandScopeChatMemberChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BotCommandScopeChatMemberChatId'Variants
    where toJSON (BotCommandScopeChatMemberChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (BotCommandScopeChatMemberChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON BotCommandScopeChatMemberChatId'Variants
    where parseJSON val = case (BotCommandScopeChatMemberChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((BotCommandScopeChatMemberChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
