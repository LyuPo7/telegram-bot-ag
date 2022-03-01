-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postGetChatMember
module StripeAPI.Operations.PostGetChatMember where

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

-- | > POST /getChatMember
-- 
-- Use this method to get information about a member of a chat. Returns a [ChatMember](https:\/\/core.telegram.org\/bots\/api\/\#chatmember) object on success.
postGetChatMember :: forall m . StripeAPI.Common.MonadHTTP m => PostGetChatMemberRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostGetChatMemberResponse) -- ^ Monadic computation which returns the result of the operation
postGetChatMember body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostGetChatMemberResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostGetChatMemberResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      PostGetChatMemberResponseBody200)
                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostGetChatMemberResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getChatMember") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/getChatMember.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetChatMemberRequestBody = PostGetChatMemberRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target supergroup or channel (in the format \`\@channelusername\`)
  postGetChatMemberRequestBodyChatId :: PostGetChatMemberRequestBodyChatId'Variants
  -- | user_id: Unique identifier of the target user
  , postGetChatMemberRequestBodyUserId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetChatMemberRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postGetChatMemberRequestBodyChatId obj : "user_id" Data.Aeson.Types.ToJSON..= postGetChatMemberRequestBodyUserId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postGetChatMemberRequestBodyChatId obj) GHC.Base.<> ("user_id" Data.Aeson.Types.ToJSON..= postGetChatMemberRequestBodyUserId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostGetChatMemberRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetChatMemberRequestBody" (\obj -> (GHC.Base.pure PostGetChatMemberRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_id"))
-- | Create a new 'PostGetChatMemberRequestBody' with all required fields.
mkPostGetChatMemberRequestBody :: PostGetChatMemberRequestBodyChatId'Variants -- ^ 'postGetChatMemberRequestBodyChatId'
  -> GHC.Types.Int -- ^ 'postGetChatMemberRequestBodyUserId'
  -> PostGetChatMemberRequestBody
mkPostGetChatMemberRequestBody postGetChatMemberRequestBodyChatId postGetChatMemberRequestBodyUserId = PostGetChatMemberRequestBody{postGetChatMemberRequestBodyChatId = postGetChatMemberRequestBodyChatId,
                                                                                                                                    postGetChatMemberRequestBodyUserId = postGetChatMemberRequestBodyUserId}
-- | Defines the oneOf schema located at @paths.\/getChatMember.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target supergroup or channel (in the format \`\@channelusername\`)
data PostGetChatMemberRequestBodyChatId'Variants =
   PostGetChatMemberRequestBodyChatId'Int GHC.Types.Int
  | PostGetChatMemberRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetChatMemberRequestBodyChatId'Variants
    where toJSON (PostGetChatMemberRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostGetChatMemberRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostGetChatMemberRequestBodyChatId'Variants
    where parseJSON val = case (PostGetChatMemberRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostGetChatMemberRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postGetChatMember'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostGetChatMemberResponseError' is used.
data PostGetChatMemberResponse =
   PostGetChatMemberResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostGetChatMemberResponse200 PostGetChatMemberResponseBody200 -- ^ 
  | PostGetChatMemberResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/getChatMember.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetChatMemberResponseBody200 = PostGetChatMemberResponseBody200 {
  -- | ok
  postGetChatMemberResponseBody200Ok :: GHC.Types.Bool
  -- | result: This object contains information about one member of a chat. Currently, the following 6 types of chat members are supported:
  , postGetChatMemberResponseBody200Result :: ChatMember
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetChatMemberResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postGetChatMemberResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postGetChatMemberResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postGetChatMemberResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postGetChatMemberResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostGetChatMemberResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetChatMemberResponseBody200" (\obj -> (GHC.Base.pure PostGetChatMemberResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostGetChatMemberResponseBody200' with all required fields.
mkPostGetChatMemberResponseBody200 :: GHC.Types.Bool -- ^ 'postGetChatMemberResponseBody200Ok'
  -> ChatMember -- ^ 'postGetChatMemberResponseBody200Result'
  -> PostGetChatMemberResponseBody200
mkPostGetChatMemberResponseBody200 postGetChatMemberResponseBody200Ok postGetChatMemberResponseBody200Result = PostGetChatMemberResponseBody200{postGetChatMemberResponseBody200Ok = postGetChatMemberResponseBody200Ok,
                                                                                                                                                postGetChatMemberResponseBody200Result = postGetChatMemberResponseBody200Result}