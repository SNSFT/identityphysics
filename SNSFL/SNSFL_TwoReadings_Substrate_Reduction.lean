-- ============================================================
-- SNSFL_TwoReadings_Substrate_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE TWO READINGS ACROSS SUBSTRATES
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,8,11](MATH) | Mathematics Ground — Foundations
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, Reading B, the conversion fraction, the
-- matched ratio, the square-root torsion operator, the compactness and the
-- surface torsion are all restated here at full precision, so that a reader
-- or a machine can close every proof without leaving the file. The parent
-- reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,8,1]    L0 Isomorphism Consistency  — what a structure-preserving map requires
--   [9,9,8,9]    Logarithm Reduction         — ln as Narrative along multiplicative growth
--   [9,9,8,0]    Economics Reduction         — torsion as departure over reference
--   [9,9,0,20]   Burn Depth and Thrust Floor — the address theorem, the depth inversion
--   [9,9,0,18]   Propellant Law, Compactness — τ_surface = √C, the saving bounded by e
--   [9,9,0,17.1] Matched Radius, specialist  — the square-root operator, closure over ℚ
--   [9,9,0,17]   Matched Radius Reduction    — r_match = r_s/τ_A², the mass canceling
--   [9,9,2,0]    IVA Propulsion Reduction    — the two readings, the bridge, the gain cap
--   [9,9,3,14]   Alpha Reduction             — α⁻¹ = Ω₀ × 100.1, TL = α⁻¹/1001
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   ONE EQUATION, EVERY SUBSTRATE. A quantity consumed multiplicatively along
--   a path has an e-fold count τ = ln(Y₀/Y), and the fraction removed is
--   1 − e^−τ. That is Reading B, and it is the SAME equation in propulsion,
--   optics, nuclear decay, circuits and capital. The ideal rocket relation and
--   the Beer–Lambert law are shown here to be one function of one argument,
--   and e-fold counts add along a path, so stacking slabs and staging a burn
--   are the same arithmetic.
--
--   READING A NEEDS A CEILING. Reading A is a characteristic speed divided by
--   a LIMITING speed, so a substrate carries it only when it has a speed
--   nothing in it exceeds. A medium has one: the phase velocity is c/n, so
--   Reading A in a medium is 1/n.
--
--   THE PERMITTIVITY IS THE MATCHED RATIO. For a non-magnetic medium,
--
--       ε_r = n² = 1/τ_A² = matched_ratio(τ_A)
--
--   so the matched ratio of a medium is its own relative permittivity.
--
--   THE SQUARE-ROOT OPERATOR IS A CONSTITUTIVE RELATION. S X = √X is the
--   operation that builds n from ε_r, τ_surface from C, impedance from the
--   constitutive pair and sound speed from stiffness over density. Its closure
--   matched_ratio(S X) = 1/X therefore holds in every one of those rows at
--   once, and the gravitational instance is the address theorem of [9,9,0,20]
--   while the optical instance is ε_r itself — ONE RESULT, TWO SUBSTRATES.
--
--   THE CLOSURE IS EXACT OVER ℚ. A medium specified by a rational permittivity
--   has an irrational index and an exactly rational matched ratio. Fifteen
--   integers lie in the IVA corridor on permittivity, 54 through 68, and the
--   corridor endpoints are themselves matched ratios of the corridor endpoints
--   on Reading A.
--
--   THE SHARED LIMIT. matched_ratio = 1 is the horizon in gravitation and
--   vacuum in optics: the point at which nothing is holding light back.
--
--   AND THE TRANSFER HAS A BOUNDARY. The bridge and the depth inversion need
--   both readings to describe one object, and at u = 0 the inversion collapses
--   to the bare target, carrying no well. Three nested levels of transfer are
--   stated and the nesting is proved.
--
-- ============================================================

import Mathlib

noncomputable section

namespace SNSFL_TwoReadingsSubstrate

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

/-- Reading A. A characteristic speed against the limiting speed. -/
def tau_A (w : ℝ) : ℝ := w / C_LIGHT

/-- The rest-mass conversion fraction: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The matched radius in Schwarzschild units: 1/τ_A² = 1/(2η). -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

/-- The square-root torsion operator. -/
def sqrt_op (X : ℝ) : ℝ := Real.sqrt X

/-- The compactness of a body: its Schwarzschild radius over its radius. -/
def compactness (rs R : ℝ) : ℝ := rs / R

/-- The surface torsion, the body's own address: √C. -/
def surface_torsion (rs R : ℝ) : ℝ := Real.sqrt (compactness rs R)

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
-- SECTION 1: THE COMMON EQUATION
-- tau = integral of (-dY/Y) = ln(Y0/Y). An e-fold count, no substrate named.
-- ============================================================

/-- Reading B as an e-fold count: the logarithm of the endpoint ratio. -/
def efold (Y0 Y : ℝ) : ℝ := Real.log (Y0 / Y)

/-- The fraction of the consumed quantity still present after τ e-folds. -/
def remaining (τ : ℝ) : ℝ := Real.exp (-τ)

/-- The fraction removed after τ e-folds. -/
def consumed (τ : ℝ) : ℝ := 1 - Real.exp (-τ)

-- [T9] :: {MASTER} | THE E-FOLD COUNT INVERTS THE DECAY
theorem t9_efold_inverts (Y0 τ : ℝ) (h : 0 < Y0) :
    efold Y0 (Y0 * remaining τ) = τ := by
  have h0 : Y0 ≠ 0 := ne_of_gt h
  have hp : Real.exp τ ≠ 0 := Real.exp_ne_zero τ
  simp only [efold, remaining]
  rw [show Y0 / (Y0 * Real.exp (-τ)) = Real.exp τ by
        rw [Real.exp_neg]; field_simp]
  exact Real.log_exp τ

