-- ============================================================
-- SNSFL_PropellantLaw_Compactness_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE PROPELLANT LAW AND THE COMPACTNESS CRITERION
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,18](GRAV) | Physics Ground — Gravitation
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, Reading B, the conversion fraction,
-- the Schwarzschild radius and the matched radius are all restated here at
-- full precision, so that a reader or a machine can close every proof
-- without leaving the file. The parent reductions are named in the
-- provenance block for the record, not as dependencies of the proofs.
--
-- Parents of record:
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
--   Two results, and the general form that carries the second one past
--   Schwarzschild.
--
--   THE PROPELLANT LAW. The chain law states the speed a vehicle reaches
--   from its mass ratio. Inverted, it states the mass ratio a target speed
--   costs: τ_B = √(1 + x²) − 1 with x = v_∞/v_e, so a burn at the matched
--   radius requires exp(√(1 + x²) − 1) against the ideal rocket's exp(x).
--   The ratio of the two is the propellant saving,
--
--       S(x) = e · exp(x − √(1 + x²))
--
--   which is strictly increasing and STRICTLY BOUNDED ABOVE BY e, bracketed
--   below by e · exp(−1/x) so the rate is visible. The bound is the paper's
--   own e-fold: the additive constant in the exponent is exactly the τ_B = 1
--   that the matched radius well is worth, so the one e-fold the well
--   supplies is the one e-fold of propellant the vehicle stops carrying, and
--   no finite burn reaches it. At the small-burn end τ_B is bracketed between
--   x²/2 − x⁴/8 and x²/2, so the cost is quadratic in the target speed rather
--   than exponential.
--
--   THE COMPACTNESS CRITERION. A matched radius is reachable only if it lies
--   outside the body. With C = r_s/R the standard compactness, that reduces
--   with no residue to
--
--       C > τ_A² = 2η
--
--   so a drive can use its matched radius at a body exactly when the body is
--   more compact than the drive is efficient. Two dimensionless fractions
--   from unrelated domains stand in one inequality. The dual reading gives
--   every body a characteristic torsion τ_surface = √C, and the IVA band on
--   compactness is the interval [TL_IVA², TL²). The resonance gain enters
--   through Reading A, so the criterion becomes C > ((1 + g_r)τ_A)² and the
--   requirement grows quadratically in the gain.
--
--   THE LEVEL SET. Neither result is Schwarzschild-specific. For any static
--   spherically symmetric metric written with reciprocal g_tt and g_rr, the
--   matched radius is the solution of
--
--       f(r_match) = 1 − τ_A² = 1 − 2η
--
--   the radius at which the metric function equals the squared dilation
--   factor. The agreement of gravitational and kinematic dilation at that
--   radius is therefore the equation that locates it, not a property it
--   happens to have. Schwarzschild is the linear instance; Reissner–Nordström
--   is the quadratic one, where charge splits the matched radius into a pair
--   of which exactly one lies outside the horizon, and the outer root is the
--   Schwarzschild radius times [1 + √(1 − 4q²τ_A²)]/2 — a factor whose
--   minimum over the physical charge range is (1 + √(1 − 2η))/2, so the
--   largest inward shift charge can produce is (1 − √(1 − 2η))/2, the
--   dilation deficit halved.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Exp

noncomputable section

namespace SNSFL_PropellantCompactness

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

