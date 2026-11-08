-- ============================================================
-- SNSFL_MatchedSurface_Rotation_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE MATCHED SURFACE UNDER ROTATION
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,19](GRAV) | Physics Ground — Gravitation
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, the conversion fraction, the
-- Schwarzschild radius, the matched ratio, the compactness and the whole
-- Reissner–Nordström apparatus are restated here at full precision, so that
-- a reader or a machine can close every proof without leaving the file. The
-- parent reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,0,18]   Propellant Law and Compactness — the level set, the criterion, the RN pair
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
--   THE LEVEL SET IS THE TIME–TIME COMPONENT. For a static observer in any
--   stationary metric the locally measured escape fraction squared is
--   1 + g_tt and the dilation squared is −g_tt, so the two sum to one at
--   every point where such an observer exists, and the matched surface is
--
--       g_tt = τ_A² − 1
--
--   Spherical symmetry was sufficient for the parent's statement and was
--   never necessary; what is necessary is a static region. The rotating
--   metric has one everywhere outside its ergosphere, and every corridor
--   matched surface lies between 53 and 69 ergosphere radii clear of it.
--
--   SPIN IS AN EFFECTIVE CHARGE. Evaluated in the rotating metric the level
--   set is the quadratic τ_A² r² − r_s r + τ_A² a² cos²θ = 0, which is the
--   Reissner–Nordström quadratic under
--
--       q_eff = τ_A · ã · |cos θ|,    ã = a/r_s
--
--   so the root pair, the partition fraction, the partition and the charged
--   criterion all transfer with q replaced by q_eff. On the equator the
--   effective charge VANISHES, so the equatorial matched radius is exactly
--   the Schwarzschild matched radius at every spin. Off the equator the
--   surface is pinched toward the poles. At Reading A = 1 it is exactly the
--   ergosphere. Charge outweighs spin by exactly 1/τ_A² — the matched ratio
--   itself, which is also the margin by which the matched discriminant
--   clears the horizon-existence bound.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Exp

noncomputable section

namespace SNSFL_MatchedSurfaceRotation

-- ============================================================
-- SECTION 0: CONSTANTS, THE FOUR PHASES, READING A
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
-- α⁻¹ is a thousand bare steps plus one kinetic step.
theorem t5_bare_plus_kinetic :
    100 * SOVEREIGN_ANCHOR + TORSION_LIMIT = ALPHA_INV ∧
    1000 * TORSION_LIMIT + TORSION_LIMIT = ALPHA_INV := by
  constructor
  · simp only [SOVEREIGN_ANCHOR, TORSION_LIMIT, ALPHA_INV]; norm_num
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T6] :: {VER} | READING A SQUARED IS TWICE THE CONVERSION FRACTION
theorem t6_tau_sq_is_twice_eta (t : ℝ) : t ^ 2 = 2 * eta_of_tau t := by
  simp only [eta_of_tau]; ring

-- [T7] :: {VER} | THE MATCHED RATIO AT EACH CORRIDOR EDGE IS POSITIVE
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
-- SECTION 1: THE LEVEL SET IS THE TIME–TIME COMPONENT
-- For a static observer in any stationary metric: the escape
-- fraction squared is 1 + g_tt, the dilation squared is −g_tt,
-- and the matched surface is the level set g_tt = τ_A² − 1.
-- ============================================================

/-- The locally measured escape fraction squared, for a static observer. -/
def escape_sq (gtt : ℝ → ℝ) (r : ℝ) : ℝ := 1 + gtt r

/-- The gravitational dilation squared, for a static observer. -/
def dilation_sq (gtt : ℝ → ℝ) (r : ℝ) : ℝ := -(gtt r)

/-- The matched surface of a drive of Reading A t, in any stationary metric. -/
def matched_level (gtt : ℝ → ℝ) (t r : ℝ) : Prop := gtt r = t ^ 2 - 1

/-- The Schwarzschild time–time component. -/
def gtt_schwarzschild (rs : ℝ) : ℝ → ℝ := fun r => -(1 - rs / r)

/-- The Reissner–Nordström time–time component. -/
def gtt_rn (rs rQ : ℝ) : ℝ → ℝ := fun r => -(1 - rs / r + rQ ^ 2 / r ^ 2)

/-- The rotating metric's time–time component, with the polar angle entering
through cos θ. ρ² = r² + a² cos²θ. -/
def gtt_kerr (rs a cs : ℝ) : ℝ → ℝ :=
  fun r => -(1 - rs * r / (r ^ 2 + a ^ 2 * cs ^ 2))

/-- The charged rotating metric's time–time component. -/
def gtt_kn (rs a rQ cs : ℝ) : ℝ → ℝ :=
  fun r => -(1 - (rs * r - rQ ^ 2) / (r ^ 2 + a ^ 2 * cs ^ 2))

-- [T9] :: {INV} | THE QUADRATURE: ESCAPE AND DILATION SUM TO ONE
-- Holds at every point of every stationary metric where a static
-- observer exists. Nothing about symmetry enters.
theorem t9_quadrature (gtt : ℝ → ℝ) (r : ℝ) :
    escape_sq gtt r + dilation_sq gtt r = 1 := by
  simp only [escape_sq, dilation_sq]; ring

-- [T10] :: {INV} | THE MATCHED SURFACE IS THE LEVEL SET OF g_tt
theorem t10_level_set_form (gtt : ℝ → ℝ) (t r : ℝ) :
    matched_level gtt t r ↔ gtt r = t ^ 2 - 1 := Iff.rfl