-- [T10] :: {MASTER} | THE DECAY RECOVERS THE ENDPOINT FROM THE E-FOLD COUNT
theorem t10_remaining_recovers (Y0 Y : ℝ) (h0 : 0 < Y0) (hY : 0 < Y) :
    Y0 * remaining (efold Y0 Y) = Y := by
  have hz : Y0 ≠ 0 := ne_of_gt h0
  have hzy : Y ≠ 0 := ne_of_gt hY
  have hdiv : (0:ℝ) < Y0 / Y := div_pos h0 hY
  simp only [remaining, efold, Real.exp_neg, Real.exp_log hdiv]
  field_simp

-- [T11] :: {INV} | THE TWO FRACTIONS ARE COMPLEMENTS
theorem t11_fractions_complement (τ : ℝ) : consumed τ + remaining τ = 1 := by
  simp only [consumed, remaining]; ring

-- [T12] :: {INV} | A ZERO COUNT CONSUMES NOTHING
theorem t12_zero_consumes_nothing : consumed 0 = 0 := by
  simp only [consumed, neg_zero, Real.exp_zero, sub_self]

-- [T13] :: {INV} | THE CONSUMED FRACTION IS STRICTLY INCREASING IN THE COUNT
theorem t13_consumed_strict_mono (a b : ℝ) (h : a < b) : consumed a < consumed b := by
  simp only [consumed]
  have he : Real.exp (-b) < Real.exp (-a) := Real.exp_lt_exp.mpr (by linarith)
  linarith

-- [T14] :: {INV} | THE CONSUMED FRACTION NEVER REACHES ONE
theorem t14_consumed_below_one (τ : ℝ) : consumed τ < 1 := by
  simp only [consumed]
  have hp := Real.exp_pos (-τ)
  linarith

-- [T15] :: {INV} | ANY POSITIVE COUNT CONSUMES SOMETHING
theorem t15_consumed_pos (τ : ℝ) (h : 0 < τ) : 0 < consumed τ := by
  simp only [consumed]
  have hlt : Real.exp (-τ) < 1 := by
    have hx := Real.exp_lt_exp.mpr (show -τ < 0 by linarith)
    rwa [Real.exp_zero] at hx
  linarith

-- [T16] :: {VER} | ONE DECADE IS NINE TENTHS GONE, EXACTLY
theorem t16_one_decade : consumed (Real.log 10) = 9 / 10 := by
  simp only [consumed, Real.exp_neg, Real.exp_log (by norm_num : (0:ℝ) < 10)]
  norm_num

-- [T17] :: {VER} | TWO DECADES IS NINETY-NINE HUNDREDTHS GONE, EXACTLY
theorem t17_two_decades : consumed (Real.log 100) = 99 / 100 := by
  simp only [consumed, Real.exp_neg, Real.exp_log (by norm_num : (0:ℝ) < 100)]
  norm_num

-- [T18] :: {VER} | LN 2 IS HALF GONE, EXACTLY
theorem t18_half_gone : consumed (Real.log 2) = 1 / 2 := by
  simp only [consumed, Real.exp_neg, Real.exp_log (by norm_num : (0:ℝ) < 2)]
  norm_num

-- [T19] :: {VER} | ONE E-FOLD IS 0.632 OF THE QUANTITY
theorem t19_one_efold_numeric :
    0.632 < consumed 1 ∧ consumed 1 < 0.633 := by
  have hlo := Real.exp_one_gt_d9
  have hhi := Real.exp_one_lt_d9
  have hE : (0:ℝ) < Real.exp 1 := Real.exp_pos 1
  have hinvpos : (0:ℝ) < (Real.exp 1)⁻¹ := inv_pos.mpr hE
  have hmul : (Real.exp 1)⁻¹ * Real.exp 1 = 1 := inv_mul_cancel₀ (ne_of_gt hE)
  simp only [consumed, Real.exp_neg]
  constructor
  · nlinarith [hlo, hhi, hE, hinvpos, hmul]
  · nlinarith [hlo, hhi, hE, hinvpos, hmul]

-- [T20] :: {MASTER} | E-FOLD COUNTS ADD ALONG A PATH
theorem t20_path_additive (Y0 Y1 Y2 : ℝ) (h0 : 0 < Y0) (h1 : 0 < Y1) (h2 : 0 < Y2) :
    efold Y0 Y1 + efold Y1 Y2 = efold Y0 Y2 := by
  have hne1 : Y0 / Y1 ≠ 0 := div_ne_zero (ne_of_gt h0) (ne_of_gt h1)
  have hne2 : Y1 / Y2 ≠ 0 := div_ne_zero (ne_of_gt h1) (ne_of_gt h2)
  have hz1 : Y1 ≠ 0 := ne_of_gt h1
  have hz2 : Y2 ≠ 0 := ne_of_gt h2
  simp only [efold]
  rw [← Real.log_mul hne1 hne2]
  congr 1
  field_simp

-- ============================================================
-- SECTION 2: READING B ACROSS SUBSTRATES
-- One structure, five named rows, one equation.
-- ============================================================

/-- A substrate carrying Reading B: a positive quantity and its two endpoints. -/
structure ReadingB where
  Y0 : ℝ
  Y1 : ℝ
  hY0 : 0 < Y0
  hY1 : 0 < Y1

/-- The substrate's e-fold count. -/
def ReadingB.tau (s : ReadingB) : ℝ := efold s.Y0 s.Y1

/-- The substrate's consumed fraction. -/
def ReadingB.consumedFraction (s : ReadingB) : ℝ := consumed s.tau