-- [T6] :: {VER} | THE CONVERSION FRACTION AT EACH CORRIDOR EDGE
theorem t6_conversion_fractions :
    eta_of_tau TORSION_LIMIT = 73208451470443787388498001 / 7812500000000000000000000000 ∧
    eta_of_tau TL_IVA = 8858222627923698274008258121 / 1220703125000000000000000000000 := by
  constructor
  · simp only [eta_of_tau, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [eta_of_tau, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- ============================================================
-- SECTION 1: THE SQUARE-ROOT SANDWICH
-- Every bound in Section 2 rests on x < √(1 + x²), which holds
-- for every real x and is the only analytic input the
-- propellant law needs.
-- ============================================================

/-- The radical that the inversion introduces. -/
def rad (x : ℝ) : ℝ := Real.sqrt (1 + x ^ 2)

-- [T7] :: {VER} | THE RADICAL SQUARES BACK
theorem t7_rad_sq (x : ℝ) : rad x ^ 2 = 1 + x ^ 2 := by
  simp only [rad]
  exact Real.sq_sqrt (by positivity)

-- [T8] :: {VER} | THE RADICAL IS POSITIVE
theorem t8_rad_pos (x : ℝ) : 0 < rad x := by
  simp only [rad]
  exact Real.sqrt_pos.mpr (by positivity)

-- [T9] :: {VER} | THE RADICAL DOMINATES THE ARGUMENT, FOR EVERY REAL x
theorem t9_lt_rad (x : ℝ) : x < rad x := by
  have h1 : x ^ 2 < 1 + x ^ 2 := by linarith
  have h2 : |x| < rad x := by
    simp only [rad]
    rw [← Real.sqrt_sq_eq_abs]
    exact Real.sqrt_lt_sqrt (sq_nonneg x) h1
  exact lt_of_le_of_lt (le_abs_self x) h2

-- [T10] :: {VER} | THE RADICAL ALSO DOMINATES THE NEGATIVE, SO x + rad x > 0
theorem t10_sum_pos (x : ℝ) : 0 < x + rad x := by
  have h1 : x ^ 2 < 1 + x ^ 2 := by linarith
  have h2 : |x| < rad x := by
    simp only [rad]
    rw [← Real.sqrt_sq_eq_abs]
    exact Real.sqrt_lt_sqrt (sq_nonneg x) h1
  have h3 : -x ≤ |x| := neg_le_abs x
  linarith

-- ============================================================
-- SECTION 2: THE INVERSION
-- The chain law gives the speed from the mass ratio; inverted,
-- it gives the mass ratio from the speed.
-- ============================================================

/-- The chain law at one burn, as a speed in units of exhaust velocity:
x = v_∞/v_e = √(τ_B(2 + τ_B)). -/
def chain_x (tB : ℝ) : ℝ := Real.sqrt (tB * (2 + tB))

/-- The inversion: Reading B required to reach a target speed x. -/
def tau_B_of_x (x : ℝ) : ℝ := rad x - 1

-- [T11] :: {VER} | THE INVERSION SOLVES THE CHAIN QUADRATIC
theorem t11_inversion_solves (x : ℝ) :
    tau_B_of_x x ^ 2 + 2 * tau_B_of_x x = x ^ 2 := by
  simp only [tau_B_of_x]
  have h := t7_rad_sq x
  nlinarith [h]

-- [T12] :: {VER} | THE INVERSION IS THE POSITIVE ROOT
theorem t12_inversion_positive (x : ℝ) (hx : 0 < x) : 0 < tau_B_of_x x := by
  simp only [tau_B_of_x]
  have h := t7_rad_sq x
  have hp := t8_rad_pos x
  nlinarith [h, hp]

-- [T13] :: {VER} | THE INVERSION RECOVERS THE CHAIN LAW
theorem t13_round_trip (tB : ℝ) (htB : 0 < tB) :
    tau_B_of_x (chain_x tB) = tB := by
  simp only [tau_B_of_x, chain_x, rad]
  have hk : (0:ℝ) ≤ tB * (2 + tB) := by nlinarith
  rw [Real.sq_sqrt hk]
  have h1 : (1:ℝ) + tB * (2 + tB) = (1 + tB) ^ 2 := by ring
  rw [h1, Real.sqrt_sq (by linarith)]
  ring

-- ============================================================
-- SECTION 3: THE PROPELLANT LAW
-- ============================================================

/-- The mass ratio the ideal rocket needs to reach x · v_e with no well. -/
def mr_ideal (x : ℝ) : ℝ := Real.exp x

/-- The mass ratio a burn at the matched radius needs for the same speed. -/
def mr_match (x : ℝ) : ℝ := Real.exp (tau_B_of_x x)

/-- The exponent the saving carries. -/
def sav_exp (x : ℝ) : ℝ := x - rad x + 1

/-- The propellant saving. -/
def saving (x : ℝ) : ℝ := Real.exp (sav_exp x)

-- [T14] :: {VER} | THE SAVING IS THE RATIO OF THE TWO MASS RATIOS
theorem t14_saving_is_the_ratio (x : ℝ) :
    saving x = mr_ideal x / mr_match x := by
  simp only [saving, mr_ideal, mr_match, sav_exp, tau_B_of_x]
  rw [← Real.exp_sub]
  congr 1
  ring

-- [T15] :: {VER} | THE SAVING IN THE FORM e · exp(x − √(1 + x²))
theorem t15_saving_factored (x : ℝ) :
    saving x = Real.exp 1 * Real.exp (x - rad x) := by
  simp only [saving, sav_exp]
  rw [← Real.exp_add]
  congr 1
  ring

-- [T16] :: {VER} | THE EXPONENT IS STRICTLY BELOW ONE
theorem t16_exponent_lt_one (x : ℝ) : sav_exp x < 1 := by
  simp only [sav_exp]
  have := t9_lt_rad x
  linarith

-- [T17] :: {VER} | MASTER BOUND — THE SAVING IS STRICTLY BELOW e
-- No finite burn saves as much as the well is worth.
theorem t17_saving_lt_e (x : ℝ) : saving x < Real.exp 1 := by
  simp only [saving]
  exact Real.exp_lt_exp.mpr (t16_exponent_lt_one x)

-- [T18] :: {VER} | THE SAVING EXCEEDS ONE FOR EVERY POSITIVE BURN
theorem t18_saving_gt_one (x : ℝ) (hx : 0 < x) : 1 < saving x := by
  simp only [saving]
  have hr := t7_rad_sq x
  have hp := t8_rad_pos x
  have h1 : rad x < 1 + x := by nlinarith [hr, hp]
  have : 0 < sav_exp x := by simp only [sav_exp]; linarith
  calc (1:ℝ) = Real.exp 0 := Real.exp_zero.symm
    _ < Real.exp (sav_exp x) := Real.exp_lt_exp.mpr this

-- [T19] :: {VER} | THE DECAY FORM OF THE EXPONENT
-- x − √(1 + x²) = −1/(x + √(1 + x²)), which is how the exponent approaches
-- zero and therefore how the saving approaches e.
theorem t19_decay_form (x : ℝ) :
    x - rad x = -1 / (x + rad x) := by
  have hs := t10_sum_pos x
  have hr := t7_rad_sq x
  rw [eq_div_iff (ne_of_gt hs)]
  nlinarith [hr]

-- [T20] :: {VER} | THE EXPONENT IS BRACKETED BY −1/x ON THE POSITIVES
theorem t20_exponent_bracket (x : ℝ) (hx : 0 < x) :
    -1 / x < x - rad x ∧ x - rad x < 0 := by
  have hs := t10_sum_pos x
  have hlt := t9_lt_rad x
  constructor
  · rw [t19_decay_form x]
    rw [div_lt_div_iff_of_neg_left (by norm_num : (-1:ℝ) < 0) hx hs]
    linarith [t8_rad_pos x]
  · linarith

-- [T21] :: {VER} | THE SAVING IS BRACKETED BY e · exp(−1/x) AND e
-- The lower bracket makes the rate of approach explicit.
theorem t21_saving_bracket (x : ℝ) (hx : 0 < x) :
    Real.exp 1 * Real.exp (-1 / x) < saving x ∧ saving x < Real.exp 1 := by
  obtain ⟨hlo, _⟩ := t20_exponent_bracket x hx
  constructor
  · rw [t15_saving_factored x]
    exact (mul_lt_mul_left (Real.exp_pos 1)).mpr (Real.exp_lt_exp.mpr hlo)
  · exact t17_saving_lt_e x

-- [T22] :: {VER} | THE EXPONENT IS STRICTLY INCREASING
theorem t22_exponent_mono (x y : ℝ) (h : x < y) :
    x - rad x < y - rad y := by
  have hx := t7_rad_sq x
  have hy := t7_rad_sq y
  have hxa := t9_lt_rad x
  have hyb := t9_lt_rad y
  have hpx := t8_rad_pos x
  have hpy := t8_rad_pos y
  have hsum : 0 < rad x + rad y := by linarith
  nlinarith [hx, hy, hxa, hyb, hpx, hpy, hsum]

-- [T23] :: {VER} | THE SAVING IS STRICTLY INCREASING
theorem t23_saving_mono (x y : ℝ) (h : x < y) : saving x < saving y := by
  simp only [saving, sav_exp]
  exact Real.exp_lt_exp.mpr (by linarith [t22_exponent_mono x y h])

-- ============================================================
-- SECTION 4: WHY THE BOUND IS e
-- The additive constant in the exponent is the Reading B the
-- matched radius well supplies.
-- ============================================================

/-- The Reading B a fall to the matched radius is worth: one e-fold. -/
def well_tau_B : ℝ := 1

-- [T24] :: {VER} | THE SAVING'S CONSTANT IS THE WELL'S READING B
theorem t24_constant_is_the_well (x : ℝ) :
    sav_exp x = (x - rad x) + well_tau_B := by
  simp only [sav_exp, well_tau_B]

-- [T25] :: {VER} | THE LIMITING SAVING IS e RAISED TO THE WELL'S READING B
theorem t25_bound_is_e_to_the_well :
    Real.exp well_tau_B = Real.exp 1 := by
  simp only [well_tau_B]

-- [T26] :: {VER} | THE WELL'S MASS RATIO IS e
theorem t26_well_mass_ratio :
    Real.exp well_tau_B = Real.exp 1 ∧ well_tau_B = 1 := by
  simp only [well_tau_B]
  exact ⟨rfl, rfl⟩

-- ============================================================
-- SECTION 5: THE SMALL-BURN END
-- The cost ceases to be exponential: Reading B is bracketed
-- between x²/2 − x⁴/8 and x²/2.
-- ============================================================

-- [T27] :: {VER} | READING B IS AT MOST HALF THE SQUARED TARGET SPEED
theorem t27_small_burn_upper (x : ℝ) : tau_B_of_x x ≤ x ^ 2 / 2 := by
  simp only [tau_B_of_x]
  have hr := t7_rad_sq x
  have hp := t8_rad_pos x
  nlinarith [hr, hp, sq_nonneg (x ^ 2)]

-- [T28] :: {VER} | AND AT LEAST THAT LESS THE QUARTIC TERM
theorem t28_small_burn_lower (x : ℝ) (h1 : |x| ≤ 1) :
    x ^ 2 / 2 - x ^ 4 / 8 ≤ tau_B_of_x x := by
  simp only [tau_B_of_x]
  have hr := t7_rad_sq x
  have hp := t8_rad_pos x
  have hx2 : x ^ 2 ≤ 1 := by
    have := abs_le.mp h1
    nlinarith [this.1, this.2]
  nlinarith [hr, hp, sq_nonneg x, sq_nonneg (x ^ 2), sq_nonneg (x ^ 3)]

-- [T29] :: {VER} | THE IDEAL ROCKET'S COST IS LINEAR IN THE TARGET SPEED
-- Reading B is x itself with no well, against at most x²/2 with one.
theorem t29_ideal_cost_is_linear (x : ℝ) (hx : 0 < x) (h1 : x < 2) :
    tau_B_of_x x < x := by
  have h := t27_small_burn_upper x
  nlinarith [h]

-- ============================================================
-- SECTION 6: HOW MUCH OF e A BURN CAPTURES
-- ============================================================

/-- The target speed realizing a given fraction of the limiting saving,
for t = ln φ in (−1,0). -/
def x_of_exponent (t : ℝ) : ℝ := (t ^ 2 - 1) / (2 * t)

-- [T30] :: {VER} | THE CLOSED FORM IS POSITIVE ON THE ADMISSIBLE RANGE
theorem t30_x_of_exponent_pos (t : ℝ) (h0 : -1 < t) (h1 : t < 0) :
    0 < x_of_exponent t := by
  simp only [x_of_exponent]
  have hn : t ^ 2 - 1 < 0 := by nlinarith
  have hd : 2 * t < 0 := by linarith
  exact div_pos_of_neg_of_neg hn hd

-- [T31] :: {VER} | THE CLOSED FORM REALIZES THE TARGET EXPONENT
theorem t31_x_of_exponent_realizes (t : ℝ) (h0 : -1 < t) (h1 : t < 0) :
    x_of_exponent t - rad (x_of_exponent t) = t := by
  set x := x_of_exponent t with hx
  have hxpos : 0 < x := t30_x_of_exponent_pos t h0 h1
  have hr := t7_rad_sq x
  have hp := t8_rad_pos x
  -- rad x = x - t, since (x - t)² = 1 + x² on this range
  have hkey : rad x = x - t := by
    have hnn : 0 ≤ x - t := by linarith
    have hsq : (x - t) ^ 2 = 1 + x ^ 2 := by
      simp only [hx, x_of_exponent]
      have ht : t ≠ 0 := ne_of_lt h1
      field_simp
      ring
    nlinarith [hr, hp, hsq, hnn]
  rw [hkey]; ring

-- ============================================================
-- SECTION 7: THE COMPACTNESS CRITERION
-- ============================================================

/-- The standard compactness of a body: its Schwarzschild radius over its
physical radius. -/
def compactness (rs R : ℝ) : ℝ := rs / R

-- [T32] :: {VER} | MASTER CRITERION — AVAILABILITY IS COMPACTNESS AGAINST READING A
-- The matched radius lies outside the body exactly when the body is more
-- compact than the drive is efficient.
theorem t32_master_criterion (rs R t : ℝ) (hR : 0 < R) (ht : t ≠ 0) :
    R < rs / t ^ 2 ↔ t ^ 2 < compactness rs R := by
  simp only [compactness]
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  rw [lt_div_iff₀ ht2, lt_div_iff₀ hR]
  constructor
  · intro h; linarith
  · intro h; linarith

-- [T33] :: {VER} | THE CRITERION ON THE CONVERSION FRACTION
theorem t33_criterion_on_eta (rs R t : ℝ) (hR : 0 < R) (ht : t ≠ 0) :
    R < rs / t ^ 2 ↔ 2 * eta_of_tau t < compactness rs R := by
  rw [t32_master_criterion rs R t hR ht]
  simp only [eta_of_tau]
  constructor
  · intro h; linarith
  · intro h; linarith

-- [T34] :: {VER} | THE MATCHED RADIUS IS THE RATIO TIMES THE SCHWARZSCHILD RADIUS
theorem t34_matched_radius_form (rs t : ℝ) (ht : t ≠ 0) :
    rs * matched_ratio t = rs / t ^ 2 := by
  simp only [matched_ratio]
  field_simp

-- [T35] :: {VER} | THE CORRIDOR THRESHOLDS, AS EXACT RATIONALS
theorem t35_corridor_thresholds :
    TORSION_LIMIT ^ 2 = 73208451470443787388498001 / 3906250000000000000000000000 ∧
    TL_IVA ^ 2 = 8858222627923698274008258121 / 610351562500000000000000000000 := by
  constructor
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T36] :: {VER} | THE THRESHOLDS, BRACKETED
theorem t36_threshold_values :
    0.018741363576 < TORSION_LIMIT ^ 2 ∧ TORSION_LIMIT ^ 2 < 0.018741363577 ∧
    0.014513311953 < TL_IVA ^ 2 ∧ TL_IVA ^ 2 < 0.014513311954 := by
  refine ⟨?_, ?_, ?_, ?_⟩ <;>
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR] <;> norm_num

