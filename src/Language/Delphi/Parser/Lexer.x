{
{-|
Module      : Language.Delphi.Parser.Lexer
Description : Delphi lexer
Copyright   : (c) Brandon Hamilton, 2018
License     : BSD-style
Maintainer  : brandon.hamilton@gmail.com
Stability   : experimental
Portability : GHC
-}

module Language.Delphi.Parser.Lexer
  ( lexDelphi
  ) where

import Language.Delphi.Syntax.Token
}

%wrapper "monad"

tokens  :-

    $white+         ;

{
alexEOF :: Alex Token
alexEOF = pure TokEOF

lexDelphi :: String -> Either String [Token]
lexDelphi str = runAlex str go
  where
    go = do
      tok' <- alexMonadScan
      if tok' == TokEOF then pure []
          else (tok' :) <$> go
}