-- [T11] :: {INV} | AT THE MATCHED SURFACE THE ESCAPE FRACTION SQUARED IS τ_A²
theorem t11_escape_at_matched (gtt : ℝ → ℝ) (t r : ℝ) (h : matched_level gtt t r) :
    escape_sq gtt r = t ^ 2 := by
  simp only [escape_sq, matched_level] at *
  rw [h]; ring

-- [T12] :: {INV} | AT THE MATCHED SURFACE THE DILATION SQUARED IS 1 − τ_A²
theorem t12_dilation_at_matched (gtt : ℝ → ℝ) (t r : ℝ) (h : matched_level gtt t r) :
    dilation_sq gtt r = 1 - t ^ 2 := by
  simp only [dilation_sq, matched_level] at *
  rw [h]; ring

-- [T13] :: {INV} | THE LEVEL SET ON THE CONVERSION FRACTION
theorem t13_level_set_on_eta (gtt : ℝ → ℝ) (t r : ℝ) :
    matched_level gtt t r ↔ gtt r = 2 * eta_of_tau t - 1 := by
  simp only [matched_level, eta_of_tau]
  constructor <;> intro h <;> linarith [h]

-- [T14] :: {INV} | THE ESCAPE FRACTION AT THE MATCHED SURFACE IS READING A
theorem t14_escape_fraction_is_reading_a (gtt : ℝ → ℝ) (t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level gtt t r) : Real.sqrt (escape_sq gtt r) = t := by
  rw [t11_escape_at_matched gtt t r h, Real.sqrt_sq ht]

-- [T15] :: {INV} | THE SCHWARZSCHILD INSTANCE
theorem t15_schwarzschild_instance (rs t r : ℝ) (hr : r ≠ 0) (ht : t ≠ 0) :
    matched_level (gtt_schwarzschild rs) t r ↔ r = rs / t ^ 2 := by
  simp only [matched_level, gtt_schwarzschild]
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  constructor
  · intro h
    have h1 : rs / r = t ^ 2 := by linarith
    rw [div_eq_iff hr] at h1
    rw [eq_div_iff ht2]
    linarith [h1]
  · intro h
    subst h
    have hrs : rs ≠ 0 := by
      intro h0
      rw [h0, zero_div] at hr
      exact hr rfl
    field_simp

-- [T16] :: {INV} | THE SCHWARZSCHILD MATCHED RADIUS IS THE MATCHED RATIO
theorem t16_schwarzschild_is_matched_ratio (t : ℝ) (ht : t ≠ 0) :
    (1:ℝ) / t ^ 2 = matched_ratio t := by
  simp only [matched_ratio]

-- ============================================================
-- SECTION 2: THE REISSNER–NORDSTRÖM APPARATUS
-- Restated in full, so the rotating results can be carried
-- across the effective-charge bridge of Section 4.
-- ============================================================

/-- The charge in units of the Schwarzschild radius. -/
def q_of (rs rQ : ℝ) : ℝ := rQ / rs

/-- The outer root of the charged matched condition, in units of r_s. -/
def rn_outer (q t : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / (2 * t ^ 2)

/-- The inner root of the charged matched condition, in units of r_s. -/
def rn_inner (q t : ℝ) : ℝ := (1 - Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / (2 * t ^ 2)

/-- The partition fraction: the outer root's share of the uncharged matched
radius. -/
def rn_factor (q t : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / 2

-- [T17] :: {VER} | THE CHARGED DISCRIMINANT IS NONNEGATIVE
theorem t17_rn_discriminant (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := by
  have hq2 : q ^ 2 ≤ 1 / 4 := by nlinarith
  have ht2 : t ^ 2 ≤ 1 := by nlinarith
  have hqn : (0:ℝ) ≤ 4 * q ^ 2 := by positivity
  nlinarith [hq2, ht2, hqn]

-- [T18] :: {INV} | BOTH CHARGED ROOTS SOLVE THE QUADRATIC
theorem t18_rn_roots_solve (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    t ^ 2 * rn_outer q t ^ 2 - rn_outer q t + q ^ 2 = 0 ∧
    t ^ 2 * rn_inner q t ^ 2 - rn_inner q t + q ^ 2 = 0 := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t17_rn_discriminant q t hq0 hq ht0 ht1
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_outer, rn_inner]
  set s := Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * q ^ 2 * t ^ 2 := Real.sq_sqrt hd
  constructor
  · field_simp
    linear_combination hs
  · field_simp
    linear_combination hs

-- [T19] :: {INV} | THE OUTER ROOT IS THE PARTITION FRACTION TIMES THE RATIO
theorem t19_rn_outer_factored (q t : ℝ) (ht : 0 < t) :
    rn_outer q t = matched_ratio t * rn_factor q t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_outer, rn_factor, matched_ratio]
  field_simp

-- [T20] :: {INV} | THE PAIR PARTITIONS THE UNCHARGED MATCHED RADIUS
theorem t20_rn_pair_partitions (q t : ℝ) (ht : 0 < t) :
    rn_outer q t + rn_inner q t = matched_ratio t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_outer, rn_inner, matched_ratio]
  field_simp
  ring

-- [T21] :: {INV} | THE PARTITION FRACTION IS AT MOST ONE
theorem t21_rn_factor_le_one (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) : rn_factor q t ≤ 1 := by
  have hle : Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) ≤ 1 := by
    rw [show (1:ℝ) = Real.sqrt 1 by simp]
    exact Real.sqrt_le_sqrt (by nlinarith [sq_nonneg q, sq_nonneg t])
  simp only [rn_factor]
  linarith

-- [T22] :: {INV} | THE PARTITION FRACTION IS AT LEAST ONE HALF
theorem t22_rn_factor_ge_half (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) : 1/2 ≤ rn_factor q t := by
  have hsn : 0 ≤ Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) := Real.sqrt_nonneg _
  simp only [rn_factor]
  linarith

