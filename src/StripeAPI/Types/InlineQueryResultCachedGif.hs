-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQueryResultCachedGif
module StripeAPI.Types.InlineQueryResultCachedGif where

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
import {-# SOURCE #-} StripeAPI.Types.InlineKeyboardMarkup
import {-# SOURCE #-} StripeAPI.Types.InputMessageContent
import {-# SOURCE #-} StripeAPI.Types.MessageEntity

-- | Defines the object schema located at @components.schemas.InlineQueryResultCachedGif@ in the specification.
-- 
-- Represents a link to an animated GIF file stored on the Telegram servers. By default, this animated GIF file will be sent by the user with an optional caption. Alternatively, you can use *input\\_message\\_content* to send a message with specified content instead of the animation.
data InlineQueryResultCachedGif = InlineQueryResultCachedGif {
  -- | caption: *Optional*. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1024
  -- * Minimum length of 0
  inlineQueryResultCachedGifCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. List of special entities that appear in the caption, which can be specified instead of *parse\\_mode*
  , inlineQueryResultCachedGifCaptionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | gif_file_id: A valid file identifier for the GIF file
  , inlineQueryResultCachedGifGifFileId :: Data.Text.Internal.Text
  -- | id: Unique identifier for this result, 1-64 bytes
  , inlineQueryResultCachedGifId :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inlineQueryResultCachedGifInputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | parse_mode: *Optional*. Mode for parsing entities in the caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , inlineQueryResultCachedGifParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , inlineQueryResultCachedGifReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | title: *Optional*. Title for the result
  , inlineQueryResultCachedGifTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: Type of the result, must be *gif*
  , inlineQueryResultCachedGifType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultCachedGif
    where toJSON obj = Data.Aeson.Types.Internal.object ("caption" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifCaption obj : "caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifCaptionEntities obj : "gif_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifGifFileId obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifId obj : "input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifInputMessageContent obj : "parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifParseMode obj : "reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifReplyMarkup obj : "title" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifTitle obj : "type" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("caption" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifCaption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifCaptionEntities obj) GHC.Base.<> (("gif_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifGifFileId obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifId obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifInputMessageContent obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifParseMode obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifReplyMarkup obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifTitle obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedGifType obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultCachedGif
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultCachedGif" (\obj -> ((((((((GHC.Base.pure InlineQueryResultCachedGif GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "gif_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'InlineQueryResultCachedGif' with all required fields.
mkInlineQueryResultCachedGif :: Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedGifGifFileId'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedGifId'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedGifType'
  -> InlineQueryResultCachedGif
mkInlineQueryResultCachedGif inlineQueryResultCachedGifGifFileId inlineQueryResultCachedGifId inlineQueryResultCachedGifType = InlineQueryResultCachedGif{inlineQueryResultCachedGifCaption = GHC.Maybe.Nothing,
                                                                                                                                                          inlineQueryResultCachedGifCaptionEntities = GHC.Maybe.Nothing,
                                                                                                                                                          inlineQueryResultCachedGifGifFileId = inlineQueryResultCachedGifGifFileId,
                                                                                                                                                          inlineQueryResultCachedGifId = inlineQueryResultCachedGifId,
                                                                                                                                                          inlineQueryResultCachedGifInputMessageContent = GHC.Maybe.Nothing,
                                                                                                                                                          inlineQueryResultCachedGifParseMode = GHC.Maybe.Nothing,
                                                                                                                                                          inlineQueryResultCachedGifReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                          inlineQueryResultCachedGifTitle = GHC.Maybe.Nothing,
                                                                                                                                                          inlineQueryResultCachedGifType = inlineQueryResultCachedGifType}
