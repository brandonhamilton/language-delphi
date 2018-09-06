{-|
Module      : Language.Delphi.Syntax.Token
Description : Delphi tokens
Copyright   : (c) Brandon Hamilton, 2018
License     : BSD-style
Maintainer  : brandon.hamilton@gmail.com
Stability   : experimental
Portability : GHC
-}

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}

module Language.Delphi.Syntax.Token 
  ( Token(..)
  ) where

import GHC.Generics                ( Generic )
import Control.DeepSeq             ( NFData )
import Data.Data                   ( Data )
import Data.Typeable               ( Typeable )

data Token
  = Token
  deriving (Eq, Ord, Data, Typeable, Generic, NFData)