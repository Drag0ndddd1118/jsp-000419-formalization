import Lake
open Lake DSL

package "jsp-000419-formalization" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib Erdos523

@[default_target]
lean_lib «JSP_000419» where
  roots := #[`JSP_000419, `Erdos523]
