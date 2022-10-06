{-# LANGUAGE NoImplicitPrelude #-}

module Base.Maybe
  ( Maybe (..)
  ) where

data Maybe a = Nothing | Just a
