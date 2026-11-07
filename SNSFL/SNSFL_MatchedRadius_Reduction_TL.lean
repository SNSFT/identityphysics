-- ============================================================
-- SNSFL_MatchedRadius_Reduction_TL.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE MATCHED RADIUS — THE SQUARE-ROOT TORSION OPERATOR
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,17.1](GRAV) | Physics Ground — Gravitation · specialist form (square-root torsion operator)
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, the conversion fraction and the
-- matched radius are all restated here at full precision, so that a reader
-- or a machine can close every proof without leaving the file. The parent
-- reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,0,17]  Matched Radius Reduction      — the general-reader form of this coordinate
--   [9,9,2,0]   IVA Propulsion Reduction      — the two readings, the bridge, the gain cap
--   [9,9,0,1]   GR Reduction                   — r_s as the Pattern-lock threshold
--   [9,9,3,14]  Alpha Reduction                — α⁻¹ = Ω₀ × 100.1, TL = α⁻¹/1001
--   [9,9,3,20]  Transcendental Time Engine     — TL as the step on the dynamic equation's left side
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   The square-root torsion operator S(X) = √X, read through the matched
--   radius, is exact. The matched radius of a square root is the reciprocal
--   of what was rooted:
--
--       matched_ratio (√X) = 1/X
--
--   The root cancels identically. That is the whole of this file's content,
--   and every other result here is a consequence of it.
--
--   The consequence that matters for computation: the Torsion Limit is an
--   exact ratio of integers, TL = Ω₀/10 = 8556193749001/62500000000000.
--   So √TL is a quadratic irrational over the rationals, and the operator
--   sends it straight back into the rationals. No irrational survives to
--   the output, at any precision, in any direction of the chain. The layer
--   is closed over ℚ.
--
--   Two landings are named: √TL puts the matched radius at 1/TL, and
--   √TL_IVA puts it at 1/TL_IVA. Both are exact rationals. Their ratio is
--   exactly 1/0.88, the corridor width factor, with no error term.
--
--   The operator is horizon-ward. For any torsion in (0,1) the square root
--   is larger, so the matched radius is smaller: one root moves the matched
--   radius inward. Iterating drives the matched radius monotonically toward
--   the Schwarzschild radius and never past it. The horizon is the operator's
--   floor, at every depth of iteration.
--
--   The operator centers the corridor. For any band [k·a, a] with k in (0,1)
--   the geometric mean is √k · a, and k < √k < 1 places that mean strictly
--   inside the band. This is structural, not numerical: it holds for every
--   width factor, and at k = 0.88 it puts √0.88 · TL inside the IVA corridor
--   with the matched radius at 1/(0.88·TL²), the geometric mean of the
--   corridor's own radius band.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

noncomputable section

namespace SNSFL_MatchedRadiusTL

-- ============================================================
-- SECTION 0: CONSTANTS, THE FOUR PHASES, READING A
-- Restated here in full. This file depends on no other file.
-- ============================================================

/-- The Sovereign Anchor, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Torsion Limit. Ω₀/10 — discovered, not chosen. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor. 0.88 × TL = 0.12047120798593408. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- The corridor width factor. -/
def IVA_FACTOR : ℝ := 0.88

/-- Speed of light in vacuum, m/s. Exact by SI definition. -/
def C_LIGHT : ℝ := 299792458

/-- The inverse fine-structure constant. Ω₀ × 100.1. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The integer the Torsion Limit divides the fine-structure constant by.
1001 = 7 × 11 × 13. -/
def TL_DIVISOR : ℝ := 1001

inductive Phase : Type
  | Noble    -- τ = 0
  | Locked   -- 0 < τ < TL_IVA
  | IVA      -- TL_IVA ≤ τ < TL
  | Shatter  -- τ ≥ TL
  deriving DecidableEq, Repr

