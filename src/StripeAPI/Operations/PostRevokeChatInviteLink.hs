-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postRevokeChatInviteLink
module StripeAPI.Operations.PostRevokeChatInviteLink where

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

-- | > POST /revokeChatInviteLink
-- 
-- Use this method to revoke an invite link created by the bot. If the primary link is revoked, a new link is automatically generated. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the revoked invite link as [ChatInviteLink](https:\/\/core.telegram.org\/bots\/api\/\#chatinvitelink) object.
postRevokeChatInviteLink :: forall m . StripeAPI.Common.MonadHTTP m => PostRevokeChatInviteLinkRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostRevokeChatInviteLinkResponse) -- ^ Monadic computation which returns the result of the operation
postRevokeChatInviteLink body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostRevokeChatInviteLinkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRevokeChatInviteLinkResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           PostRevokeChatInviteLinkResponseBody200)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRevokeChatInviteLinkResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/revokeChatInviteLink") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/revokeChatInviteLink.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostRevokeChatInviteLinkRequestBody = PostRevokeChatInviteLinkRequestBody {
  -- | chat_id: Unique identifier of the target chat or username of the target channel (in the format \`\@channelusername\`)
  postRevokeChatInviteLinkRequestBodyChatId :: PostRevokeChatInviteLinkRequestBodyChatId'Variants
  -- | invite_link: The invite link to revoke
  , postRevokeChatInviteLinkRequestBodyInviteLink :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostRevokeChatInviteLinkRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postRevokeChatInviteLinkRequestBodyChatId obj : "invite_link" Data.Aeson.Types.ToJSON..= postRevokeChatInviteLinkRequestBodyInviteLink obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postRevokeChatInviteLinkRequestBodyChatId obj) GHC.Base.<> ("invite_link" Data.Aeson.Types.ToJSON..= postRevokeChatInviteLinkRequestBodyInviteLink obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostRevokeChatInviteLinkRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRevokeChatInviteLinkRequestBody" (\obj -> (GHC.Base.pure PostRevokeChatInviteLinkRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invite_link"))
-- | Create a new 'PostRevokeChatInviteLinkRequestBody' with all required fields.
mkPostRevokeChatInviteLinkRequestBody :: PostRevokeChatInviteLinkRequestBodyChatId'Variants -- ^ 'postRevokeChatInviteLinkRequestBodyChatId'
  -> Data.Text.Internal.Text -- ^ 'postRevokeChatInviteLinkRequestBodyInviteLink'
  -> PostRevokeChatInviteLinkRequestBody
mkPostRevokeChatInviteLinkRequestBody postRevokeChatInviteLinkRequestBodyChatId postRevokeChatInviteLinkRequestBodyInviteLink = PostRevokeChatInviteLinkRequestBody{postRevokeChatInviteLinkRequestBodyChatId = postRevokeChatInviteLinkRequestBodyChatId,
                                                                                                                                                                    postRevokeChatInviteLinkRequestBodyInviteLink = postRevokeChatInviteLinkRequestBodyInviteLink}
-- | Defines the oneOf schema located at @paths.\/revokeChatInviteLink.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier of the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostRevokeChatInviteLinkRequestBodyChatId'Variants =
   PostRevokeChatInviteLinkRequestBodyChatId'Int GHC.Types.Int
  | PostRevokeChatInviteLinkRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostRevokeChatInviteLinkRequestBodyChatId'Variants
    where toJSON (PostRevokeChatInviteLinkRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostRevokeChatInviteLinkRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostRevokeChatInviteLinkRequestBodyChatId'Variants
    where parseJSON val = case (PostRevokeChatInviteLinkRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostRevokeChatInviteLinkRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postRevokeChatInviteLink'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostRevokeChatInviteLinkResponseError' is used.
data PostRevokeChatInviteLinkResponse =
   PostRevokeChatInviteLinkResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostRevokeChatInviteLinkResponse200 PostRevokeChatInviteLinkResponseBody200 -- ^ 
  | PostRevokeChatInviteLinkResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/revokeChatInviteLink.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostRevokeChatInviteLinkResponseBody200 = PostRevokeChatInviteLinkResponseBody200 {
  -- | ok
  postRevokeChatInviteLinkResponseBody200Ok :: GHC.Types.Bool
  -- | result: Represents an invite link for a chat.
  , postRevokeChatInviteLinkResponseBody200Result :: ChatInviteLink
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostRevokeChatInviteLinkResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postRevokeChatInviteLinkResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postRevokeChatInviteLinkResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postRevokeChatInviteLinkResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postRevokeChatInviteLinkResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostRevokeChatInviteLinkResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRevokeChatInviteLinkResponseBody200" (\obj -> (GHC.Base.pure PostRevokeChatInviteLinkResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostRevokeChatInviteLinkResponseBody200' with all required fields.
mkPostRevokeChatInviteLinkResponseBody200 :: GHC.Types.Bool -- ^ 'postRevokeChatInviteLinkResponseBody200Ok'
  -> ChatInviteLink -- ^ 'postRevokeChatInviteLinkResponseBody200Result'
  -> PostRevokeChatInviteLinkResponseBody200
mkPostRevokeChatInviteLinkResponseBody200 postRevokeChatInviteLinkResponseBody200Ok postRevokeChatInviteLinkResponseBody200Result = PostRevokeChatInviteLinkResponseBody200{postRevokeChatInviteLinkResponseBody200Ok = postRevokeChatInviteLinkResponseBody200Ok,
                                                                                                                                                                            postRevokeChatInviteLinkResponseBody200Result = postRevokeChatInviteLinkResponseBody200Result}
