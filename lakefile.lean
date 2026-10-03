import Lake
open Lake DSL

package snsfl where
  name := "snsfl"

-- Pinned Mathlib release. Must match the version in lean-toolchain.
require "leanprover-community" / "mathlib" @ git "v4.31.0"

-- Builds every .lean file inside SNSFL/ automatically.
-- Drop a file in the folder; the next push compiles it.
lean_lib SNSFL where
  globs := #[.submodules `SNSFL]
