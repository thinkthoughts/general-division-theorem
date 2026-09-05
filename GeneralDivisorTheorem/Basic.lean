/-
Copyright (c) 2026 Dan Hawkley. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dan Hawkley
-/

module

public import Mathlib.Data.Nat.Totient
public import Mathlib.Data.Nat.Factorization.Basic
public import Mathlib.Data.Finset.Basic

/-!
# General Divisor Theorem: Core Definitions

Core definitions used by the formalization of the General Divisor Theorem.
-/

@[expose] public section

namespace GDT

def rad (n : ℕ) : ℕ := n.primeFactors.prod id

def d (N m : ℕ) : ℕ := rad (Nat.gcd m N)

def R (N m : ℕ) : ℕ := rad N / d N m

def Tmin (N m : ℕ) : ℕ := m * R N m

def Admissible (N m : ℕ) (a : ℤ) : Prop :=
  Nat.gcd a.natAbs (d N m) = 1

def accepted (N m : ℕ) (a : ℤ) (n : ℕ) : Prop :=
  (n : ℤ) ≡ a [ZMOD (m : ℤ)] ∧ Nat.gcd n N = 1

instance acceptedDecidable (N m : ℕ) (a : ℤ) :
    DecidablePred (accepted N m a) := by
  intro n
  unfold accepted
  apply instDecidableAnd

def S (N L m : ℕ) (a : ℤ) : Finset ℕ :=
  (Finset.Icc 1 L).filter (accepted N m a)

def IsPeriod (N m : ℕ) (a : ℤ) (t : ℕ) : Prop :=
  ∀ n : ℕ, accepted N m a (n + t) ↔ accepted N m a n

end GDT