-- [T37] :: {VER} | THE THRESHOLD RATIO IS THE WIDTH FACTOR SQUARED
theorem t37_threshold_ratio :
    TORSION_LIMIT ^ 2 = TL_IVA ^ 2 * (625 / 484) := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T38] :: {VER} | THE THRESHOLDS ARE ORDERED AND POSITIVE
theorem t38_thresholds_ordered :
    0 < TL_IVA ^ 2 ∧ TL_IVA ^ 2 < TORSION_LIMIT ^ 2 ∧ TORSION_LIMIT ^ 2 < 1 := by
  refine ⟨?_, ?_, ?_⟩ <;>
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR] <;> norm_num

-- ============================================================
-- SECTION 8: THE DUAL READING AND THE BAND ON COMPACTNESS
-- ============================================================

/-- The Reading A whose matched radius is exactly a body's own surface. -/
def tau_surface (C : ℝ) : ℝ := Real.sqrt C

-- [T39] :: {VER} | THE SURFACE TORSION MATCHES THE SURFACE
theorem t39_surface_torsion_matches (C : ℝ) (hC : 0 < C) :
    tau_surface C ^ 2 = C := by
  simp only [tau_surface]
  exact Real.sq_sqrt hC.le

-- [T40] :: {VER} | THE SURFACE TORSION IS THE UNIQUE ONE THAT DOES
theorem t40_surface_torsion_unique (C t : ℝ) (hC : 0 < C) (ht : 0 < t)
    (h : t ^ 2 = C) : t = tau_surface C := by
  simp only [tau_surface]
  have h1 : Real.sqrt C ^ 2 = C := Real.sq_sqrt hC.le
  have h2 : 0 < Real.sqrt C := Real.sqrt_pos.mpr hC
  nlinarith [h, h1, ht, h2]

