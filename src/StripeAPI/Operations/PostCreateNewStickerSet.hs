-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postCreateNewStickerSet
module StripeAPI.Operations.PostCreateNewStickerSet where

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

-- | > POST /createNewStickerSet
-- 
-- Use this method to create a new sticker set owned by a user. The bot will be able to edit the sticker set thus created. You **must** use exactly one of the fields *png\\_sticker*, *tgs\\_sticker*, or *webm\\_sticker*. Returns *True* on success.
postCreateNewStickerSet :: forall m . StripeAPI.Common.MonadHTTP m => StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCreateNewStickerSetResponse) -- ^ Monadic computation which returns the result of the operation
postCreateNewStickerSet = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCreateNewStickerSetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCreateNewStickerSetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                   PostCreateNewStickerSetResponseBody200)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCreateNewStickerSetResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/createNewStickerSet") GHC.Base.mempty)
-- | Represents a response of the operation 'postCreateNewStickerSet'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCreateNewStickerSetResponseError' is used.
data PostCreateNewStickerSetResponse =
   PostCreateNewStickerSetResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostCreateNewStickerSetResponse200 PostCreateNewStickerSetResponseBody200 -- ^ 
  | PostCreateNewStickerSetResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/createNewStickerSet.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostCreateNewStickerSetResponseBody200 = PostCreateNewStickerSetResponseBody200 {
  -- | ok
  postCreateNewStickerSetResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postCreateNewStickerSetResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCreateNewStickerSetResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postCreateNewStickerSetResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postCreateNewStickerSetResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postCreateNewStickerSetResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postCreateNewStickerSetResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreateNewStickerSetResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreateNewStickerSetResponseBody200" (\obj -> (GHC.Base.pure PostCreateNewStickerSetResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostCreateNewStickerSetResponseBody200' with all required fields.
mkPostCreateNewStickerSetResponseBody200 :: GHC.Types.Bool -- ^ 'postCreateNewStickerSetResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postCreateNewStickerSetResponseBody200Result'
  -> PostCreateNewStickerSetResponseBody200
mkPostCreateNewStickerSetResponseBody200 postCreateNewStickerSetResponseBody200Ok postCreateNewStickerSetResponseBody200Result = PostCreateNewStickerSetResponseBody200{postCreateNewStickerSetResponseBody200Ok = postCreateNewStickerSetResponseBody200Ok,
                                                                                                                                                                        postCreateNewStickerSetResponseBody200Result = postCreateNewStickerSetResponseBody200Result}
