{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Evaluate" #-}

module Base.BoolSpec
  ( spec
  ) where

import Data.Bool (Bool(..))
import Data.Function (($))

import Test.Hspec
  ( Spec
  , describe
  , it
  , shouldBe
  )

import Base.Bool (not)

spec :: Spec
spec = describe "not" $ do
  it "returns False when given True" $
    not True `shouldBe` False
  it "returns True when given False" $
    not False `shouldBe` True
