{
{-|
Module      : Language.Delphi.Parser.Internal
Description : Delphi parser
Copyright   : (c) Brandon Hamilton, 2018
License     : BSD-style
Maintainer  : brandon.hamilton@gmail.com
Stability   : experimental
Portability : GHC
-}

module Language.Delphi.Parser.Internal 
  ( parseDelphi
  ) where

import Language.Delphi.Syntax
}

%name parseDelphi

%tokentype { Token }
%error { parseError }

%token
  program             { TokEOF }

%%

Program : program     { TokEOF }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"
}