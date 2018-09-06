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
  (
  ) where

import Language.Delphi.Syntax.Token
}

%wrapper "basic"

tokens  :-

    $white+         ;
