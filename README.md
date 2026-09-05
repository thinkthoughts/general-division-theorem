# General Division Theorem

Lean formalization and verification artifact for the General Divisor Theorem.

The theorem studies integers satisfying a residue condition together with coprimality to a modulus, and gives an exact dichotomy, minimal period, count per period, density formula, and correction factor.

## Theorem Source

The mathematical source is in:

* `General_Division_Theorem/divisor.pdf`
* `General_Division_Theorem/README.md`

## Lean Formalization

The core definitions are in:

* `GeneralDivisorTheorem/Basic.lean`

The top-level Lean library is:

* `GeneralDivisorTheorem.lean`

Build the formalization with:

```text
lake build