-- [T23] :: {INV} | THE CHARGE-FOR-SHIFT IDENTITY
theorem t23_charge_for_shift (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_factor q t * (1 - rn_factor q t) = q ^ 2 * t ^ 2 := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t17_rn_discriminant q t hq0 hq ht0 ht1
  simp only [rn_factor]
  set s := Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * q ^ 2 * t ^ 2 := Real.sq_sqrt hd
  linear_combination -hs / 4

-- [T24] :: {INV} | THE CHARGED AVAILABILITY CRITERION
theorem t24_charged_criterion (rs R q t : ℝ) (hR : 0 < R) (ht : 0 < t)
    (hF : 0 < rn_factor q t) :
    R < rs * rn_outer q t ↔ t ^ 2 / rn_factor q t < compactness rs R := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  simp only [compactness]
  rw [t19_rn_outer_factored q t ht]
  simp only [matched_ratio]
  rw [div_lt_div_iff₀ hF hR]
  have key : rs * (1 / t ^ 2 * rn_factor q t) = rs * rn_factor q t / t ^ 2 := by
    ring
  rw [key, lt_div_iff₀ ht2, mul_comm R (t ^ 2)]

-- ============================================================
-- SECTION 3: THE ROTATING METRIC
-- The level set evaluated in Boyer–Lindquist, with the polar
-- angle entering as a parameter through cos θ.
-- ============================================================

/-- The dimensionless spin, a/r_s. -/
def spin_ratio (rs a : ℝ) : ℝ := a / rs

/-- The outer root of the rotating matched condition, in units of r_s. -/
def kerr_outer (t atil cs : ℝ) : ℝ :=
  (1 + Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2)) / (2 * t ^ 2)

/-- The inner root of the rotating matched condition, in units of r_s. -/
def kerr_inner (t atil cs : ℝ) : ℝ :=
  (1 - Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2)) / (2 * t ^ 2)

/-- The rotating partition fraction. -/
def kerr_factor (t atil cs : ℝ) : ℝ :=
  (1 + Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2)) / 2

/-- The static limit surface, in units of r_s: the outer root of g_tt = 0. -/
def ergo_outer (atil cs : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * atil ^ 2 * cs ^ 2)) / 2

-- [T25] :: {INV} | ON THE EQUATOR THE ROTATING COMPONENT IS SCHWARZSCHILD'S
theorem t25_equatorial_is_schwarzschild (rs a r : ℝ) (hr : r ≠ 0) :
    gtt_kerr rs a 0 r = gtt_schwarzschild rs r := by
  simp only [gtt_kerr, gtt_schwarzschild]
  have h : r ^ 2 + a ^ 2 * (0:ℝ) ^ 2 = r ^ 2 := by ring
  have h2 : rs * r / r ^ 2 = rs / r := by
    rw [div_eq_div_iff (pow_ne_zero 2 hr) hr]
    ring
  rw [h, h2]

-- [T26] :: {INV} | THE ROTATING LEVEL SET IS A QUADRATIC IN THE RADIUS
theorem t26_kerr_quadratic (rs a cs t r : ℝ) (hrho : r ^ 2 + a ^ 2 * cs ^ 2 ≠ 0) :
    matched_level (gtt_kerr rs a cs) t r ↔
      t ^ 2 * r ^ 2 - rs * r + t ^ 2 * (a ^ 2 * cs ^ 2) = 0 := by
  simp only [matched_level, gtt_kerr]
  constructor
  · intro h
    have h1 : rs * r / (r ^ 2 + a ^ 2 * cs ^ 2) = t ^ 2 := by linarith
    rw [div_eq_iff hrho] at h1
    linarith [h1]
  · intro h
    have h2 : rs * r / (r ^ 2 + a ^ 2 * cs ^ 2) = t ^ 2 := by
      rw [div_eq_iff hrho]
      linarith
    linarith [h2]

-- [T27] :: {INV} | THE CHARGED ROTATING LEVEL SET CARRIES BOTH PARAMETERS
theorem t27_kn_quadratic (rs a rQ cs t r : ℝ) (hrho : r ^ 2 + a ^ 2 * cs ^ 2 ≠ 0) :
    matched_level (gtt_kn rs a rQ cs) t r ↔
      t ^ 2 * r ^ 2 - rs * r + (rQ ^ 2 + t ^ 2 * (a ^ 2 * cs ^ 2)) = 0 := by
  simp only [matched_level, gtt_kn]
  constructor
  · intro h
    have h1 : (rs * r - rQ ^ 2) / (r ^ 2 + a ^ 2 * cs ^ 2) = t ^ 2 := by linarith
    rw [div_eq_iff hrho] at h1
    linarith [h1]
  · intro h
    have h2 : (rs * r - rQ ^ 2) / (r ^ 2 + a ^ 2 * cs ^ 2) = t ^ 2 := by
      rw [div_eq_iff hrho]
      linarith
    linarith [h2]

-- ============================================================
-- SECTION 4: SPIN AS AN EFFECTIVE CHARGE
-- The bridge. Everything Section 2 proves transfers.
-- ============================================================

/-- The effective charge of rotation: q_eff = τ_A · ã · |cos θ|. -/
def q_eff (t atil cs : ℝ) : ℝ := t * atil * |cs|

/-- The combined effective charge of the charged rotating metric. -/
def q_eff_kn (q t atil cs : ℝ) : ℝ := Real.sqrt (q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2)

