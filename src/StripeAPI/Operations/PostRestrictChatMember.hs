-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postRestrictChatMember
module StripeAPI.Operations.PostRestrictChatMember where

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

-- | > POST /restrictChatMember
-- 
-- Use this method to restrict a user in a supergroup. The bot must be an administrator in the supergroup for this to work and must have the appropriate administrator rights. Pass *True* for all permissions to lift restrictions from a user. Returns *True* on success.
postRestrictChatMember :: forall m . StripeAPI.Common.MonadHTTP m => PostRestrictChatMemberRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostRestrictChatMemberResponse) -- ^ Monadic computation which returns the result of the operation
postRestrictChatMember body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostRestrictChatMemberResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostRestrictChatMemberResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     PostRestrictChatMemberResponseBody200)
                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostRestrictChatMemberResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/restrictChatMember") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/restrictChatMember.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostRestrictChatMemberRequestBody = PostRestrictChatMemberRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target supergroup (in the format \`\@supergroupusername\`)
  postRestrictChatMemberRequestBodyChatId :: PostRestrictChatMemberRequestBodyChatId'Variants
  -- | permissions: Describes actions that a non-administrator user is allowed to take in a chat.
  , postRestrictChatMemberRequestBodyPermissions :: ChatPermissions
  -- | until_date: Date when restrictions will be lifted for the user, unix time. If user is restricted for more than 366 days or less than 30 seconds from the current time, they are considered to be restricted forever
  , postRestrictChatMemberRequestBodyUntilDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | user_id: Unique identifier of the target user
  , postRestrictChatMemberRequestBodyUserId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostRestrictChatMemberRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postRestrictChatMemberRequestBodyChatId obj : "permissions" Data.Aeson.Types.ToJSON..= postRestrictChatMemberRequestBodyPermissions obj : "until_date" Data.Aeson.Types.ToJSON..= postRestrictChatMemberRequestBodyUntilDate obj : "user_id" Data.Aeson.Types.ToJSON..= postRestrictChatMemberRequestBodyUserId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postRestrictChatMemberRequestBodyChatId obj) GHC.Base.<> (("permissions" Data.Aeson.Types.ToJSON..= postRestrictChatMemberRequestBodyPermissions obj) GHC.Base.<> (("until_date" Data.Aeson.Types.ToJSON..= postRestrictChatMemberRequestBodyUntilDate obj) GHC.Base.<> ("user_id" Data.Aeson.Types.ToJSON..= postRestrictChatMemberRequestBodyUserId obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostRestrictChatMemberRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRestrictChatMemberRequestBody" (\obj -> (((GHC.Base.pure PostRestrictChatMemberRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "permissions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "until_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_id"))
-- | Create a new 'PostRestrictChatMemberRequestBody' with all required fields.
mkPostRestrictChatMemberRequestBody :: PostRestrictChatMemberRequestBodyChatId'Variants -- ^ 'postRestrictChatMemberRequestBodyChatId'
  -> ChatPermissions -- ^ 'postRestrictChatMemberRequestBodyPermissions'
  -> GHC.Types.Int -- ^ 'postRestrictChatMemberRequestBodyUserId'
  -> PostRestrictChatMemberRequestBody
mkPostRestrictChatMemberRequestBody postRestrictChatMemberRequestBodyChatId postRestrictChatMemberRequestBodyPermissions postRestrictChatMemberRequestBodyUserId = PostRestrictChatMemberRequestBody{postRestrictChatMemberRequestBodyChatId = postRestrictChatMemberRequestBodyChatId,
                                                                                                                                                                                                     postRestrictChatMemberRequestBodyPermissions = postRestrictChatMemberRequestBodyPermissions,
                                                                                                                                                                                                     postRestrictChatMemberRequestBodyUntilDate = GHC.Maybe.Nothing,
                                                                                                                                                                                                     postRestrictChatMemberRequestBodyUserId = postRestrictChatMemberRequestBodyUserId}
-- | Defines the oneOf schema located at @paths.\/restrictChatMember.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target supergroup (in the format \`\@supergroupusername\`)
data PostRestrictChatMemberRequestBodyChatId'Variants =
   PostRestrictChatMemberRequestBodyChatId'Int GHC.Types.Int
  | PostRestrictChatMemberRequestBodyChatId'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostRestrictChatMemberRequestBodyChatId'Variants
    where toJSON (PostRestrictChatMemberRequestBodyChatId'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostRestrictChatMemberRequestBodyChatId'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostRestrictChatMemberRequestBodyChatId'Variants
    where parseJSON val = case (PostRestrictChatMemberRequestBodyChatId'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostRestrictChatMemberRequestBodyChatId'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postRestrictChatMember'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostRestrictChatMemberResponseError' is used.
data PostRestrictChatMemberResponse =
   PostRestrictChatMemberResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostRestrictChatMemberResponse200 PostRestrictChatMemberResponseBody200 -- ^ 
  | PostRestrictChatMemberResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/restrictChatMember.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostRestrictChatMemberResponseBody200 = PostRestrictChatMemberResponseBody200 {
  -- | ok
  postRestrictChatMemberResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postRestrictChatMemberResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostRestrictChatMemberResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postRestrictChatMemberResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postRestrictChatMemberResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postRestrictChatMemberResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postRestrictChatMemberResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostRestrictChatMemberResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRestrictChatMemberResponseBody200" (\obj -> (GHC.Base.pure PostRestrictChatMemberResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostRestrictChatMemberResponseBody200' with all required fields.
mkPostRestrictChatMemberResponseBody200 :: GHC.Types.Bool -- ^ 'postRestrictChatMemberResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postRestrictChatMemberResponseBody200Result'
  -> PostRestrictChatMemberResponseBody200
mkPostRestrictChatMemberResponseBody200 postRestrictChatMemberResponseBody200Ok postRestrictChatMemberResponseBody200Result = PostRestrictChatMemberResponseBody200{postRestrictChatMemberResponseBody200Ok = postRestrictChatMemberResponseBody200Ok,
                                                                                                                                                                    postRestrictChatMemberResponseBody200Result = postRestrictChatMemberResponseBody200Result}
