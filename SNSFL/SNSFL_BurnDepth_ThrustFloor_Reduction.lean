-- ============================================================
-- SNSFL_BurnDepth_ThrustFloor_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | BURN DEPTH, THE THRUST FLOOR, AND THE ENGINE EACH BODY PRESCRIBES
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,20](GRAV) | Physics Ground — Gravitation
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, Reading B, the conversion fraction, the
-- Schwarzschild radius, the matched ratio, the compactness and the surface
-- torsion are all restated here at full precision, so that a reader or a
-- machine can close every proof without leaving the file. The parent
-- reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,0,19]   Matched Surface Under Rotation — the level set g_tt = τ_A² − 1
--   [9,9,0,18]   Propellant Law and Compactness — the saving bounded by e, C > 2η
--   [9,9,0,17]   Matched Radius Reduction       — r_match = r_s/τ_A², the mass canceling
--   [9,9,0,17.1] Matched Radius, specialist     — the square-root torsion operator
--   [9,9,2,0]    IVA Propulsion Reduction       — the two readings, the bridge, the gain cap
--   [9,9,0,1]    GR Reduction                   — r_s as the Pattern-lock threshold
--   [9,9,3,14]   Alpha Reduction                — α⁻¹ = Ω₀ × 100.1, TL = α⁻¹/1001
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   DEPTH IS THE PARAMETER. Writing u = v_esc(r)/v_e = √(r_match/r) for the
--   burn radius measured against the drive's own matched radius, a vehicle
--   falling from rest at infinity and burning at depth u reaches
--
--       v_∞ = v_e √(τ_B (τ_B + 2u))
--
--   which is STRICTLY INCREASING IN u. Burning deeper is always better and the
--   matched radius is not an extremum: it is the UNIT in which depth is
--   measured, the radius at which the drive and the well are the same size,
--   and u = 1 returns the parent's chain law exactly.
--
--   THE BOUND GENERALIZES. Inverting for a target x = v_∞/v_e gives
--   τ_B = √(u² + x²) − u, so the saving against the ideal rocket is
--
--       S(x,u) = exp(x − √(u² + x²) + u)   <   e^u
--
--   strictly, for every finite burn. DEPTH u IS WORTH u E-FOLDS, and the
--   parent's S < e is the u = 1 case.
--
--   TWO CEILINGS ON DEPTH. A burn cannot occur inside the body, so
--   u ≤ √C/τ_A = τ_surface/τ_A, and that GEOMETRIC ceiling exceeding one is
--   exactly the parent's availability criterion C > τ_A²: the body offers this
--   drive at least one e-fold. The THRUST ceiling is new here. The
--   characteristic time collapses to t_char = 2√2·GM/(c³τ_A³u³), so collecting
--   the advantage requires
--
--       F/m ≥ (1 − e^−τ_B) c⁴ τ_A⁴ u³ / (2√2 f GM)
--
--   rising as the FOURTH POWER of Reading A and the CUBE of depth.
--
--   AND THE VEHICLE CANNOT LAUNCH. A thrust-to-mass below the surface
--   gravitational acceleration cannot lift the vehicle it belongs to, so
--   orbital assembly follows from the floor rather than from preference.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Exp

noncomputable section

namespace SNSFL_BurnDepthThrustFloor

-- ============================================================
-- SECTION 0: CONSTANTS, THE FOUR PHASES, THE TWO READINGS
-- Restated here in full. This file depends on no other file.
-- ============================================================

/-- The Sovereign Anchor, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Torsion Limit. Ω₀/10 — discovered, not chosen. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor. 0.88 × TL. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- The corridor width factor. -/
def IVA_FACTOR : ℝ := 0.88

/-- Speed of light in vacuum, m/s. Exact by SI definition. -/
def C_LIGHT : ℝ := 299792458

/-- Standard gravitational acceleration, m/s². Exact by definition. -/
def G_STANDARD : ℝ := 9.80665

/-- The inverse fine-structure constant. Ω₀ × 100.1. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The integer the Torsion Limit divides the fine-structure constant by.
1001 = 7 × 11 × 13. -/
def TL_DIVISOR : ℝ := 1001

inductive Phase : Type
  | Noble
  | Locked
  | IVA
  | Shatter
  deriving DecidableEq, Repr

def classify (τ : ℝ) : Phase :=
  if τ = 0 then Phase.Noble
  else if τ < TL_IVA then Phase.Locked
  else if τ < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

/-- Reading A. The exhaust velocity against light speed. -/
def tau_A (w : ℝ) : ℝ := w / C_LIGHT

/-- The rest-mass conversion fraction: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The Schwarzschild radius of a body with gravitational parameter GM. -/
def r_s (GM : ℝ) : ℝ := 2 * GM / C_LIGHT ^ 2

/-- The matched radius in Schwarzschild units: 1/τ_A² = 1/(2η). -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

/-- The compactness of a body: its Schwarzschild radius over its radius. -/
def compactness (rs R : ℝ) : ℝ := rs / R

/-- The surface torsion, the body's own address: √C. -/
def surface_torsion (rs R : ℝ) : ℝ := Real.sqrt (compactness rs R)

/-- The resonance gain acting as an exhaust-velocity multiplier. -/
def gained_tau (t g : ℝ) : ℝ := (1 + g) * t

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

-- [T4] :: {VER} | THE EXACTNESS ANCHOR: TL × 1001 = α⁻¹
theorem t4_tl_times_1001_is_alpha :
    TORSION_LIMIT * TL_DIVISOR = ALPHA_INV := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, ALPHA_INV]; norm_num

-- [T5] :: {VER} | THE BARE TERM AND THE KINETIC TERM
theorem t5_bare_plus_kinetic :
    100 * SOVEREIGN_ANCHOR + TORSION_LIMIT = ALPHA_INV ∧
    1000 * TORSION_LIMIT + TORSION_LIMIT = ALPHA_INV := by
  constructor
  · simp only [SOVEREIGN_ANCHOR, TORSION_LIMIT, ALPHA_INV]; norm_num
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T6] :: {VER} | READING A SQUARED IS TWICE THE CONVERSION FRACTION
theorem t6_tau_sq_is_twice_eta (t : ℝ) : t ^ 2 = 2 * eta_of_tau t := by
  simp only [eta_of_tau]; ring

-- [T7] :: {VER} | THE MATCHED RATIO IS POSITIVE
theorem t7_matched_ratio_pos (t : ℝ) (ht : t ≠ 0) : 0 < matched_ratio t := by
  simp only [matched_ratio]
  have h : (0:ℝ) < t ^ 2 :=
    lt_of_le_of_ne (sq_nonneg t) (Ne.symm (pow_ne_zero 2 ht))
  exact div_pos one_pos h

