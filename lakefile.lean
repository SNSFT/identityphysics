import Lake
open Lake DSL

package snsfl where
  name := "snsfl"

require "leanprover-community" / "mathlib" @ git "v4.31.0"

@[default_target]
lean_lib SNSFL where
  globs := #[.submodules `SNSFL]
  leanOptions := #[⟨`linter.unusedVariables, false⟩]
