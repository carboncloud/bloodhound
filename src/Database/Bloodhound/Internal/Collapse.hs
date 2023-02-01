{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Database.Bloodhound.Internal.Collapse where

import Data.Aeson (ToJSON)
import Database.Bloodhound.Internal.Newtypes
import GHC.Generics (Generic)

newtype Collapse
  = Collapse {field :: FieldName}
  deriving stock (Eq, Show, Generic)
  deriving anyclass (ToJSON)