-- [T21] :: {MASTER} | THE CONSUMED FRACTION IS THE COMPLEMENT OF THE ENDPOINT RATIO
theorem t21_substrate_consumed (s : ReadingB) :
    s.consumedFraction = 1 - s.Y1 / s.Y0 := by
  have h0 : s.Y0 ≠ 0 := ne_of_gt s.hY0
  have h1 : s.Y1 ≠ 0 := ne_of_gt s.hY1
  have hd : (0:ℝ) < s.Y0 / s.Y1 := div_pos s.hY0 s.hY1
  simp only [ReadingB.consumedFraction, ReadingB.tau, consumed, efold,
    Real.exp_neg, Real.exp_log hd]
  field_simp

/-- The propulsion row: propellant mass over the burn. -/
def propulsion_row (m0 mf : ℝ) (h0 : 0 < m0) (hf : 0 < mf) : ReadingB := ⟨m0, mf, h0, hf⟩

/-- The optics row: intensity over the slab. -/
def optics_row (I0 I : ℝ) (h0 : 0 < I0) (h : 0 < I) : ReadingB := ⟨I0, I, h0, h⟩

/-- The nuclear row: activity over elapsed proper time. -/
def nuclear_row (A0 A : ℝ) (h0 : 0 < A0) (h : 0 < A) : ReadingB := ⟨A0, A, h0, h⟩

/-- The circuits row: charge over the RC discharge. -/
def circuits_row (V0 V : ℝ) (h0 : 0 < V0) (h : 0 < V) : ReadingB := ⟨V0, V, h0, h⟩

/-- The capital row: principal over a holding period. -/
def capital_row (P0 P1 : ℝ) (h0 : 0 < P0) (h : 0 < P1) : ReadingB := ⟨P0, P1, h0, h⟩

