-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postDeclineChatJoinRequest
module StripeAPI.Operations.PostDeclineChatJoinRequest where

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

-- | > POST /declineChatJoinRequest
-- 
-- Use this method to decline a chat join request. The bot must be an administrator in the chat for this to work and must have the *can\\_invite\\_users* administrator right. Returns *True* on success.
postDeclineChatJoinRequest :: forall m . StripeAPI.Common.MonadHTTP m => PostDeclineChatJoinRequestRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostDeclineChatJoinRequestResponse) -- ^ Monadic computation which returns the result of the operation
postDeclineChatJoinRequest body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostDeclineChatJoinRequestResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostDeclineChatJoinRequestResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 PostDeclineChatJoinRequestResponseBody200)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostDeclineChatJoinRequestResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/declineChatJoinRequest") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/declineChatJoinRequest.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostDeclineChatJoinRequestRequestBody = PostDeclineChatJoinRequestRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  postDeclineChatJoinRequestRequestBodyChatId :: PostDeclineChatJoinRequestRequestBodyChatId'Variants
  -- | user_id: Unique identifier of the target user
  , postDeclineChatJoinRequestRequestBodyUserId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostDeclineChatJoinRequestRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postDeclineChatJoinRequestRequestBodyChatId obj : "user_id" Data.Aeson.Types.ToJSON..= postDeclineChatJoinRequestRequestBodyUserId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postDeclineChatJoinRequestRequestBodyChatId obj) GHC.Base.<> ("user_id" Data.Aeson.Types.ToJSON..= postDeclineChatJoinRequestRequestBodyUserId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostDeclineChatJoinRequestRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDeclineChatJoinRequestRequestBody" (\obj -> (GHC.Base.pure PostDeclineChatJoinRequestRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_id"))
-- | Create a new 'PostDeclineChatJoinRequestRequestBody' with all required fields.
mkPostDeclineChatJoinRequestRequestBody :: PostDeclineChatJoinRequestRequestBodyChatId'Variants -- ^ 'postDeclineChatJoinRequestRequestBodyChatId'
  -> GHC.Types.Int -- ^ 'postDeclineChatJoinRequestRequestBodyUserId'
  -> PostDeclineChatJoinRequestRequestBody
mkPostDeclineChatJoinRequestRequestBody postDeclineChatJoinRequestRequestBodyChatId postDeclineChatJoinRequestRequestBodyUserId = PostDeclineChatJoinRequestRequestBody{postDeclineChatJoinRequestRequestBodyChatId = postDeclineChatJoinRequestRequestBodyChatId,
                                                                                                                                                                        postDeclineChatJoinRequestRequestBodyUserId = postDeclineChatJoinRequestRequestBodyUserId}
-- | Defines the oneOf schema located at @paths.\/declineChatJoinRequest.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostDeclineChatJoinRequestRequestBodyChatId'Variants =
   PostDeclineChatJoinRequestRequestBodyChatId'Int GHC.Types.Int
  | PostDeclineChatJoinRequestRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostDeclineChatJoinRequestRequestBodyChatId'Variants
    where toJSON (PostDeclineChatJoinRequestRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostDeclineChatJoinRequestRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostDeclineChatJoinRequestRequestBodyChatId'Variants
    where parseJSON val = case (PostDeclineChatJoinRequestRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostDeclineChatJoinRequestRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postDeclineChatJoinRequest'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostDeclineChatJoinRequestResponseError' is used.
data PostDeclineChatJoinRequestResponse =
   PostDeclineChatJoinRequestResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostDeclineChatJoinRequestResponse200 PostDeclineChatJoinRequestResponseBody200 -- ^ 
  | PostDeclineChatJoinRequestResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/declineChatJoinRequest.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostDeclineChatJoinRequestResponseBody200 = PostDeclineChatJoinRequestResponseBody200 {
  -- | ok
  postDeclineChatJoinRequestResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postDeclineChatJoinRequestResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostDeclineChatJoinRequestResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postDeclineChatJoinRequestResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postDeclineChatJoinRequestResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postDeclineChatJoinRequestResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postDeclineChatJoinRequestResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostDeclineChatJoinRequestResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDeclineChatJoinRequestResponseBody200" (\obj -> (GHC.Base.pure PostDeclineChatJoinRequestResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostDeclineChatJoinRequestResponseBody200' with all required fields.
mkPostDeclineChatJoinRequestResponseBody200 :: GHC.Types.Bool -- ^ 'postDeclineChatJoinRequestResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postDeclineChatJoinRequestResponseBody200Result'
  -> PostDeclineChatJoinRequestResponseBody200
mkPostDeclineChatJoinRequestResponseBody200 postDeclineChatJoinRequestResponseBody200Ok postDeclineChatJoinRequestResponseBody200Result = PostDeclineChatJoinRequestResponseBody200{postDeclineChatJoinRequestResponseBody200Ok = postDeclineChatJoinRequestResponseBody200Ok,
                                                                                                                                                                                    postDeclineChatJoinRequestResponseBody200Result = postDeclineChatJoinRequestResponseBody200Result}