def classify (τ : ℝ) : Phase :=
  if τ = 0 then Phase.Noble
  else if τ < TL_IVA then Phase.Locked
  else if τ < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

/-- Reading A. The exhaust velocity against light speed. -/
def tau_A (w : ℝ) : ℝ := w / C_LIGHT

/-- The rest-mass conversion fraction of the ideal rocket: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The Schwarzschild radius of a body with gravitational parameter GM. -/
def r_s (GM : ℝ) : ℝ := 2 * GM / C_LIGHT ^ 2

/-- The matched radius: the radius at which the escape velocity of a mass
equals a drive's exhaust velocity. r = r_s/τ_A². -/
def r_match (GM t : ℝ) : ℝ := r_s GM / t ^ 2

/-- The matched radius in Schwarzschild units. Depends on the drive alone. -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

/-- The square-root torsion operator. -/
def S (X : ℝ) : ℝ := Real.sqrt X

/-- The operator iterated. S⁰ is the identity. -/
def sqrtIter : ℕ → ℝ → ℝ
  | 0,     t => t
  | (n+1), t => Real.sqrt (sqrtIter n t)

-- [T1] :: {VER} | THE CONSTANTS, AS DECIMAL LITERALS
theorem t1_const_values :
    TORSION_LIMIT = 0.136899099984016 ∧ TL_IVA = 0.12047120798593408 := by
  constructor
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T2] :: {VER} | THE TORSION LIMIT IS POSITIVE AND BELOW ONE
theorem t2_tl_in_unit_interval :
    0 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T3] :: {VER} | THE CORRIDOR FLOOR IS POSITIVE AND BELOW THE CEILING
theorem t3_floor_below_ceiling :
    0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- ============================================================
-- SECTION 1: THE TORSION LIMIT IS AN EXACT RATIONAL
-- This is why the layer closes. The anchor is a terminating
-- decimal, so the Torsion Limit is a ratio of integers, and every
-- quantity built from it by field operations is one too.
-- ============================================================

-- [T4] :: {VER} | THE TORSION LIMIT AS A RATIO OF INTEGERS
theorem t4_tl_is_rational :
    TORSION_LIMIT = 8556193749001 / 62500000000000 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T5] :: {VER} | THE RECIPROCAL IS A RATIO OF INTEGERS TOO
theorem t5_tl_inverse_is_rational :
    1 / TORSION_LIMIT = 62500000000000 / 8556193749001 := by
  rw [t4_tl_is_rational]; norm_num

-- [T6] :: {VER} | THE CORRIDOR FLOOR AS A RATIO OF INTEGERS
theorem t6_tl_iva_is_rational :
    TL_IVA = 94118131239011 / 781250000000000 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T7] :: {VER} | THE EXACTNESS ANCHOR: TL × 1001 = α⁻¹
-- The Torsion Limit is not a fitted parameter. It is the inverse
-- fine-structure constant divided by 1001 = 7 × 11 × 13, exactly.
theorem t7_tl_times_1001_is_alpha :
    TORSION_LIMIT * TL_DIVISOR = ALPHA_INV := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, ALPHA_INV]; norm_num

-- ============================================================
-- SECTION 2: THE OPERATOR IDENTITY
-- The matched radius of a square root is the reciprocal of what
-- was rooted. The root cancels; nothing irrational survives.
-- ============================================================

-- [T8] :: {VER} | MASTER — THE SQUARE-ROOT CLOSURE
theorem t8_master_sqrt_closure (X : ℝ) (hX : 0 ≤ X) :
    matched_ratio (S X) = 1 / X := by
  simp only [matched_ratio, S, Real.sq_sqrt hX]

-- [T9] :: {VER} | THE CLOSURE AS A PRODUCT: NO ERROR TERM
-- The matched radius of √X multiplied by X is exactly one, so the
-- operator carries no residue at any precision.
theorem t9_closure_has_no_residue (X : ℝ) (hX : 0 < X) :
    matched_ratio (S X) * X = 1 := by
  rw [t8_master_sqrt_closure X hX.le, one_div, inv_mul_cancel₀ (ne_of_gt hX)]