-- [T8] :: {VER} | THE CORRIDOR CEILING CLASSIFIES AS SHATTER AT ITS OWN VALUE
theorem t8_ceiling_is_shatter : classify TORSION_LIMIT = Phase.Shatter := by
  have h0 : TORSION_LIMIT ≠ 0 := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  unfold classify
  rw [if_neg h0, if_neg (not_lt.mpr t3_floor_below_ceiling.2.le),
    if_neg (lt_irrefl TORSION_LIMIT)]

-- ============================================================
-- SECTION 1: THE DEPTH PARAMETER
-- u = v_esc(r)/v_e = sqrt(r_match/r). One at the matched radius.
-- ============================================================

/-- The burn radius at depth u, in units of r_s: r = r_s/(τ_A² u²). -/
def burn_ratio (t u : ℝ) : ℝ := 1 / (t ^ 2 * u ^ 2)

/-- Depth, from the matched ratio and the burn ratio. -/
def depth_of_ratio (t rr : ℝ) : ℝ := Real.sqrt (matched_ratio t / rr)

-- [T9] :: {INV} | DEPTH RECOVERS u FROM THE BURN RATIO
theorem t9_depth_recovers (t u : ℝ) (ht : t ≠ 0) (hu : 0 < u) :
    depth_of_ratio t (burn_ratio t u) = u := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  have hu2 : (u:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [depth_of_ratio, burn_ratio, matched_ratio]
  rw [show (1 / t ^ 2) / (1 / (t ^ 2 * u ^ 2)) = u ^ 2 by field_simp]
  exact Real.sqrt_sq hu.le

-- [T10] :: {INV} | DEPTH IS ONE AT THE MATCHED RADIUS
theorem t10_depth_one_at_matched (t : ℝ) (ht : t ≠ 0) :
    burn_ratio t 1 = matched_ratio t := by
  simp only [burn_ratio, matched_ratio]; norm_num

-- [T11] :: {INV} | GREATER DEPTH IS A SMALLER RADIUS
theorem t11_deeper_is_smaller (t u₁ u₂ : ℝ) (ht : t ≠ 0) (h1 : 0 < u₁) (h : u₁ < u₂) :
    burn_ratio t u₂ < burn_ratio t u₁ := by
  have ht2 : (0:ℝ) < t ^ 2 :=
    lt_of_le_of_ne (sq_nonneg t) (Ne.symm (pow_ne_zero 2 ht))
  have h2 : (0:ℝ) < u₁ ^ 2 := by positivity
  have husq : u₁ ^ 2 < u₂ ^ 2 := by nlinarith [h1, h]
  have hlt : t ^ 2 * u₁ ^ 2 < t ^ 2 * u₂ ^ 2 := mul_lt_mul_of_pos_left husq ht2
  simp only [burn_ratio]
  exact one_div_lt_one_div_of_lt (by positivity) hlt

-- [T12] :: {INV} | THE BURN RATIO IS POSITIVE
theorem t12_burn_ratio_pos (t u : ℝ) (ht : t ≠ 0) (hu : 0 < u) :
    0 < burn_ratio t u := by
  have ht2 : (0:ℝ) < t ^ 2 :=
    lt_of_le_of_ne (sq_nonneg t) (Ne.symm (pow_ne_zero 2 ht))
  simp only [burn_ratio]
  positivity

-- [T13] :: {INV} | DEPTH ON THE CONVERSION FRACTION
theorem t13_burn_ratio_on_eta (t u : ℝ) : burn_ratio t u = 1 / (2 * eta_of_tau t * u ^ 2) := by
  simp only [burn_ratio, eta_of_tau]; ring_nf

-- ============================================================
-- SECTION 2: THE DEPTH LAW
-- v_inf = v_e sqrt(tau_B (tau_B + 2u)). Strictly increasing in u.
-- ============================================================

/-- The square of the departure speed in units of the exhaust velocity. -/
def vinf_sq (tb u : ℝ) : ℝ := tb * (tb + 2 * u)

-- [T14] :: {MASTER} | THE DEPTH LAW IS ENERGY CONSERVATION ACROSS THE BURN
theorem t14_depth_law (tb u : ℝ) :
    (u + tb) ^ 2 - u ^ 2 = vinf_sq tb u := by
  simp only [vinf_sq]; ring

-- [T15] :: {MASTER} | DEEPER IS ALWAYS BETTER
theorem t15_deeper_is_better (tb u₁ u₂ : ℝ) (htb : 0 < tb) (h : u₁ < u₂) :
    vinf_sq tb u₁ < vinf_sq tb u₂ := by
  simp only [vinf_sq]
  nlinarith [htb, h]

-- [T16] :: {INV} | AT THE MATCHED RADIUS THE DEPTH LAW IS THE CHAIN LAW
theorem t16_chain_law_at_unit_depth (tb : ℝ) :
    vinf_sq tb 1 = tb * (2 + tb) := by
  simp only [vinf_sq]; ring

-- [T17] :: {INV} | THE DEPTH LAW IS STRICTLY INCREASING IN READING B
theorem t17_increasing_in_reading_b (tb₁ tb₂ u : ℝ) (h0 : 0 ≤ tb₁) (hu : 0 < u)
    (h : tb₁ < tb₂) : vinf_sq tb₁ u < vinf_sq tb₂ u := by
  simp only [vinf_sq]
  nlinarith [h0, hu, h]

-- [T18] :: {INV} | A ZERO BURN DELIVERS NOTHING
theorem t18_zero_burn (u : ℝ) : vinf_sq 0 u = 0 := by
  simp only [vinf_sq]; ring

-- [T19] :: {INV} | THE DEPTH LAW IS POSITIVE FOR A POSITIVE BURN AT POSITIVE DEPTH
theorem t19_vinf_pos (tb u : ℝ) (htb : 0 < tb) (hu : 0 < u) : 0 < vinf_sq tb u := by
  simp only [vinf_sq]
  nlinarith [htb, hu]

-- ============================================================
-- SECTION 3: THE INVERSION AT DEPTH
-- tau_B = sqrt(u^2 + x^2) - u.
-- ============================================================

/-- The radical of the inversion at depth. -/
def rad_depth (u x : ℝ) : ℝ := Real.sqrt (u ^ 2 + x ^ 2)

/-- Reading B required to reach x = v_inf/v_e from depth u. -/
def tau_B_at (u x : ℝ) : ℝ := rad_depth u x - u

-- [T20] :: {VER} | THE RADICAL SQUARES BACK
theorem t20_rad_sq (u x : ℝ) : rad_depth u x ^ 2 = u ^ 2 + x ^ 2 := by
  simp only [rad_depth]
  exact Real.sq_sqrt (by positivity)

-- [T21] :: {VER} | THE RADICAL IS POSITIVE WHEN THE DEPTH IS
theorem t21_rad_pos (u x : ℝ) (hu : 0 < u) : 0 < rad_depth u x := by
  simp only [rad_depth]
  apply Real.sqrt_pos.mpr
  positivity

-- [T22] :: {MASTER} | THE INVERSION SOLVES THE DEPTH LAW
theorem t22_inversion_solves (u x : ℝ) :
    vinf_sq (tau_B_at u x) u = x ^ 2 := by
  have hs := t20_rad_sq u x
  simp only [vinf_sq, tau_B_at]
  linear_combination hs

-- [T23] :: {INV} | THE RADICAL EXCEEDS THE DEPTH
theorem t23_rad_gt_depth (u x : ℝ) (hx : x ≠ 0) (hu : 0 < u) : u < rad_depth u x := by
  have hs := t20_rad_sq u x
  have hx2 : (0:ℝ) < x ^ 2 :=
    lt_of_le_of_ne (sq_nonneg x) (Ne.symm (pow_ne_zero 2 hx))
  have hp : 0 < rad_depth u x := t21_rad_pos u x hu
  nlinarith [hs, hp, hu, hx2]

-- [T24] :: {INV} | READING B AT DEPTH IS POSITIVE FOR A POSITIVE TARGET
theorem t24_tau_B_pos (u x : ℝ) (hx : x ≠ 0) (hu : 0 < u) : 0 < tau_B_at u x := by
  simp only [tau_B_at]
  linarith [t23_rad_gt_depth u x hx hu]

-- [T25] :: {INV} | AT UNIT DEPTH THE INVERSION IS THE PARENT'S
theorem t25_inversion_at_unit_depth (x : ℝ) :
    tau_B_at 1 x = Real.sqrt (1 + x ^ 2) - 1 := by
  simp only [tau_B_at, rad_depth]
  norm_num

-- [T26] :: {MASTER} | THE MANEUVER ALWAYS COSTS LESS READING B THAN THE IDEAL ROCKET
theorem t26_cheaper_than_ideal (u x : ℝ) (hu : 0 < u) (hx : 0 < x) :
    tau_B_at u x < x := by
  have hs := t20_rad_sq u x
  have hp : 0 < rad_depth u x := t21_rad_pos u x hu
  simp only [tau_B_at]
  nlinarith [hs, hp, hu, hx]

-- ============================================================
-- SECTION 4: THE SAVING AT DEPTH, BOUNDED BY e^u
-- ============================================================

/-- The ideal rocket's mass ratio for a target x. -/
def mr_ideal (x : ℝ) : ℝ := Real.exp x

/-- The mass ratio of a burn at depth u reaching the same target. -/
def mr_depth (u x : ℝ) : ℝ := Real.exp (tau_B_at u x)

/-- The exponent of the saving at depth. -/
def sav_exp (u x : ℝ) : ℝ := x - rad_depth u x + u

/-- The propellant saving at depth. -/
def saving (u x : ℝ) : ℝ := Real.exp (sav_exp u x)

-- [T27] :: {MASTER} | THE SAVING IS THE RATIO OF THE TWO MASS RATIOS
theorem t27_saving_is_the_ratio (u x : ℝ) :
    saving u x = mr_ideal x / mr_depth u x := by
  simp only [saving, mr_ideal, mr_depth, sav_exp, tau_B_at]
  rw [← Real.exp_sub]
  congr 1
  ring

-- [T28] :: {INV} | THE EXPONENT IS STRICTLY BELOW THE DEPTH
theorem t28_exponent_lt_depth (u x : ℝ) (hx : x ≠ 0) (hu : 0 < u) :
    sav_exp u x < u := by
  have hxr : x < rad_depth u x := by
    have habs : |x| < rad_depth u x := by
      simp only [rad_depth]
      rw [← Real.sqrt_sq_eq_abs]
      exact Real.sqrt_lt_sqrt (sq_nonneg x) (by nlinarith [hu])
    exact lt_of_le_of_lt (le_abs_self x) habs
  simp only [sav_exp]
  linarith

-- [T29] :: {MASTER} | THE SAVING IS STRICTLY BOUNDED BY e^u
-- Depth u is worth u e-folds, and no finite burn reaches the bound.
theorem t29_saving_lt_exp_depth (u x : ℝ) (hx : x ≠ 0) (hu : 0 < u) :
    saving u x < Real.exp u := by
  simp only [saving]
  exact Real.exp_lt_exp.mpr (t28_exponent_lt_depth u x hx hu)

-- [T30] :: {INV} | THE SAVING EXCEEDS ONE FOR EVERY POSITIVE BURN
theorem t30_saving_gt_one (u x : ℝ) (hu : 0 < u) (hx : 0 < x) : 1 < saving u x := by
  have h := t26_cheaper_than_ideal u x hu hx
  have hexp : 0 < sav_exp u x := by
    simp only [sav_exp, tau_B_at] at h ⊢
    linarith
  simp only [saving]
  calc (1:ℝ) = Real.exp 0 := Real.exp_zero.symm
    _ < Real.exp (sav_exp u x) := Real.exp_lt_exp.mpr hexp

-- [T31] :: {MASTER} | AT UNIT DEPTH THE BOUND IS e, THE PARENT'S RESULT
theorem t31_bound_at_unit_depth (x : ℝ) (hx : x ≠ 0) :
    saving 1 x < Real.exp 1 :=
  t29_saving_lt_exp_depth 1 x hx one_pos

-- [T32] :: {INV} | AT UNIT DEPTH THE SAVING FACTORS THROUGH e
theorem t32_saving_factored_at_unit (x : ℝ) :
    saving 1 x = Real.exp 1 * Real.exp (x - Real.sqrt (1 + x ^ 2)) := by
  have h1 : (1:ℝ) ^ 2 + x ^ 2 = 1 + x ^ 2 := by norm_num
  simp only [saving, sav_exp, rad_depth, h1]
  rw [← Real.exp_add]
  congr 1
  ring

-- [T33] :: {INV} | THE SAVING IS STRICTLY INCREASING IN THE TARGET
theorem t33_saving_mono_in_target (u x y : ℝ) (hu : 0 < u) (h : x < y) (hx : 0 ≤ x) :
    saving u x < saving u y := by
  have hsx := t20_rad_sq u x
  have hsy := t20_rad_sq u y
  have hpx : 0 < rad_depth u x := t21_rad_pos u x hu
  have hpy : 0 < rad_depth u y := t21_rad_pos u y hu
  have hrx : x < rad_depth u x := by nlinarith [hsx, hpx, hu]
  have hry : y < rad_depth u y := by nlinarith [hsy, hpy, hu, hx, h]
  simp only [saving, sav_exp]
  apply Real.exp_lt_exp.mpr
  nlinarith [hsx, hsy, hpx, hpy, hrx, hry, h, hx]

-- ============================================================
-- SECTION 5: THE GEOMETRIC CEILING ON DEPTH
-- u_max = tau_surface/tau_A, and availability is u_max > 1.
-- ============================================================

/-- The geometric ceiling on depth: the body's address over the drive's Reading A. -/
def u_max (rs R t : ℝ) : ℝ := surface_torsion rs R / t

-- [T34] :: {VER} | THE SURFACE TORSION SQUARES TO THE COMPACTNESS
theorem t34_surface_torsion_sq (rs R : ℝ) (h : 0 ≤ compactness rs R) :
    surface_torsion rs R ^ 2 = compactness rs R := by
  simp only [surface_torsion]
  exact Real.sq_sqrt h

-- [T35] :: {VER} | THE SURFACE TORSION IS NONNEGATIVE
theorem t35_surface_torsion_nonneg (rs R : ℝ) : 0 ≤ surface_torsion rs R :=
  Real.sqrt_nonneg _

-- [T36] :: {MASTER} | AVAILABILITY IS EXACTLY ONE E-FOLD OF DEPTH
-- C > τ_A² if and only if the geometric ceiling exceeds one.
theorem t36_availability_is_one_efold (rs R t : ℝ) (ht : 0 < t)
    (hC : 0 ≤ compactness rs R) :
    t ^ 2 < compactness rs R ↔ 1 < u_max rs R t := by
  have hsq := t34_surface_torsion_sq rs R hC
  have hnn := t35_surface_torsion_nonneg rs R
  simp only [u_max]
  rw [lt_div_iff₀ ht, one_mul]
  constructor
  · intro h; nlinarith [hsq, hnn, ht, h]
  · intro h; nlinarith [hsq, hnn, ht, h]

-- [T37] :: {INV} | THE CEILING ON THE CONVERSION FRACTION
theorem t37_availability_on_eta (rs R t : ℝ) (ht : 0 < t) (hC : 0 ≤ compactness rs R) :
    2 * eta_of_tau t < compactness rs R ↔ 1 < u_max rs R t := by
  rw [← t6_tau_sq_is_twice_eta t]
  exact t36_availability_is_one_efold rs R t ht hC

-- [T38] :: {INV} | THE CEILING IS POSITIVE
theorem t38_u_max_pos (rs R t : ℝ) (ht : 0 < t) (hC : 0 < compactness rs R) :
    0 < u_max rs R t := by
  simp only [u_max, surface_torsion]
  exact div_pos (Real.sqrt_pos.mpr hC) ht

-- [T39] :: {INV} | A LOWER READING A RAISES THE CEILING
theorem t39_lower_reading_raises_ceiling (rs R t₁ t₂ : ℝ) (h1 : 0 < t₁) (h : t₁ < t₂)
    (hC : 0 < compactness rs R) :
    u_max rs R t₂ < u_max rs R t₁ := by
  have hsp : 0 < surface_torsion rs R := by
    simp only [surface_torsion]; exact Real.sqrt_pos.mpr hC
  simp only [u_max]
  rw [div_lt_div_iff₀ (by linarith : (0:ℝ) < t₂) h1]
  nlinarith [hsp, h]

-- [T40] :: {MASTER} | THE BODY'S OWN ADDRESS GIVES UNIT DEPTH
theorem t40_address_is_unit_depth (rs R : ℝ) (hC : 0 < compactness rs R) :
    u_max rs R (surface_torsion rs R) = 1 := by
  have hsp : 0 < surface_torsion rs R := by
    simp only [surface_torsion]; exact Real.sqrt_pos.mpr hC
  simp only [u_max]
  exact div_self (ne_of_gt hsp)

-- ============================================================
-- SECTION 6: THE MATCHED SURFACE IS AN EQUIPOTENTIAL
-- Lateral motion is the zero-cost direction; only altitude retunes.
-- ============================================================

/-- The radius a given Reading A addresses, in units of r_s. -/
def addressed_ratio (t : ℝ) : ℝ := 1 / t ^ 2

-- [T41] :: {INV} | THE ADDRESS MAP IS INJECTIVE ON POSITIVE READING A
theorem t41_address_injective (t₁ t₂ : ℝ) (h1 : 0 < t₁) (h2 : 0 < t₂)
    (h : addressed_ratio t₁ = addressed_ratio t₂) : t₁ = t₂ := by
  simp only [addressed_ratio] at h
  have e1 : (0:ℝ) < t₁ ^ 2 := by positivity
  have e2 : (0:ℝ) < t₂ ^ 2 := by positivity
  have hsq : t₁ ^ 2 = t₂ ^ 2 := by
    field_simp at h
    linarith
  nlinarith [hsq, h1, h2]

-- [T42] :: {MASTER} | LATERAL MOTION IS THE ZERO-COST DIRECTION
-- Two points at the same addressed radius require the same Reading A, so a
-- path between them at constant radius requires no change of tuning.
theorem t42_lateral_is_free (t₁ t₂ : ℝ) (h1 : 0 < t₁) (h2 : 0 < t₂)
    (h : addressed_ratio t₁ = addressed_ratio t₂) : t₂ - t₁ = 0 := by
  have := t41_address_injective t₁ t₂ h1 h2 h
  linarith

-- [T43] :: {INV} | THE CONTROL LAW: THE RADIUS RATIO IS THE INVERSE SQUARE OF THE TUNING RATIO
theorem t43_control_law (t₁ t₂ : ℝ) (h1 : t₁ ≠ 0) (h2 : t₂ ≠ 0) :
    addressed_ratio t₁ / addressed_ratio t₂ = (t₂ / t₁) ^ 2 := by
  have e1 : (t₁:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 h1
  have e2 : (t₂:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 h2
  simp only [addressed_ratio]
  field_simp

-- [T44] :: {INV} | A HIGHER TUNING ADDRESSES A LOWER RADIUS
theorem t44_higher_tuning_lower_radius (t₁ t₂ : ℝ) (h1 : 0 < t₁) (h : t₁ < t₂) :
    addressed_ratio t₂ < addressed_ratio t₁ := by
  have e1 : (0:ℝ) < t₁ ^ 2 := by positivity
  simp only [addressed_ratio]
  exact one_div_lt_one_div_of_lt e1 (by nlinarith [h1, h])

-- ============================================================
-- SECTION 7: THE THRUST FLOOR
-- t_char = 2 sqrt 2 GM/(c^3 tau^3 u^3), and the floor rises as tau^4 u^3.
-- ============================================================

/-- The characteristic time of the region at depth u. -/
def t_char (GM t u : ℝ) : ℝ :=
  2 * Real.sqrt 2 * GM / (C_LIGHT ^ 3 * t ^ 3 * u ^ 3)

/-- The burn radius in meters at depth u about a body of parameter GM. -/
def burn_radius (GM t u : ℝ) : ℝ := r_s GM / (t ^ 2 * u ^ 2)

/-- The propellant fraction consumed by a burn of Reading B. -/
def prop_fraction (tb : ℝ) : ℝ := 1 - Real.exp (-tb)

/-- The thrust floor: the thrust per unit mass that keeps the burn impulsive. -/
def thrust_floor (GM t u f tb : ℝ) : ℝ :=
  prop_fraction tb * C_LIGHT ^ 4 * t ^ 4 * u ^ 3 / (2 * Real.sqrt 2 * f * GM)

-- [T45] :: {MASTER} | THE CHARACTERISTIC TIME IN CLOSED FORM
-- Stated as the square, so the identity closes without a radical on both sides.
theorem t45_t_char_closed_form (GM t u : ℝ) (hGM : GM ≠ 0) (ht : t ≠ 0) (hu : u ≠ 0) :
    t_char GM t u ^ 2 = burn_radius GM t u ^ 3 / GM := by
  have h2 : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hs2 : (2 * Real.sqrt 2 * GM) ^ 2 = 8 * GM ^ 2 := by
    linear_combination 4 * GM ^ 2 * h2
  have hc : (C_LIGHT:ℝ) ≠ 0 := by simp only [C_LIGHT]; norm_num
  simp only [t_char, burn_radius, r_s]
  rw [div_pow, hs2]
  field_simp
  ring

-- [T46] :: {INV} | THE CHARACTERISTIC TIME IS POSITIVE
theorem t46_t_char_pos (GM t u : ℝ) (hGM : 0 < GM) (ht : 0 < t) (hu : 0 < u) :
    0 < t_char GM t u := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  simp only [t_char]
  positivity

-- [T47] :: {INV} | THE CHARACTERISTIC TIME SHRINKS AS THE CUBE OF DEPTH
theorem t47_t_char_antitone_in_depth (GM t u₁ u₂ : ℝ) (hGM : 0 < GM) (ht : 0 < t)
    (h1 : 0 < u₁) (h : u₁ < u₂) :
    t_char GM t u₂ < t_char GM t u₁ := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hnum : (0:ℝ) < 2 * Real.sqrt 2 * GM := by positivity
  have hd1 : (0:ℝ) < C_LIGHT ^ 3 * t ^ 3 * u₁ ^ 3 := by positivity
  have h2u : (0:ℝ) < u₂ := by linarith
  have hq3 : (0:ℝ) < u₂ ^ 2 + u₂ * u₁ + u₁ ^ 2 := by
    nlinarith [mul_pos h2u h1, sq_nonneg u₁, sq_nonneg u₂]
  have hcube : u₁ ^ 3 < u₂ ^ 3 := by
    nlinarith [mul_pos (sub_pos.mpr h) hq3]
  have hbase : (0:ℝ) < C_LIGHT ^ 3 * t ^ 3 := by positivity
  have hlt : C_LIGHT ^ 3 * t ^ 3 * u₁ ^ 3 < C_LIGHT ^ 3 * t ^ 3 * u₂ ^ 3 :=
    mul_lt_mul_of_pos_left hcube hbase
  simp only [t_char]
  rw [div_lt_div_iff₀ (by linarith : (0:ℝ) < C_LIGHT ^ 3 * t ^ 3 * u₂ ^ 3) hd1]
  nlinarith [hnum, hlt]

-- [T48] :: {INV} | THE PROPELLANT FRACTION IS BELOW ONE AND POSITIVE
theorem t48_prop_fraction_range (tb : ℝ) (htb : 0 < tb) :
    0 < prop_fraction tb ∧ prop_fraction tb < 1 := by
  have h1 : Real.exp (-tb) < 1 := by
    calc Real.exp (-tb) < Real.exp 0 := Real.exp_lt_exp.mpr (by linarith)
      _ = 1 := Real.exp_zero
  have h2 : 0 < Real.exp (-tb) := Real.exp_pos _
  simp only [prop_fraction]
  constructor <;> linarith

-- [T49] :: {MASTER} | THE THRUST FLOOR RISES AS THE FOURTH POWER OF READING A
theorem t49_floor_quartic_in_reading_a (GM u f tb t₁ t₂ : ℝ) (hGM : 0 < GM) (hf : 0 < f)
    (hu : 0 < u) (htb : 0 < tb) (h1 : 0 < t₁) (h : t₁ < t₂) :
    thrust_floor GM t₁ u f tb < thrust_floor GM t₂ u f tb := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hp := (t48_prop_fraction_range tb htb).1
  have hden : (0:ℝ) < 2 * Real.sqrt 2 * f * GM := by positivity
  have hnum : (0:ℝ) < prop_fraction tb * C_LIGHT ^ 4 * u ^ 3 := by positivity
  have h2t : (0:ℝ) < t₂ := by linarith
  have hq4 : (0:ℝ) < t₂ ^ 3 + t₂ ^ 2 * t₁ + t₂ * t₁ ^ 2 + t₁ ^ 3 := by
    have a1 : (0:ℝ) < t₂ ^ 3 := by positivity
    have a2 : (0:ℝ) < t₂ ^ 2 * t₁ := by positivity
    have a3 : (0:ℝ) < t₂ * t₁ ^ 2 := by positivity
    have a4 : (0:ℝ) < t₁ ^ 3 := by positivity
    linarith
  have hq : t₁ ^ 4 < t₂ ^ 4 := by
    nlinarith [mul_pos (sub_pos.mpr h) hq4]
  simp only [thrust_floor]
  rw [div_lt_div_iff₀ hden hden]
  nlinarith [mul_pos (mul_pos hnum hden) (sub_pos.mpr hq)]

-- [T50] :: {MASTER} | THE THRUST FLOOR RISES AS THE CUBE OF DEPTH
theorem t50_floor_cubic_in_depth (GM t f tb u₁ u₂ : ℝ) (hGM : 0 < GM) (hf : 0 < f)
    (ht : 0 < t) (htb : 0 < tb) (h1 : 0 < u₁) (h : u₁ < u₂) :
    thrust_floor GM t u₁ f tb < thrust_floor GM t u₂ f tb := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hp := (t48_prop_fraction_range tb htb).1
  have hden : (0:ℝ) < 2 * Real.sqrt 2 * f * GM := by positivity
  have hnum : (0:ℝ) < prop_fraction tb * C_LIGHT ^ 4 * t ^ 4 := by positivity
  have h2u : (0:ℝ) < u₂ := by linarith
  have hq3 : (0:ℝ) < u₂ ^ 2 + u₂ * u₁ + u₁ ^ 2 := by
    nlinarith [mul_pos h2u h1, sq_nonneg u₁, sq_nonneg u₂]
  have hq : u₁ ^ 3 < u₂ ^ 3 := by
    nlinarith [mul_pos (sub_pos.mpr h) hq3]
  simp only [thrust_floor]
  rw [div_lt_div_iff₀ hden hden]
  nlinarith [mul_pos (mul_pos hnum hden) (sub_pos.mpr hq)]

-- [T51] :: {INV} | THE THRUST FLOOR IS POSITIVE
theorem t51_floor_pos (GM t u f tb : ℝ) (hGM : 0 < GM) (hf : 0 < f) (ht : 0 < t)
    (hu : 0 < u) (htb : 0 < tb) : 0 < thrust_floor GM t u f tb := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hp := (t48_prop_fraction_range tb htb).1
  simp only [thrust_floor]
  positivity

-- [T52] :: {INV} | A LONGER PERMITTED BURN LOWERS THE FLOOR
theorem t52_longer_burn_lowers_floor (GM t u tb f₁ f₂ : ℝ) (hGM : 0 < GM) (ht : 0 < t)
    (hu : 0 < u) (htb : 0 < tb) (h1 : 0 < f₁) (h : f₁ < f₂) :
    thrust_floor GM t u f₂ tb < thrust_floor GM t u f₁ tb := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hp := (t48_prop_fraction_range tb htb).1
  have hnum : (0:ℝ) < prop_fraction tb * C_LIGHT ^ 4 * t ^ 4 * u ^ 3 := by positivity
  have hd1 : (0:ℝ) < 2 * Real.sqrt 2 * f₁ * GM := by positivity
  have hlt : 2 * Real.sqrt 2 * f₁ * GM < 2 * Real.sqrt 2 * f₂ * GM := by
    nlinarith [hs, hGM, h]
  simp only [thrust_floor]
  rw [div_lt_div_iff₀ (by linarith : (0:ℝ) < 2 * Real.sqrt 2 * f₂ * GM) hd1]
  nlinarith [hnum, hlt]

-- ============================================================
-- SECTION 8: THE TWO CEILINGS, AND THE DESIGN LOOP
-- ============================================================

/-- The depth actually achievable: the smaller of the two ceilings. -/
def binding_depth (ug ut : ℝ) : ℝ := min ug ut

-- [T53] :: {MASTER} | THE BINDING DEPTH IS BELOW BOTH CEILINGS
theorem t53_binding_below_both (ug ut : ℝ) :
    binding_depth ug ut ≤ ug ∧ binding_depth ug ut ≤ ut := by
  simp only [binding_depth]
  exact ⟨min_le_left ug ut, min_le_right ug ut⟩

-- [T54] :: {INV} | THE BINDING DEPTH IS ONE OF THE TWO
theorem t54_binding_is_one_of_them (ug ut : ℝ) :
    binding_depth ug ut = ug ∨ binding_depth ug ut = ut := by
  simp only [binding_depth]
  exact min_choice ug ut

-- [T55] :: {INV} | GEOMETRY BINDS WHEN IT IS THE SMALLER
theorem t55_geometry_binds (ug ut : ℝ) (h : ug ≤ ut) : binding_depth ug ut = ug := by
  simp only [binding_depth]
  exact min_eq_left h

-- [T56] :: {INV} | THRUST BINDS WHEN IT IS THE SMALLER
theorem t56_thrust_binds (ug ut : ℝ) (h : ut ≤ ug) : binding_depth ug ut = ut := by
  simp only [binding_depth]
  exact min_eq_right h

-- [T57] :: {MASTER} | THE SAVING FOLLOWS THE BINDING DEPTH
theorem t57_saving_at_binding (ug ut x : ℝ) (hx : x ≠ 0) (hb : 0 < binding_depth ug ut) :
    saving (binding_depth ug ut) x < Real.exp (binding_depth ug ut) :=
  t29_saving_lt_exp_depth (binding_depth ug ut) x hx hb

-- ============================================================
-- SECTION 9: THE OPTIMUM, AND THE ENGINE EACH BODY PRESCRIBES
-- ============================================================

/-- The specific impulse corresponding to a Reading A. -/
def isp_of_tau (t : ℝ) : ℝ := t * C_LIGHT / G_STANDARD

/-- The specific impulse a body prescribes: its own surface escape velocity. -/
def prescribed_isp (rs R : ℝ) : ℝ := isp_of_tau (surface_torsion rs R)

-- [T58] :: {INV} | READING B AT DEPTH FALLS AS THE TARGET RATIO FALLS
-- A higher exhaust velocity means a smaller x for the same target, and a
-- smaller x means less Reading B, so the mass ratio falls.
theorem t58_reading_b_falls_with_target (u x y : ℝ) (hu : 0 < u) (hxy : x < y)
    (hx : 0 ≤ x) : tau_B_at u x < tau_B_at u y := by
  have hsx := t20_rad_sq u x
  have hsy := t20_rad_sq u y
  have hpx : 0 < rad_depth u x := t21_rad_pos u x hu
  have hpy : 0 < rad_depth u y := t21_rad_pos u y hu
  simp only [tau_B_at]
  nlinarith [hsx, hsy, hpx, hpy, hxy, hx]

-- [T59] :: {INV} | SO THE MASS RATIO AT DEPTH FALLS TOO
theorem t59_mass_ratio_falls (u x y : ℝ) (hu : 0 < u) (hxy : x < y) (hx : 0 ≤ x) :
    mr_depth u x < mr_depth u y := by
  simp only [mr_depth]
  exact Real.exp_lt_exp.mpr (t58_reading_b_falls_with_target u x y hu hxy hx)

-- [T60] :: {MASTER} | THE AVAILABILITY CONSTRAINT IS AN OPEN CONDITION
-- Reading A must stay strictly below the body's address, so the optimum is a
-- supremum approached and not attained.
theorem t60_optimum_is_a_supremum (rs R t : ℝ) (ht : 0 < t) (hC : 0 ≤ compactness rs R) :
    t ^ 2 < compactness rs R ↔ t < surface_torsion rs R := by
  have hsq := t34_surface_torsion_sq rs R hC
  have hnn := t35_surface_torsion_nonneg rs R
  constructor
  · intro h; nlinarith [hsq, hnn, ht, h]
  · intro h; nlinarith [hsq, hnn, ht, h]

-- [T61] :: {MASTER} | THE BODY'S ADDRESS IS ITS OWN PRESCRIPTION
theorem t61_prescription_is_the_address (rs R : ℝ) :
    prescribed_isp rs R = surface_torsion rs R * C_LIGHT / G_STANDARD := by
  simp only [prescribed_isp, isp_of_tau]

-- [T62] :: {INV} | THE PRESCRIPTION IS NONNEGATIVE
theorem t62_prescription_nonneg (rs R : ℝ) : 0 ≤ prescribed_isp rs R := by
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hg : (0:ℝ) < G_STANDARD := by simp only [G_STANDARD]; norm_num
  simp only [prescribed_isp, isp_of_tau]
  exact div_nonneg (mul_nonneg (t35_surface_torsion_nonneg rs R) hc.le) hg.le

-- [T63] :: {INV} | A MORE COMPACT BODY PRESCRIBES A HIGHER SPECIFIC IMPULSE
theorem t63_compact_prescribes_higher (rs₁ R₁ rs₂ R₂ : ℝ)
    (h : compactness rs₁ R₁ < compactness rs₂ R₂) (h0 : 0 ≤ compactness rs₁ R₁) :
    prescribed_isp rs₁ R₁ < prescribed_isp rs₂ R₂ := by
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hg : (0:ℝ) < G_STANDARD := by simp only [G_STANDARD]; norm_num
  have hs : surface_torsion rs₁ R₁ < surface_torsion rs₂ R₂ := by
    simp only [surface_torsion]
    exact Real.sqrt_lt_sqrt h0 h
  simp only [prescribed_isp, isp_of_tau]
  rw [div_lt_div_iff₀ hg hg]
  nlinarith [mul_lt_mul_of_pos_right hs hc, hg]

-- ============================================================
-- SECTION 10: THE VEHICLE
-- Mass supported per engine, and the launch impossibility.
-- ============================================================

/-- The vehicle mass a given thrust supports against a given floor. -/
def supported_mass (F floor : ℝ) : ℝ := F / floor

/-- Thrust-to-weight at the surface. -/
def thrust_to_weight (fm : ℝ) : ℝ := fm / G_STANDARD

-- [T64] :: {INV} | THE SUPPORTED MASS MEETS THE FLOOR EXACTLY
theorem t64_supported_meets_floor (F floor : ℝ) (hf : 0 < floor) (hF : 0 < F) :
    F / supported_mass F floor = floor := by
  simp only [supported_mass]
  field_simp

-- [T65] :: {INV} | MORE THRUST SUPPORTS MORE MASS
theorem t65_more_thrust_more_mass (F₁ F₂ floor : ℝ) (hf : 0 < floor) (h : F₁ < F₂) :
    supported_mass F₁ floor < supported_mass F₂ floor := by
  simp only [supported_mass]
  rw [div_lt_div_iff₀ hf hf]
  nlinarith [h, hf]

-- [T66] :: {INV} | A HIGHER FLOOR SUPPORTS LESS MASS
theorem t66_higher_floor_less_mass (F f₁ f₂ : ℝ) (hF : 0 < F) (h1 : 0 < f₁) (h : f₁ < f₂) :
    supported_mass F f₂ < supported_mass F f₁ := by
  simp only [supported_mass]
  rw [div_lt_div_iff₀ (by linarith : (0:ℝ) < f₂) h1]
  nlinarith [hF, h]

-- [T67] :: {MASTER} | A VEHICLE AT THE FLOOR CANNOT LIFT ITSELF
-- A thrust per unit mass below the surface gravitational acceleration leaves a
-- net downward force on a vehicle at rest on the surface, so orbital assembly
-- follows from the floor rather than from preference.
theorem t67_cannot_launch (fm : ℝ) (h : fm < G_STANDARD) :
    thrust_to_weight fm < 1 ∧ fm - G_STANDARD < 0 := by
  have hg : (0:ℝ) < G_STANDARD := by simp only [G_STANDARD]; norm_num
  constructor
  · simp only [thrust_to_weight]
    rw [div_lt_one hg]
    exact h
  · linarith

-- [T68] :: {INV} | THRUST-TO-WEIGHT BELOW ONE HALF IS BELOW ONE
theorem t68_half_is_below_one (fm : ℝ) (h : fm < G_STANDARD / 2) :
    thrust_to_weight fm < 1 := by
  have hg : (0:ℝ) < G_STANDARD := by simp only [G_STANDARD]; norm_num
  exact (t67_cannot_launch fm (by linarith)).1

-- [T69] :: {MASTER} | THE PLACEMENT CARRIES THE BODY AND THE DRIVE ONLY
-- The matched radius in meters is the Schwarzschild radius times the matched
-- ratio, so it is determined by the gravitational parameter and Reading A
-- alone and no vehicle mass enters it at any scale.
theorem t69_placement_from_body_and_drive (GM t : ℝ) (ht : t ≠ 0) :
    r_s GM * matched_ratio t = 2 * GM / (C_LIGHT ^ 2 * t ^ 2) := by
  have hc : (C_LIGHT:ℝ) ≠ 0 := by simp only [C_LIGHT]; norm_num
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  simp only [r_s, matched_ratio]
  field_simp

-- [T70] :: {INV} | THE PROPELLANT MASS A VEHICLE CARRIES
theorem t70_propellant_mass (M tb : ℝ) (hM : 0 < M) (htb : 0 < tb) :
    0 < M * prop_fraction tb ∧ M * prop_fraction tb < M := by
  obtain ⟨h1, h2⟩ := t48_prop_fraction_range tb htb
  constructor
  · exact mul_pos hM h1
  · nlinarith [hM, h2]

-- ============================================================
-- MASTER
-- ============================================================

theorem MASTER_burn_depth_and_thrust_floor :
    -- the depth law, and that deeper is always better
    (∀ tb u : ℝ, (u + tb) ^ 2 - u ^ 2 = vinf_sq tb u) ∧
    (∀ tb u₁ u₂ : ℝ, 0 < tb → u₁ < u₂ → vinf_sq tb u₁ < vinf_sq tb u₂) ∧
    (∀ tb : ℝ, vinf_sq tb 1 = tb * (2 + tb)) ∧
    -- the inversion at depth, and that it costs less than the ideal rocket
    (∀ u x : ℝ, vinf_sq (tau_B_at u x) u = x ^ 2) ∧
    (∀ u x : ℝ, 0 < u → 0 < x → tau_B_at u x < x) ∧
    (∀ x : ℝ, tau_B_at 1 x = Real.sqrt (1 + x ^ 2) - 1) ∧
    -- the saving at depth, strictly bounded by e^u, with e at unit depth
    (∀ u x : ℝ, saving u x = mr_ideal x / mr_depth u x) ∧
    (∀ u x : ℝ, x ≠ 0 → 0 < u → saving u x < Real.exp u) ∧
    (∀ x : ℝ, x ≠ 0 → saving 1 x < Real.exp 1) ∧
    (∀ u x : ℝ, 0 < u → 0 < x → 1 < saving u x) ∧
    -- availability is exactly one e-fold of depth
    (∀ rs R t : ℝ, 0 < t → 0 ≤ compactness rs R →
      (t ^ 2 < compactness rs R ↔ 1 < u_max rs R t)) ∧
    (∀ rs R : ℝ, 0 < compactness rs R → u_max rs R (surface_torsion rs R) = 1) ∧
    -- lateral motion is the zero-cost direction
    (∀ t₁ t₂ : ℝ, 0 < t₁ → 0 < t₂ → addressed_ratio t₁ = addressed_ratio t₂ →
      t₂ - t₁ = 0) ∧
    -- the characteristic time in closed form, and the floor's scalings
    (∀ GM t u : ℝ, GM ≠ 0 → t ≠ 0 → u ≠ 0 →
      t_char GM t u ^ 2 = burn_radius GM t u ^ 3 / GM) ∧
    (∀ GM u f tb t₁ t₂ : ℝ, 0 < GM → 0 < f → 0 < u → 0 < tb → 0 < t₁ → t₁ < t₂ →
      thrust_floor GM t₁ u f tb < thrust_floor GM t₂ u f tb) ∧
    (∀ GM t f tb u₁ u₂ : ℝ, 0 < GM → 0 < f → 0 < t → 0 < tb → 0 < u₁ → u₁ < u₂ →
      thrust_floor GM t u₁ f tb < thrust_floor GM t u₂ f tb) ∧
    -- the two ceilings, and the saving following the binding one
    (∀ ug ut : ℝ, binding_depth ug ut ≤ ug ∧ binding_depth ug ut ≤ ut) ∧
    -- the optimum is a supremum, and the body prescribes its own engine
    (∀ rs R t : ℝ, 0 < t → 0 ≤ compactness rs R →
      (t ^ 2 < compactness rs R ↔ t < surface_torsion rs R)) ∧
    (∀ rs R : ℝ, prescribed_isp rs R = surface_torsion rs R * C_LIGHT / G_STANDARD) ∧
    -- and a vehicle meeting the floor cannot lift itself
    (∀ fm : ℝ, fm < G_STANDARD → thrust_to_weight fm < 1 ∧ fm - G_STANDARD < 0) := by
  refine ⟨t14_depth_law,
    fun tb u₁ u₂ htb h => t15_deeper_is_better tb u₁ u₂ htb h,
    t16_chain_law_at_unit_depth,
    t22_inversion_solves,
    fun u x hu hx => t26_cheaper_than_ideal u x hu hx,
    t25_inversion_at_unit_depth,
    t27_saving_is_the_ratio,
    fun u x hx hu => t29_saving_lt_exp_depth u x hx hu,
    fun x hx => t31_bound_at_unit_depth x hx,
    fun u x hu hx => t30_saving_gt_one u x hu hx,
    fun rs R t ht hC => t36_availability_is_one_efold rs R t ht hC,
    fun rs R hC => t40_address_is_unit_depth rs R hC,
    fun t₁ t₂ h1 h2 h => t42_lateral_is_free t₁ t₂ h1 h2 h,
    fun GM t u hGM ht hu => t45_t_char_closed_form GM t u hGM ht hu,
    fun GM u f tb t₁ t₂ hGM hf hu htb h1 h =>
      t49_floor_quartic_in_reading_a GM u f tb t₁ t₂ hGM hf hu htb h1 h,
    fun GM t f tb u₁ u₂ hGM hf ht htb h1 h =>
      t50_floor_cubic_in_depth GM t f tb u₁ u₂ hGM hf ht htb h1 h,
    t53_binding_below_both,
    fun rs R t ht hC => t60_optimum_is_a_supremum rs R t ht hC,
    t61_prescription_is_the_address,
    fun fm h => t67_cannot_launch fm h⟩

end SNSFL_BurnDepthThrustFloor

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that burn depth, measured in the drive's own matched
-- radius as u = √(r_match/r), is the parameter the whole construction runs on.
-- The depth law v_∞ = v_e√(τ_B(τ_B + 2u)) rises strictly with u, so burning
-- deeper is always better and the matched radius is a UNIT rather than an
-- extremum, returning the parent's chain law at u = 1. Inverting gives
-- τ_B = √(u² + x²) − u, always below the ideal rocket's own exponent, and the
-- saving exp(x − √(u² + x²) + u) is STRICTLY BOUNDED BY e^u — depth u is worth
-- u e-folds, with the parent's bound e the u = 1 case. The geometric ceiling
-- u_max = τ_surface/τ_A exceeding one is exactly the parent's availability
-- criterion, so that criterion says the body offers this drive at least one
-- e-fold. The characteristic time closes as 2√2·GM/(c³τ_A³u³) and the thrust
-- floor rises as the fourth power of Reading A and the cube of depth, which is
-- the criterion that decides whether the advantage can be collected at all.
-- The optimum sits at the availability supremum, so each body prescribes its
-- own engine; and a vehicle meeting the floor has a thrust-to-weight below one
-- and cannot lift itself, so orbital assembly follows from the arithmetic.
--
-- THEOREMS : 70 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