-- [T41] :: {VER} | THE SURFACE TORSION IS IN THE UNIT INTERVAL BELOW THE HORIZON
theorem t41_surface_torsion_range (C : ℝ) (h0 : 0 < C) (h1 : C < 1) :
    0 < tau_surface C ∧ tau_surface C < 1 := by
  simp only [tau_surface]
  have hs : Real.sqrt C ^ 2 = C := Real.sq_sqrt h0.le
  have hp : 0 < Real.sqrt C := Real.sqrt_pos.mpr h0
  exact ⟨hp, by nlinarith [hs, hp]⟩

-- [T42] :: {VER} | THE IVA BAND READ ON COMPACTNESS
theorem t42_iva_band_on_compactness (C : ℝ) (h0 : 0 < C) (h1 : C < 1) :
    (TL_IVA ≤ tau_surface C ∧ tau_surface C < TORSION_LIMIT) ↔
    (TL_IVA ^ 2 ≤ C ∧ C < TORSION_LIMIT ^ 2) := by
  have hs : tau_surface C ^ 2 = C := t39_surface_torsion_matches C h0
  obtain ⟨hp, _⟩ := t41_surface_torsion_range C h0 h1
  obtain ⟨hf, _⟩ := t3_floor_below_ceiling
  obtain ⟨hc, _⟩ := t2_tl_in_unit_interval
  constructor
  · intro ⟨ha, hb⟩
    exact ⟨by nlinarith [hs, ha, hf], by nlinarith [hs, hb, hp]⟩
  · intro ⟨ha, hb⟩
    exact ⟨by nlinarith [hs, ha, hp, hf], by nlinarith [hs, hb, hp, hc]⟩

