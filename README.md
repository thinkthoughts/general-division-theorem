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
```

## Formal Challenge

The repository contains a seven-theorem Challenge/Solution pair.

Challenge:

```text
Challenge/GeneralDivisionTheorem.lean
```

Solution:

```text
Solution/GeneralDivisionTheorem.lean
```

The Challenge contains the theorem statements with `sorry` proof placeholders.

The Solution proves the same seven statements with no `sorry`:

1. `gdt_empty`
2. `gdt_periodic`
3. `gdt_minimal_period`
4. `gdt_count_per_period`
5. `gdt_density`
6. `gdt_correction_factor`
7. `general_divisor_theorem`

## Comparator Verification

The comparator specification is:

```text
Comparator/general_divisor_theorem.json
```

With the Lean comparator installed, run:

```text
lake env comparator Comparator/general_divisor_theorem.json
```

The permitted axioms are:

* `propext`
* `Quot.sound`
* `Classical.choice`

## Dependencies

This project uses [Mathlib](https://github.com/leanprover-community/mathlib4) with the Lean toolchain specified by the repository.

## Status

The General Divisor Theorem library, Challenge, and Solution build successfully.

Remaining Lean warnings are tracked as cleanup work toward the v1.0 verification certificate.