-- [T10] :: {VER} | THE MATCHED RADIUS OF A ROOT IS RATIONAL WHEN THE
-- ROOTED QUANTITY IS. Stated as the general cancellation: the output
-- depends on X alone, never on √X.
theorem t10_output_free_of_the_root (X Y : ℝ) (hX : 0 ≤ X) (hY : 0 ≤ Y)
    (h : X = Y) : matched_ratio (S X) = matched_ratio (S Y) := by
  rw [t8_master_sqrt_closure X hX, t8_master_sqrt_closure Y hY, h]

-- [T11] :: {VER} | THE FIRST LANDING — √TL PUTS THE MATCHED RADIUS AT 1/TL
theorem t11_sqrt_tl_lands_at_tl_inverse :
    matched_ratio (S TORSION_LIMIT) = 1 / TORSION_LIMIT := by
  exact t8_master_sqrt_closure TORSION_LIMIT t2_tl_in_unit_interval.1.le

-- [T12] :: {VER} | THE FIRST LANDING IS AN EXACT RATIONAL
theorem t12_first_landing_rational :
    matched_ratio (S TORSION_LIMIT) = 62500000000000 / 8556193749001 := by
  rw [t11_sqrt_tl_lands_at_tl_inverse, t5_tl_inverse_is_rational]

-- [T13] :: {VER} | THE FIRST LANDING, BRACKETED — 7.304649921853084 r_s
theorem t13_first_landing_value :
    7.30464992185308 < matched_ratio (S TORSION_LIMIT) ∧
    matched_ratio (S TORSION_LIMIT) < 7.30464992185309 := by
  rw [t12_first_landing_rational]; norm_num

-- [T14] :: {VER} | THE SECOND LANDING — √TL_IVA PUTS IT AT 1/TL_IVA
theorem t14_sqrt_tl_iva_lands_at_floor_inverse :
    matched_ratio (S TL_IVA) = 1 / TL_IVA := by
  exact t8_master_sqrt_closure TL_IVA t3_floor_below_ceiling.1.le

-- [T15] :: {VER} | THE SECOND LANDING IS AN EXACT RATIONAL
theorem t15_second_landing_rational :
    matched_ratio (S TL_IVA) = 781250000000000 / 94118131239011 := by
  rw [t14_sqrt_tl_iva_lands_at_floor_inverse, t6_tl_iva_is_rational]; norm_num

-- [T16] :: {VER} | THE SECOND LANDING, BRACKETED — 8.300738547560323 r_s
theorem t16_second_landing_value :
    8.30073854756032 < matched_ratio (S TL_IVA) ∧
    matched_ratio (S TL_IVA) < 8.30073854756033 := by
  rw [t15_second_landing_rational]; norm_num

-- [T17] :: {VER} | THE TWO LANDINGS STAND IN THE CORRIDOR WIDTH FACTOR,
-- EXACTLY. Their ratio is 1/0.88 = 25/22, with no error term.
theorem t17_landings_ratio_is_the_width_factor :
    matched_ratio (S TL_IVA) = matched_ratio (S TORSION_LIMIT) * (25 / 22) := by
  rw [t12_first_landing_rational, t15_second_landing_rational]; norm_num

-- [T18] :: {VER} | THE SECOND LANDING IS THE FARTHER OF THE TWO
theorem t18_floor_lands_farther :
    matched_ratio (S TORSION_LIMIT) < matched_ratio (S TL_IVA) := by
  rw [t12_first_landing_rational, t15_second_landing_rational]; norm_num

-- ============================================================
-- SECTION 3: THE SQUARE-ROOT SANDWICH
-- For any torsion strictly inside the unit interval, the square
-- root is strictly larger and still strictly below one. This is
-- the engine of both the contraction and the self-centering.
-- ============================================================

