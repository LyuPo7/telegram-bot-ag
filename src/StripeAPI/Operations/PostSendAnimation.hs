-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postSendAnimation
module StripeAPI.Operations.PostSendAnimation where

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

-- | > POST /sendAnimation
-- 
-- Use this method to send animation files (GIF or H.264\/MPEG-4 AVC video without sound). On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned. Bots can currently send animation files of up to 50 MB in size, this limit may be changed in the future.
postSendAnimation :: forall m . StripeAPI.Common.MonadHTTP m => StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostSendAnimationResponse) -- ^ Monadic computation which returns the result of the operation
postSendAnimation = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSendAnimationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendAnimationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 PostSendAnimationResponseBody200)
                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendAnimationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendAnimation") GHC.Base.mempty)
-- | Represents a response of the operation 'postSendAnimation'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSendAnimationResponseError' is used.
data PostSendAnimationResponse =
   PostSendAnimationResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSendAnimationResponse200 PostSendAnimationResponseBody200 -- ^ 
  | PostSendAnimationResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/sendAnimation.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendAnimationResponseBody200 = PostSendAnimationResponseBody200 {
  -- | ok
  postSendAnimationResponseBody200Ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , postSendAnimationResponseBody200Result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendAnimationResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postSendAnimationResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postSendAnimationResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postSendAnimationResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postSendAnimationResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendAnimationResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendAnimationResponseBody200" (\obj -> (GHC.Base.pure PostSendAnimationResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSendAnimationResponseBody200' with all required fields.
mkPostSendAnimationResponseBody200 :: GHC.Types.Bool -- ^ 'postSendAnimationResponseBody200Ok'
  -> Message -- ^ 'postSendAnimationResponseBody200Result'
  -> PostSendAnimationResponseBody200
mkPostSendAnimationResponseBody200 postSendAnimationResponseBody200Ok postSendAnimationResponseBody200Result = PostSendAnimationResponseBody200{postSendAnimationResponseBody200Ok = postSendAnimationResponseBody200Ok,
                                                                                                                                                postSendAnimationResponseBody200Result = postSendAnimationResponseBody200Result}