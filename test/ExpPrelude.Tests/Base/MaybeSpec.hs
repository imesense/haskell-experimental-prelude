{-# LANGUAGE NoImplicitPrelude #-}

module Base.MaybeSpec
  ( spec
  ) where

import Data.Function (($))
import GHC.Integer (Integer)

import Test.Hspec
  ( Spec
  , describe
  , it
  , shouldBe
  )

import Base.Maybe (Maybe (..))

spec :: Spec
spec = do
  describe "Maybe" $ do
    it "can represent a value" $ do
      Just 42 `shouldBe` (Just 42 :: Maybe Integer)
    it "can represent the absence of a value" $ do
      Nothing `shouldBe` (Nothing :: Maybe Integer)
    -- it "has a map function" $ do
    --   map (+1) (Just 41) `shouldBe` Just 42
    --   map (+1) Nothing `shouldBe` (Nothing :: Maybe Int)
    -- it "has a fold function" $ do
    --   fold (const 0) (Just 42) `shouldBe` 42
    --   fold (const 0) Nothing `shouldBe` 0
