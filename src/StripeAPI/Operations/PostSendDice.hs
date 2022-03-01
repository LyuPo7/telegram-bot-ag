-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postSendDice
module StripeAPI.Operations.PostSendDice where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /sendDice
-- 
-- Use this method to send an animated emoji that will display a random value. On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned.
postSendDice :: forall m . StripeAPI.Common.MonadHTTP m => PostSendDiceRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostSendDiceResponse) -- ^ Monadic computation which returns the result of the operation
postSendDice body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSendDiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendDiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       PostSendDiceResponseBody200)
                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendDiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendDice") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/sendDice.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendDiceRequestBody = PostSendDiceRequestBody {
  -- | allow_sending_without_reply: Pass *True*, if the message should be sent even if the specified replied-to message is not found
  postSendDiceRequestBodyAllowSendingWithoutReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  , postSendDiceRequestBodyChatId :: PostSendDiceRequestBodyChatId'Variants
  -- | disable_notification: Sends the message [silently](https:\/\/telegram.org\/blog\/channels-2-0\#silent-messages). Users will receive a notification with no sound.
  , postSendDiceRequestBodyDisableNotification :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | emoji: Emoji on which the dice throw animation is based. Currently, must be one of “🎲”, “🎯”, “🏀”, “⚽”, “🎳”, or “🎰”. Dice can have values 1-6 for “🎲”, “🎯” and “🎳”, values 1-5 for “🏀” and “⚽”, and values 1-64 for “🎰”. Defaults to “🎲”
  , postSendDiceRequestBodyEmoji :: (GHC.Maybe.Maybe PostSendDiceRequestBodyEmoji')
  -- | protect_content: Protects the contents of the sent message from forwarding
  , postSendDiceRequestBodyProtectContent :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | reply_markup: Additional interface options. A JSON-serialized object for an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\/\/core.telegram.org\/bots\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
  , postSendDiceRequestBodyReplyMarkup :: (GHC.Maybe.Maybe PostSendDiceRequestBodyReplyMarkup')
  -- | reply_to_message_id: If the message is a reply, ID of the original message
  , postSendDiceRequestBodyReplyToMessageId :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendDiceRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyAllowSendingWithoutReply obj : "chat_id" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyChatId obj : "disable_notification" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyDisableNotification obj : "emoji" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyEmoji obj : "protect_content" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyProtectContent obj : "reply_markup" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup obj : "reply_to_message_id" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyToMessageId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyAllowSendingWithoutReply obj) GHC.Base.<> (("chat_id" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyChatId obj) GHC.Base.<> (("disable_notification" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyDisableNotification obj) GHC.Base.<> (("emoji" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyEmoji obj) GHC.Base.<> (("protect_content" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyProtectContent obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup obj) GHC.Base.<> ("reply_to_message_id" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyToMessageId obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendDiceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendDiceRequestBody" (\obj -> ((((((GHC.Base.pure PostSendDiceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_sending_without_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "emoji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "protect_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_to_message_id"))
-- | Create a new 'PostSendDiceRequestBody' with all required fields.
mkPostSendDiceRequestBody :: PostSendDiceRequestBodyChatId'Variants -- ^ 'postSendDiceRequestBodyChatId'
  -> PostSendDiceRequestBody
mkPostSendDiceRequestBody postSendDiceRequestBodyChatId = PostSendDiceRequestBody{postSendDiceRequestBodyAllowSendingWithoutReply = GHC.Maybe.Nothing,
                                                                                  postSendDiceRequestBodyChatId = postSendDiceRequestBodyChatId,
                                                                                  postSendDiceRequestBodyDisableNotification = GHC.Maybe.Nothing,
                                                                                  postSendDiceRequestBodyEmoji = GHC.Maybe.Nothing,
                                                                                  postSendDiceRequestBodyProtectContent = GHC.Maybe.Nothing,
                                                                                  postSendDiceRequestBodyReplyMarkup = GHC.Maybe.Nothing,
                                                                                  postSendDiceRequestBodyReplyToMessageId = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/sendDice.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostSendDiceRequestBodyChatId'Variants =
   PostSendDiceRequestBodyChatId'Int GHC.Types.Int
  | PostSendDiceRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendDiceRequestBodyChatId'Variants
    where toJSON (PostSendDiceRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostSendDiceRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostSendDiceRequestBodyChatId'Variants
    where parseJSON val = case (PostSendDiceRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostSendDiceRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the enum schema located at @paths.\/sendDice.POST.requestBody.content.application\/json.schema.properties.emoji@ in the specification.
-- 
-- Emoji on which the dice throw animation is based. Currently, must be one of “🎲”, “🎯”, “🏀”, “⚽”, “🎳”, or “🎰”. Dice can have values 1-6 for “🎲”, “🎯” and “🎳”, values 1-5 for “🏀” and “⚽”, and values 1-64 for “🎰”. Defaults to “🎲”
data PostSendDiceRequestBodyEmoji' =
   PostSendDiceRequestBodyEmoji'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostSendDiceRequestBodyEmoji'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostSendDiceRequestBodyEmoji'Enum_ -- ^ Represents the JSON value @"🎲"@
  | PostSendDiceRequestBodyEmoji'Enum_ -- ^ Represents the JSON value @"🎯"@
  | PostSendDiceRequestBodyEmoji'Enum_ -- ^ Represents the JSON value @"🏀"@
  | PostSendDiceRequestBodyEmoji'Enum_ -- ^ Represents the JSON value @"⚽"@
  | PostSendDiceRequestBodyEmoji'Enum_ -- ^ Represents the JSON value @"🎳"@
  | PostSendDiceRequestBodyEmoji'Enum_ -- ^ Represents the JSON value @"🎰"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendDiceRequestBodyEmoji'
    where toJSON (PostSendDiceRequestBodyEmoji'Other val) = val
          toJSON (PostSendDiceRequestBodyEmoji'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostSendDiceRequestBodyEmoji'Enum_) = "\127922"
          toJSON (PostSendDiceRequestBodyEmoji'Enum_) = "\127919"
          toJSON (PostSendDiceRequestBodyEmoji'Enum_) = "\127936"
          toJSON (PostSendDiceRequestBodyEmoji'Enum_) = "\9917"
          toJSON (PostSendDiceRequestBodyEmoji'Enum_) = "\127923"
          toJSON (PostSendDiceRequestBodyEmoji'Enum_) = "\127920"
instance Data.Aeson.Types.FromJSON.FromJSON PostSendDiceRequestBodyEmoji'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "\127922" -> PostSendDiceRequestBodyEmoji'Enum_
                                            | val GHC.Classes.== "\127919" -> PostSendDiceRequestBodyEmoji'Enum_
                                            | val GHC.Classes.== "\127936" -> PostSendDiceRequestBodyEmoji'Enum_
                                            | val GHC.Classes.== "\9917" -> PostSendDiceRequestBodyEmoji'Enum_
                                            | val GHC.Classes.== "\127923" -> PostSendDiceRequestBodyEmoji'Enum_
                                            | val GHC.Classes.== "\127920" -> PostSendDiceRequestBodyEmoji'Enum_
                                            | GHC.Base.otherwise -> PostSendDiceRequestBodyEmoji'Other val)
-- | Defines the object schema located at @paths.\/sendDice.POST.requestBody.content.application\/json.schema.properties.reply_markup.anyOf@ in the specification.
-- 
-- Additional interface options. A JSON-serialized object for an [inline keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
data PostSendDiceRequestBodyReplyMarkup' = PostSendDiceRequestBodyReplyMarkup' {
  -- | force_reply: Shows reply interface to the user, as if they manually selected the bot\'s message and tapped \'Reply\'
  postSendDiceRequestBodyReplyMarkup'ForceReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | inline_keyboard: Array of button rows, each represented by an Array of [InlineKeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#inlinekeyboardbutton) objects
  , postSendDiceRequestBodyReplyMarkup'InlineKeyboard :: (GHC.Maybe.Maybe ([[InlineKeyboardButton]]))
  -- | input_field_placeholder: *Optional*. The placeholder to be shown in the input field when the keyboard is active; 1-64 characters
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 64
  -- * Minimum length of 1
  , postSendDiceRequestBodyReplyMarkup'InputFieldPlaceholder :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | keyboard: Array of button rows, each represented by an Array of [KeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#keyboardbutton) objects
  , postSendDiceRequestBodyReplyMarkup'Keyboard :: (GHC.Maybe.Maybe ([[KeyboardButton]]))
  -- | one_time_keyboard: *Optional*. Requests clients to hide the keyboard as soon as it\'s been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to *false*.
  , postSendDiceRequestBodyReplyMarkup'OneTimeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | remove_keyboard: Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use *one\\_time\\_keyboard* in [ReplyKeyboardMarkup](https:\/\/core.telegram.org\/bots\/api\/\#replykeyboardmarkup))
  , postSendDiceRequestBodyReplyMarkup'RemoveKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | resize_keyboard: *Optional*. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to *false*, in which case the custom keyboard is always of the same height as the app\'s standard keyboard.
  , postSendDiceRequestBodyReplyMarkup'ResizeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | selective: *Optional*. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are \@mentioned in the *text* of the [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) object; 2) if the bot\'s message is a reply (has *reply\\_to\\_message\\_id*), sender of the original message.  
  -- 
  -- *Example:* A user requests to change the bot\'s language, bot replies to the request with a keyboard to select the new language. Other users in the group don\'t see the keyboard.
  , postSendDiceRequestBodyReplyMarkup'Selective :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendDiceRequestBodyReplyMarkup'
    where toJSON obj = Data.Aeson.Types.Internal.object ("force_reply" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'ForceReply obj : "inline_keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'InlineKeyboard obj : "input_field_placeholder" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'InputFieldPlaceholder obj : "keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'Keyboard obj : "one_time_keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'OneTimeKeyboard obj : "remove_keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'RemoveKeyboard obj : "resize_keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'ResizeKeyboard obj : "selective" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'Selective obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("force_reply" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'ForceReply obj) GHC.Base.<> (("inline_keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'InlineKeyboard obj) GHC.Base.<> (("input_field_placeholder" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'InputFieldPlaceholder obj) GHC.Base.<> (("keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'Keyboard obj) GHC.Base.<> (("one_time_keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'OneTimeKeyboard obj) GHC.Base.<> (("remove_keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'RemoveKeyboard obj) GHC.Base.<> (("resize_keyboard" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'ResizeKeyboard obj) GHC.Base.<> ("selective" Data.Aeson.Types.ToJSON..= postSendDiceRequestBodyReplyMarkup'Selective obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendDiceRequestBodyReplyMarkup'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendDiceRequestBodyReplyMarkup'" (\obj -> (((((((GHC.Base.pure PostSendDiceRequestBodyReplyMarkup' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "force_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_field_placeholder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "one_time_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "remove_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "resize_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selective"))
-- | Create a new 'PostSendDiceRequestBodyReplyMarkup'' with all required fields.
mkPostSendDiceRequestBodyReplyMarkup' :: PostSendDiceRequestBodyReplyMarkup'
mkPostSendDiceRequestBodyReplyMarkup' = PostSendDiceRequestBodyReplyMarkup'{postSendDiceRequestBodyReplyMarkup'ForceReply = GHC.Maybe.Nothing,
                                                                            postSendDiceRequestBodyReplyMarkup'InlineKeyboard = GHC.Maybe.Nothing,
                                                                            postSendDiceRequestBodyReplyMarkup'InputFieldPlaceholder = GHC.Maybe.Nothing,
                                                                            postSendDiceRequestBodyReplyMarkup'Keyboard = GHC.Maybe.Nothing,
                                                                            postSendDiceRequestBodyReplyMarkup'OneTimeKeyboard = GHC.Maybe.Nothing,
                                                                            postSendDiceRequestBodyReplyMarkup'RemoveKeyboard = GHC.Maybe.Nothing,
                                                                            postSendDiceRequestBodyReplyMarkup'ResizeKeyboard = GHC.Maybe.Nothing,
                                                                            postSendDiceRequestBodyReplyMarkup'Selective = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postSendDice'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSendDiceResponseError' is used.
data PostSendDiceResponse =
   PostSendDiceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSendDiceResponse200 PostSendDiceResponseBody200 -- ^ 
  | PostSendDiceResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/sendDice.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendDiceResponseBody200 = PostSendDiceResponseBody200 {
  -- | ok
  postSendDiceResponseBody200Ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , postSendDiceResponseBody200Result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendDiceResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postSendDiceResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postSendDiceResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postSendDiceResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postSendDiceResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendDiceResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendDiceResponseBody200" (\obj -> (GHC.Base.pure PostSendDiceResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSendDiceResponseBody200' with all required fields.
mkPostSendDiceResponseBody200 :: GHC.Types.Bool -- ^ 'postSendDiceResponseBody200Ok'
  -> Message -- ^ 'postSendDiceResponseBody200Result'
  -> PostSendDiceResponseBody200
mkPostSendDiceResponseBody200 postSendDiceResponseBody200Ok postSendDiceResponseBody200Result = PostSendDiceResponseBody200{postSendDiceResponseBody200Ok = postSendDiceResponseBody200Ok,
                                                                                                                            postSendDiceResponseBody200Result = postSendDiceResponseBody200Result}