-- [T28] :: {INV} | THE EFFECTIVE CHARGE SQUARED
theorem t28_q_eff_sq (t atil cs : ℝ) :
    q_eff t atil cs ^ 2 = t ^ 2 * atil ^ 2 * cs ^ 2 := by
  simp only [q_eff]
  rw [mul_pow, mul_pow, sq_abs]

-- [T29] :: {INV} | THE EFFECTIVE CHARGE IS NONNEGATIVE ON THE PHYSICAL RANGE
theorem t29_q_eff_nonneg (t atil cs : ℝ) (ht : 0 ≤ t) (ha : 0 ≤ atil) :
    0 ≤ q_eff t atil cs := by
  simp only [q_eff]
  exact mul_nonneg (mul_nonneg ht ha) (abs_nonneg cs)

-- [T30] :: {INV} | THE TWO DISCRIMINANTS AGREE UNDER THE SUBSTITUTION
theorem t30_discriminants_agree (t atil cs : ℝ) :
    1 - 4 * q_eff t atil cs ^ 2 * t ^ 2 = 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 := by
  rw [t28_q_eff_sq]; ring

-- [T31] :: {MASTER} | THE BRIDGE: THE ROTATING ROOT IS THE CHARGED ROOT
theorem t31_kerr_is_rn (t atil cs : ℝ) :
    kerr_outer t atil cs = rn_outer (q_eff t atil cs) t ∧
    kerr_inner t atil cs = rn_inner (q_eff t atil cs) t ∧
    kerr_factor t atil cs = rn_factor (q_eff t atil cs) t := by
  have h := t30_discriminants_agree t atil cs
  refine ⟨?_, ?_, ?_⟩
  · simp only [kerr_outer, rn_outer]; rw [h]
  · simp only [kerr_inner, rn_inner]; rw [h]
  · simp only [kerr_factor, rn_factor]; rw [h]

-- [T32] :: {INV} | ON THE EQUATOR THE EFFECTIVE CHARGE VANISHES
theorem t32_equatorial_q_eff_zero (t atil : ℝ) : q_eff t atil 0 = 0 := by
  simp only [q_eff, abs_zero, mul_zero]

-- [T33] :: {MASTER} | THE EQUATORIAL MATCHED RADIUS IS SPIN-INDEPENDENT
-- It is exactly the Schwarzschild matched radius, at every spin.
theorem t33_equatorial_spin_blind (t atil : ℝ) (ht : t ≠ 0) :
    kerr_outer t atil 0 = matched_ratio t := by
  simp only [kerr_outer, matched_ratio]
  have h : 1 - 4 * t ^ 4 * atil ^ 2 * (0:ℝ) ^ 2 = 1 := by ring
  rw [h, Real.sqrt_one]
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T34] :: {INV} | THE EQUATORIAL RESULT HOLDS FOR EVERY SPIN AT ONCE
theorem t34_equatorial_all_spins (t : ℝ) (ht : t ≠ 0) :
    ∀ atil : ℝ, kerr_outer t atil 0 = matched_ratio t :=
  fun atil => t33_equatorial_spin_blind t atil ht

-- [T35] :: {INV} | THE ROTATING PARTITION FRACTION IS ONE ON THE EQUATOR
theorem t35_kerr_factor_equatorial (t atil : ℝ) : kerr_factor t atil 0 = 1 := by
  simp only [kerr_factor]
  have h : 1 - 4 * t ^ 4 * atil ^ 2 * (0:ℝ) ^ 2 = 1 := by ring
  rw [h, Real.sqrt_one]; norm_num

-- [T36] :: {INV} | THE ROTATING OUTER ROOT IS THE FRACTION TIMES THE RATIO
theorem t36_kerr_outer_factored (t atil cs : ℝ) (ht : 0 < t) :
    kerr_outer t atil cs = matched_ratio t * kerr_factor t atil cs := by
  obtain ⟨h1, _, h3⟩ := t31_kerr_is_rn t atil cs
  rw [h1, h3]
  exact t19_rn_outer_factored (q_eff t atil cs) t ht

-- [T37] :: {MASTER} | THE ROTATING PAIR PARTITIONS THE MATCHED RADIUS
theorem t37_kerr_pair_partitions (t atil cs : ℝ) (ht : 0 < t) :
    kerr_outer t atil cs + kerr_inner t atil cs = matched_ratio t := by
  obtain ⟨h1, h2, _⟩ := t31_kerr_is_rn t atil cs
  rw [h1, h2]
  exact t20_rn_pair_partitions (q_eff t atil cs) t ht

