-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Audio
module StripeAPI.Types.Audio where

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
import {-# SOURCE #-} StripeAPI.Types.PhotoSize

-- | Defines the object schema located at @components.schemas.Audio@ in the specification.
-- 
-- This object represents an audio file to be treated as music by the Telegram clients.
data Audio = Audio {
  -- | duration: Duration of the audio in seconds as defined by sender
  audioDuration :: GHC.Types.Int
  -- | file_id: Identifier for this file, which can be used to download or reuse the file
  , audioFileId :: Data.Text.Internal.Text
  -- | file_name: *Optional*. Original filename as defined by sender
  , audioFileName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | file_size: *Optional*. File size in bytes
  , audioFileSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | file_unique_id: Unique identifier for this file, which is supposed to be the same over time and for different bots. Can\'t be used to download or reuse the file.
  , audioFileUniqueId :: Data.Text.Internal.Text
  -- | mime_type: *Optional*. MIME type of the file as defined by sender
  , audioMimeType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | performer: *Optional*. Performer of the audio as defined by sender or by audio tags
  , audioPerformer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb: This object represents one size of a photo or a [file](https:\/\/core.telegram.org\/bots\/api\/\#document) \/ [sticker](https:\/\/core.telegram.org\/bots\/api\/\#sticker) thumbnail.
  , audioThumb :: (GHC.Maybe.Maybe PhotoSize)
  -- | title: *Optional*. Title of the audio as defined by sender or by audio tags
  , audioTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Audio
    where toJSON obj = Data.Aeson.Types.Internal.object ("duration" Data.Aeson.Types.ToJSON..= audioDuration obj : "file_id" Data.Aeson.Types.ToJSON..= audioFileId obj : "file_name" Data.Aeson.Types.ToJSON..= audioFileName obj : "file_size" Data.Aeson.Types.ToJSON..= audioFileSize obj : "file_unique_id" Data.Aeson.Types.ToJSON..= audioFileUniqueId obj : "mime_type" Data.Aeson.Types.ToJSON..= audioMimeType obj : "performer" Data.Aeson.Types.ToJSON..= audioPerformer obj : "thumb" Data.Aeson.Types.ToJSON..= audioThumb obj : "title" Data.Aeson.Types.ToJSON..= audioTitle obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("duration" Data.Aeson.Types.ToJSON..= audioDuration obj) GHC.Base.<> (("file_id" Data.Aeson.Types.ToJSON..= audioFileId obj) GHC.Base.<> (("file_name" Data.Aeson.Types.ToJSON..= audioFileName obj) GHC.Base.<> (("file_size" Data.Aeson.Types.ToJSON..= audioFileSize obj) GHC.Base.<> (("file_unique_id" Data.Aeson.Types.ToJSON..= audioFileUniqueId obj) GHC.Base.<> (("mime_type" Data.Aeson.Types.ToJSON..= audioMimeType obj) GHC.Base.<> (("performer" Data.Aeson.Types.ToJSON..= audioPerformer obj) GHC.Base.<> (("thumb" Data.Aeson.Types.ToJSON..= audioThumb obj) GHC.Base.<> ("title" Data.Aeson.Types.ToJSON..= audioTitle obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Audio
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Audio" (\obj -> ((((((((GHC.Base.pure Audio GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "file_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "file_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_unique_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mime_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "performer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title"))
-- | Create a new 'Audio' with all required fields.
mkAudio :: GHC.Types.Int -- ^ 'audioDuration'
  -> Data.Text.Internal.Text -- ^ 'audioFileId'
  -> Data.Text.Internal.Text -- ^ 'audioFileUniqueId'
  -> Audio
mkAudio audioDuration audioFileId audioFileUniqueId = Audio{audioDuration = audioDuration,
                                                            audioFileId = audioFileId,
                                                            audioFileName = GHC.Maybe.Nothing,
                                                            audioFileSize = GHC.Maybe.Nothing,
                                                            audioFileUniqueId = audioFileUniqueId,
                                                            audioMimeType = GHC.Maybe.Nothing,
                                                            audioPerformer = GHC.Maybe.Nothing,
                                                            audioThumb = GHC.Maybe.Nothing,
                                                            audioTitle = GHC.Maybe.Nothing}
