-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQueryResultCachedVideo
module StripeAPI.Types.InlineQueryResultCachedVideo where

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

-- | Defines the object schema located at @components.schemas.InlineQueryResultCachedVideo@ in the specification.
-- 
-- Represents a link to a video file stored on the Telegram servers. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use *input\\_message\\_content* to send a message with the specified content instead of the video.
data InlineQueryResultCachedVideo = InlineQueryResultCachedVideo {
  -- | caption: *Optional*. Caption of the video to be sent, 0-1024 characters after entities parsing
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1024
  -- * Minimum length of 0
  inlineQueryResultCachedVideoCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. List of special entities that appear in the caption, which can be specified instead of *parse\\_mode*
  , inlineQueryResultCachedVideoCaptionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | description: *Optional*. Short description of the result
  , inlineQueryResultCachedVideoDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: Unique identifier for this result, 1-64 bytes
  , inlineQueryResultCachedVideoId :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inlineQueryResultCachedVideoInputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | parse_mode: *Optional*. Mode for parsing entities in the video caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , inlineQueryResultCachedVideoParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , inlineQueryResultCachedVideoReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | title: Title for the result
  , inlineQueryResultCachedVideoTitle :: Data.Text.Internal.Text
  -- | type: Type of the result, must be *video*
  , inlineQueryResultCachedVideoType :: Data.Text.Internal.Text
  -- | video_file_id: A valid file identifier for the video file
  , inlineQueryResultCachedVideoVideoFileId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultCachedVideo
    where toJSON obj = Data.Aeson.Types.Internal.object ("caption" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoCaption obj : "caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoCaptionEntities obj : "description" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoDescription obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoId obj : "input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoInputMessageContent obj : "parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoParseMode obj : "reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoReplyMarkup obj : "title" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoTitle obj : "type" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoType obj : "video_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoVideoFileId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("caption" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoCaption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoCaptionEntities obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoId obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoInputMessageContent obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoParseMode obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoReplyMarkup obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoTitle obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoType obj) GHC.Base.<> ("video_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedVideoVideoFileId obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultCachedVideo
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultCachedVideo" (\obj -> (((((((((GHC.Base.pure InlineQueryResultCachedVideo GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "video_file_id"))
-- | Create a new 'InlineQueryResultCachedVideo' with all required fields.
mkInlineQueryResultCachedVideo :: Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedVideoId'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedVideoTitle'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedVideoType'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedVideoVideoFileId'
  -> InlineQueryResultCachedVideo
mkInlineQueryResultCachedVideo inlineQueryResultCachedVideoId inlineQueryResultCachedVideoTitle inlineQueryResultCachedVideoType inlineQueryResultCachedVideoVideoFileId = InlineQueryResultCachedVideo{inlineQueryResultCachedVideoCaption = GHC.Maybe.Nothing,
                                                                                                                                                                                                        inlineQueryResultCachedVideoCaptionEntities = GHC.Maybe.Nothing,
                                                                                                                                                                                                        inlineQueryResultCachedVideoDescription = GHC.Maybe.Nothing,
                                                                                                                                                                                                        inlineQueryResultCachedVideoId = inlineQueryResultCachedVideoId,
                                                                                                                                                                                                        inlineQueryResultCachedVideoInputMessageContent = GHC.Maybe.Nothing,
                                                                                                                                                                                                        inlineQueryResultCachedVideoParseMode = GHC.Maybe.Nothing,
                                                                                                                                                                                                        inlineQueryResultCachedVideoReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                                                                        inlineQueryResultCachedVideoTitle = inlineQueryResultCachedVideoTitle,
                                                                                                                                                                                                        inlineQueryResultCachedVideoType = inlineQueryResultCachedVideoType,
                                                                                                                                                                                                        inlineQueryResultCachedVideoVideoFileId = inlineQueryResultCachedVideoVideoFileId}