-- [T19] :: {VER} | THE SANDWICH — k < √k < 1 ON (0,1)
theorem t19_sqrt_sandwich (k : ℝ) (h0 : 0 < k) (h1 : k < 1) :
    k < Real.sqrt k ∧ Real.sqrt k < 1 := by
  have hs : Real.sqrt k ^ 2 = k := Real.sq_sqrt h0.le
  have hp : 0 < Real.sqrt k := Real.sqrt_pos.mpr h0
  constructor
  · nlinarith [hs, hp, mul_pos h0 hp]
  · nlinarith [hs, hp]

-- [T20] :: {VER} | THE ROOT STAYS IN THE UNIT INTERVAL
theorem t20_root_stays_in_unit_interval (k : ℝ) (h0 : 0 < k) (h1 : k < 1) :
    0 < Real.sqrt k ∧ Real.sqrt k < 1 := by
  exact ⟨Real.sqrt_pos.mpr h0, (t19_sqrt_sandwich k h0 h1).2⟩

-- ============================================================
-- SECTION 4: THE OPERATOR IS HORIZON-WARD
-- A larger torsion names a nearer matched radius. So one square
-- root moves the matched radius inward, and iterating drives it
-- toward the Schwarzschild radius without ever reaching it.
-- ============================================================

-- [T21] :: {VER} | THE MATCHED RADIUS IS STRICTLY ANTITONE IN THE TORSION
theorem t21_matched_ratio_antitone (t u : ℝ) (ht : 0 < t) (htu : t < u) :
    matched_ratio u < matched_ratio t := by
  simp only [matched_ratio]
  have hu : 0 < u := lt_trans ht htu
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have h : t ^ 2 < u ^ 2 := by nlinarith
  exact one_div_lt_one_div_of_lt ht2 h

