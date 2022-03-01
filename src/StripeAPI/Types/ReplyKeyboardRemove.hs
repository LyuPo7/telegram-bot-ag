-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ReplyKeyboardRemove
module StripeAPI.Types.ReplyKeyboardRemove where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias

-- | Defines the object schema located at @components.schemas.ReplyKeyboardRemove@ in the specification.
-- 
-- Upon receiving a message with this object, Telegram clients will remove the current custom keyboard and display the default letter-keyboard. By default, custom keyboards are displayed until a new keyboard is sent by a bot. An exception is made for one-time keyboards that are hidden immediately after the user presses a button (see [ReplyKeyboardMarkup](https:\/\/core.telegram.org\/bots\/api\/\#replykeyboardmarkup)).
data ReplyKeyboardRemove = ReplyKeyboardRemove {
  -- | remove_keyboard: Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use *one\\_time\\_keyboard* in [ReplyKeyboardMarkup](https:\/\/core.telegram.org\/bots\/api\/\#replykeyboardmarkup))
  replyKeyboardRemoveRemoveKeyboard :: GHC.Types.Bool
  -- | selective: *Optional*. Use this parameter if you want to remove the keyboard for specific users only. Targets: 1) users that are \@mentioned in the *text* of the [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) object; 2) if the bot\'s message is a reply (has *reply\\_to\\_message\\_id*), sender of the original message.  
  -- 
  -- *Example:* A user votes in a poll, bot returns confirmation message in reply to the vote and removes the keyboard for that user, while still showing the keyboard with poll options to users who haven\'t voted yet.
  , replyKeyboardRemoveSelective :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ReplyKeyboardRemove
    where toJSON obj = Data.Aeson.Types.Internal.object ("remove_keyboard" Data.Aeson.Types.ToJSON..= replyKeyboardRemoveRemoveKeyboard obj : "selective" Data.Aeson.Types.ToJSON..= replyKeyboardRemoveSelective obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("remove_keyboard" Data.Aeson.Types.ToJSON..= replyKeyboardRemoveRemoveKeyboard obj) GHC.Base.<> ("selective" Data.Aeson.Types.ToJSON..= replyKeyboardRemoveSelective obj))
instance Data.Aeson.Types.FromJSON.FromJSON ReplyKeyboardRemove
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ReplyKeyboardRemove" (\obj -> (GHC.Base.pure ReplyKeyboardRemove GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "remove_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selective"))
-- | Create a new 'ReplyKeyboardRemove' with all required fields.
mkReplyKeyboardRemove :: GHC.Types.Bool -- ^ 'replyKeyboardRemoveRemoveKeyboard'
  -> ReplyKeyboardRemove
mkReplyKeyboardRemove replyKeyboardRemoveRemoveKeyboard = ReplyKeyboardRemove{replyKeyboardRemoveRemoveKeyboard = replyKeyboardRemoveRemoveKeyboard,
                                                                              replyKeyboardRemoveSelective = GHC.Maybe.Nothing}
