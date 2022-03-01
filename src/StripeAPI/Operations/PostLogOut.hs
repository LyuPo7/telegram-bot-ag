-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postLogOut
module StripeAPI.Operations.PostLogOut where

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

-- | > POST /logOut
-- 
-- Use this method to log out from the cloud Bot API server before launching the bot locally. You **must** log out the bot before running it locally, otherwise there is no guarantee that the bot will receive updates. After a successful call, you can immediately log in on a local server, but will not be able to log in back to the cloud Bot API server for 10 minutes. Returns *True* on success. Requires no parameters.
postLogOut :: forall m . StripeAPI.Common.MonadHTTP m => StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostLogOutResponse) -- ^ Monadic computation which returns the result of the operation
postLogOut = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostLogOutResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostLogOutResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            PostLogOutResponseBody200)
                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostLogOutResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/logOut") GHC.Base.mempty)
-- | Represents a response of the operation 'postLogOut'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostLogOutResponseError' is used.
data PostLogOutResponse =
   PostLogOutResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostLogOutResponse200 PostLogOutResponseBody200 -- ^ 
  | PostLogOutResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/logOut.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostLogOutResponseBody200 = PostLogOutResponseBody200 {
  -- | ok
  postLogOutResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postLogOutResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLogOutResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postLogOutResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postLogOutResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postLogOutResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postLogOutResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLogOutResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLogOutResponseBody200" (\obj -> (GHC.Base.pure PostLogOutResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostLogOutResponseBody200' with all required fields.
mkPostLogOutResponseBody200 :: GHC.Types.Bool -- ^ 'postLogOutResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postLogOutResponseBody200Result'
  -> PostLogOutResponseBody200
mkPostLogOutResponseBody200 postLogOutResponseBody200Ok postLogOutResponseBody200Result = PostLogOutResponseBody200{postLogOutResponseBody200Ok = postLogOutResponseBody200Ok,
                                                                                                                    postLogOutResponseBody200Result = postLogOutResponseBody200Result}