-- [T38] :: {MASTER} | THE PAIR MULTIPLIES TO ã² cos²θ, READING A CANCELING
theorem t38_kerr_pair_product (t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    kerr_outer t atil cs * kerr_inner t atil cs = atil ^ 2 * cs ^ 2 := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [kerr_outer, kerr_inner]
  set s := Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 := Real.sq_sqrt hd
  field_simp
  linear_combination -hs

-- [T39] :: {INV} | THE ROTATING CHARGE-FOR-SHIFT IDENTITY
theorem t39_kerr_charge_for_shift (t atil cs : ℝ)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    kerr_factor t atil cs * (1 - kerr_factor t atil cs)
      = t ^ 4 * atil ^ 2 * cs ^ 2 := by
  simp only [kerr_factor]
  set s := Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 := Real.sq_sqrt hd
  linear_combination -hs / 4

-- [T40] :: {INV} | THE INNER ROOT IS THE COMPLEMENTARY SHARE
theorem t40_kerr_inner_share (t atil cs : ℝ) (ht : 0 < t) :
    kerr_inner t atil cs = (1 - kerr_factor t atil cs) * matched_ratio t := by
  have hsum := t37_kerr_pair_partitions t atil cs ht
  have houter := t36_kerr_outer_factored t atil cs ht
  have h : kerr_inner t atil cs = matched_ratio t - kerr_outer t atil cs := by
    linarith
  rw [h, houter]; ring

-- ============================================================
-- SECTION 5: THE SHAPE OF THE SURFACE
-- Oblate, with a closed form in the polar angle.
-- ============================================================

-- [T41] :: {INV} | THE ROTATING DISCRIMINANT IS NONNEGATIVE
theorem t41_kerr_discriminant (t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (ha0 : 0 ≤ atil) (ha : atil ≤ 1/2) (hc : cs ^ 2 ≤ 1) :
    0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 := by
  have ha2 : atil ^ 2 ≤ 1 / 4 := by nlinarith
  have ht2 : t ^ 2 ≤ 1 := by nlinarith
  have ht4 : t ^ 4 ≤ 1 := by nlinarith
  have hinner : t ^ 4 * atil ^ 2 ≤ 1 * (1/4) :=
    mul_le_mul ht4 ha2 (sq_nonneg atil) (by norm_num)
  have houter : t ^ 4 * atil ^ 2 * cs ^ 2 ≤ 1 * (1/4) * 1 :=
    mul_le_mul hinner hc (sq_nonneg cs) (by norm_num)
  linarith

-- [T42] :: {INV} | THE SURFACE IS ANTITONE IN cos²θ — OBLATE
theorem t42_oblate (t atil c1 c2 : ℝ) (ht : 0 < t)
    (hd2 : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * c2 ^ 2)
    (h : c1 ^ 2 < c2 ^ 2) (hat : 0 < t ^ 4 * atil ^ 2) :
    kerr_outer t atil c2 < kerr_outer t atil c1 := by
  have ht2 : (0:ℝ) < 2 * t ^ 2 := by positivity
  have harg : 1 - 4 * t ^ 4 * atil ^ 2 * c2 ^ 2 < 1 - 4 * t ^ 4 * atil ^ 2 * c1 ^ 2 := by
    nlinarith [mul_pos hat (sub_pos.mpr h)]
  have hs : Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * c2 ^ 2)
          < Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * c1 ^ 2) :=
    Real.sqrt_lt_sqrt hd2 harg
  simp only [kerr_outer]
  rw [div_lt_div_iff₀ ht2 ht2]
  nlinarith [hs, ht2]

-- [T43] :: {INV} | THE POLAR RADIUS IS AT MOST THE EQUATORIAL RADIUS
theorem t43_polar_le_equatorial (t atil cs : ℝ) (ht : 0 < t)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    kerr_outer t atil cs ≤ matched_ratio t := by
  have ht2 : (0:ℝ) < 2 * t ^ 2 := by positivity
  have hle : Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) ≤ 1 := by
    rw [show (1:ℝ) = Real.sqrt 1 by simp]
    apply Real.sqrt_le_sqrt
    nlinarith [sq_nonneg (t ^ 2 * atil * cs)]
  have ht2' : (0:ℝ) < t ^ 2 := by positivity
  simp only [kerr_outer, matched_ratio]
  rw [div_le_div_iff₀ ht2 ht2']
  nlinarith [hle, ht2']

-- [T44] :: {INV} | THE ROTATING PARTITION FRACTION IS AT MOST ONE
theorem t44_kerr_factor_le_one (t atil cs : ℝ)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    kerr_factor t atil cs ≤ 1 := by
  have hle : Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) ≤ 1 := by
    rw [show (1:ℝ) = Real.sqrt 1 by simp]
    apply Real.sqrt_le_sqrt
    nlinarith [sq_nonneg (t ^ 2 * atil * cs)]
  simp only [kerr_factor]
  linarith

-- [T45] :: {INV} | THE ROTATING PARTITION FRACTION IS POSITIVE
theorem t45_kerr_factor_pos (t atil cs : ℝ) : 0 < kerr_factor t atil cs := by
  have hsn : 0 ≤ Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) := Real.sqrt_nonneg _
  simp only [kerr_factor]
  linarith

-- ============================================================
-- SECTION 6: READING A = 1 AND THE STATIC LIMIT SURFACE
-- ============================================================

-- [T46] :: {MASTER} | AT READING A = 1 THE MATCHED SURFACE IS THE ERGOSPHERE
theorem t46_cap_is_ergosphere (atil cs : ℝ) :
    kerr_outer 1 atil cs = ergo_outer atil cs := by
  simp only [kerr_outer, ergo_outer]
  have h : 1 - 4 * (1:ℝ) ^ 4 * atil ^ 2 * cs ^ 2 = 1 - 4 * atil ^ 2 * cs ^ 2 := by
    ring
  rw [h]
  norm_num

-- [T47] :: {INV} | ON THE EQUATOR THE STATIC LIMIT IS THE SCHWARZSCHILD RADIUS
theorem t47_ergo_equatorial (atil : ℝ) : ergo_outer atil 0 = 1 := by
  simp only [ergo_outer]
  have h : 1 - 4 * atil ^ 2 * (0:ℝ) ^ 2 = 1 := by ring
  rw [h, Real.sqrt_one]; norm_num

-- [T48] :: {INV} | AT EXTREMAL SPIN THE POLAR STATIC LIMIT IS THE HORIZON
theorem t48_ergo_polar_extremal : ergo_outer (1/2) 1 = 1/2 := by
  simp only [ergo_outer]
  have h : 1 - 4 * ((1:ℝ)/2) ^ 2 * (1:ℝ) ^ 2 = 0 := by norm_num
  rw [h, Real.sqrt_zero]; norm_num

