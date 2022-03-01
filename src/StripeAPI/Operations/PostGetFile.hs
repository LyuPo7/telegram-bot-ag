-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postGetFile
module StripeAPI.Operations.PostGetFile where

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

-- | > POST /getFile
-- 
-- Use this method to get basic info about a file and prepare it for downloading. For the moment, bots can download files of up to 20MB in size. On success, a [File](https:\/\/core.telegram.org\/bots\/api\/\#file) object is returned. The file can then be downloaded via the link \`https:\/\/api.telegram.org\/file\/bot\<token>\/\<file_path>\`, where \`\<file_path>\` is taken from the response. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling [getFile](https:\/\/core.telegram.org\/bots\/api\/\#getfile) again.
postGetFile :: forall m . StripeAPI.Common.MonadHTTP m => PostGetFileRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostGetFileResponse) -- ^ Monadic computation which returns the result of the operation
postGetFile body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostGetFileResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostGetFileResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                    PostGetFileResponseBody200)
                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostGetFileResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getFile") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/getFile.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetFileRequestBody = PostGetFileRequestBody {
  -- | file_id: File identifier to get info about
  postGetFileRequestBodyFileId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetFileRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("file_id" Data.Aeson.Types.ToJSON..= postGetFileRequestBodyFileId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("file_id" Data.Aeson.Types.ToJSON..= postGetFileRequestBodyFileId obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostGetFileRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetFileRequestBody" (\obj -> GHC.Base.pure PostGetFileRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_id"))
-- | Create a new 'PostGetFileRequestBody' with all required fields.
mkPostGetFileRequestBody :: Data.Text.Internal.Text -- ^ 'postGetFileRequestBodyFileId'
  -> PostGetFileRequestBody
mkPostGetFileRequestBody postGetFileRequestBodyFileId = PostGetFileRequestBody{postGetFileRequestBodyFileId = postGetFileRequestBodyFileId}
-- | Represents a response of the operation 'postGetFile'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostGetFileResponseError' is used.
data PostGetFileResponse =
   PostGetFileResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostGetFileResponse200 PostGetFileResponseBody200 -- ^ 
  | PostGetFileResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/getFile.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetFileResponseBody200 = PostGetFileResponseBody200 {
  -- | ok
  postGetFileResponseBody200Ok :: GHC.Types.Bool
  -- | result: This object represents a file ready to be downloaded. The file can be downloaded via the link \`https:\/\/api.telegram.org\/file\/bot\<token>\/\<file_path>\`. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling [getFile](https:\/\/core.telegram.org\/bots\/api\/\#getfile).
  -- 
  -- Maximum file size to download is 20 MB
  , postGetFileResponseBody200Result :: File
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetFileResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postGetFileResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postGetFileResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postGetFileResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postGetFileResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostGetFileResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetFileResponseBody200" (\obj -> (GHC.Base.pure PostGetFileResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostGetFileResponseBody200' with all required fields.
mkPostGetFileResponseBody200 :: GHC.Types.Bool -- ^ 'postGetFileResponseBody200Ok'
  -> File -- ^ 'postGetFileResponseBody200Result'
  -> PostGetFileResponseBody200
mkPostGetFileResponseBody200 postGetFileResponseBody200Ok postGetFileResponseBody200Result = PostGetFileResponseBody200{postGetFileResponseBody200Ok = postGetFileResponseBody200Ok,
                                                                                                                        postGetFileResponseBody200Result = postGetFileResponseBody200Result}