-- [T22] :: {MASTER} | THE FIVE ROWS ARE ONE EQUATION
theorem t22_rows_are_one_equation (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    (propulsion_row a b ha hb).tau = (optics_row a b ha hb).tau ∧
    (optics_row a b ha hb).tau = (nuclear_row a b ha hb).tau ∧
    (nuclear_row a b ha hb).tau = (circuits_row a b ha hb).tau ∧
    (circuits_row a b ha hb).tau = (capital_row a b ha hb).tau :=
  ⟨rfl, rfl, rfl, rfl⟩

-- [T23] :: {INV} | THE ROCKET RELATION IS THE ROW, NAMED
theorem t23_rocket_relation (m0 mf : ℝ) (h0 : 0 < m0) (hf : 0 < mf) :
    (propulsion_row m0 mf h0 hf).tau = Real.log (m0 / mf) := rfl

-- [T24] :: {INV} | THE BEER-LAMBERT LAW IS THE ROW, NAMED
theorem t24_beer_lambert_law (I0 I : ℝ) (h0 : 0 < I0) (h : 0 < I) :
    (optics_row I0 I h0 h).tau = Real.log (I0 / I) := rfl

/-- Beer–Lambert attenuation through a slab: absorption coefficient times length. -/
def beer_lambert (I0 a L : ℝ) : ℝ := I0 * Real.exp (-(a * L))

/-- The ideal rocket's remaining mass after a burn of Reading B. -/
def rocket_remaining (m0 tb : ℝ) : ℝ := m0 * Real.exp (-tb)

-- [T25] :: {MASTER} | BEER-LAMBERT AND THE ROCKET RELATION ARE ONE FUNCTION
theorem t25_same_function (I0 a L : ℝ) :
    beer_lambert I0 a L = rocket_remaining I0 (a * L) := rfl

-- [T26] :: {INV} | THE OPTICAL DEPTH IS THE E-FOLD COUNT
theorem t26_optical_depth_is_efold (I0 a L : ℝ) (h : 0 < I0) :
    efold I0 (beer_lambert I0 a L) = a * L :=
  t9_efold_inverts I0 (a * L) h

-- [T27] :: {INV} | STACKING SLABS IS STAGING A BURN
theorem t27_stacking_is_staging (I0 I1 I2 : ℝ) (h0 : 0 < I0) (h1 : 0 < I1) (h2 : 0 < I2) :
    (optics_row I0 I1 h0 h1).tau + (optics_row I1 I2 h1 h2).tau
      = (optics_row I0 I2 h0 h2).tau :=
  t20_path_additive I0 I1 I2 h0 h1 h2

-- ============================================================
-- SECTION 3: READING A NEEDS A CEILING, AND A MEDIUM HAS ONE
-- ============================================================

/-- Reading A in a medium: the phase velocity c/n against c, so 1/n. -/
def reading_A_medium (n : ℝ) : ℝ := 1 / n

/-- The relative permittivity of a non-magnetic medium, from its index. -/
def perm_of_index (n : ℝ) : ℝ := n ^ 2

/-- The refractive index of a non-magnetic medium, from its permittivity. -/
def index_of_perm (e : ℝ) : ℝ := Real.sqrt e

-- [T28] :: {INV} | READING A IN A MEDIUM IS CONFINED TO THE UNIT INTERVAL
theorem t28_reading_a_bounded (n : ℝ) (hn : 1 ≤ n) :
    0 < reading_A_medium n ∧ reading_A_medium n ≤ 1 := by
  have hpos : (0:ℝ) < n := by linarith
  have hinv : n * (1 / n) = 1 := by field_simp
  have hqpos : (0:ℝ) < 1 / n := div_pos one_pos hpos
  simp only [reading_A_medium]
  refine ⟨hqpos, ?_⟩
  nlinarith [hinv, hpos, hn, hqpos]

-- [T29] :: {INV} | READING A IS ONE EXACTLY IN VACUUM
theorem t29_unity_is_vacuum (n : ℝ) (hn : 0 < n) :
    reading_A_medium n = 1 ↔ n = 1 := by
  have hn0 : n ≠ 0 := ne_of_gt hn
  simp only [reading_A_medium]
  constructor
  · intro h
    field_simp at h
    linarith
  · intro h
    rw [h]; norm_num

-- [T30] :: {INV} | THE INDEX AND THE PERMITTIVITY INVERT EACH OTHER
theorem t30_index_perm_inverse (e : ℝ) (he : 0 ≤ e) :
    perm_of_index (index_of_perm e) = e := by
  simp only [perm_of_index, index_of_perm]
  exact Real.sq_sqrt he

-- [T31] :: {INV} | READING A IS STRICTLY DECREASING IN THE INDEX
theorem t31_reading_a_decreasing (n₁ n₂ : ℝ) (h1 : 0 < n₁) (h : n₁ < n₂) :
    reading_A_medium n₂ < reading_A_medium n₁ := by
  simp only [reading_A_medium]
  exact one_div_lt_one_div_of_lt h1 h

-- ============================================================
-- SECTION 4: THE PERMITTIVITY IS THE MATCHED RATIO
-- ============================================================

-- [T32] :: {MASTER} | THE MATCHED RATIO OF A MEDIUM IS ITS OWN PERMITTIVITY
theorem t32_perm_is_matched_ratio (n : ℝ) (hn : n ≠ 0) :
    matched_ratio (reading_A_medium n) = perm_of_index n := by
  simp only [matched_ratio, reading_A_medium, perm_of_index]
  field_simp

-- [T33] :: {INV} | STATED ON THE PERMITTIVITY DIRECTLY
theorem t33_matched_ratio_from_perm (e : ℝ) (he : 0 < e) :
    matched_ratio (reading_A_medium (index_of_perm e)) = e := by
  have hne : index_of_perm e ≠ 0 := by
    simp only [index_of_perm]
    exact ne_of_gt (Real.sqrt_pos.mpr he)
  rw [t32_perm_is_matched_ratio _ hne]
  exact t30_index_perm_inverse e he.le

-- [T34] :: {INV} | THE CONVERSION FRACTION OF A MEDIUM
theorem t34_eta_of_medium (n : ℝ) (hn : n ≠ 0) :
    2 * eta_of_tau (reading_A_medium n) = 1 / perm_of_index n := by
  simp only [eta_of_tau, reading_A_medium, perm_of_index]
  field_simp

-- ============================================================
-- SECTION 5: THE SQUARE-ROOT OPERATOR IS A CONSTITUTIVE RELATION
-- ============================================================

/-- Characteristic impedance from the constitutive pair: Z = √(μ/ε). -/
def impedance (mu eps : ℝ) : ℝ := Real.sqrt (mu / eps)

/-- Sound speed from stiffness over density: v = √(K/ρ). -/
def sound_speed (K rho : ℝ) : ℝ := Real.sqrt (K / rho)

-- [T35] :: {MASTER} | THE CLOSURE OF THE SQUARE-ROOT OPERATOR
theorem t35_closure (X : ℝ) (hX : 0 ≤ X) : matched_ratio (sqrt_op X) = 1 / X := by
  simp only [matched_ratio, sqrt_op, Real.sq_sqrt hX]

-- [T36] :: {INV} | THE OPTICAL ROW IS THE OPERATOR
theorem t36_optics_is_the_operator (e : ℝ) : index_of_perm e = sqrt_op e := rfl

-- [T37] :: {INV} | THE GRAVITATIONAL ROW IS THE OPERATOR
theorem t37_gravitation_is_the_operator (rs R : ℝ) :
    surface_torsion rs R = sqrt_op (compactness rs R) := rfl

-- [T38] :: {INV} | THE TRANSMISSION ROW IS THE OPERATOR
theorem t38_impedance_is_the_operator (mu eps : ℝ) :
    impedance mu eps = sqrt_op (mu / eps) := rfl

-- [T39] :: {INV} | THE ACOUSTIC ROW IS THE OPERATOR
theorem t39_sound_speed_is_the_operator (K rho : ℝ) :
    sound_speed K rho = sqrt_op (K / rho) := rfl

-- [T40] :: {INV} | THE OPERATOR IS MONOTONE
theorem t40_operator_monotone (X Y : ℝ) (hX : 0 ≤ X) (h : X < Y) :
    sqrt_op X < sqrt_op Y := by
  simp only [sqrt_op]
  exact Real.sqrt_lt_sqrt hX h

-- [T41] :: {INV} | THE OPERATOR IS POSITIVE ON POSITIVES
theorem t41_operator_pos (X : ℝ) (hX : 0 < X) : 0 < sqrt_op X := by
  simp only [sqrt_op]
  exact Real.sqrt_pos.mpr hX

-- [T42] :: {INV} | THE OPERATOR FIXES ONE
theorem t42_operator_fixes_one : sqrt_op 1 = 1 := by
  simp only [sqrt_op]
  exact Real.sqrt_one

-- ============================================================
-- SECTION 6: THE CLOSURE THEOREM IN BOTH SUBSTRATES
-- ============================================================

-- [T43] :: {MASTER} | READING A IN A MEDIUM IS THE OPERATOR ON THE INVERSE PERMITTIVITY
theorem t43_reading_a_is_operator_form (e : ℝ) :
    reading_A_medium (index_of_perm e) = sqrt_op (1 / e) := by
  simp only [reading_A_medium, index_of_perm, sqrt_op, one_div, Real.sqrt_inv]

-- [T44] :: {MASTER} | THE CLOSURE THEOREM IN OPTICS
theorem t44_optics_closure (e : ℝ) (he : 0 < e) :
    matched_ratio (sqrt_op (1 / e)) = e := by
  have hz : e ≠ 0 := ne_of_gt he
  rw [t35_closure (1 / e) (le_of_lt (div_pos one_pos he))]
  field_simp

-- [T45] :: {MASTER} | THE CLOSURE THEOREM IN GRAVITATION
theorem t45_grav_closure (rs R : ℝ) (hrs : 0 < rs) (hR : 0 < R) :
    matched_ratio (surface_torsion rs R) = R / rs := by
  have h : (0:ℝ) ≤ compactness rs R := by
    simp only [compactness]
    exact le_of_lt (div_pos hrs hR)
  have hz1 : rs ≠ 0 := ne_of_gt hrs
  have hz2 : R ≠ 0 := ne_of_gt hR
  rw [t37_gravitation_is_the_operator, t35_closure _ h]
  simp only [compactness]
  field_simp

-- [T46] :: {MASTER} | THE ADDRESS THEOREM: THE MATCHED RADIUS SITS AT THE SURFACE
theorem t46_address_theorem (rs R : ℝ) (hrs : 0 < rs) (hR : 0 < R) :
    rs * matched_ratio (surface_torsion rs R) = R := by
  have hz1 : rs ≠ 0 := ne_of_gt hrs
  rw [t45_grav_closure rs R hrs hR]
  field_simp

-- [T47] :: {MASTER} | ONE CLOSURE, TWO SUBSTRATES
theorem t47_one_closure_two_substrates (e rs R : ℝ) (he : 0 < e) (hrs : 0 < rs) (hR : 0 < R) :
    matched_ratio (sqrt_op (1 / e)) = e ∧
    matched_ratio (sqrt_op (compactness rs R)) = R / rs := by
  refine ⟨t44_optics_closure e he, ?_⟩
  rw [← t37_gravitation_is_the_operator]
  exact t45_grav_closure rs R hrs hR

-- [T48] :: {INV} | THE COMPACTNESS IS THE SQUARE OF THE ADDRESS
theorem t48_compactness_is_address_squared (rs R : ℝ) (hrs : 0 < rs) (hR : 0 < R) :
    surface_torsion rs R ^ 2 = compactness rs R := by
  have h : (0:ℝ) ≤ compactness rs R := by
    simp only [compactness]
    exact le_of_lt (div_pos hrs hR)
  simp only [surface_torsion]
  exact Real.sq_sqrt h

-- ============================================================
-- SECTION 7: THE EXACTNESS, AND THE CORRIDOR IN A DIELECTRIC
-- ============================================================

/-- The IVA corridor floor on relative permittivity: the matched ratio of the
Torsion Limit. -/
def iva_perm_floor : ℝ := matched_ratio TORSION_LIMIT

/-- The IVA corridor ceiling on relative permittivity: the matched ratio of the
corridor floor on Reading A. -/
def iva_perm_ceiling : ℝ := matched_ratio TL_IVA

-- [T49] :: {MASTER} | THE CORRIDOR ENDPOINTS ARE MATCHED RATIOS OF THE CORRIDOR ENDPOINTS
theorem t49_endpoints_are_matched_ratios :
    iva_perm_floor = matched_ratio TORSION_LIMIT ∧
    iva_perm_ceiling = matched_ratio TL_IVA := ⟨rfl, rfl⟩

-- [T50] :: {VER} | THE CORRIDOR FLOOR, NUMERICALLY
theorem t50_floor_numeric :
    53.3579104808 < iva_perm_floor ∧ iva_perm_floor < 53.3579104809 := by
  simp only [iva_perm_floor, matched_ratio, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- [T51] :: {VER} | THE CORRIDOR CEILING, NUMERICALLY
theorem t51_ceiling_numeric :
    68.9022604349 < iva_perm_ceiling ∧ iva_perm_ceiling < 68.902260435 := by
  simp only [iva_perm_ceiling, matched_ratio, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- [T52] :: {VER} | THE CORRIDOR ON PERMITTIVITY IS NON-EMPTY
theorem t52_perm_corridor_nonempty : iva_perm_floor < iva_perm_ceiling := by
  have h1 := t50_floor_numeric
  have h2 := t51_ceiling_numeric
  linarith [h1.2, h2.1]

-- [T53] :: {VER} | FIFTY-FOUR AND SIXTY-EIGHT BRACKET THE CORRIDOR FROM INSIDE
theorem t53_integer_brackets :
    iva_perm_floor < 54 ∧ (68:ℝ) ≤ iva_perm_ceiling := by
  have h1 := t50_floor_numeric
  have h2 := t51_ceiling_numeric
  exact ⟨by linarith [h1.2], by linarith [h2.1]⟩

-- [T54] :: {MASTER} | FIFTEEN INTEGERS LIE IN THE CORRIDOR
theorem t54_fifteen_integers :
    (Finset.Icc 54 68 : Finset ℕ).card = 15 ∧
    ∀ m ∈ (Finset.Icc 54 68 : Finset ℕ),
      iva_perm_floor < (m:ℝ) ∧ (m:ℝ) ≤ iva_perm_ceiling := by
  refine ⟨by simp [Nat.card_Icc], ?_⟩
  intro m hm
  simp only [Finset.mem_Icc] at hm
  have h1 : (54:ℝ) ≤ (m:ℝ) := by exact_mod_cast hm.1
  have h2 : (m:ℝ) ≤ 68 := by exact_mod_cast hm.2
  have hb := t53_integer_brackets
  exact ⟨by linarith [hb.1], by linarith [hb.2]⟩

-- [T55] :: {MASTER} | A PERMITTIVITY IN THE CORRIDOR CLASSIFIES AS IVA
theorem t55_band_classifies_iva (e : ℝ)
    (hlo : iva_perm_floor < e) (hhi : e ≤ iva_perm_ceiling) :
    classify (reading_A_medium (index_of_perm e)) = Phase.IVA := by
  have hTLpos : (0:ℝ) < TORSION_LIMIT := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hIVApos : (0:ℝ) < TL_IVA := by
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hTL2 : (0:ℝ) < TORSION_LIMIT ^ 2 := pow_pos hTLpos 2
  have hIVA2 : (0:ℝ) < TL_IVA ^ 2 := pow_pos hIVApos 2
  have hfloorpos : (0:ℝ) < iva_perm_floor := by
    have hf := t50_floor_numeric
    linarith [hf.1]
  have hepos : (0:ℝ) < e := by linarith
  have hs : Real.sqrt e ^ 2 = e := Real.sq_sqrt hepos.le
  have hspos : (0:ℝ) < Real.sqrt e := Real.sqrt_pos.mpr hepos
  -- clear the denominators without touching the division lemmas
  have hinvTL : TORSION_LIMIT ^ 2 * (1 / TORSION_LIMIT ^ 2) = 1 := by
    field_simp
  have hinvIVA : TL_IVA ^ 2 * (1 / TL_IVA ^ 2) = 1 := by
    field_simp
  have hlo2 : 1 < e * TORSION_LIMIT ^ 2 := by
    simp only [iva_perm_floor, matched_ratio] at hlo
    nlinarith [hlo, hTL2, hinvTL]
  have hhi2 : e * TL_IVA ^ 2 ≤ 1 := by
    simp only [iva_perm_ceiling, matched_ratio] at hhi
    nlinarith [hhi, hIVA2, hinvIVA]
  -- lift to the roots
  have hlo' : 1 < Real.sqrt e * TORSION_LIMIT := by
    by_contra hcon
    have hc : Real.sqrt e * TORSION_LIMIT ≤ 1 := not_lt.mp hcon
    nlinarith [hs, hspos, hTLpos, hlo2, hc, mul_pos hspos hTLpos]
  have hhi' : Real.sqrt e * TL_IVA ≤ 1 := by
    by_contra hcon
    have hc : 1 < Real.sqrt e * TL_IVA := not_le.mp hcon
    nlinarith [hs, hspos, hIVApos, hhi2, hc, mul_pos hspos hIVApos]
  -- the three branch conditions
  have hqpos : (0:ℝ) < 1 / Real.sqrt e := div_pos one_pos hspos
  have hsinv : Real.sqrt e * (1 / Real.sqrt e) = 1 := by
    field_simp
  have hlt : 1 / Real.sqrt e < TORSION_LIMIT := by
    nlinarith [hlo', hspos, hsinv, hTLpos, hqpos]
  have hge : TL_IVA ≤ 1 / Real.sqrt e := by
    nlinarith [hhi', hspos, hsinv, hIVApos, hqpos]
  have hne : ¬ (1 / Real.sqrt e = 0) := by
    intro hzero
    rw [hzero] at hqpos
    exact absurd hqpos (lt_irrefl 0)
  simp only [reading_A_medium, index_of_perm, classify]
  rw [if_neg hne, if_neg (not_lt.mpr hge), if_pos hlt]

-- [T56] :: {MASTER} | A PRIME PERMITTIVITY: IRRATIONAL INDEX, EXACT MATCHED RATIO
theorem t56_prime_permittivity :
    iva_perm_floor < 59 ∧ (59:ℝ) ≤ iva_perm_ceiling ∧
    Irrational (Real.sqrt 59) ∧
    matched_ratio (sqrt_op (1 / 59)) = 59 := by
  have hb := t53_integer_brackets
  refine ⟨by linarith [hb.1], by linarith [hb.2], ?_, ?_⟩
  · have h59 : Nat.Prime 59 := by norm_num
    simpa using h59.irrational_sqrt
  · exact t44_optics_closure 59 (by norm_num)

-- [T57] :: {MASTER} | THE PRIME PERMITTIVITY SITS IN THE CORRIDOR
theorem t57_prime_is_iva :
    classify (reading_A_medium (index_of_perm 59)) = Phase.IVA := by
  have h := t56_prime_permittivity
  exact t55_band_classifies_iva 59 h.1 h.2.1

-- [T58] :: {INV} | A RATIONAL PERMITTIVITY GIVES AN EXACTLY RATIONAL MATCHED RATIO
theorem t58_rational_closure (p q : ℕ) (hp : 0 < p) (hq : 0 < q) :
    matched_ratio (sqrt_op (1 / ((p:ℝ) / (q:ℝ)))) = (p:ℝ) / (q:ℝ) := by
  have hpr : (0:ℝ) < (p:ℝ) := by exact_mod_cast hp
  have hqr : (0:ℝ) < (q:ℝ) := by exact_mod_cast hq
  exact t44_optics_closure _ (div_pos hpr hqr)

-- ============================================================
-- SECTION 8: SELF-CENTERING, AND THE LIMIT BOTH SUBSTRATES SHARE
-- ============================================================

-- [T59] :: {MASTER} | THE OPERATOR IS SELF-CENTERING ON THE OPEN UNIT INTERVAL
theorem t59_self_centering (k : ℝ) (h0 : 0 < k) (h1 : k < 1) :
    k < sqrt_op k ∧ sqrt_op k < 1 := by
  have hsq : Real.sqrt k ^ 2 = k := Real.sq_sqrt h0.le
  have hpos : (0:ℝ) < Real.sqrt k := Real.sqrt_pos.mpr h0
  have hlt1 : Real.sqrt k < 1 := by nlinarith [hsq, hpos, h1]
  simp only [sqrt_op]
  exact ⟨by nlinarith [hsq, hpos, hlt1], hlt1⟩

-- [T60] :: {INV} | THE OPERATOR RETURNS READING A FROM THE CONVERSION FRACTION
theorem t60_operator_returns_reading_a (t : ℝ) (ht : 0 ≤ t) :
    sqrt_op (2 * eta_of_tau t) = t := by
  simp only [sqrt_op, eta_of_tau]
  rw [show 2 * (t ^ 2 / 2) = t ^ 2 by ring]
  exact Real.sqrt_sq ht

-- [T61] :: {VER} | THE FIRST STEP OF THE LADDER RETURNS THE TORSION LIMIT
theorem t61_first_step_is_tl : sqrt_op (TORSION_LIMIT ^ 2) = TORSION_LIMIT := by
  simp only [sqrt_op]
  exact Real.sqrt_sq (by simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num)

-- [T62] :: {VER} | THE SECOND STEP OF THE LADDER RETURNS THE ROOT OF THE TORSION LIMIT
theorem t62_second_step_is_root_tl :
    sqrt_op (sqrt_op (TORSION_LIMIT ^ 2)) = Real.sqrt TORSION_LIMIT := by
  rw [t61_first_step_is_tl]
  simp only [sqrt_op]

-- [T63] :: {VER} | THE ROOT OF THE TORSION LIMIT, NUMERICALLY
theorem t63_root_tl_numeric :
    0.3699987 < Real.sqrt TORSION_LIMIT ∧ Real.sqrt TORSION_LIMIT < 0.3699988 := by
  have hTL : (0:ℝ) ≤ TORSION_LIMIT := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT := Real.sq_sqrt hTL
  have hnn : (0:ℝ) ≤ Real.sqrt TORSION_LIMIT := Real.sqrt_nonneg _
  have hnum : TORSION_LIMIT = 0.136899099984016 := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  constructor
  · nlinarith [hs, hnn, hnum]
  · nlinarith [hs, hnn, hnum]

-- [T64] :: {VER} | THE LADDER CLIMBS
theorem t64_ladder_climbs :
    TORSION_LIMIT ^ 2 < TORSION_LIMIT ∧ TORSION_LIMIT < Real.sqrt TORSION_LIMIT := by
  have h2 := t2_tl_in_unit_interval
  have hsc := t59_self_centering TORSION_LIMIT h2.1 h2.2
  refine ⟨by nlinarith [h2.1, h2.2], ?_⟩
  simpa only [sqrt_op] using hsc.1

-- [T65] :: {MASTER} | THE MATCHED RATIO IS ONE EXACTLY AT THE SHARED LIMIT
theorem t65_unit_matched_ratio (t : ℝ) (ht : 0 < t) :
    matched_ratio t = 1 ↔ t = 1 := by
  have ht0 : t ≠ 0 := ne_of_gt ht
  simp only [matched_ratio]
  constructor
  · intro h
    have hsq : t ^ 2 = 1 := by
      field_simp at h
      linarith
    have hfac : (t - 1) * (t + 1) = 0 := by linear_combination hsq
    rcases mul_eq_zero.mp hfac with h1 | h2
    · linarith
    · linarith
  · intro h
    rw [h]; norm_num

-- [T66] :: {MASTER} | THE HORIZON AND VACUUM ARE THE SAME CONDITION
theorem t66_horizon_is_vacuum (n : ℝ) (hn : 0 < n) :
    matched_ratio (reading_A_medium n) = 1 ↔ n = 1 := by
  have hn0 : n ≠ 0 := ne_of_gt hn
  rw [t32_perm_is_matched_ratio n hn0]
  simp only [perm_of_index]
  constructor
  · intro h
    have hfac : (n - 1) * (n + 1) = 0 := by linear_combination h
    rcases mul_eq_zero.mp hfac with h1 | h2
    · linarith
    · linarith
  · intro h
    rw [h]; norm_num

-- [T67] :: {INV} | VACUUM IS THE ONLY MEDIUM AT THE LIMIT
theorem t67_vacuum_perm_is_one : perm_of_index 1 = 1 ∧ reading_A_medium 1 = 1 := by
  simp only [perm_of_index, reading_A_medium]; norm_num

-- ============================================================
-- SECTION 9: WHERE THE TRANSFER STOPS
-- The bridge and the depth inversion need both readings on one object.
-- ============================================================

/-- The bridge: the two readings multiplied into one kinematic output. -/
def bridge (t tb : ℝ) : ℝ := C_LIGHT * t * tb

/-- The radical of the depth inversion. -/
def rad_depth (u x : ℝ) : ℝ := Real.sqrt (u ^ 2 + x ^ 2)

/-- The depth inversion: Reading B required to reach target x from depth u. -/
def tau_B_depth (u x : ℝ) : ℝ := rad_depth u x - u

/-- The pseudo-Huber form, scaled. -/
def pseudo_huber (u x : ℝ) : ℝ := u * (Real.sqrt (u ^ 2 + x ^ 2) - u)

-- [T68] :: {INV} | THE BRIDGE IS A PRODUCT OF BOTH READINGS
theorem t68_bridge_needs_both (t tb : ℝ) :
    bridge 0 tb = 0 ∧ bridge t 0 = 0 := by
  simp only [bridge]
  constructor <;> ring

-- [T69] :: {MASTER} | THE DEPTH INVERSION IS THE PSEUDO-HUBER FORM
theorem t69_pseudo_huber_identity (u x : ℝ) :
    u * tau_B_depth u x = pseudo_huber u x := by
  unfold tau_B_depth rad_depth pseudo_huber
  ring

-- [T70] :: {MASTER} | WITHOUT A WELL THE INVERSION COLLAPSES TO THE BARE TARGET
theorem t70_no_well_no_depth (x : ℝ) : tau_B_depth 0 x = |x| := by
  simp only [tau_B_depth, rad_depth]
  rw [show (0:ℝ) ^ 2 + x ^ 2 = x ^ 2 by ring, Real.sqrt_sq_eq_abs]
  ring

/-- The three nested levels of transfer, with the nesting as part of the data. -/
structure TransferLevels where
  multiplicative : Prop
  limiting_speed : Prop
  single_object : Prop
  speed_needs_multiplicative : limiting_speed → multiplicative
  single_needs_speed : single_object → limiting_speed

-- [T71] :: {MASTER} | THE LEVELS NEST
theorem t71_levels_nest (L : TransferLevels) : L.single_object → L.multiplicative :=
  fun h => L.speed_needs_multiplicative (L.single_needs_speed h)

-- [T72] :: {INV} | LEVEL TWO SITS INSIDE LEVEL ONE
theorem t72_level_two_in_one (L : TransferLevels) : L.limiting_speed → L.multiplicative :=
  L.speed_needs_multiplicative

-- ============================================================
-- MASTER
-- ============================================================

-- [MASTER] :: {ANC} | THE TWO READINGS ACROSS SUBSTRATES
theorem MASTER_two_readings_across_substrates :
    -- the common equation, and the fraction it names
    (∀ Y0 τ : ℝ, 0 < Y0 → efold Y0 (Y0 * remaining τ) = τ) ∧
    (∀ τ : ℝ, consumed τ + remaining τ = 1) ∧
    (∀ s : ReadingB, s.consumedFraction = 1 - s.Y1 / s.Y0) ∧
    -- the rocket relation and Beer-Lambert are one function
    (∀ I0 a L : ℝ, beer_lambert I0 a L = rocket_remaining I0 (a * L)) ∧
    -- e-fold counts add along a path
    (∀ Y0 Y1 Y2 : ℝ, 0 < Y0 → 0 < Y1 → 0 < Y2 →
      efold Y0 Y1 + efold Y1 Y2 = efold Y0 Y2) ∧
    -- the permittivity is the matched ratio
    (∀ n : ℝ, n ≠ 0 → matched_ratio (reading_A_medium n) = perm_of_index n) ∧
    -- the closure of the square-root operator
    (∀ X : ℝ, 0 ≤ X → matched_ratio (sqrt_op X) = 1 / X) ∧
    -- one closure, two substrates
    (∀ e rs R : ℝ, 0 < e → 0 < rs → 0 < R →
      matched_ratio (sqrt_op (1 / e)) = e ∧
      matched_ratio (sqrt_op (compactness rs R)) = R / rs) ∧
    -- the address theorem
    (∀ rs R : ℝ, 0 < rs → 0 < R → rs * matched_ratio (surface_torsion rs R) = R) ∧
    -- the corridor on permittivity, occupied by fifteen integers
    ((Finset.Icc 54 68 : Finset ℕ).card = 15) ∧
    (∀ m ∈ (Finset.Icc 54 68 : Finset ℕ),
      iva_perm_floor < (m:ℝ) ∧ (m:ℝ) ≤ iva_perm_ceiling) ∧
    (∀ e : ℝ, iva_perm_floor < e → e ≤ iva_perm_ceiling →
      classify (reading_A_medium (index_of_perm e)) = Phase.IVA) ∧
    -- a prime permittivity: irrational index, exact matched ratio
    (Irrational (Real.sqrt 59) ∧ matched_ratio (sqrt_op (1 / 59)) = 59) ∧
    -- the operator is self-centering
    (∀ k : ℝ, 0 < k → k < 1 → k < sqrt_op k ∧ sqrt_op k < 1) ∧
    -- the horizon and vacuum are the same condition
    (∀ n : ℝ, 0 < n → (matched_ratio (reading_A_medium n) = 1 ↔ n = 1)) ∧
    -- and the transfer has a boundary
    (∀ x : ℝ, tau_B_depth 0 x = |x|) ∧
    (∀ L : TransferLevels, L.single_object → L.multiplicative) :=
  ⟨fun Y0 τ h => t9_efold_inverts Y0 τ h,
   t11_fractions_complement,
   t21_substrate_consumed,
   t25_same_function,
   fun Y0 Y1 Y2 h0 h1 h2 => t20_path_additive Y0 Y1 Y2 h0 h1 h2,
   fun n hn => t32_perm_is_matched_ratio n hn,
   fun X hX => t35_closure X hX,
   fun e rs R he hrs hR => t47_one_closure_two_substrates e rs R he hrs hR,
   fun rs R hrs hR => t46_address_theorem rs R hrs hR,
   t54_fifteen_integers.1,
   t54_fifteen_integers.2,
   fun e hlo hhi => t55_band_classifies_iva e hlo hhi,
   ⟨t56_prime_permittivity.2.2.1, t56_prime_permittivity.2.2.2⟩,
   fun k h0 h1 => t59_self_centering k h0 h1,
   fun n hn => t66_horizon_is_vacuum n hn,
   t70_no_well_no_depth,
   fun L => t71_levels_nest L⟩

end SNSFL_TwoReadingsSubstrate

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that Reading B is an e-fold count and nothing more:
-- τ = ln(Y₀/Y) with consumed fraction 1 − e^−τ, the same equation in
-- propulsion, optics, nuclear decay, circuits and capital, with the ideal
-- rocket relation and the Beer–Lambert law proved to be ONE FUNCTION of one
-- argument and e-fold counts proved additive along a path, so stacking slabs
-- and staging a burn are the same arithmetic. Reading A requires a LIMITING
-- speed, which a medium supplies: Reading A in a medium is 1/n, and the
-- matched ratio of a medium is therefore its own relative permittivity,
-- ε_r = n² = 1/τ_A². The square-root operator S X = √X is shown to be the
-- CONSTITUTIVE RELATION of four substrates at once — index from permittivity,
-- address from compactness, impedance from the constitutive pair, sound speed
-- from stiffness over density — so its closure matched_ratio(S X) = 1/X holds
-- in every row, and the gravitational instance IS the address theorem while
-- the optical instance IS the permittivity: one result stated twice. The
-- closure is exact over ℚ, so a prime permittivity in the corridor has an
-- irrational index and an exactly rational matched ratio, and fifteen integers
-- lie inside the corridor whose endpoints are themselves matched ratios of the
-- corridor endpoints on Reading A. The operator is self-centering, and
-- matched_ratio = 1 is the horizon in gravitation and vacuum in optics: the
-- same condition, read in two substrates. The transfer's boundary is fixed by
-- the bridge needing both readings on one object and by the depth inversion
-- collapsing to the bare target when no well is present, with the three levels
-- of transfer nested and the nesting proved.
--
-- THEOREMS : 72 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
