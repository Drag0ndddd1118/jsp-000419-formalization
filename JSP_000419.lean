import Erdos523

/-- Formal Lean 4 bridge theorem for JSP-000419 (Erdős Problem #523).
Gábor Halász (1973) proved that almost surely, the maximum modulus on the unit circle
of a polynomial with random sign coefficients is asymptotic to √(n log n). -/
theorem jsp_000419_solved :=
  Erdos523.erdos_523

#print axioms jsp_000419_solved
-- 'jsp_000419_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
