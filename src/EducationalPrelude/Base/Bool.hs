{-# LANGUAGE NoImplicitPrelude #-}

module Base.Bool
  ( not
  ) where

import Data.Bool
  ( Bool(..)
  )

not :: Bool -> Bool
not True  = False
not False = True
