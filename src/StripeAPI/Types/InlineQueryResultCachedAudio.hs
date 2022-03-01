-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQueryResultCachedAudio
module StripeAPI.Types.InlineQueryResultCachedAudio where

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

-- | Defines the object schema located at @components.schemas.InlineQueryResultCachedAudio@ in the specification.
-- 
-- Represents a link to an MP3 audio file stored on the Telegram servers. By default, this audio file will be sent by the user. Alternatively, you can use *input\\_message\\_content* to send a message with the specified content instead of the audio.
data InlineQueryResultCachedAudio = InlineQueryResultCachedAudio {
  -- | audio_file_id: A valid file identifier for the audio file
  inlineQueryResultCachedAudioAudioFileId :: Data.Text.Internal.Text
  -- | caption: *Optional*. Caption, 0-1024 characters after entities parsing
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1024
  -- * Minimum length of 0
  , inlineQueryResultCachedAudioCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. List of special entities that appear in the caption, which can be specified instead of *parse\\_mode*
  , inlineQueryResultCachedAudioCaptionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | id: Unique identifier for this result, 1-64 bytes
  , inlineQueryResultCachedAudioId :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inlineQueryResultCachedAudioInputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | parse_mode: *Optional*. Mode for parsing entities in the audio caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , inlineQueryResultCachedAudioParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , inlineQueryResultCachedAudioReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | type: Type of the result, must be *audio*
  , inlineQueryResultCachedAudioType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultCachedAudio
    where toJSON obj = Data.Aeson.Types.Internal.object ("audio_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioAudioFileId obj : "caption" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioCaption obj : "caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioCaptionEntities obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioId obj : "input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioInputMessageContent obj : "parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioParseMode obj : "reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioReplyMarkup obj : "type" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("audio_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioAudioFileId obj) GHC.Base.<> (("caption" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioCaption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioCaptionEntities obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioId obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioInputMessageContent obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioParseMode obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioReplyMarkup obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= inlineQueryResultCachedAudioType obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultCachedAudio
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultCachedAudio" (\obj -> (((((((GHC.Base.pure InlineQueryResultCachedAudio GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "audio_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'InlineQueryResultCachedAudio' with all required fields.
mkInlineQueryResultCachedAudio :: Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedAudioAudioFileId'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedAudioId'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultCachedAudioType'
  -> InlineQueryResultCachedAudio
mkInlineQueryResultCachedAudio inlineQueryResultCachedAudioAudioFileId inlineQueryResultCachedAudioId inlineQueryResultCachedAudioType = InlineQueryResultCachedAudio{inlineQueryResultCachedAudioAudioFileId = inlineQueryResultCachedAudioAudioFileId,
                                                                                                                                                                      inlineQueryResultCachedAudioCaption = GHC.Maybe.Nothing,
                                                                                                                                                                      inlineQueryResultCachedAudioCaptionEntities = GHC.Maybe.Nothing,
                                                                                                                                                                      inlineQueryResultCachedAudioId = inlineQueryResultCachedAudioId,
                                                                                                                                                                      inlineQueryResultCachedAudioInputMessageContent = GHC.Maybe.Nothing,
                                                                                                                                                                      inlineQueryResultCachedAudioParseMode = GHC.Maybe.Nothing,
                                                                                                                                                                      inlineQueryResultCachedAudioReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                                      inlineQueryResultCachedAudioType = inlineQueryResultCachedAudioType}