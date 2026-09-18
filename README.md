# Formalization of JSP-000419 (Erdős Problem #523)

## Problem Overview

**Catalog ID:** [JSP-000419](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0401-0500.md#JSP-000419)  
**Erdős Problem:** [#523](https://www.erdosproblems.com/523)  
**Mathematical Area:** Analysis / Probability / Polynomials  

### Problem Statement
What is the typical maximum modulus on the unit circle of a polynomial with random sign coefficients?

Specifically, let $f(z) = \sum_{0 \le k \le n} \epsilon_k z^k$ be a random polynomial, where $\epsilon_k \in \{-1, 1\}$ independently uniformly at random for $0 \le k \le n$. Does there exist a constant $C > 0$ such that, almost surely,
$$\max_{|z| = 1} \left|\sum_{k \le n} \epsilon_k z^k\right| = (C + o(1))\sqrt{n \log n}?$$

### Resolution
Resolved affirmatively by Gábor Halász (1973):
- **References:**
  - R. Salem and A. Zygmund, *Some properties of trigonometric series whose terms have random signs*, Acta Math. 91 (1954), 245–301.
  - G. Halász, *On a result of Salem and Zygmund concerning random polynomials*, Studia Sci. Math. Hungar. 8 (1973), 369–377.

Halász proved that almost surely, the maximum of $|P_n(z)|$ on the complex unit circle is asymptotic to $\sqrt{n \log n}$ (confirming the conjecture with constant $C = 1$).

## Formalization Details

- **Target File:** `JSP_000419.lean`
- **Underlying Formalization:** `Erdos523.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000419_solved :
      ∀ᵐ ω ∂Erdos523.signMeasure,
        Filter.Tendsto
          (fun n : ℕ ↦ Erdos523.maximumModulus ω n / Real.sqrt ((n : ℝ) * Real.log n))
          Filter.atTop (nhds 1) :=
    Erdos523.erdos_523
  ```
- **Axioms Check:**
  `#print axioms jsp_000419_solved` depends strictly on standard foundational Lean axioms:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  Zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Gábor Halász (1973).
- **Formal Authors:** OpenAI Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos523.lean`).
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
- **Submission Type:** Record-only catalog citation; no award claim is pending for this entry.
