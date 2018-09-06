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
  = TokEOF
  -- ** Comments
  | TokSingleLineComment
  | TokCurlyBraceComment
  | TokParenthesisStarComment
  | TokCompilerDirective
  -- ** Values
  | TokIdentifier String
  | TokNumber String
  | TokStringLiteral String
  -- ** Punctuation
  | TokOpenBracket               -- [
  | TokCloseBracket              -- ]
  | TokOpenParenthesis           -- (
  | TokCloseParenthesis          -- )
  | TokComma                     -- ,
  | TokColon                     -- :
  | TokSemicolon                 -- ;
  | TokPeriod                    -- .
  | TokDoublePeriod              -- ..
  | TokAt                        -- @
  | TokDoubleAt                  -- @@
  | TokCaret                     -- ^
  | TokAmpersand                 -- & 
  -- ** Operators
  | TokPlus                      -- +
  | TokMinus                     -- -
  | TokTimes                     -- *
  | TokDivide                    -- /
  -- ** Ordering and Equality
  | TokAssign                    -- :=
  | TokEqual                     -- =
  | TokNotEqual                  -- <>
  | TokGreaterOrEqual            -- >=
  | TokGreater                   -- >
  | TokLessOrEqual               -- <=
  | TokLess                      -- <
  -- ** Contextual Keywords
  | TokAbsoluteKeyword
  | TokAbstractKeyword
  | TokAssemblerKeyword
  | TokAssemblyKeyword
  | TokAtKeyword
  | TokAutomatedKeyword
  | TokCdeclKeyword
  | TokContainsKeyword
  | TokDefaultKeyword
  | TokDeprecatedKeyword
  | TokDispIdKeyword
  | TokDynamicKeyword
  | TokExperimentalKeyword
  | TokExportKeyword
  | TokExternalKeyword
  | TokFarKeyword
  | TokFinalKeyword
  | TokForwardKeyword
  | TokHelperKeyword
  | TokImplementsKeyword
  | TokIndexKeyword
  | TokLocalKeyword
  | TokMessageKeyword
  | TokNameKeyword
  | TokNearKeyword
  | TokNoDefaultKeyword
  | TokOnKeyword
  | TokOperatorKeyword
  | TokOutKeyword
  | TokOverloadKeyword
  | TokOverrideKeyword
  | TokPackageKeyword
  | TokPascalKeyword
  | TokPlatformKeyword
  | TokPrivateKeyword
  | TokProtectedKeyword
  | TokPublicKeyword
  | TokPublishedKeyword
  | TokReadKeyword
  | TokReadOnlyKeyword
  | TokRegisterKeyword
  | TokReintroduceKeyword
  | TokRequiresKeyword
  | TokResidentKeyword
  | TokSafecallKeyword
  | TokSealedKeyword
  | TokStaticKeyword
  | TokStdcallKeyword
  | TokStoredKeyword
  | TokStrictKeyword
  | TokUnsafeKeyword
  | TokVarArgsKeyword
  | TokVirtualKeyword
  | TokWriteKeyword
  | TokWriteOnlyKeyword
  -- ** Keywords
  | TokAndKeyword
  | TokArrayKeyword
  | TokAsKeyword
  | TokAsmKeyword
  | TokBeginKeyword
  | TokCaseKeyword
  | TokClassKeyword
  | TokConstKeyword
  | TokConstructorKeyword
  | TokDestructorKeyword
  | TokDispInterfaceKeyword
  | TokDivKeyword
  | TokDoKeyword
  | TokDownToKeyword
  | TokElseKeyword
  | TokEndKeyword
  | TokExceptKeyword
  | TokExportsKeyword
  | TokFileKeyword
  | TokFinalizationKeyword
  | TokFinallyKeyword
  | TokForKeyword
  | TokFunctionKeyword
  | TokGotoKeyword
  | TokIfKeyword
  | TokImplementationKeyword
  | TokInKeyword
  | TokInheritedKeyword
  | TokInitializationKeyword
  | TokInlineKeyword
  | TokInterfaceKeyword
  | TokIsKeyword
  | TokLabelKeyword
  | TokLibraryKeyword
  | TokModKeyword
  | TokNilKeyword
  | TokNotKeyword
  | TokObjectKeyword
  | TokOfKeyword
  | TokOrKeyword
  | TokPackedKeyword
  | TokProcedureKeyword
  | TokProgramKeyword
  | TokPropertyKeyword
  | TokRaiseKeyword
  | TokRecordKeyword
  | TokRepeatKeyword
  | TokResourceStringKeyword
  | TokSetKeyword
  | TokShlKeyword
  | TokShrKeyword
  | TokStringKeyword
  | TokThenKeyword
  | TokThreadVarKeyword
  | TokToKeyword
  | TokTryKeyword
  | TokTypeKeyword
  | TokUnitKeyword
  | TokUntilKeyword
  | TokUsesKeyword
  | TokVarKeyword
  | TokWhileKeyword
  | TokWithKeyword
  | TokXorKeyword
  deriving (Eq, Ord, Data, Typeable, Generic, NFData)