-- ============================================================
-- SECTION 9: MAGNITUDE AND AVAILABILITY ARE DECOUPLED
-- ============================================================

-- [T43] :: {VER} | THE DRIVE CANCELS FROM A COMPARISON OF TWO BODIES
-- The ratio of the matched radii at two bodies is the ratio of their
-- Schwarzschild radii, for every drive.
theorem t43_drive_cancels_between_bodies (rs₁ rs₂ t : ℝ) (ht : t ≠ 0) :
    rs₁ * matched_ratio t / (rs₂ * matched_ratio t) = rs₁ / rs₂ := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have hm : matched_ratio t ≠ 0 := by
    simp only [matched_ratio]
    positivity
  rw [mul_comm rs₁, mul_comm rs₂, mul_div_mul_left _ _ hm]

-- [T44] :: {VER} | THE BODY DOES FIX THE MATCHED RADIUS
-- For a fixed drive the matched radius is strictly increasing in the
-- Schwarzschild radius, so the body determines where the maneuver happens.
theorem t44_radius_monotone_in_body (rs₁ rs₂ t : ℝ) (ht : t ≠ 0) (h : rs₁ < rs₂) :
    rs₁ * matched_ratio t < rs₂ * matched_ratio t := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have hm : 0 < matched_ratio t := by
    simp only [matched_ratio]
    positivity
  exact mul_lt_mul_of_pos_right h hm

-- [T45] :: {VER} | AVAILABILITY IS FIXED BY THE CONVERSION FRACTION ALONE
-- The threshold a body must clear is twice the drive's conversion fraction,
-- carrying no mass ratio and no body parameter.
theorem t45_threshold_is_the_conversion_fraction (t : ℝ) :
    t ^ 2 = 2 * eta_of_tau t := by
  simp only [eta_of_tau]; ring

-- ============================================================
-- SECTION 10: WHAT THE GAIN COSTS IN AVAILABILITY
-- ============================================================

-- [T46] :: {VER} | THE GAINED CRITERION
theorem t46_gained_criterion (rs R t g : ℝ) (hR : 0 < R) (ht : gained_tau t g ≠ 0) :
    R < rs / gained_tau t g ^ 2 ↔ gained_tau t g ^ 2 < compactness rs R :=
  t32_master_criterion rs R (gained_tau t g) hR ht

-- [T47] :: {VER} | THE REQUIREMENT GROWS QUADRATICALLY IN THE GAIN
theorem t47_gain_requirement_quadratic (t g : ℝ) :
    gained_tau t g ^ 2 = (1 + g) ^ 2 * t ^ 2 := by
  simp only [gained_tau]; ring

-- [T48] :: {VER} | MORE GAIN DEMANDS MORE COMPACTNESS
theorem t48_gain_tightens (t g₁ g₂ : ℝ) (ht : 0 < t) (h0 : 0 ≤ g₁) (h : g₁ < g₂) :
    gained_tau t g₁ ^ 2 < gained_tau t g₂ ^ 2 := by
  simp only [gained_tau]
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  nlinarith [ht2, h, h0]

-- [T49] :: {VER} | AT THE CAP ONLY A HORIZON QUALIFIES
-- Reading A at its supremum requires compactness above one, which only the
-- horizon itself reaches.
theorem t49_cap_requires_horizon (rs R : ℝ) (hR : 0 < R) :
    R < rs / (1:ℝ) ^ 2 ↔ (1:ℝ) < compactness rs R := by
  have h : (1:ℝ) ≠ 0 := one_ne_zero
  exact t32_master_criterion rs R 1 hR h

