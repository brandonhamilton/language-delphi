{-|
Module      : Language.Delphi.Syntax
Description : Delphi syntax definitions
Copyright   : (c) Brandon Hamilton, 2018
License     : BSD-style
Maintainer  : brandon.hamilton@gmail.com
Stability   : experimental
Portability : GHC
-}

module Language.Delphi.Syntax 
  ( -- * Abstract syntax trees
    module Language.Delphi.Syntax.AST
    -- * Tokens
  , module Language.Delphi.Syntax.Token
  ) where

import Language.Delphi.Syntax.AST
import Language.Delphi.Syntax.Token

{-# ANN module "HLint: ignore Use import/export shortcut" #-}