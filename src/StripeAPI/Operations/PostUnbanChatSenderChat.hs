-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postUnbanChatSenderChat
module StripeAPI.Operations.PostUnbanChatSenderChat where

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

-- | > POST /unbanChatSenderChat
-- 
-- Use this method to unban a previously banned channel chat in a supergroup or channel. The bot must be an administrator for this to work and must have the appropriate administrator rights. Returns *True* on success.
postUnbanChatSenderChat :: forall m . StripeAPI.Common.MonadHTTP m => PostUnbanChatSenderChatRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostUnbanChatSenderChatResponse) -- ^ Monadic computation which returns the result of the operation
postUnbanChatSenderChat body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostUnbanChatSenderChatResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostUnbanChatSenderChatResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        PostUnbanChatSenderChatResponseBody200)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostUnbanChatSenderChatResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/unbanChatSenderChat") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/unbanChatSenderChat.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostUnbanChatSenderChatRequestBody = PostUnbanChatSenderChatRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  postUnbanChatSenderChatRequestBodyChatId :: PostUnbanChatSenderChatRequestBodyChatId'Variants
  -- | sender_chat_id: Unique identifier of the target sender chat
  , postUnbanChatSenderChatRequestBodySenderChatId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostUnbanChatSenderChatRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postUnbanChatSenderChatRequestBodyChatId obj : "sender_chat_id" Data.Aeson.Types.ToJSON..= postUnbanChatSenderChatRequestBodySenderChatId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postUnbanChatSenderChatRequestBodyChatId obj) GHC.Base.<> ("sender_chat_id" Data.Aeson.Types.ToJSON..= postUnbanChatSenderChatRequestBodySenderChatId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostUnbanChatSenderChatRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostUnbanChatSenderChatRequestBody" (\obj -> (GHC.Base.pure PostUnbanChatSenderChatRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sender_chat_id"))
-- | Create a new 'PostUnbanChatSenderChatRequestBody' with all required fields.
mkPostUnbanChatSenderChatRequestBody :: PostUnbanChatSenderChatRequestBodyChatId'Variants -- ^ 'postUnbanChatSenderChatRequestBodyChatId'
  -> GHC.Types.Int -- ^ 'postUnbanChatSenderChatRequestBodySenderChatId'
  -> PostUnbanChatSenderChatRequestBody
mkPostUnbanChatSenderChatRequestBody postUnbanChatSenderChatRequestBodyChatId postUnbanChatSenderChatRequestBodySenderChatId = PostUnbanChatSenderChatRequestBody{postUnbanChatSenderChatRequestBodyChatId = postUnbanChatSenderChatRequestBodyChatId,
                                                                                                                                                                  postUnbanChatSenderChatRequestBodySenderChatId = postUnbanChatSenderChatRequestBodySenderChatId}
-- | Defines the oneOf schema located at @paths.\/unbanChatSenderChat.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostUnbanChatSenderChatRequestBodyChatId'Variants =
   PostUnbanChatSenderChatRequestBodyChatId'Int GHC.Types.Int
  | PostUnbanChatSenderChatRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostUnbanChatSenderChatRequestBodyChatId'Variants
    where toJSON (PostUnbanChatSenderChatRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostUnbanChatSenderChatRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostUnbanChatSenderChatRequestBodyChatId'Variants
    where parseJSON val = case (PostUnbanChatSenderChatRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostUnbanChatSenderChatRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postUnbanChatSenderChat'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostUnbanChatSenderChatResponseError' is used.
data PostUnbanChatSenderChatResponse =
   PostUnbanChatSenderChatResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostUnbanChatSenderChatResponse200 PostUnbanChatSenderChatResponseBody200 -- ^ 
  | PostUnbanChatSenderChatResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/unbanChatSenderChat.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostUnbanChatSenderChatResponseBody200 = PostUnbanChatSenderChatResponseBody200 {
  -- | ok
  postUnbanChatSenderChatResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postUnbanChatSenderChatResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostUnbanChatSenderChatResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postUnbanChatSenderChatResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postUnbanChatSenderChatResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postUnbanChatSenderChatResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postUnbanChatSenderChatResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostUnbanChatSenderChatResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostUnbanChatSenderChatResponseBody200" (\obj -> (GHC.Base.pure PostUnbanChatSenderChatResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostUnbanChatSenderChatResponseBody200' with all required fields.
mkPostUnbanChatSenderChatResponseBody200 :: GHC.Types.Bool -- ^ 'postUnbanChatSenderChatResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postUnbanChatSenderChatResponseBody200Result'
  -> PostUnbanChatSenderChatResponseBody200
mkPostUnbanChatSenderChatResponseBody200 postUnbanChatSenderChatResponseBody200Ok postUnbanChatSenderChatResponseBody200Result = PostUnbanChatSenderChatResponseBody200{postUnbanChatSenderChatResponseBody200Ok = postUnbanChatSenderChatResponseBody200Ok,
                                                                                                                                                                        postUnbanChatSenderChatResponseBody200Result = postUnbanChatSenderChatResponseBody200Result}