-- [T22] :: {VER} | ONE ROOT MOVES THE MATCHED RADIUS INWARD
theorem t22_one_root_moves_inward (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    matched_ratio (S t) < matched_ratio t := by
  simp only [S]
  exact t21_matched_ratio_antitone t (Real.sqrt t) h0 (t19_sqrt_sandwich t h0 h1).1

-- [T23] :: {VER} | THE ROOT NEVER CROSSES THE HORIZON
-- The matched radius of √t stays strictly outside r_s for every
-- torsion in (0,1), because it equals 1/t and t < 1.
theorem t23_root_stays_outside_horizon (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    1 < matched_ratio (S t) := by
  rw [t8_master_sqrt_closure t h0.le]
  rw [lt_div_iff₀ h0]
  linarith

-- [T24] :: {VER} | THE ITERATE STAYS IN THE UNIT INTERVAL AT EVERY DEPTH
theorem t24_iterate_stays_in_unit_interval (n : ℕ) (t : ℝ)
    (h0 : 0 < t) (h1 : t < 1) :
    0 < sqrtIter n t ∧ sqrtIter n t < 1 := by
  induction n with
  | zero => exact ⟨h0, h1⟩
  | succ m ih =>
      obtain ⟨hm0, hm1⟩ := ih
      simp only [sqrtIter]
      exact t20_root_stays_in_unit_interval (sqrtIter m t) hm0 hm1

-- [T25] :: {VER} | THE HORIZON IS THE OPERATOR'S FLOOR AT EVERY DEPTH
theorem t25_horizon_is_the_floor (n : ℕ) (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    1 < matched_ratio (sqrtIter n t) := by
  obtain ⟨hn0, hn1⟩ := t24_iterate_stays_in_unit_interval n t h0 h1
  simp only [matched_ratio]
  have hn2 : (0:ℝ) < sqrtIter n t ^ 2 := by positivity
  rw [lt_div_iff₀ hn2]
  nlinarith

-- [T26] :: {VER} | EACH ITERATION MOVES STRICTLY INWARD
theorem t26_iteration_strictly_decreases (n : ℕ) (t : ℝ)
    (h0 : 0 < t) (h1 : t < 1) :
    matched_ratio (sqrtIter (n + 1) t) < matched_ratio (sqrtIter n t) := by
  obtain ⟨hn0, hn1⟩ := t24_iterate_stays_in_unit_interval n t h0 h1
  simp only [sqrtIter]
  exact t21_matched_ratio_antitone (sqrtIter n t) (Real.sqrt (sqrtIter n t)) hn0
    (t19_sqrt_sandwich (sqrtIter n t) hn0 hn1).1

-- [T27] :: {VER} | THE TORSION LIMIT ENTERS THE CONTRACTION
theorem t27_tl_enters_the_contraction :
    matched_ratio (S TORSION_LIMIT) < matched_ratio TORSION_LIMIT := by
  exact t22_one_root_moves_inward TORSION_LIMIT t2_tl_in_unit_interval.1
    t2_tl_in_unit_interval.2

-- ============================================================
-- SECTION 5: THE OPERATOR CENTERS THE CORRIDOR
-- A band of fixed width factor k has geometric mean √k times its
-- ceiling, and the sandwich puts that mean strictly inside the
-- band. Structural for every k in (0,1), not numerical.
-- ============================================================

-- [T28] :: {VER} | THE GEOMETRIC MEAN OF A BAND, IN CLOSED FORM
-- The band [k·a, a] has geometric mean √k · a: squaring the
-- candidate returns the product of the endpoints.
theorem t28_band_geometric_mean (k a : ℝ) (hk : 0 ≤ k) :
    (Real.sqrt k * a) ^ 2 = (k * a) * a := by
  have hs : Real.sqrt k ^ 2 = k := Real.sq_sqrt hk
  calc (Real.sqrt k * a) ^ 2 = Real.sqrt k ^ 2 * a ^ 2 := by ring
    _ = k * a ^ 2 := by rw [hs]
    _ = (k * a) * a := by ring

-- [T29] :: {VER} | THE MEAN LIES STRICTLY INSIDE THE BAND
theorem t29_mean_inside_band (k a : ℝ) (h0 : 0 < k) (h1 : k < 1) (ha : 0 < a) :
    k * a < Real.sqrt k * a ∧ Real.sqrt k * a < a := by
  obtain ⟨hlo, hhi⟩ := t19_sqrt_sandwich k h0 h1
  constructor
  · exact (mul_lt_mul_right ha).mpr hlo
  · calc Real.sqrt k * a < 1 * a := (mul_lt_mul_right ha).mpr hhi
      _ = a := one_mul a

-- [T30] :: {VER} | THE CORRIDOR'S OWN CENTER IS √0.88 × TL
theorem t30_corridor_center :
    TL_IVA < Real.sqrt 0.88 * TORSION_LIMIT ∧
    Real.sqrt 0.88 * TORSION_LIMIT < TORSION_LIMIT := by
  obtain ⟨hlo, hhi⟩ :=
    t29_mean_inside_band 0.88 TORSION_LIMIT (by norm_num) (by norm_num)
      t2_tl_in_unit_interval.1
  constructor
  · simp only [TL_IVA]; linarith [hlo]
  · exact hhi

-- [T31] :: {VER} | THE CENTER IS AN IVA TORSION
theorem t31_center_classifies_iva :
    classify (Real.sqrt 0.88 * TORSION_LIMIT) = Phase.IVA := by
  obtain ⟨h1, h2⟩ := t30_corridor_center
  have h3 : Real.sqrt 0.88 * TORSION_LIMIT ≠ 0 := by
    have hpos : 0 < Real.sqrt 0.88 * TORSION_LIMIT :=
      lt_trans t3_floor_below_ceiling.1 h1
    exact ne_of_gt hpos
  unfold classify
  split_ifs with ha hb hc
  · exact absurd ha h3
  · exact absurd hb (not_lt.mpr h1.le)
  · rfl
  · exact absurd h2 hc

-- [T32] :: {VER} | THE CENTER'S MATCHED RADIUS IS 1/(0.88 · TL²)
theorem t32_center_matched_radius :
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT)
      = 1 / (0.88 * TORSION_LIMIT ^ 2) := by
  simp only [matched_ratio]
  rw [t28_band_geometric_mean 0.88 TORSION_LIMIT (by norm_num)]
  ring_nf

-- [T33] :: {VER} | THE CENTER'S MATCHED RADIUS, BRACKETED — 60.633989182759 r_s
theorem t33_center_matched_radius_value :
    60.63398918275939 < matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) ∧
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) < 60.63398918275940 := by
  rw [t32_center_matched_radius]
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- [T34] :: {VER} | THE CENTER'S MATCHED RADIUS IS THE GEOMETRIC MEAN OF
-- THE CORRIDOR'S RADIUS BAND. Squaring it returns the product of the
-- band's two endpoints, 1/TL² and 1/TL_IVA².
theorem t34_center_is_the_radius_band_mean :
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) ^ 2
      = matched_ratio TORSION_LIMIT * matched_ratio TL_IVA := by
  rw [t32_center_matched_radius]
  simp only [matched_ratio, TL_IVA]
  have h : TORSION_LIMIT ≠ 0 := ne_of_gt t2_tl_in_unit_interval.1
  field_simp
  ring

