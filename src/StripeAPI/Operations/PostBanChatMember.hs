-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postBanChatMember
module StripeAPI.Operations.PostBanChatMember where

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

-- | > POST /banChatMember
-- 
-- Use this method to ban a user in a group, a supergroup or a channel. In the case of supergroups and channels, the user will not be able to return to the chat on their own using invite links, etc., unless [unbanned](https:\/\/core.telegram.org\/bots\/api\/\#unbanchatmember) first. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns *True* on success.
postBanChatMember :: forall m . StripeAPI.Common.MonadHTTP m => PostBanChatMemberRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostBanChatMemberResponse) -- ^ Monadic computation which returns the result of the operation
postBanChatMember body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostBanChatMemberResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostBanChatMemberResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      PostBanChatMemberResponseBody200)
                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostBanChatMemberResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/banChatMember") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/banChatMember.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostBanChatMemberRequestBody = PostBanChatMemberRequestBody {
  -- | chat_id: Unique identifier for the target group or username of the target supergroup or channel (in the format \`\@channelusername\`)
  postBanChatMemberRequestBodyChatId :: PostBanChatMemberRequestBodyChatId'Variants
  -- | revoke_messages: Pass *True* to delete all messages from the chat for the user that is being removed. If *False*, the user will be able to see messages in the group that were sent before the user was removed. Always *True* for supergroups and channels.
  , postBanChatMemberRequestBodyRevokeMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | until_date: Date when the user will be unbanned, unix time. If user is banned for more than 366 days or less than 30 seconds from the current time they are considered to be banned forever. Applied for supergroups and channels only.
  , postBanChatMemberRequestBodyUntilDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | user_id: Unique identifier of the target user
  , postBanChatMemberRequestBodyUserId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostBanChatMemberRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postBanChatMemberRequestBodyChatId obj : "revoke_messages" Data.Aeson.Types.ToJSON..= postBanChatMemberRequestBodyRevokeMessages obj : "until_date" Data.Aeson.Types.ToJSON..= postBanChatMemberRequestBodyUntilDate obj : "user_id" Data.Aeson.Types.ToJSON..= postBanChatMemberRequestBodyUserId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postBanChatMemberRequestBodyChatId obj) GHC.Base.<> (("revoke_messages" Data.Aeson.Types.ToJSON..= postBanChatMemberRequestBodyRevokeMessages obj) GHC.Base.<> (("until_date" Data.Aeson.Types.ToJSON..= postBanChatMemberRequestBodyUntilDate obj) GHC.Base.<> ("user_id" Data.Aeson.Types.ToJSON..= postBanChatMemberRequestBodyUserId obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostBanChatMemberRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostBanChatMemberRequestBody" (\obj -> (((GHC.Base.pure PostBanChatMemberRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "revoke_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "until_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_id"))
-- | Create a new 'PostBanChatMemberRequestBody' with all required fields.
mkPostBanChatMemberRequestBody :: PostBanChatMemberRequestBodyChatId'Variants -- ^ 'postBanChatMemberRequestBodyChatId'
  -> GHC.Types.Int -- ^ 'postBanChatMemberRequestBodyUserId'
  -> PostBanChatMemberRequestBody
mkPostBanChatMemberRequestBody postBanChatMemberRequestBodyChatId postBanChatMemberRequestBodyUserId = PostBanChatMemberRequestBody{postBanChatMemberRequestBodyChatId = postBanChatMemberRequestBodyChatId,
                                                                                                                                    postBanChatMemberRequestBodyRevokeMessages = GHC.Maybe.Nothing,
                                                                                                                                    postBanChatMemberRequestBodyUntilDate = GHC.Maybe.Nothing,
                                                                                                                                    postBanChatMemberRequestBodyUserId = postBanChatMemberRequestBodyUserId}
-- | Defines the oneOf schema located at @paths.\/banChatMember.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target group or username of the target supergroup or channel (in the format \`\@channelusername\`)
data PostBanChatMemberRequestBodyChatId'Variants =
   PostBanChatMemberRequestBodyChatId'Int GHC.Types.Int
  | PostBanChatMemberRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostBanChatMemberRequestBodyChatId'Variants
    where toJSON (PostBanChatMemberRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostBanChatMemberRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostBanChatMemberRequestBodyChatId'Variants
    where parseJSON val = case (PostBanChatMemberRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostBanChatMemberRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postBanChatMember'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostBanChatMemberResponseError' is used.
data PostBanChatMemberResponse =
   PostBanChatMemberResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostBanChatMemberResponse200 PostBanChatMemberResponseBody200 -- ^ 
  | PostBanChatMemberResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/banChatMember.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostBanChatMemberResponseBody200 = PostBanChatMemberResponseBody200 {
  -- | ok
  postBanChatMemberResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postBanChatMemberResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostBanChatMemberResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postBanChatMemberResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postBanChatMemberResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postBanChatMemberResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postBanChatMemberResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostBanChatMemberResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostBanChatMemberResponseBody200" (\obj -> (GHC.Base.pure PostBanChatMemberResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostBanChatMemberResponseBody200' with all required fields.
mkPostBanChatMemberResponseBody200 :: GHC.Types.Bool -- ^ 'postBanChatMemberResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postBanChatMemberResponseBody200Result'
  -> PostBanChatMemberResponseBody200
mkPostBanChatMemberResponseBody200 postBanChatMemberResponseBody200Ok postBanChatMemberResponseBody200Result = PostBanChatMemberResponseBody200{postBanChatMemberResponseBody200Ok = postBanChatMemberResponseBody200Ok,
                                                                                                                                                postBanChatMemberResponseBody200Result = postBanChatMemberResponseBody200Result}