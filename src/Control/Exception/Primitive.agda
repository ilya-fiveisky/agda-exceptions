module Control.Exception.Primitive where

open import IO.Primitive

postulate
  bracket : ∀ {a b c} {A : Set a} {B : Set b} {C : Set c} → IO A → (A → IO B) → (A → IO C) → IO C

{-# IMPORT Control.Exception #-}
{-# COMPILED bracket (\_ _ _ _ _ _ -> Control.Exception.bracket) #-}