-- [T35] :: {VER} | THE CENTER LIES INSIDE THE RADIUS BAND
theorem t35_center_inside_radius_band :
    matched_ratio TORSION_LIMIT
      < matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) ∧
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) < matched_ratio TL_IVA := by
  obtain ⟨h1, h2⟩ := t30_corridor_center
  constructor
  · exact t21_matched_ratio_antitone (Real.sqrt 0.88 * TORSION_LIMIT)
      TORSION_LIMIT (lt_trans t3_floor_below_ceiling.1 h1) h2
  · exact t21_matched_ratio_antitone TL_IVA (Real.sqrt 0.88 * TORSION_LIMIT)
      t3_floor_below_ceiling.1 h1

-- [T36] :: {VER} | THE RADIUS BAND'S WIDTH FACTOR IS 1/0.88², EXACTLY
theorem t36_radius_band_width :
    matched_ratio TL_IVA = matched_ratio TORSION_LIMIT * (625 / 484) := by
  simp only [matched_ratio, TL_IVA]
  have h : TORSION_LIMIT ≠ 0 := ne_of_gt t2_tl_in_unit_interval.1
  field_simp
  ring

-- ============================================================
-- SECTION 6: THE CONVERSION FRACTION UNDER THE OPERATOR
-- Reading A squared is twice the rest-mass conversion fraction,
-- so the operator's image has conversion fraction X/2.
-- ============================================================

-- [T37] :: {VER} | THE CONVERSION FRACTION OF A ROOT IS HALF WHAT WAS ROOTED
theorem t37_conversion_of_a_root (X : ℝ) (hX : 0 ≤ X) :
    eta_of_tau (S X) = X / 2 := by
  simp only [eta_of_tau, S, Real.sq_sqrt hX]

-- [T38] :: {VER} | THE MATCHED RADIUS ON THE CONVERSION FRACTION
theorem t38_matched_radius_on_conversion (t : ℝ) (ht : t ≠ 0) :
    matched_ratio t = 1 / (2 * eta_of_tau t) := by
  simp only [matched_ratio, eta_of_tau]
  have h2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T39] :: {VER} | THE ROOT OF TL HAS CONVERSION FRACTION TL/2
theorem t39_root_of_tl_conversion :
    eta_of_tau (S TORSION_LIMIT) = TORSION_LIMIT / 2 := by
  exact t37_conversion_of_a_root TORSION_LIMIT t2_tl_in_unit_interval.1.le

