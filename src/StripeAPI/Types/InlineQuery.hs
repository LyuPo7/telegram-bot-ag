-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQuery
module StripeAPI.Types.InlineQuery where

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
import {-# SOURCE #-} StripeAPI.Types.Location
import {-# SOURCE #-} StripeAPI.Types.User

-- | Defines the object schema located at @components.schemas.InlineQuery@ in the specification.
-- 
-- This object represents an incoming inline query. When the user sends an empty query, your bot could return some default or trending results.
data InlineQuery = InlineQuery {
  -- | chat_type: *Optional*. Type of the chat, from which the inline query was sent. Can be either “sender” for a private chat with the inline query sender, “private”, “group”, “supergroup”, or “channel”. The chat type should be always known for requests sent from official clients and most third-party clients, unless the request was sent from a secret chat
  inlineQueryChatType :: (GHC.Maybe.Maybe InlineQueryChatType')
  -- | from: This object represents a Telegram user or bot.
  , inlineQueryFrom :: User
  -- | id: Unique identifier for this query
  , inlineQueryId :: Data.Text.Internal.Text
  -- | location: This object represents a point on the map.
  , inlineQueryLocation :: (GHC.Maybe.Maybe Location)
  -- | offset: Offset of the results to be returned, can be controlled by the bot
  , inlineQueryOffset :: Data.Text.Internal.Text
  -- | query: Text of the query (up to 256 characters)
  , inlineQueryQuery :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQuery
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_type" Data.Aeson.Types.ToJSON..= inlineQueryChatType obj : "from" Data.Aeson.Types.ToJSON..= inlineQueryFrom obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryId obj : "location" Data.Aeson.Types.ToJSON..= inlineQueryLocation obj : "offset" Data.Aeson.Types.ToJSON..= inlineQueryOffset obj : "query" Data.Aeson.Types.ToJSON..= inlineQueryQuery obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_type" Data.Aeson.Types.ToJSON..= inlineQueryChatType obj) GHC.Base.<> (("from" Data.Aeson.Types.ToJSON..= inlineQueryFrom obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryId obj) GHC.Base.<> (("location" Data.Aeson.Types.ToJSON..= inlineQueryLocation obj) GHC.Base.<> (("offset" Data.Aeson.Types.ToJSON..= inlineQueryOffset obj) GHC.Base.<> ("query" Data.Aeson.Types.ToJSON..= inlineQueryQuery obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQuery
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQuery" (\obj -> (((((GHC.Base.pure InlineQuery GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "chat_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "offset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "query"))
-- | Create a new 'InlineQuery' with all required fields.
mkInlineQuery :: User -- ^ 'inlineQueryFrom'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryId'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryOffset'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryQuery'
  -> InlineQuery
mkInlineQuery inlineQueryFrom inlineQueryId inlineQueryOffset inlineQueryQuery = InlineQuery{inlineQueryChatType = GHC.Maybe.Nothing,
                                                                                             inlineQueryFrom = inlineQueryFrom,
                                                                                             inlineQueryId = inlineQueryId,
                                                                                             inlineQueryLocation = GHC.Maybe.Nothing,
                                                                                             inlineQueryOffset = inlineQueryOffset,
                                                                                             inlineQueryQuery = inlineQueryQuery}
-- | Defines the enum schema located at @components.schemas.InlineQuery.properties.chat_type@ in the specification.
-- 
-- *Optional*. Type of the chat, from which the inline query was sent. Can be either “sender” for a private chat with the inline query sender, “private”, “group”, “supergroup”, or “channel”. The chat type should be always known for requests sent from official clients and most third-party clients, unless the request was sent from a secret chat
data InlineQueryChatType' =
   InlineQueryChatType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | InlineQueryChatType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | InlineQueryChatType'EnumSender -- ^ Represents the JSON value @"sender"@
  | InlineQueryChatType'EnumPrivate -- ^ Represents the JSON value @"private"@
  | InlineQueryChatType'EnumGroup -- ^ Represents the JSON value @"group"@
  | InlineQueryChatType'EnumSupergroup -- ^ Represents the JSON value @"supergroup"@
  | InlineQueryChatType'EnumChannel -- ^ Represents the JSON value @"channel"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryChatType'
    where toJSON (InlineQueryChatType'Other val) = val
          toJSON (InlineQueryChatType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (InlineQueryChatType'EnumSender) = "sender"
          toJSON (InlineQueryChatType'EnumPrivate) = "private"
          toJSON (InlineQueryChatType'EnumGroup) = "group"
          toJSON (InlineQueryChatType'EnumSupergroup) = "supergroup"
          toJSON (InlineQueryChatType'EnumChannel) = "channel"
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryChatType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "sender" -> InlineQueryChatType'EnumSender
                                            | val GHC.Classes.== "private" -> InlineQueryChatType'EnumPrivate
                                            | val GHC.Classes.== "group" -> InlineQueryChatType'EnumGroup
                                            | val GHC.Classes.== "supergroup" -> InlineQueryChatType'EnumSupergroup
                                            | val GHC.Classes.== "channel" -> InlineQueryChatType'EnumChannel
                                            | GHC.Base.otherwise -> InlineQueryChatType'Other val)
