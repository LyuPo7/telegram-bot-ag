-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postUnpinAllChatMessages
module StripeAPI.Operations.PostUnpinAllChatMessages where

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

-- | > POST /unpinAllChatMessages
-- 
-- Use this method to clear the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the \'can\\_pin\\_messages\' administrator right in a supergroup or \'can\\_edit\\_messages\' administrator right in a channel. Returns *True* on success.
postUnpinAllChatMessages :: forall m . StripeAPI.Common.MonadHTTP m => PostUnpinAllChatMessagesRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostUnpinAllChatMessagesResponse) -- ^ Monadic computation which returns the result of the operation
postUnpinAllChatMessages body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostUnpinAllChatMessagesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostUnpinAllChatMessagesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           PostUnpinAllChatMessagesResponseBody200)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostUnpinAllChatMessagesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/unpinAllChatMessages") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/unpinAllChatMessages.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostUnpinAllChatMessagesRequestBody = PostUnpinAllChatMessagesRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  postUnpinAllChatMessagesRequestBodyChatId :: PostUnpinAllChatMessagesRequestBodyChatId'Variants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostUnpinAllChatMessagesRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postUnpinAllChatMessagesRequestBodyChatId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("chat_id" Data.Aeson.Types.ToJSON..= postUnpinAllChatMessagesRequestBodyChatId obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostUnpinAllChatMessagesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostUnpinAllChatMessagesRequestBody" (\obj -> GHC.Base.pure PostUnpinAllChatMessagesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id"))
-- | Create a new 'PostUnpinAllChatMessagesRequestBody' with all required fields.
mkPostUnpinAllChatMessagesRequestBody :: PostUnpinAllChatMessagesRequestBodyChatId'Variants -- ^ 'postUnpinAllChatMessagesRequestBodyChatId'
  -> PostUnpinAllChatMessagesRequestBody
mkPostUnpinAllChatMessagesRequestBody postUnpinAllChatMessagesRequestBodyChatId = PostUnpinAllChatMessagesRequestBody{postUnpinAllChatMessagesRequestBodyChatId = postUnpinAllChatMessagesRequestBodyChatId}
-- | Defines the oneOf schema located at @paths.\/unpinAllChatMessages.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostUnpinAllChatMessagesRequestBodyChatId'Variants =
   PostUnpinAllChatMessagesRequestBodyChatId'Int GHC.Types.Int
  | PostUnpinAllChatMessagesRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostUnpinAllChatMessagesRequestBodyChatId'Variants
    where toJSON (PostUnpinAllChatMessagesRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostUnpinAllChatMessagesRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostUnpinAllChatMessagesRequestBodyChatId'Variants
    where parseJSON val = case (PostUnpinAllChatMessagesRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostUnpinAllChatMessagesRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postUnpinAllChatMessages'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostUnpinAllChatMessagesResponseError' is used.
data PostUnpinAllChatMessagesResponse =
   PostUnpinAllChatMessagesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostUnpinAllChatMessagesResponse200 PostUnpinAllChatMessagesResponseBody200 -- ^ 
  | PostUnpinAllChatMessagesResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/unpinAllChatMessages.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostUnpinAllChatMessagesResponseBody200 = PostUnpinAllChatMessagesResponseBody200 {
  -- | ok
  postUnpinAllChatMessagesResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postUnpinAllChatMessagesResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostUnpinAllChatMessagesResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postUnpinAllChatMessagesResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postUnpinAllChatMessagesResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postUnpinAllChatMessagesResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postUnpinAllChatMessagesResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostUnpinAllChatMessagesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostUnpinAllChatMessagesResponseBody200" (\obj -> (GHC.Base.pure PostUnpinAllChatMessagesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostUnpinAllChatMessagesResponseBody200' with all required fields.
mkPostUnpinAllChatMessagesResponseBody200 :: GHC.Types.Bool -- ^ 'postUnpinAllChatMessagesResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postUnpinAllChatMessagesResponseBody200Result'
  -> PostUnpinAllChatMessagesResponseBody200
mkPostUnpinAllChatMessagesResponseBody200 postUnpinAllChatMessagesResponseBody200Ok postUnpinAllChatMessagesResponseBody200Result = PostUnpinAllChatMessagesResponseBody200{postUnpinAllChatMessagesResponseBody200Ok = postUnpinAllChatMessagesResponseBody200Ok,
                                                                                                                                                                            postUnpinAllChatMessagesResponseBody200Result = postUnpinAllChatMessagesResponseBody200Result}