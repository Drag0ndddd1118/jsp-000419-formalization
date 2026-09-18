import Erdos523

open Filter

/-- Formal Lean 4 bridge theorem for JSP-000419 (Erdős Problem #523).
Gábor Halász (1973) proved that almost surely, the maximum modulus on the unit circle
of a polynomial with random sign coefficients is asymptotic to √(n log n). -/
theorem jsp_000419_solved :
    ∀ᵐ ω ∂Erdos523.signMeasure,
      Tendsto
        (fun n : ℕ ↦ Erdos523.maximumModulus ω n / Real.sqrt ((n : ℝ) * Real.log n))
        atTop (nhds 1) :=
  Erdos523.erdos_523

#print axioms jsp_000419_solved
