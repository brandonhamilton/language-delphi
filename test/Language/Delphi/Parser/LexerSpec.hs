module Language.Delphi.Parser.LexerSpec
  ( spec
  ) where

import Test.Hspec
import Language.Delphi.Parser.Lexer

spec :: Spec
spec = do
  describe "lexer" $ do
    it "ignores whitespace" $ do
      length (lexer " ") `shouldBe` 0
