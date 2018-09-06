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
  (
  ) where

import Language.Delphi.Syntax
}

%name delphiParser

%tokentype { Token }
%error { parseError }

%token
  program             { Token }

%%

Program : program     { Token }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"
}