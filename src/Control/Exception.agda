module Control.Exception where

open import IO
import Control.Exception.Primitive as Prim

bracket : ∀ {a b c} {A : Set a} {B : Set b} {C : Set c} → IO A → (A → IO B) → (A → IO C) → IO C
bracket io final body = lift (Prim.bracket (run io) (λ a1 → run (final a1)) (λ a2 → run (body a2)))
