{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE InstanceSigs #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}

module Base.Maybe
  ( Maybe (..)
  ) where

import GHC.Show (Show(show))
import GHC.Base ((++))

import Data.Eq (Eq)
import Data.String (String)

data Maybe a
  = Nothing
  | Just a
  deriving (Eq)

instance Show a => Show (Maybe a) where
  show :: Show a => Maybe a -> String
  show Nothing = "Nothing"
  show (Just x) = "Just " ++ show x
