-- ============================================================
-- SNSFL_SaintVenant_Torsion_Reduction.lean
-- ============================================================
--
-- Saint-Venant Torsion → PNBA
-- Saint-Venant's torsion coefficient β tells how stiffly a bar of
-- rectangular section resists twisting. Read as a torsion β = B/P
-- and placed against the Torsion Limit, every rectangular bar sits
-- on the Shatter side of TL. The square comes closest, 2.7% above;
-- flatter bars sit further out.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,2,51](ENGR)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      July 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
--
-- ============================================================
-- THE LEGACY COEFFICIENT
-- ============================================================
--
-- For a bar with long side b and short side p, the torsion constant
-- is J = β·b·p³ with (Saint-Venant 1855)
--
--   β(b/p) = (1/3)·[1 − (192/π⁵)·(p/b)·Σ_{n odd} tanh(nπb/2p) / n⁵]
--
-- β rises from 0.1406 for the square to 1/3 for a thin strip.
-- Values from the series summed to convergence:
--
--   b/p      β          β/TL       above TL
--   1        0.140577   1.0269       2.7%
--   1.5      0.195761   1.4300      43.0%
--   2        0.228682   1.6704      67.0%
--   3        0.263317   1.9234      92.3%
--   ∞        1/3        2.4349     143.5%
--
-- THE CORNERS ARE ALREADY IN β. Ignoring warping, the square would
-- have β = 1/6 = 0.1667. Saint-Venant's solution has zero shear at
-- the corners and warps the section out of plane; that lowers the
-- square's β by 15.7% to 0.1406. Twist a square eraser and the
-- middle of each face pales where the shear peaks, while the corners
-- and the centre stay dark: that is this distribution.
--
-- ============================================================
-- THE PHASE PLACEMENT
-- ============================================================
--
--   τ = β    the torsional stiffness per unit of section
--   TL = 0.136899099984016
--
-- Every rectangular bar has β ≥ 0.1406 > TL: all sit on the Shatter
-- side. The square, the most compact rectangle, comes closest at
-- 2.7% above TL (at threshold precision, 0.1406 against 0.1369,
-- also 2.7%). Engineering practice agrees: where torsion matters,
-- round and closed sections are used.
--
-- TL itself sits on the β curve at b/p = 0.97414783, the same bar
-- written with its sides swapped as 1.0265382 (0.97415408 and
-- 1.0265317 at threshold precision). This is where TL lies on the
-- curve; it is a location, solved from TL.
--
-- ============================================================

import Mathlib.Tactic

noncomputable section

namespace SNSFL_SaintVenant_Torsion_Reduction

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- Saint-Venant β from the series, by aspect ratio b/p
def BETA_1   : ℝ := 0.140577     -- square
def BETA_1_5 : ℝ := 0.195761
def BETA_2   : ℝ := 0.228682
def BETA_3   : ℝ := 0.263317
def BETA_STRIP : ℝ := 1 / 3      -- b/p → ∞
def BETA_NO_WARP : ℝ := 1 / 6    -- square, ignoring warping

-- Where TL lies on the β curve
def RATIO_AT_TL : ℝ := 0.97414783

-- ============================================================
-- SECTION 1: THE CORNERS
-- ============================================================

-- [T1] Warping with zero-shear corners lowers the square's β from
-- 1/6 by 15.7%
theorem corner_correction :
    BETA_1 < BETA_NO_WARP ∧
    0.156 < (BETA_NO_WARP - BETA_1) / BETA_NO_WARP ∧
    (BETA_NO_WARP - BETA_1) / BETA_NO_WARP < 0.157 := by
  unfold BETA_1 BETA_NO_WARP
  refine ⟨?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num

-- ============================================================
-- SECTION 2: THE PLACEMENT
-- ============================================================

-- [T2] The square sits 2.7% above TL
theorem square_above_tl :
    TORSION_LIMIT < BETA_1 ∧
    0.026 < (BETA_1 - TORSION_LIMIT) / TORSION_LIMIT ∧
    (BETA_1 - TORSION_LIMIT) / TORSION_LIMIT < 0.027 := by
  unfold BETA_1 TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num