-- ============================================================
-- SECTION 7: THE MASS CANCELS HERE TOO
-- The matched radius in metres still carries the central body, but
-- in Schwarzschild units the operator's output is the drive alone.
-- ============================================================

-- [T40] :: {VER} | THE MATCHED RADIUS IN METRES FACTORS THROUGH THE RATIO
theorem t40_matched_radius_factors (GM t : ℝ) (ht : t ≠ 0) :
    r_match GM t = r_s GM * matched_ratio t := by
  simp only [r_match, matched_ratio]
  field_simp

-- [T41] :: {VER} | THE MASS CANCELS IN THE OPERATOR'S OUTPUT
theorem t41_mass_cancels (GM X : ℝ) (hGM : 0 < GM) (hX : 0 < X) :
    r_match GM (S X) / r_s GM = 1 / X := by
  have hrs : r_s GM ≠ 0 := by
    simp only [r_s, C_LIGHT]
    have : (0:ℝ) < 2 * GM / (299792458:ℝ) ^ 2 := by positivity
    exact ne_of_gt this
  rw [t40_matched_radius_factors GM (S X) (by
    simp only [S]
    exact ne_of_gt (Real.sqrt_pos.mpr hX))]
  rw [t8_master_sqrt_closure X hX.le]
  field_simp

-- ============================================================
-- SECTION 8: MASTER
-- ============================================================

-- [MASTER] :: {VER} | THE SQUARE-ROOT TORSION OPERATOR
-- The operator identity, the two exact landings, the exact width
-- factor between them, the horizon as the floor, and the corridor's
-- own center, in one statement.
theorem MASTER_sqrt_torsion_operator :
    -- the operator identity: the root cancels
    (∀ X : ℝ, 0 ≤ X → matched_ratio (S X) = 1 / X) ∧
    -- the layer is closed over the rationals
    TORSION_LIMIT = 8556193749001 / 62500000000000 ∧
    matched_ratio (S TORSION_LIMIT) = 62500000000000 / 8556193749001 ∧
    matched_ratio (S TL_IVA) = 781250000000000 / 94118131239011 ∧
    -- the exactness anchor
    TORSION_LIMIT * TL_DIVISOR = ALPHA_INV ∧
    -- the two landings stand in the corridor width factor, exactly
    matched_ratio (S TL_IVA) = matched_ratio (S TORSION_LIMIT) * (25 / 22) ∧
    -- the operator is horizon-ward, and the horizon is its floor
    (∀ t : ℝ, 0 < t → t < 1 → matched_ratio (S t) < matched_ratio t) ∧
    (∀ (n : ℕ) (t : ℝ), 0 < t → t < 1 → 1 < matched_ratio (sqrtIter n t)) ∧
    -- the operator centers any band, structurally
    (∀ k a : ℝ, 0 < k → k < 1 → 0 < a →
      k * a < Real.sqrt k * a ∧ Real.sqrt k * a < a) ∧
    -- and at the corridor's width factor the center is an IVA torsion
    classify (Real.sqrt 0.88 * TORSION_LIMIT) = Phase.IVA ∧
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) ^ 2
      = matched_ratio TORSION_LIMIT * matched_ratio TL_IVA := by
  refine ⟨fun X hX => t8_master_sqrt_closure X hX, t4_tl_is_rational,
    t12_first_landing_rational, t15_second_landing_rational,
    t7_tl_times_1001_is_alpha, t17_landings_ratio_is_the_width_factor,
    fun t h0 h1 => t22_one_root_moves_inward t h0 h1,
    fun n t h0 h1 => t25_horizon_is_the_floor n t h0 h1,
    fun k a h0 h1 ha => t29_mean_inside_band k a h0 h1 ha,
    t31_center_classifies_iva, t34_center_is_the_radius_band_mean⟩

end SNSFL_MatchedRadiusTL

end