-- [T50] :: {VER} | THE GAIN CAP AND THE CORRIDOR CEILING
theorem t50_gain_at_ceiling (g : ℝ) :
    gained_tau TORSION_LIMIT g ^ 2 = (1 + g) ^ 2 * TORSION_LIMIT ^ 2 :=
  t47_gain_requirement_quadratic TORSION_LIMIT g

-- ============================================================
-- SECTION 11: THE MATCHED RADIUS AS A LEVEL SET
-- Nothing in the construction is Schwarzschild-specific. For any
-- static spherically symmetric metric with reciprocal g_tt and
-- g_rr, the matched radius solves f(r) = 1 − τ_A².
-- ============================================================

/-- The level-set condition: the metric function equals the squared dilation
factor. -/
def matched_level (f : ℝ → ℝ) (t r : ℝ) : Prop := f r = 1 - t ^ 2

/-- The Schwarzschild metric function. -/
def f_schwarzschild (rs r : ℝ) : ℝ := 1 - rs / r

/-- The Reissner–Nordström metric function. -/
def f_rn (rs rQ r : ℝ) : ℝ := 1 - rs / r + rQ ^ 2 / r ^ 2

-- [T51] :: {VER} | THE LEVEL SET IS THE SQUARED DILATION FACTOR
-- The gravitational dilation factor of a static metric is √f, so the
-- condition states that it equals the kinematic factor √(1 − τ_A²).
theorem t51_level_set_is_dilation (f : ℝ → ℝ) (t r : ℝ) :
    matched_level f t r ↔ f r = 1 - t ^ 2 := Iff.rfl

-- [T52] :: {VER} | THE LEVEL SET ON THE CONVERSION FRACTION
theorem t52_level_set_on_eta (f : ℝ → ℝ) (t r : ℝ) :
    matched_level f t r ↔ f r = 1 - 2 * eta_of_tau t := by
  simp only [matched_level, eta_of_tau]
  constructor
  · intro h; rw [h]; ring
  · intro h; rw [h]; ring

-- [T53] :: {VER} | THE SCHWARZSCHILD INSTANCE IS THE PARENT RESULT
theorem t53_schwarzschild_instance (rs t r : ℝ) (hr : r ≠ 0) (ht : t ≠ 0) :
    matched_level (f_schwarzschild rs) t r ↔ r = rs / t ^ 2 := by
  simp only [matched_level, f_schwarzschild]
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  constructor
  · intro h
    have h1 : rs / r = t ^ 2 := by linarith
    field_simp at h1 ⊢
    linarith [h1]
  · intro h
    subst h
    have hne : rs / t ^ 2 ≠ 0 := hr
    field_simp

-- [T54] :: {VER} | THE SCHWARZSCHILD LEVEL SET IS THE MATCHED RATIO
theorem t54_schwarzschild_is_matched_ratio (rs t : ℝ) (ht : t ≠ 0) :
    rs / t ^ 2 = rs * matched_ratio t := (t34_matched_radius_form rs t ht).symm

-- [T55] :: {VER} | THE DILATION FACTOR AT THE MATCHED RADIUS
-- Both readings of the dilation are the same quantity because the level-set
-- condition sets them equal.
theorem t55_dilation_at_matched (f : ℝ → ℝ) (t r : ℝ) (h : matched_level f t r) :
    Real.sqrt (f r) = Real.sqrt (1 - t ^ 2) := by
  simp only [matched_level] at h
  rw [h]

-- [T56] :: {VER} | THE CORRIDOR'S LEVEL VALUES
theorem t56_corridor_levels :
    1 - TORSION_LIMIT ^ 2 =
      3833041548529556212611501999 / 3906250000000000000000000000 ∧
    1 - TL_IVA ^ 2 =
      601493339872076301725991741879 / 610351562500000000000000000000 := by
  constructor
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- ============================================================
-- SECTION 12: REISSNER–NORDSTRÖM — THE MATCHED RADIUS AS A PAIR
-- ============================================================

/-- The charge in units of the Schwarzschild radius. -/
def q_of (rs rQ : ℝ) : ℝ := rQ / rs