-- [T3] At threshold precision the gap is the same: 0.1406 against 0.1369
theorem square_threshold_precision :
    0.027 < ((0.1406 : ℝ) - 0.1369) / 0.1369 ∧ ((0.1406 : ℝ) - 0.1369) / 0.1369 < 0.0271 := by
  constructor
  · norm_num
  · norm_num

-- [T4] Flatter bars sit further out: 43%, 67%, 92% and 143% above TL
theorem flatter_bars_further :
    0.429 < (BETA_1_5 - TORSION_LIMIT) / TORSION_LIMIT ∧
    (BETA_1_5 - TORSION_LIMIT) / TORSION_LIMIT < 0.431 ∧
    0.670 < (BETA_2 - TORSION_LIMIT) / TORSION_LIMIT ∧
    (BETA_2 - TORSION_LIMIT) / TORSION_LIMIT < 0.671 ∧
    0.923 < (BETA_3 - TORSION_LIMIT) / TORSION_LIMIT ∧
    (BETA_3 - TORSION_LIMIT) / TORSION_LIMIT < 0.924 ∧
    1.434 < (BETA_STRIP - TORSION_LIMIT) / TORSION_LIMIT ∧
    (BETA_STRIP - TORSION_LIMIT) / TORSION_LIMIT < 1.435 := by
  unfold BETA_1_5 BETA_2 BETA_3 BETA_STRIP TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num

-- [T5] The ordering: TL < square < 1.5 < 2 < 3 < strip. Every listed
-- bar is on the Shatter side, and the square is closest to TL
theorem shatter_ordering :
    TORSION_LIMIT < BETA_1 ∧ BETA_1 < BETA_1_5 ∧ BETA_1_5 < BETA_2 ∧
    BETA_2 < BETA_3 ∧ BETA_3 < BETA_STRIP := by
  unfold BETA_1 BETA_1_5 BETA_2 BETA_3 BETA_STRIP TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num

-- [T6] Where TL lies on the curve: b/p = 0.97414783, which is
-- 1.0265382 with the sides swapped
theorem tl_location :
    RATIO_AT_TL < 1 ∧ 1.0265382 < 1 / RATIO_AT_TL ∧ 1 / RATIO_AT_TL < 1.0265383 := by
  unfold RATIO_AT_TL
  refine ⟨?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T7] SAINT-VENANT → PNBA
theorem saint_venant_master :
    -- the corners are already in β
    BETA_1 < BETA_NO_WARP ∧
    -- the square sits 2.7% above TL
    (TORSION_LIMIT < BETA_1 ∧ (BETA_1 - TORSION_LIMIT) / TORSION_LIMIT < 0.027) ∧
    -- every listed bar is on the Shatter side, square closest
    (TORSION_LIMIT < BETA_1 ∧ BETA_1 < BETA_1_5 ∧ BETA_1_5 < BETA_2 ∧
      BETA_2 < BETA_3 ∧ BETA_3 < BETA_STRIP) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨corner_correction.1, ⟨square_above_tl.1, square_above_tl.2.2⟩, shatter_ordering,
   anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_SaintVenant_Torsion_Reduction

/-!
-- ============================================================
-- FILE:       SNSFL_SaintVenant_Torsion_Reduction.lean
-- COORDINATE: [9,9,2,51](ENGR)
-- SORRY:      0
--
-- THE MAP: τ = β, Saint-Venant's torsion coefficient.
--
-- RESULTS:
--   The corners are in β: 1/6 → 0.1406, a 15.7% drop (T1)
--   The square sits 2.7% above TL, at full and threshold precision
--     (T2, T3)
--   Flatter bars sit 43%, 67%, 92% and 143% above TL; every listed
--     bar is on the Shatter side and the square is closest (T4, T5)
--   TL lies on the curve at b/p = 0.97414783, or 1.0265382 with the
--     sides swapped (T6)
--
-- CONNECTIONS:
--   [9,9,2,52] Tacoma Narrows torsional collapse
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/
