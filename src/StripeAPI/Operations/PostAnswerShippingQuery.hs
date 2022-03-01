-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postAnswerShippingQuery
module StripeAPI.Operations.PostAnswerShippingQuery where

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

-- | > POST /answerShippingQuery
-- 
-- If you sent an invoice requesting a shipping address and the parameter *is\\_flexible* was specified, the Bot API will send an [Update](https:\/\/core.telegram.org\/bots\/api\/\#update) with a *shipping\\_query* field to the bot. Use this method to reply to shipping queries. On success, *True* is returned.
postAnswerShippingQuery :: forall m . StripeAPI.Common.MonadHTTP m => PostAnswerShippingQueryRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAnswerShippingQueryResponse) -- ^ Monadic computation which returns the result of the operation
postAnswerShippingQuery body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAnswerShippingQueryResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerShippingQueryResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        PostAnswerShippingQueryResponseBody200)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerShippingQueryResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/answerShippingQuery") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/answerShippingQuery.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostAnswerShippingQueryRequestBody = PostAnswerShippingQueryRequestBody {
  -- | error_message: Required if *ok* is False. Error message in human readable form that explains why it is impossible to complete the order (e.g. \"Sorry, delivery to your desired address is unavailable\'). Telegram will display this message to the user.
  postAnswerShippingQueryRequestBodyErrorMessage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ok: Specify *True* if delivery to the specified address is possible and False if there are any problems (for example, if delivery to the specified address is not possible)
  , postAnswerShippingQueryRequestBodyOk :: GHC.Types.Bool
  -- | shipping_options: Required if *ok* is *True*. A JSON-serialized array of available shipping options.
  , postAnswerShippingQueryRequestBodyShippingOptions :: (GHC.Maybe.Maybe ([ShippingOption]))
  -- | shipping_query_id: Unique identifier for the query to be answered
  , postAnswerShippingQueryRequestBodyShippingQueryId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAnswerShippingQueryRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("error_message" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryRequestBodyErrorMessage obj : "ok" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryRequestBodyOk obj : "shipping_options" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryRequestBodyShippingOptions obj : "shipping_query_id" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryRequestBodyShippingQueryId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error_message" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryRequestBodyErrorMessage obj) GHC.Base.<> (("ok" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryRequestBodyOk obj) GHC.Base.<> (("shipping_options" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryRequestBodyShippingOptions obj) GHC.Base.<> ("shipping_query_id" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryRequestBodyShippingQueryId obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAnswerShippingQueryRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAnswerShippingQueryRequestBody" (\obj -> (((GHC.Base.pure PostAnswerShippingQueryRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "error_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "shipping_query_id"))
-- | Create a new 'PostAnswerShippingQueryRequestBody' with all required fields.
mkPostAnswerShippingQueryRequestBody :: GHC.Types.Bool -- ^ 'postAnswerShippingQueryRequestBodyOk'
  -> Data.Text.Internal.Text -- ^ 'postAnswerShippingQueryRequestBodyShippingQueryId'
  -> PostAnswerShippingQueryRequestBody
mkPostAnswerShippingQueryRequestBody postAnswerShippingQueryRequestBodyOk postAnswerShippingQueryRequestBodyShippingQueryId = PostAnswerShippingQueryRequestBody{postAnswerShippingQueryRequestBodyErrorMessage = GHC.Maybe.Nothing,
                                                                                                                                                                 postAnswerShippingQueryRequestBodyOk = postAnswerShippingQueryRequestBodyOk,
                                                                                                                                                                 postAnswerShippingQueryRequestBodyShippingOptions = GHC.Maybe.Nothing,
                                                                                                                                                                 postAnswerShippingQueryRequestBodyShippingQueryId = postAnswerShippingQueryRequestBodyShippingQueryId}
-- | Represents a response of the operation 'postAnswerShippingQuery'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAnswerShippingQueryResponseError' is used.
data PostAnswerShippingQueryResponse =
   PostAnswerShippingQueryResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostAnswerShippingQueryResponse200 PostAnswerShippingQueryResponseBody200 -- ^ 
  | PostAnswerShippingQueryResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/answerShippingQuery.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostAnswerShippingQueryResponseBody200 = PostAnswerShippingQueryResponseBody200 {
  -- | ok
  postAnswerShippingQueryResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postAnswerShippingQueryResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAnswerShippingQueryResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postAnswerShippingQueryResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAnswerShippingQueryResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAnswerShippingQueryResponseBody200" (\obj -> (GHC.Base.pure PostAnswerShippingQueryResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostAnswerShippingQueryResponseBody200' with all required fields.
mkPostAnswerShippingQueryResponseBody200 :: GHC.Types.Bool -- ^ 'postAnswerShippingQueryResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postAnswerShippingQueryResponseBody200Result'
  -> PostAnswerShippingQueryResponseBody200
mkPostAnswerShippingQueryResponseBody200 postAnswerShippingQueryResponseBody200Ok postAnswerShippingQueryResponseBody200Result = PostAnswerShippingQueryResponseBody200{postAnswerShippingQueryResponseBody200Ok = postAnswerShippingQueryResponseBody200Ok,
                                                                                                                                                                        postAnswerShippingQueryResponseBody200Result = postAnswerShippingQueryResponseBody200Result}