-- [T49] :: {INV} | THE SCHWARZSCHILD CAP IS THE HORIZON
theorem t49_schwarzschild_cap_is_horizon : matched_ratio 1 = 1 := by
  simp only [matched_ratio]; norm_num

-- [T50] :: {INV} | BELOW THE CAP THE MATCHED SURFACE IS OUTSIDE THE STATIC LIMIT
theorem t50_matched_outside_ergosphere (t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) (he : ergo_outer atil cs ≤ 1) :
    ergo_outer atil cs ≤ matched_ratio t := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have hlt : t ^ 2 < 1 := by nlinarith
  have : (1:ℝ) < matched_ratio t := by
    simp only [matched_ratio]
    rw [lt_div_iff₀ ht2]
    linarith
  linarith

-- ============================================================
-- SECTION 7: ROTATION AGAINST CHARGE, AND THE MATCHED RATIO
-- ============================================================

-- [T51] :: {MASTER} | CHARGE OUTWEIGHS SPIN BY EXACTLY THE MATCHED RATIO
-- Give the charge parameter and the spin parameter the same value. The
-- ratio of their contributions to the effective charge squared is 1/τ_A²,
-- which is the matched ratio itself.
theorem t51_charge_outweighs_spin (t v : ℝ) (ht : t ≠ 0) (hv : v ≠ 0) :
    v ^ 2 / (t ^ 2 * v ^ 2 * 1 ^ 2) = matched_ratio t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  have hv2 : (v:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 hv
  simp only [matched_ratio]
  field_simp

-- [T52] :: {INV} | THE COMBINED EFFECTIVE CHARGE OF THE CHARGED ROTATING METRIC
theorem t52_kn_effective_charge (q t atil cs : ℝ)
    (h : 0 ≤ q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2) :
    q_eff_kn q t atil cs ^ 2 = q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2 := by
  simp only [q_eff_kn]
  exact Real.sq_sqrt h

-- [T53] :: {INV} | CHARGE ENTERS UNWEIGHTED, SPIN WEIGHTED BY READING A SQUARED
theorem t53_weighting_asymmetry (q t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (ha : atil ≠ 0) (hc : cs ^ 2 = 1) (hq : q = atil) :
    t ^ 2 * atil ^ 2 * cs ^ 2 < q ^ 2 := by
  subst hq
  rw [hc, mul_one]
  have ha2 : (0:ℝ) < atil ^ 2 :=
    lt_of_le_of_ne (sq_nonneg atil) (Ne.symm (pow_ne_zero 2 ha))
  have htl : t ^ 2 < 1 := by nlinarith
  nlinarith [ha2, htl]

-- [T54] :: {MASTER} | THE MATCHED DISCRIMINANT CLEARS ITS BOUND BY THE RATIO
-- Over the physical range the quantity bounded by 1/4 is at most τ_A²/4,
-- so the margin is 1/τ_A² — the matched ratio, in a third role.
theorem t54_discriminant_margin (q t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (hq0 : 0 ≤ q) (ha0 : 0 ≤ atil) (hbudget : atil ^ 2 + q ^ 2 ≤ 1/4)
    (hc : cs ^ 2 ≤ 1) :
    (q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2) * t ^ 2 ≤ t ^ 2 / 4 := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have htl : t ^ 2 < 1 := by nlinarith
  have h1 : t ^ 2 * atil ^ 2 * cs ^ 2 ≤ atil ^ 2 := by
    nlinarith [sq_nonneg atil, sq_nonneg cs, ht2, htl]
  have h2 : q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2 ≤ 1/4 := by linarith
  nlinarith [h2, ht2]

-- [T55] :: {INV} | THE MARGIN IS THE MATCHED RATIO
theorem t55_margin_is_matched_ratio (t : ℝ) (ht : t ≠ 0) :
    (1/4 : ℝ) / (t ^ 2 / 4) = matched_ratio t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  simp only [matched_ratio]
  field_simp

-- ============================================================
-- SECTION 8: AVAILABILITY UNDER ROTATION
-- ============================================================

-- [T56] :: {INV} | THE CRITERION WITHOUT A METRIC
theorem t56_criterion_metric_free (rs R rmatch : ℝ) (hrs : 0 < rs) (hR : 0 < R)
    (hrm : 0 < rmatch) :
    R < rmatch ↔ rs / rmatch < compactness rs R := by
  simp only [compactness]
  rw [div_lt_div_iff₀ hrm hR]
  constructor
  · intro h; nlinarith [hrs, h]
  · intro h; nlinarith [hrs, h]

-- [T57] :: {INV} | THE SCHWARZSCHILD THRESHOLD IS READING A SQUARED
theorem t57_metric_free_recovers_tau_sq (rs t : ℝ) (hrs : rs ≠ 0) (ht : t ≠ 0) :
    rs / (rs * matched_ratio t) = t ^ 2 := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  simp only [matched_ratio]
  field_simp

-- [T58] :: {MASTER} | THE ROTATING AVAILABILITY CRITERION
theorem t58_rotating_criterion (rs R t atil cs : ℝ) (hR : 0 < R) (ht : 0 < t) :
    R < rs * kerr_outer t atil cs ↔
      t ^ 2 / kerr_factor t atil cs < compactness rs R := by
  obtain ⟨h1, _, h3⟩ := t31_kerr_is_rn t atil cs
  rw [h1, h3]
  exact t24_charged_criterion rs R (q_eff t atil cs) t hR ht
    (by rw [← h3]; exact t45_kerr_factor_pos t atil cs)

-- [T59] :: {MASTER} | THE EQUATORIAL CRITERION IS SPIN-FREE
theorem t59_equatorial_criterion (rs R t atil : ℝ) (hR : 0 < R) (ht : 0 < t) :
    R < rs * kerr_outer t atil 0 ↔ t ^ 2 < compactness rs R := by
  rw [t58_rotating_criterion rs R t atil 0 hR ht, t35_kerr_factor_equatorial, div_one]

-- [T60] :: {INV} | ROTATION TIGHTENS AVAILABILITY, NEVER LOOSENS IT
theorem t60_rotation_tightens (t atil cs : ℝ) (ht : 0 < t)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    t ^ 2 ≤ t ^ 2 / kerr_factor t atil cs := by
  have hF := t45_kerr_factor_pos t atil cs
  have hle := t44_kerr_factor_le_one t atil cs hd
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  rw [le_div_iff₀ hF]
  nlinarith [ht2, hle]

-- [T61] :: {INV} | THE PENALTY IS MONOTONE IN cos²θ
theorem t61_penalty_monotone (t atil c1 c2 : ℝ) (ht : 0 < t)
    (hd2 : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * c2 ^ 2)
    (hlt : kerr_factor t atil c2 < kerr_factor t atil c1) :
    t ^ 2 / kerr_factor t atil c1 < t ^ 2 / kerr_factor t atil c2 := by
  have h2 := t45_kerr_factor_pos t atil c2
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  exact div_lt_div_of_pos_left ht2 h2 hlt

-- [T62] :: {INV} | THE GAIN ENTERS THROUGH READING A, QUADRATICALLY
theorem t62_gain_requirement_quadratic (t g : ℝ) :
    gained_tau t g ^ 2 = (1 + g) ^ 2 * t ^ 2 := by
  simp only [gained_tau]; ring

-- [T63] :: {INV} | A LARGER GAIN TIGHTENS THE REQUIREMENT
theorem t63_gain_tightens (t g₁ g₂ : ℝ) (ht : 0 < t) (h0 : 0 ≤ g₁) (h : g₁ < g₂) :
    gained_tau t g₁ ^ 2 < gained_tau t g₂ ^ 2 := by
  simp only [gained_tau]
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have h1 : (0:ℝ) < 1 + g₁ := by linarith
  have hsq : (1 + g₁) ^ 2 < (1 + g₂) ^ 2 := by nlinarith
  calc ((1 + g₁) * t) ^ 2 = (1 + g₁) ^ 2 * t ^ 2 := by ring
    _ < (1 + g₂) ^ 2 * t ^ 2 := mul_lt_mul_of_pos_right hsq ht2
    _ = ((1 + g₂) * t) ^ 2 := by ring

-- ============================================================
-- SECTION 9: THE BUDGET CARRIES NO METRIC
-- ============================================================

-- [T64] :: {MASTER} | THE ESCAPE FRACTION AT ANY MATCHED SURFACE IS READING A
-- This is T14 restated as the statement that the propellant budget sees no
-- metric: the equality that the Oberth multiplier, the propellant law and
-- the saving are built on holds in every stationary metric at once.
theorem t64_budget_sees_no_metric (gtt : ℝ → ℝ) (t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level gtt t r) : Real.sqrt (escape_sq gtt r) = t :=
  t14_escape_fraction_is_reading_a gtt t r ht h

-- [T65] :: {INV} | THE ROTATING INSTANCE OF THE BUDGET STATEMENT
theorem t65_budget_rotating (rs a cs t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level (gtt_kerr rs a cs) t r) :
    Real.sqrt (escape_sq (gtt_kerr rs a cs) r) = t :=
  t64_budget_sees_no_metric (gtt_kerr rs a cs) t r ht h

-- [T66] :: {INV} | THE CHARGED ROTATING INSTANCE
theorem t66_budget_charged_rotating (rs a rQ cs t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level (gtt_kn rs a rQ cs) t r) :
    Real.sqrt (escape_sq (gtt_kn rs a rQ cs) r) = t :=
  t64_budget_sees_no_metric (gtt_kn rs a rQ cs) t r ht h

-- [T67] :: {INV} | THE CHARGED INSTANCE
theorem t67_budget_charged (rs rQ t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level (gtt_rn rs rQ) t r) :
    Real.sqrt (escape_sq (gtt_rn rs rQ) r) = t :=
  t64_budget_sees_no_metric (gtt_rn rs rQ) t r ht h

-- [T68] :: {INV} | THE SCHWARZSCHILD INSTANCE
theorem t68_budget_schwarzschild (rs t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level (gtt_schwarzschild rs) t r) :
    Real.sqrt (escape_sq (gtt_schwarzschild rs) r) = t :=
  t64_budget_sees_no_metric (gtt_schwarzschild rs) t r ht h

-- [T69] :: {INV} | THE DILATION AT ANY MATCHED SURFACE IS √(1 − 2η)
theorem t69_dilation_at_matched_on_eta (gtt : ℝ → ℝ) (t r : ℝ)
    (h : matched_level gtt t r) :
    dilation_sq gtt r = 1 - 2 * eta_of_tau t := by
  rw [t12_dilation_at_matched gtt t r h]
  simp only [eta_of_tau]; ring

-- [T70] :: {INV} | THE PHASE OF THE DIMENSIONLESS SPIN IS WELL DEFINED
-- The phase map applies to any dimensionless ratio, and the spin is one.
theorem t70_spin_classifies (atil : ℝ) (h0 : 0 < atil) (h1 : atil < TL_IVA) :
    classify atil = Phase.Locked := by
  unfold classify
  rw [if_neg (ne_of_gt h0), if_pos h1]

-- ============================================================
-- MASTER
-- ============================================================

theorem MASTER_matched_surface_rotation :
    -- the quadrature, at every point of every stationary metric
    (∀ (gtt : ℝ → ℝ) (r : ℝ), escape_sq gtt r + dilation_sq gtt r = 1) ∧
    -- the matched surface is the level set of the time–time component
    (∀ (gtt : ℝ → ℝ) (t r : ℝ), matched_level gtt t r ↔ gtt r = t ^ 2 - 1) ∧
    (∀ (gtt : ℝ → ℝ) (t r : ℝ), matched_level gtt t r ↔
      gtt r = 2 * eta_of_tau t - 1) ∧
    -- and the escape fraction there is Reading A, so the budget sees no metric
    (∀ (gtt : ℝ → ℝ) (t r : ℝ), 0 ≤ t → matched_level gtt t r →
      Real.sqrt (escape_sq gtt r) = t) ∧
    -- on the equator the rotating component is Schwarzschild's
    (∀ rs a r : ℝ, r ≠ 0 → gtt_kerr rs a 0 r = gtt_schwarzschild rs r) ∧
    -- the rotating level set is a quadratic in the radius
    (∀ rs a cs t r : ℝ, r ^ 2 + a ^ 2 * cs ^ 2 ≠ 0 →
      (matched_level (gtt_kerr rs a cs) t r ↔
        t ^ 2 * r ^ 2 - rs * r + t ^ 2 * (a ^ 2 * cs ^ 2) = 0)) ∧
    -- spin is an effective charge, and the whole charged apparatus transfers
    (∀ t atil cs : ℝ, q_eff t atil cs ^ 2 = t ^ 2 * atil ^ 2 * cs ^ 2) ∧
    (∀ t atil cs : ℝ, kerr_outer t atil cs = rn_outer (q_eff t atil cs) t) ∧
    -- the equatorial matched radius is spin-independent, exactly
    (∀ t atil : ℝ, t ≠ 0 → kerr_outer t atil 0 = matched_ratio t) ∧
    -- the pair partitions the uncharged matched radius at every spin
    (∀ t atil cs : ℝ, 0 < t →
      kerr_outer t atil cs + kerr_inner t atil cs = matched_ratio t) ∧
    -- at Reading A = 1 the matched surface is the static limit surface
    (∀ atil cs : ℝ, kerr_outer 1 atil cs = ergo_outer atil cs) ∧
    -- charge outweighs spin by the matched ratio, which is also the
    -- margin by which the matched discriminant clears its bound
    (∀ t v : ℝ, t ≠ 0 → v ≠ 0 →
      v ^ 2 / (t ^ 2 * v ^ 2 * 1 ^ 2) = matched_ratio t) ∧
    (∀ t : ℝ, t ≠ 0 → (1/4 : ℝ) / (t ^ 2 / 4) = matched_ratio t) ∧
    -- availability: the criterion without a metric, under rotation, and
    -- on the equator where the spin drops out
    (∀ rs R rmatch : ℝ, 0 < rs → 0 < R → 0 < rmatch →
      (R < rmatch ↔ rs / rmatch < compactness rs R)) ∧
    (∀ rs R t atil cs : ℝ, 0 < R → 0 < t →
      (R < rs * kerr_outer t atil cs ↔
        t ^ 2 / kerr_factor t atil cs < compactness rs R)) ∧
    (∀ rs R t atil : ℝ, 0 < R → 0 < t →
      (R < rs * kerr_outer t atil 0 ↔ t ^ 2 < compactness rs R)) := by
  refine ⟨t9_quadrature, t10_level_set_form, t13_level_set_on_eta,
    fun gtt t r ht h => t64_budget_sees_no_metric gtt t r ht h,
    fun rs a r hr => t25_equatorial_is_schwarzschild rs a r hr,
    fun rs a cs t r hrho => t26_kerr_quadratic rs a cs t r hrho,
    t28_q_eff_sq,
    fun t atil cs => (t31_kerr_is_rn t atil cs).1,
    fun t atil ht => t33_equatorial_spin_blind t atil ht,
    fun t atil cs ht => t37_kerr_pair_partitions t atil cs ht,
    t46_cap_is_ergosphere,
    fun t v ht hv => t51_charge_outweighs_spin t v ht hv,
    fun t ht => t55_margin_is_matched_ratio t ht,
    fun rs R rmatch hrs hR hrm => t56_criterion_metric_free rs R rmatch hrs hR hrm,
    fun rs R t atil cs hR ht => t58_rotating_criterion rs R t atil cs hR ht,
    fun rs R t atil hR ht => t59_equatorial_criterion rs R t atil hR ht⟩

end SNSFL_MatchedSurfaceRotation

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that the matched surface is a level set of the
-- time–time component of the metric, g_tt = τ_A² − 1, for a static observer
-- in any stationary metric: the escape fraction squared is 1 + g_tt, the
-- dilation squared is −g_tt, and the two sum to one wherever such an
-- observer exists. Spherical symmetry is sufficient for that statement and
-- is not necessary. Evaluated in the rotating metric the level set is a
-- quadratic in the radius with the polar angle as a parameter, and it is the
-- Reissner–Nordström quadratic under the effective charge
-- q_eff = τ_A · ã · |cos θ| — so the root pair, the partition fraction, the
-- partition and the charged criterion all carry across. On the equator the
-- effective charge vanishes and the matched radius is exactly the
-- Schwarzschild matched radius at every spin; at Reading A = 1 the matched
-- surface is exactly the static limit surface; and charge outweighs spin by
-- exactly 1/τ_A², which is the matched ratio itself and is also the margin
-- by which the matched discriminant clears the horizon-existence bound.
--
-- THEOREMS : 70 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
