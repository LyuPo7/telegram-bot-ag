-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postGetChatAdministrators
module StripeAPI.Operations.PostGetChatAdministrators where

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

-- | > POST /getChatAdministrators
-- 
-- Use this method to get a list of administrators in a chat. On success, returns an Array of [ChatMember](https:\/\/core.telegram.org\/bots\/api\/\#chatmember) objects that contains information about all chat administrators except other bots. If the chat is a group or a supergroup and no administrators were appointed, only the creator will be returned.
postGetChatAdministrators :: forall m . StripeAPI.Common.MonadHTTP m => PostGetChatAdministratorsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostGetChatAdministratorsResponse) -- ^ Monadic computation which returns the result of the operation
postGetChatAdministrators body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostGetChatAdministratorsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostGetChatAdministratorsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              PostGetChatAdministratorsResponseBody200)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostGetChatAdministratorsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getChatAdministrators") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/getChatAdministrators.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetChatAdministratorsRequestBody = PostGetChatAdministratorsRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target supergroup or channel (in the format \`\@channelusername\`)
  postGetChatAdministratorsRequestBodyChatId :: PostGetChatAdministratorsRequestBodyChatId'Variants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetChatAdministratorsRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postGetChatAdministratorsRequestBodyChatId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("chat_id" Data.Aeson.Types.ToJSON..= postGetChatAdministratorsRequestBodyChatId obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostGetChatAdministratorsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetChatAdministratorsRequestBody" (\obj -> GHC.Base.pure PostGetChatAdministratorsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id"))
-- | Create a new 'PostGetChatAdministratorsRequestBody' with all required fields.
mkPostGetChatAdministratorsRequestBody :: PostGetChatAdministratorsRequestBodyChatId'Variants -- ^ 'postGetChatAdministratorsRequestBodyChatId'
  -> PostGetChatAdministratorsRequestBody
mkPostGetChatAdministratorsRequestBody postGetChatAdministratorsRequestBodyChatId = PostGetChatAdministratorsRequestBody{postGetChatAdministratorsRequestBodyChatId = postGetChatAdministratorsRequestBodyChatId}
-- | Defines the oneOf schema located at @paths.\/getChatAdministrators.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target supergroup or channel (in the format \`\@channelusername\`)
data PostGetChatAdministratorsRequestBodyChatId'Variants =
   PostGetChatAdministratorsRequestBodyChatId'Int GHC.Types.Int
  | PostGetChatAdministratorsRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetChatAdministratorsRequestBodyChatId'Variants
    where toJSON (PostGetChatAdministratorsRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostGetChatAdministratorsRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostGetChatAdministratorsRequestBodyChatId'Variants
    where parseJSON val = case (PostGetChatAdministratorsRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostGetChatAdministratorsRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postGetChatAdministrators'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostGetChatAdministratorsResponseError' is used.
data PostGetChatAdministratorsResponse =
   PostGetChatAdministratorsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostGetChatAdministratorsResponse200 PostGetChatAdministratorsResponseBody200 -- ^ 
  | PostGetChatAdministratorsResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/getChatAdministrators.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetChatAdministratorsResponseBody200 = PostGetChatAdministratorsResponseBody200 {
  -- | ok
  postGetChatAdministratorsResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postGetChatAdministratorsResponseBody200Result :: ([ChatMember])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetChatAdministratorsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postGetChatAdministratorsResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postGetChatAdministratorsResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postGetChatAdministratorsResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postGetChatAdministratorsResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostGetChatAdministratorsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetChatAdministratorsResponseBody200" (\obj -> (GHC.Base.pure PostGetChatAdministratorsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostGetChatAdministratorsResponseBody200' with all required fields.
mkPostGetChatAdministratorsResponseBody200 :: GHC.Types.Bool -- ^ 'postGetChatAdministratorsResponseBody200Ok'
  -> [ChatMember] -- ^ 'postGetChatAdministratorsResponseBody200Result'
  -> PostGetChatAdministratorsResponseBody200
mkPostGetChatAdministratorsResponseBody200 postGetChatAdministratorsResponseBody200Ok postGetChatAdministratorsResponseBody200Result = PostGetChatAdministratorsResponseBody200{postGetChatAdministratorsResponseBody200Ok = postGetChatAdministratorsResponseBody200Ok,
                                                                                                                                                                                postGetChatAdministratorsResponseBody200Result = postGetChatAdministratorsResponseBody200Result}
