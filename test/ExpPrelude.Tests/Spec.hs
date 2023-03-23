import Test.Hspec (hspec)

import qualified Base.BoolSpec  as BoolSpec
import qualified Base.MaybeSpec as MaybeSpec

main :: IO ()
main = hspec $ do
  BoolSpec.spec
  MaybeSpec.spec
