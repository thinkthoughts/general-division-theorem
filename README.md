# General Divisor Theorem

Lean formalization and verification artifact for the General Divisor Theorem.

The theorem studies integers satisfying a residue condition together with coprimality to a modulus, and gives an exact dichotomy, minimal period, count per period, density formula, and correction factor.

## Theorem Source

The mathematical source is kept separately from the Lean library in:

* `General_Divisor_Theorem/divisor.pdf`
* `General_Divisor_Theorem/README.md`

## Lean Formalization

The Lean library uses the module directory:

* `GeneralDivisorTheorem/Basic.lean`

The top-level Lean module is:

* `GeneralDivisorTheorem.lean`

Build the formalization with:

```text
lake build
```

## Repository Structure

The similarly named source and Lean directories serve different purposes:

```text
General_Divisor_Theorem/
```

contains the mathematical source materials for the theorem.

```text
GeneralDivisorTheorem/
```

contains the Lean library modules.

The root-level Lean files are top-level module entry points:

```text
GeneralDivisorTheorem.lean
Challenge.lean
Solution.lean
```

They import the corresponding Lean modules and are intentionally retained as part of the project structure.

## Formal Challenge

The repository contains a seven-theorem Challenge/Solution pair.

Challenge:

```text
Challenge/GeneralDivisorTheorem.lean
```

Solution:

```text
Solution/GeneralDivisorTheorem.lean
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

The repository provides a one-command verification entry point:

```text
./verify.sh
```

The script builds the project, checks the Challenge and completed Solution, and runs Lean Comparator.

Comparator exports the Challenge and Solution declarations and checks the completed Solution with Lean's default kernel.

A successful verification concludes with:

```text
Running Lean default kernel on solution.
Lean default kernel accepts the solution
Your solution is okay!
```

The permitted axioms are:

* `propext`
* `Quot.sound`
* `Classical.choice`

Comparator verification requires compatible `comparator`, `lean4export`, and `landrun` binaries.

`verify.sh` accepts their locations through:

```text
COMPARATOR_BIN
COMPARATOR_LEAN4EXPORT
COMPARATOR_LANDRUN
```

and otherwise uses the default local paths specified in the script.

## Dependencies

The project uses Mathlib with the Lean toolchain specified by the repository.

Comparator verification additionally uses:

* Lean Comparator
* `lean4export`
* `landrun`

## Verification Status

The General Divisor Theorem Lean library and completed Solution build successfully.

The seven-statement Challenge intentionally contains `sorry` proof placeholders. The corresponding Solution contains completed proofs for all seven statements.

The full Challenge/Solution pair has passed Comparator verification, and the completed Solution has been accepted by Lean's default kernel.

The verification pipeline has also been run successfully from a fresh repository clone.

## Release

The first release is:

```text
v1.0.0
```

It records the initial standalone formalization and verified Challenge/Solution artifact for the General Divisor Theorem.
