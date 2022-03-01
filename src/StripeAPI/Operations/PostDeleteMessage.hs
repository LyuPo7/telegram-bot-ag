-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postDeleteMessage
module StripeAPI.Operations.PostDeleteMessage where

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

-- | > POST /deleteMessage
-- 
-- Use this method to delete a message, including service messages, with the following limitations:  
-- \\- A message can only be deleted if it was sent less than 48 hours ago.  
-- \\- A dice message in a private chat can only be deleted if it was sent more than 24 hours ago.  
-- \\- Bots can delete outgoing messages in private chats, groups, and supergroups.  
-- \\- Bots can delete incoming messages in private chats.  
-- \\- Bots granted *can\\_post\\_messages* permissions can delete outgoing messages in channels.  
-- \\- If the bot is an administrator of a group, it can delete any message there.  
-- \\- If the bot has *can\\_delete\\_messages* permission in a supergroup or a channel, it can delete any message there.  
-- Returns *True* on success.
postDeleteMessage :: forall m . StripeAPI.Common.MonadHTTP m => PostDeleteMessageRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostDeleteMessageResponse) -- ^ Monadic computation which returns the result of the operation
postDeleteMessage body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostDeleteMessageResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostDeleteMessageResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      PostDeleteMessageResponseBody200)
                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostDeleteMessageResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/deleteMessage") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/deleteMessage.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostDeleteMessageRequestBody = PostDeleteMessageRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  postDeleteMessageRequestBodyChatId :: PostDeleteMessageRequestBodyChatId'Variants
  -- | message_id: Identifier of the message to delete
  , postDeleteMessageRequestBodyMessageId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostDeleteMessageRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postDeleteMessageRequestBodyChatId obj : "message_id" Data.Aeson.Types.ToJSON..= postDeleteMessageRequestBodyMessageId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postDeleteMessageRequestBodyChatId obj) GHC.Base.<> ("message_id" Data.Aeson.Types.ToJSON..= postDeleteMessageRequestBodyMessageId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostDeleteMessageRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDeleteMessageRequestBody" (\obj -> (GHC.Base.pure PostDeleteMessageRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message_id"))
-- | Create a new 'PostDeleteMessageRequestBody' with all required fields.
mkPostDeleteMessageRequestBody :: PostDeleteMessageRequestBodyChatId'Variants -- ^ 'postDeleteMessageRequestBodyChatId'
  -> GHC.Types.Int -- ^ 'postDeleteMessageRequestBodyMessageId'
  -> PostDeleteMessageRequestBody
mkPostDeleteMessageRequestBody postDeleteMessageRequestBodyChatId postDeleteMessageRequestBodyMessageId = PostDeleteMessageRequestBody{postDeleteMessageRequestBodyChatId = postDeleteMessageRequestBodyChatId,
                                                                                                                                       postDeleteMessageRequestBodyMessageId = postDeleteMessageRequestBodyMessageId}
-- | Defines the oneOf schema located at @paths.\/deleteMessage.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostDeleteMessageRequestBodyChatId'Variants =
   PostDeleteMessageRequestBodyChatId'Int GHC.Types.Int
  | PostDeleteMessageRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostDeleteMessageRequestBodyChatId'Variants
    where toJSON (PostDeleteMessageRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostDeleteMessageRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostDeleteMessageRequestBodyChatId'Variants
    where parseJSON val = case (PostDeleteMessageRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostDeleteMessageRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postDeleteMessage'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostDeleteMessageResponseError' is used.
data PostDeleteMessageResponse =
   PostDeleteMessageResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostDeleteMessageResponse200 PostDeleteMessageResponseBody200 -- ^ 
  | PostDeleteMessageResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/deleteMessage.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostDeleteMessageResponseBody200 = PostDeleteMessageResponseBody200 {
  -- | ok
  postDeleteMessageResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postDeleteMessageResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostDeleteMessageResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postDeleteMessageResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postDeleteMessageResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postDeleteMessageResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postDeleteMessageResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostDeleteMessageResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDeleteMessageResponseBody200" (\obj -> (GHC.Base.pure PostDeleteMessageResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostDeleteMessageResponseBody200' with all required fields.
mkPostDeleteMessageResponseBody200 :: GHC.Types.Bool -- ^ 'postDeleteMessageResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postDeleteMessageResponseBody200Result'
  -> PostDeleteMessageResponseBody200
mkPostDeleteMessageResponseBody200 postDeleteMessageResponseBody200Ok postDeleteMessageResponseBody200Result = PostDeleteMessageResponseBody200{postDeleteMessageResponseBody200Ok = postDeleteMessageResponseBody200Ok,
                                                                                                                                                postDeleteMessageResponseBody200Result = postDeleteMessageResponseBody200Result}