/-- The outer root of the Reissner–Nordström level set, in Schwarzschild
radii: [1 + √(1 − 4q²τ²)]/(2τ²). -/
def rn_outer (q t : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / (2 * t ^ 2)

/-- The inner root. -/
def rn_inner (q t : ℝ) : ℝ := (1 - Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / (2 * t ^ 2)

/-- The charge correction factor the outer root applies to the Schwarzschild
matched radius. -/
def rn_factor (q t : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / 2

-- [T57] :: {VER} | THE LEVEL SET IS A QUADRATIC IN THE RADIUS
theorem t57_rn_quadratic (rs rQ t r : ℝ) (hr : r ≠ 0) :
    matched_level (f_rn rs rQ) t r ↔ t ^ 2 * r ^ 2 - rs * r + rQ ^ 2 = 0 := by
  simp only [matched_level, f_rn]
  have hr2 : r ^ 2 ≠ 0 := pow_ne_zero 2 hr
  constructor
  · intro h; field_simp at h; nlinarith [h]
  · intro h; field_simp; nlinarith [h]

-- [T58] :: {VER} | THE DISCRIMINANT IS NONNEGATIVE ON THE PHYSICAL RANGE
-- Sub-extremal charge, q ≤ 1/2, with Reading A below one.
theorem t58_rn_discriminant (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := by
  nlinarith [sq_nonneg q, sq_nonneg t, mul_nonneg hq0 ht0.le]

-- [T59] :: {VER} | THE TWO ROOTS SOLVE THE QUADRATIC
theorem t59_rn_roots_solve (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    t ^ 2 * rn_outer q t ^ 2 - 1 * rn_outer q t + q ^ 2 = 0 ∧
    t ^ 2 * rn_inner q t ^ 2 - 1 * rn_inner q t + q ^ 2 = 0 := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t58_rn_discriminant q t hq0 hq ht0 ht1
  have hs : Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) ^ 2 = 1 - 4 * q ^ 2 * t ^ 2 :=
    Real.sq_sqrt hd
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  constructor
  · simp only [rn_outer]; field_simp; nlinarith [hs]
  · simp only [rn_inner]; field_simp; nlinarith [hs]

-- [T60] :: {VER} | THE UNCHARGED LIMIT RECOVERS THE PARENT RESULT
theorem t60_rn_uncharged_limit (t : ℝ) (ht : 0 < t) :
    rn_outer 0 t = matched_ratio t ∧ rn_inner 0 t = 0 := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  constructor
  · simp only [rn_outer, matched_ratio]
    norm_num
    rw [Real.sqrt_one]
    field_simp
  · simp only [rn_inner]
    norm_num
    rw [Real.sqrt_one]
    norm_num

-- [T61] :: {VER} | THE OUTER ROOT IS THE SCHWARZSCHILD RADIUS TIMES THE FACTOR
theorem t61_rn_outer_factored (q t : ℝ) (ht : 0 < t) :
    rn_outer q t = matched_ratio t * rn_factor q t := by
  simp only [rn_outer, matched_ratio, rn_factor]
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  field_simp
  ring

-- [T62] :: {VER} | THE FACTOR IS ONE AT ZERO CHARGE
theorem t62_rn_factor_uncharged : rn_factor 0 1 = 1 := by
  simp only [rn_factor]
  norm_num
  rw [Real.sqrt_one]
  norm_num

-- [T63] :: {VER} | THE FACTOR DECREASES IN THE CHARGE
theorem t63_rn_factor_antitone (q₁ q₂ t : ℝ) (h0 : 0 ≤ q₁) (h : q₁ < q₂)
    (hq2 : q₂ ≤ 1/2) (ht0 : 0 < t) (ht1 : t < 1) :
    rn_factor q₂ t < rn_factor q₁ t := by
  have hd1 : 0 ≤ 1 - 4 * q₁ ^ 2 * t ^ 2 :=
    t58_rn_discriminant q₁ t h0 (by linarith) ht0 ht1
  have hd2 : 0 ≤ 1 - 4 * q₂ ^ 2 * t ^ 2 :=
    t58_rn_discriminant q₂ t (by linarith) hq2 ht0 ht1
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have hlt : 1 - 4 * q₂ ^ 2 * t ^ 2 < 1 - 4 * q₁ ^ 2 * t ^ 2 := by
    nlinarith [ht2, h, h0]
  simp only [rn_factor]
  have := Real.sqrt_lt_sqrt hd2 hlt
  linarith

-- [T64] :: {VER} | THE FACTOR AT EXTREMAL CHARGE IS THE DILATION FACTOR, SHIFTED
theorem t64_rn_factor_extremal (t : ℝ) :
    rn_factor (1/2) t = (1 + Real.sqrt (1 - t ^ 2)) / 2 := by
  simp only [rn_factor]
  congr 2
  ring

-- [T65] :: {VER} | THE MAXIMUM INWARD SHIFT IS THE DILATION DEFICIT, HALVED
theorem t65_max_shift_is_half_the_deficit (t : ℝ) :
    1 - rn_factor (1/2) t = (1 - Real.sqrt (1 - t ^ 2)) / 2 := by
  rw [t64_rn_factor_extremal t]
  ring

-- [T66] :: {VER} | THE EXTREMAL FACTOR AT THE CORRIDOR EDGES, BRACKETED
theorem t66_extremal_factor_values :
    0.995292498535 < rn_factor (1/2) TORSION_LIMIT ∧
    rn_factor (1/2) TORSION_LIMIT < 0.995292498536 ∧
    0.996358410839 < rn_factor (1/2) TL_IVA ∧
    rn_factor (1/2) TL_IVA < 0.996358410841 := by
  have hc : Real.sqrt (1 - TORSION_LIMIT ^ 2) ^ 2 = 1 - TORSION_LIMIT ^ 2 := by
    apply Real.sq_sqrt
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hcp : 0 < Real.sqrt (1 - TORSION_LIMIT ^ 2) := by
    apply Real.sqrt_pos.mpr
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hf : Real.sqrt (1 - TL_IVA ^ 2) ^ 2 = 1 - TL_IVA ^ 2 := by
    apply Real.sq_sqrt
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hfp : 0 < Real.sqrt (1 - TL_IVA ^ 2) := by
    apply Real.sqrt_pos.mpr
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hcv : TORSION_LIMIT ^ 2 = 73208451470443787388498001 / 3906250000000000000000000000 :=
    t35_corridor_thresholds.1
  have hfv : TL_IVA ^ 2 = 8858222627923698274008258121 / 610351562500000000000000000000 :=
    t35_corridor_thresholds.2
  rw [hcv] at hc hcp
  rw [hfv] at hf hfp
  simp only [rn_factor]
  norm_num at hc hf ⊢
  refine ⟨?_, ?_, ?_, ?_⟩ <;> nlinarith [hc, hcp, hf, hfp]

-- [T67] :: {VER} | AT THE EXTREMAL CHARGE READING A'S SUPREMUM MATCHES THE HORIZON
-- τ_A = 1 and q = 1/2 merge the pair at r = r_s/2, the extremal horizon.
theorem t67_extremal_photon_matches_horizon :
    rn_outer (1/2) 1 = 1/2 ∧ rn_inner (1/2) 1 = 1/2 := by
  constructor
  · simp only [rn_outer]; norm_num
  · simp only [rn_inner]; norm_num

-- ============================================================
-- SECTION 13: MASTER
-- ============================================================

-- [MASTER] :: {VER} | THE PROPELLANT LAW AND THE COMPACTNESS CRITERION
theorem MASTER_propellant_and_compactness :
    -- the inversion solves the chain quadratic
    (∀ x : ℝ, tau_B_of_x x ^ 2 + 2 * tau_B_of_x x = x ^ 2) ∧
    -- the saving is the ratio of the two mass ratios, and factors through e
    (∀ x : ℝ, saving x = mr_ideal x / mr_match x) ∧
    (∀ x : ℝ, saving x = Real.exp 1 * Real.exp (x - rad x)) ∧
    -- strictly bounded above by e, strictly increasing, bracketed below
    (∀ x : ℝ, saving x < Real.exp 1) ∧
    (∀ x y : ℝ, x < y → saving x < saving y) ∧
    (∀ x : ℝ, 0 < x → Real.exp 1 * Real.exp (-1 / x) < saving x) ∧
    -- the bound is the well's own Reading B
    (∀ x : ℝ, sav_exp x = (x - rad x) + well_tau_B) ∧
    Real.exp well_tau_B = Real.exp 1 ∧
    -- the small-burn cost is quadratic, not exponential
    (∀ x : ℝ, tau_B_of_x x ≤ x ^ 2 / 2) ∧
    -- availability is compactness against Reading A
    (∀ rs R t : ℝ, 0 < R → t ≠ 0 →
      (R < rs / t ^ 2 ↔ t ^ 2 < compactness rs R)) ∧
    (∀ rs R t : ℝ, 0 < R → t ≠ 0 →
      (R < rs / t ^ 2 ↔ 2 * eta_of_tau t < compactness rs R)) ∧
    -- the gain requirement grows quadratically
    (∀ t g : ℝ, gained_tau t g ^ 2 = (1 + g) ^ 2 * t ^ 2) ∧
    -- the matched radius is a level set, and Schwarzschild is the instance
    (∀ (f : ℝ → ℝ) (t r : ℝ), matched_level f t r ↔ f r = 1 - 2 * eta_of_tau t) ∧
    (∀ rs t r : ℝ, r ≠ 0 → t ≠ 0 →
      (matched_level (f_schwarzschild rs) t r ↔ r = rs / t ^ 2)) ∧
    -- Reissner–Nordström is the quadratic instance, with the outer root
    -- factoring through the Schwarzschild radius
    (∀ rs rQ t r : ℝ, r ≠ 0 →
      (matched_level (f_rn rs rQ) t r ↔ t ^ 2 * r ^ 2 - rs * r + rQ ^ 2 = 0)) ∧
    (∀ q t : ℝ, 0 < t → rn_outer q t = matched_ratio t * rn_factor q t) ∧
    -- and the largest inward shift charge can produce is the deficit halved
    (∀ t : ℝ, 1 - rn_factor (1/2) t = (1 - Real.sqrt (1 - t ^ 2)) / 2) := by
  refine ⟨t11_inversion_solves, t14_saving_is_the_ratio, t15_saving_factored,
    t17_saving_lt_e, t23_saving_mono,
    fun x hx => (t21_saving_bracket x hx).1,
    t24_constant_is_the_well, t25_bound_is_e_to_the_well,
    t27_small_burn_upper,
    fun rs R t hR ht => t32_master_criterion rs R t hR ht,
    fun rs R t hR ht => t33_criterion_on_eta rs R t hR ht,
    t47_gain_requirement_quadratic,
    fun f t r => t52_level_set_on_eta f t r,
    fun rs t r hr ht => t53_schwarzschild_instance rs t r hr ht,
    fun rs rQ t r hr => t57_rn_quadratic rs rQ t r hr,
    fun q t ht => t61_rn_outer_factored q t ht,
    t65_max_shift_is_half_the_deficit⟩

end SNSFL_PropellantCompactness

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- The chain law read backwards is a propellant law, and it is bounded. A
-- burn at the matched radius costs exp(√(1 + x²) − 1) where the ideal rocket
-- costs exp(x), and the ratio of the two climbs toward e and never reaches
-- it — because the one e-fold the well supplies is the one e-fold the
-- vehicle stops carrying, and a vehicle cannot take more from a well than
-- the well holds. Where that maneuver exists at all is a second inequality
-- between two fractions that were never built for each other: a body admits
-- a drive's matched radius exactly when its compactness exceeds twice the
-- drive's conversion fraction. Neither statement is Schwarzschild's. The
-- matched radius is the radius at which a static metric function equals the
-- squared dilation factor, so the agreement of the gravitational and
-- kinematic dilations is the equation that locates the radius rather than a
-- property it happens to carry; Schwarzschild is where that level set is
-- linear, Reissner–Nordström is where it is a pair, and charge moves the
-- reachable root inward by at most the dilation deficit, halved.
--
-- THEOREMS : 67 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
