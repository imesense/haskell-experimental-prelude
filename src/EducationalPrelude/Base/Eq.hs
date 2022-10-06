{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use ==" #-}
{-# HLINT ignore "Use /=" #-}

module Base.Eq
  ( Eq (..)
  ) where

import Data.Bool
  ( Bool (..)
  , otherwise
  )

import Base.Bool (not)
import Base.Maybe (Maybe (..))

class Eq a where
  (==) :: a -> a -> Bool
  x == y = not (x /= y)
  (/=) :: a -> a -> Bool
  x /= y = not (x == y)
  {-# MINIMAL (==) | (/=) #-}

instance Eq a => Eq (Maybe a) where
  Nothing == Nothing = True
  Nothing == Just _ = False
  Just _ == Nothing = False
  Just x == Just y
    | x == y = True
    | otherwise = False
