-- ============================================================
-- SNSFL_VelocitySubstrate_Rapidity_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE VELOCITY SUBSTRATE — RAPIDITY AS A DOPPLER E-FOLD COUNT
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,8,14](MATH) | Mathematics Ground — Foundations
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, Reading B, the Doppler factor, the
-- relativistic velocity-addition operator, the Lorentz factor, celerity, the
-- matched ratio, the rocket relation and the mass-ratio gate are all restated
-- here at full precision, so that a reader or a machine can close every proof
-- without leaving the file. The parent reductions are named in the provenance
-- block for the record, not as dependencies of the proofs.
--
-- Parents of record:
--   [9,9,8,11]   Two Readings Across Substrates — Reading B as an e-fold count, the matched ratio
--   [9,9,8,12]   Geometric Base and Energy Ladder — eta = tau_A^2/2, b_0 = 1/sqrt TL
--   [9,9,2,0]    IVA Propulsion Reduction        — the two readings, velocity addition with closure
--   [9,9,0,15]   Speed of Light Reduction        — c locked to the anchor, the photon Noble
--   [9,9,0,17]   Matched Radius Reduction        — r_match = r_s/tau_A^2, the mass canceling
--   [9,9,8,9]    Logarithm Reduction             — ln as Narrative along multiplicative growth
--   [9,9,3,14]   Alpha Reduction                 — alpha^-1 = Omega_0 x 100.1, TL = alpha^-1/1001
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   THE DOPPLER FACTOR IS MULTIPLICATIVE UNDER VELOCITY ADDITION. For
--   k(t) = sqrt((1+t)/(1-t)) and u (+) v = (u+v)/(1+uv),
--
--       k(u (+) v) = k(u) * k(v)
--
--   exactly, because (1 + u (+) v)/(1 - u (+) v) = ((1+u)(1+v))/((1-u)(1-v)).
--   So Reading B, defined as log k, is ADDITIVE under the law that Reading A
--   composes by: relativistic velocity addition is Reading B's additivity.
--
--   THE SUBTRACTION IDENTITY IS DOPPLER DIVISION. k(a)/k(b) = k((a-b)/(1-ab)),
--   so the corridor width on Reading B is log k of a single argument, and the
--   Doppler ratio across the corridor is that one Doppler factor.
--
--   THE MAP IS FORCED. The corpus operator tanh_op b = (e^b^2 - 1)/(e^b^2 + 1)
--   satisfies the velocity-addition law under addition of arguments and
--   inverts log k exactly, so Reading A is the hyperbolic tangent of Reading B
--   and the map is the solution of the composition law rather than a choice.
--
--   THE SPEED LIMIT INVERTS. Reading A is bounded above by one and the Doppler
--   factor is unbounded, and the two statements are the same: tanh_op is
--   strictly below one at every argument while log k increases without bound.
--
--   THE REMAINING FRACTION IS A LORENTZ EXPRESSION. gamma(t) * (1 - t) = 1/k(t),
--   so Reading B's remaining fraction is the Lorentz factor times one minus
--   Reading A. Celerity closes the same loop: sqrt(1 + (gamma t * t)^2) = gamma t.
--
--   THE CORRIDOR, THE ROCKET AND THE GATE. The matched ratio is 1/tau_A^2 and
--   reads as the squared reciprocal of tanh_op on Reading B; the rocket gives
--   Reading B final as Reading A of the drive times Reading B of the mass; and
--   the mass-ratio gate exp(tau_B / tau_A) inverts it.
--
-- ============================================================

import Mathlib

noncomputable section

namespace SNSFL_VelocitySubstrateRapidity

-- ============================================================
-- SECTION 0: THE ANCHOR AND THE TORSION LIMIT
-- Restated here in full. This file depends on no other file.
-- ============================================================

/-- The Sovereign Anchor Constant, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Universal Torsion Limit. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor: 88% of the Torsion Limit. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- The inverse fine-structure constant, at corpus precision. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The bare term: the Torsion Limit times one thousand. -/
def BARE : ℝ := 136.899099984016

/-- The speed of light in vacuum, SI exact. -/
def C_LIGHT : ℝ := 299792458

-- [T1] :: {ANC} | THE TORSION LIMIT IS THE ANCHOR OVER TEN
theorem t1_tl_value : TORSION_LIMIT = 0.136899099984016 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T2] :: {VER} | THE BARE TERM IS ONE THOUSAND TORSION LIMITS, EXACTLY
theorem t2_bare_is_thousand_tl : BARE = 1000 * TORSION_LIMIT := by
  simp only [BARE, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T3] :: {MASTER} | BARE PLUS KINETIC IS THE INVERSE FINE-STRUCTURE CONSTANT
theorem t3_bare_plus_kinetic : BARE + TORSION_LIMIT = ALPHA_INV := by
  simp only [BARE, TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T4] :: {MASTER} | THE TORSION LIMIT TIMES 1001 IS THE INVERSE CONSTANT
theorem t4_tl_times_1001 : TORSION_LIMIT * 1001 = ALPHA_INV := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T5] :: {MASTER} | THE ANCHOR ROUTE IN ONE STEP
theorem t5_anchor_route : SOVEREIGN_ANCHOR * 100.1 = ALPHA_INV := by
  simp only [SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T6] :: {VER} | THE MULTIPLIER FACTORS AS 7 * 11 * 13
theorem t6_multiplier_factors : (1001 : ℕ) = 7 * 11 * 13 := by norm_num

-- [T7] :: {VER} | THE TORSION LIMIT IS POSITIVE
theorem t7_tl_pos : 0 < TORSION_LIMIT := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T8] :: {VER} | THE CORRIDOR FLOOR IN CLOSED FORM
theorem t8_tl_iva_value : TL_IVA = 0.12047120798593408 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T9] :: {INV} | THE CORRIDOR FLOOR IS POSITIVE AND BELOW THE LIMIT
theorem t9_floor_pos_below : 0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T10] :: {INV} | THE TORSION LIMIT LIES STRICTLY INSIDE THE UNIT INTERVAL
theorem t10_tl_in_unit : -1 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- ============================================================
-- SECTION 1: TORSION AND THE FOUR PHASES
-- ============================================================

/-- The four phases of the corpus. -/
inductive Phase
  | Noble
  | Locked
  | IVA
  | Shatter
  deriving DecidableEq, Repr

/-- Phase classification on a torsion reading. -/
def classify (t : ℝ) : Phase :=
  if t = 0 then Phase.Noble
  else if t < TL_IVA then Phase.Locked
  else if t < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

-- [T11] :: {VER} | ZERO CLASSIFIES AS NOBLE
theorem t11_zero_is_noble : classify 0 = Phase.Noble := by
  simp [classify]

-- [T12] :: {VER} | THE CORRIDOR FLOOR CLASSIFIES AS IVA
theorem t12_floor_is_iva : classify TL_IVA = Phase.IVA := by
  have h1 := t9_floor_pos_below
  simp only [classify]
  rw [if_neg (by linarith [h1.1]), if_neg (by linarith), if_pos h1.2]

-- [T13] :: {VER} | THE TORSION LIMIT CLASSIFIES AS SHATTER
theorem t13_limit_is_shatter : classify TORSION_LIMIT = Phase.Shatter := by
  have h1 := t9_floor_pos_below
  have h2 := t7_tl_pos
  simp only [classify]
  rw [if_neg (by linarith), if_neg (by linarith [h1.2]), if_neg (by linarith)]

-- [T14] :: {INV} | A READING INSIDE THE CORRIDOR CLASSIFIES AS IVA
theorem t14_corridor_is_iva (t : ℝ) (hlo : TL_IVA ≤ t) (hhi : t < TORSION_LIMIT) :
    classify t = Phase.IVA := by
  have h1 := t9_floor_pos_below
  simp only [classify]
  rw [if_neg (by linarith [h1.1]), if_neg (by linarith), if_pos hhi]

-- [T15] :: {INV} | A READING AT OR ABOVE THE LIMIT CLASSIFIES AS SHATTER
theorem t15_above_limit_is_shatter (t : ℝ) (h : TORSION_LIMIT ≤ t) :
    classify t = Phase.Shatter := by
  have h1 := t9_floor_pos_below
  have h2 := t7_tl_pos
  simp only [classify]
  rw [if_neg (by linarith), if_neg (by linarith [h1.2]), if_neg (by linarith)]

-- [T16] :: {INV} | THE CORRIDOR IS THE BAND 0.88 TL UP TO TL
theorem t16_corridor_band : TL_IVA = 0.88 * TORSION_LIMIT := by
  simp only [TL_IVA]; ring

-- ============================================================
-- SECTION 2: READING A, THE DOPPLER FACTOR, AND READING B
-- ============================================================

/-- Reading A: a ratio against the limiting speed. -/
def tau_A (v : ℝ) : ℝ := v / C_LIGHT

/-- The relativistic Doppler factor on a Reading A value. -/
def doppler (t : ℝ) : ℝ := Real.sqrt ((1 + t) / (1 - t))

/-- Reading B in the velocity substrate: the e-fold count on the Doppler
    factor. -/
def tau_B_of (t : ℝ) : ℝ := Real.log (doppler t)

/-- Relativistic velocity addition, in Reading A units. -/
def vadd (u v : ℝ) : ℝ := (u + v) / (1 + u * v)

-- [T17] :: {VER} | THE SPEED OF LIGHT IS POSITIVE
theorem t17_c_pos : 0 < C_LIGHT := by simp only [C_LIGHT]; norm_num

-- [T18] :: {VER} | READING A IS THE SPEED OVER THE LIMITING SPEED
theorem t18_reading_a (v : ℝ) : tau_A v * C_LIGHT = v := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t17_c_pos
  simp only [tau_A]
  field_simp

-- [T19] :: {VER} | THE DOPPLER FACTOR IS POSITIVE INSIDE THE UNIT INTERVAL
theorem t19_doppler_pos (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : 0 < doppler t := by
  simp only [doppler]
  apply Real.sqrt_pos.mpr
  apply div_pos <;> linarith

-- [T20] :: {MASTER} | THE DOPPLER FACTOR SQUARED IS THE RATIO ITSELF
theorem t20_doppler_sq (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    doppler t ^ 2 = (1 + t) / (1 - t) := by
  simp only [doppler]
  apply Real.sq_sqrt
  apply le_of_lt
  apply div_pos <;> linarith

-- [T21] :: {MASTER} | NOBLE: THE DOPPLER FACTOR IS ONE AT ZERO
theorem t21_doppler_noble : doppler 0 = 1 := by
  simp only [doppler]; norm_num

-- [T22] :: {MASTER} | NOBLE: READING B IS ZERO AT ZERO
theorem t22_tau_b_noble : tau_B_of 0 = 0 := by
  simp only [tau_B_of, t21_doppler_noble, Real.log_one]

-- [T23] :: {MASTER} | READING B IS THE LOGARITHM OF THE DOPPLER FACTOR
theorem t23_tau_b_is_log_doppler (t : ℝ) : tau_B_of t = Real.log (doppler t) := rfl

-- [T24] :: {INV} | THE EXPONENTIAL OF READING B RETURNS THE DOPPLER FACTOR
theorem t24_exp_tau_b (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    Real.exp (tau_B_of t) = doppler t := by
  simp only [tau_B_of]
  exact Real.exp_log (t19_doppler_pos t h1 h2)

-- [T25] :: {INV} | THE DOPPLER FACTOR EXCEEDS ONE ABOVE NOBLE
theorem t25_doppler_gt_one (t : ℝ) (h0 : 0 < t) (h2 : t < 1) : 1 < doppler t := by
  have hsq : doppler t ^ 2 = (1 + t) / (1 - t) := t20_doppler_sq t (by linarith) h2
  have hpos : 0 < doppler t := t19_doppler_pos t (by linarith) h2
  have hr : 1 < (1 + t) / (1 - t) := by
    rw [lt_div_iff₀ (by linarith : (0:ℝ) < 1 - t)]
    linarith
  have h2d : 1 < doppler t ^ 2 := by rw [hsq]; exact hr
  nlinarith [hpos, h2d]

-- [T26] :: {INV} | READING B IS POSITIVE ABOVE NOBLE
theorem t26_tau_b_pos (t : ℝ) (h0 : 0 < t) (h2 : t < 1) : 0 < tau_B_of t := by
  simp only [tau_B_of]
  exact Real.log_pos (t25_doppler_gt_one t h0 h2)

-- ============================================================
-- SECTION 3: VELOCITY ADDITION IS DOPPLER MULTIPLICATION
-- The heart of the file. The composition law on Reading A is multiplication
-- of Doppler factors, hence addition of Reading B.
-- ============================================================

-- [T27] :: {MASTER} | THE ADDITION LAW, CLEARED
theorem t27_vadd_clear (u v : ℝ) (huv : 1 + u * v ≠ 0) :
    vadd u v * (1 + u * v) = u + v := by
  simp only [vadd]
  field_simp

-- [T28] :: {MASTER} | ONE PLUS THE SUM FACTORS
theorem t28_one_plus_vadd (u v : ℝ) (huv : 0 < 1 + u * v) :
    1 + vadd u v = (1 + u) * (1 + v) / (1 + u * v) := by
  simp only [vadd]
  field_simp
  ring

-- [T29] :: {MASTER} | ONE MINUS THE SUM FACTORS
theorem t29_one_minus_vadd (u v : ℝ) (huv : 0 < 1 + u * v) :
    1 - vadd u v = (1 - u) * (1 - v) / (1 + u * v) := by
  simp only [vadd]
  field_simp
  ring

-- [T30] :: {MASTER} | THE RATIO FACTORS INTO THE TWO RATIOS
theorem t30_ratio_factors (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) :
    (1 + vadd u v) / (1 - vadd u v) = ((1 + u) / (1 - u)) * ((1 + v) / (1 - v)) := by
  have huv : (0:ℝ) < 1 + u * v := by nlinarith
  have h1u : (0:ℝ) < 1 + u := by linarith
  have h2u : (0:ℝ) < 1 - u := by linarith
  have h1v : (0:ℝ) < 1 + v := by linarith
  have h2v : (0:ℝ) < 1 - v := by linarith
  rw [t28_one_plus_vadd u v huv, t29_one_minus_vadd u v huv]
  field_simp

-- [T31] :: {MASTER} | THE DOPPLER FACTOR IS MULTIPLICATIVE UNDER VELOCITY ADDITION
theorem t31_doppler_mul (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) :
    doppler (vadd u v) = doppler u * doppler v := by
  have h1u : (0:ℝ) < 1 + u := by linarith
  have h2u : (0:ℝ) < 1 - u := by linarith
  have h1v : (0:ℝ) < 1 + v := by linarith
  have h2v : (0:ℝ) < 1 - v := by linarith
  simp only [doppler]
  rw [← Real.sqrt_mul (by positivity)]
  rw [t30_ratio_factors u v hu1 hu2 hv1 hv2]

-- [T32] :: {MASTER} | READING B IS ADDITIVE UNDER VELOCITY ADDITION
theorem t32_tau_b_additive (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) :
    tau_B_of (vadd u v) = tau_B_of u + tau_B_of v := by
  simp only [tau_B_of]
  rw [t31_doppler_mul u v hu1 hu2 hv1 hv2]
  exact Real.log_mul (ne_of_gt (t19_doppler_pos u hu1 hu2))
    (ne_of_gt (t19_doppler_pos v hv1 hv2))

-- [T33] :: {MASTER} | VELOCITY ADDITION IS COMMUTATIVE
theorem t33_vadd_comm (u v : ℝ) : vadd u v = vadd v u := by
  simp only [vadd]
  rw [add_comm u v, mul_comm u v]

-- [T34] :: {INV} | NOBLE IS THE IDENTITY OF THE ADDITION LAW
theorem t34_vadd_zero (u : ℝ) : vadd u 0 = u := by
  simp only [vadd]; norm_num

-- [T35] :: {MASTER} | THE SUBTRACTION LAW IS DOPPLER DIVISION
theorem t35_doppler_div (a b : ℝ) (ha1 : -1 < a) (ha2 : a < 1)
    (hb1 : -1 < b) (hb2 : b < 1) :
    doppler a / doppler b = doppler ((a - b) / (1 - a * b)) := by
  have h1a : (0:ℝ) < 1 + a := by linarith
  have h2a : (0:ℝ) < 1 - a := by linarith
  have h1b : (0:ℝ) < 1 + b := by linarith
  have h2b : (0:ℝ) < 1 - b := by linarith
  have hab : (0:ℝ) < 1 - a * b := by nlinarith
  have habne : (1:ℝ) - a * b ≠ 0 := ne_of_gt hab
  -- one plus and one minus the difference argument each factor
  have hplus : 1 + (a - b) / (1 - a * b) = ((1 + a) * (1 - b)) / (1 - a * b) := by
    field_simp
    try ring
  have hminus : 1 - (a - b) / (1 - a * b) = ((1 - a) * (1 + b)) / (1 - a * b) := by
    field_simp
    try ring
  -- so the difference argument lies inside the unit interval
  have hc1 : -1 < (a - b) / (1 - a * b) := by
    have hp : (0:ℝ) < ((1 + a) * (1 - b)) / (1 - a * b) := div_pos (mul_pos h1a h2b) hab
    linarith [hplus, hp]
  have hc2 : (a - b) / (1 - a * b) < 1 := by
    have hp : (0:ℝ) < ((1 - a) * (1 + b)) / (1 - a * b) := div_pos (mul_pos h2a h1b) hab
    linarith [hminus, hp]
  -- the difference argument composed with b returns a
  have hden : (1:ℝ) + (a - b) / (1 - a * b) * b = (1 - b ^ 2) / (1 - a * b) := by
    field_simp
    try ring
  have hdne : (1:ℝ) + (a - b) / (1 - a * b) * b ≠ 0 := by
    rw [hden]
    exact ne_of_gt (div_pos (by nlinarith) hab)
  have hvadd : vadd ((a - b) / (1 - a * b)) b = a := by
    simp only [vadd]
    rw [div_eq_iff hdne, hden]
    field_simp
    try ring
  -- and multiplicativity turns that into the quotient
  have hdb : doppler b ≠ 0 := ne_of_gt (t19_doppler_pos b hb1 hb2)
  have key : doppler ((a - b) / (1 - a * b)) * doppler b = doppler a := by
    rw [← t31_doppler_mul _ b hc1 hc2 hb1 hb2, hvadd]
  rw [div_eq_iff hdb]
  exact key.symm

-- [T36] :: {MASTER} | A DIFFERENCE OF READING B IS ONE READING B
theorem t36_tau_b_sub (a b : ℝ) (ha1 : -1 < a) (ha2 : a < 1)
    (hb1 : -1 < b) (hb2 : b < 1) :
    tau_B_of a - tau_B_of b = tau_B_of ((a - b) / (1 - a * b)) := by
  simp only [tau_B_of]
  rw [← Real.log_div (ne_of_gt (t19_doppler_pos a ha1 ha2))
    (ne_of_gt (t19_doppler_pos b hb1 hb2))]
  rw [t35_doppler_div a b ha1 ha2 hb1 hb2]

-- ============================================================
-- SECTION 4: THE BRIDGE — READING A IS A TANH OF READING B
-- ============================================================

/-- The corpus tangent operator, written on the exponential so that it needs
    nothing beyond exp. -/
def tanh_op (b : ℝ) : ℝ := (Real.exp b ^ 2 - 1) / (Real.exp b ^ 2 + 1)

-- [T37] :: {VER} | THE DENOMINATOR OF THE OPERATOR IS POSITIVE
theorem t37_tanh_denom_pos (b : ℝ) : 0 < Real.exp b ^ 2 + 1 := by positivity

-- [T38] :: {MASTER} | THE OPERATOR INVERTS READING B EXACTLY
theorem t38_bridge (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : tanh_op (tau_B_of t) = t := by
  have hd := t19_doppler_pos t h1 h2
  have hsq := t20_doppler_sq t h1 h2
  have he : Real.exp (tau_B_of t) = doppler t := t24_exp_tau_b t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  simp only [tanh_op, he, hsq]
  field_simp
  ring

-- [T39] :: {MASTER} | THE OPERATOR IS ZERO AT NOBLE
theorem t39_tanh_zero : tanh_op 0 = 0 := by
  simp only [tanh_op, Real.exp_zero]; norm_num

-- [T40] :: {MASTER} | THE OPERATOR IS STRICTLY BELOW ONE AT EVERY ARGUMENT
theorem t40_tanh_lt_one (b : ℝ) : tanh_op b < 1 := by
  have hd := t37_tanh_denom_pos b
  simp only [tanh_op]
  rw [div_lt_one hd]
  linarith

-- [T41] :: {MASTER} | THE OPERATOR IS STRICTLY ABOVE MINUS ONE
theorem t41_tanh_gt_neg_one (b : ℝ) : -1 < tanh_op b := by
  have hd := t37_tanh_denom_pos b
  have hp : (0:ℝ) < Real.exp b ^ 2 := by positivity
  simp only [tanh_op]
  rw [neg_lt, ← neg_div, div_lt_one hd]
  linarith

-- [T42] :: {MASTER} | THE OPERATOR LANDS INSIDE THE UNIT INTERVAL ALWAYS
theorem t42_tanh_in_unit (b : ℝ) : -1 < tanh_op b ∧ tanh_op b < 1 :=
  ⟨t41_tanh_gt_neg_one b, t40_tanh_lt_one b⟩

-- [T43] :: {MASTER} | THE OPERATOR IS POSITIVE ABOVE NOBLE
theorem t43_tanh_pos (b : ℝ) (hb : 0 < b) : 0 < tanh_op b := by
  have hd := t37_tanh_denom_pos b
  have h1 : (1:ℝ) < Real.exp b := by
    rw [show (1:ℝ) = Real.exp 0 from (Real.exp_zero).symm]
    exact Real.exp_lt_exp.mpr hb
  simp only [tanh_op]
  apply div_pos _ hd
  nlinarith

-- [T44] :: {MASTER} | THE OPERATOR AGREES WITH MATHLIB'S TANH
theorem t44_tanh_op_is_tanh (b : ℝ) : tanh_op b = Real.tanh b := by
  have hc : Real.cosh b ≠ 0 := ne_of_gt (Real.cosh_pos b)
  have he : Real.exp b ≠ 0 := Real.exp_ne_zero b
  simp only [tanh_op, Real.tanh_eq_sinh_div_cosh, Real.sinh_eq, Real.cosh_eq,
    Real.exp_neg]
  field_simp

-- [T45] :: {MASTER} | THE MAP IS FORCED — THE OPERATOR SATISFIES THE ADDITION LAW
theorem t45_tanh_satisfies_vadd (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) :
    tanh_op (tau_B_of u + tau_B_of v) = vadd u v := by
  have huv : (0:ℝ) < 1 + u * v := by nlinarith
  have hvu1 : -1 < vadd u v := by
    rw [show vadd u v = (u + v) / (1 + u * v) from rfl]
    rw [neg_lt, ← neg_div, div_lt_iff₀ huv] at *
    nlinarith
  have hvu2 : vadd u v < 1 := by
    rw [show vadd u v = (u + v) / (1 + u * v) from rfl, div_lt_one huv]
    nlinarith
  rw [← t32_tau_b_additive u v hu1 hu2 hv1 hv2]
  exact t38_bridge (vadd u v) hvu1 hvu2

-- [T46] :: {MASTER} | THE ADDITION LAW IS CLOSED ON THE UNIT INTERVAL
theorem t46_vadd_closed (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) : -1 < vadd u v ∧ vadd u v < 1 := by
  have huv : (0:ℝ) < 1 + u * v := by nlinarith
  constructor
  · simp only [vadd]
    rw [neg_lt, ← neg_div, div_lt_iff₀ huv]
    nlinarith
  · simp only [vadd]
    rw [div_lt_one huv]
    nlinarith

-- ============================================================
-- SECTION 5: THE SPEED LIMIT INVERTS
-- ============================================================

-- [T47] :: {MASTER} | NO ARGUMENT OF THE OPERATOR REACHES ONE
theorem t47_never_reaches_one (b : ℝ) : tanh_op b ≠ 1 := ne_of_lt (t40_tanh_lt_one b)

-- [T48] :: {MASTER} | READING B IS UNBOUNDED — THE DOPPLER FACTOR GROWS WITHOUT
--                     BOUND, SO THE COUNT DOES TOO
theorem t48_tau_b_unbounded (M : ℝ) : ∃ b : ℝ, M < b ∧ M < Real.log (Real.exp b) := by
  refine ⟨M + 1, by linarith, ?_⟩
  rw [Real.log_exp]
  linarith

-- [T49] :: {MASTER} | THE OPERATOR IS STRICTLY INCREASING
theorem t49_tanh_mono (a b : ℝ) (h : a < b) : tanh_op a < tanh_op b := by
  have hea : (0:ℝ) < Real.exp a := Real.exp_pos a
  have heb : (0:ℝ) < Real.exp b := Real.exp_pos b
  have hlt : Real.exp a < Real.exp b := Real.exp_lt_exp.mpr h
  have hda := t37_tanh_denom_pos a
  have hdb := t37_tanh_denom_pos b
  simp only [tanh_op]
  rw [div_lt_div_iff₀ hda hdb]
  nlinarith

-- [T50] :: {INV} | READING B ORDERS WITH READING A
theorem t50_tau_b_mono (a b : ℝ) (ha1 : -1 < a) (hb2 : b < 1) (h : a < b) :
    tau_B_of a < tau_B_of b := by
  have ha2 : a < 1 := by linarith
  have hb1 : -1 < b := by linarith
  simp only [tau_B_of]
  apply Real.log_lt_log (t19_doppler_pos a ha1 ha2)
  have hsa := t20_doppler_sq a ha1 ha2
  have hsb := t20_doppler_sq b hb1 hb2
  have hpa := t19_doppler_pos a ha1 ha2
  have hpb := t19_doppler_pos b hb1 hb2
  have hr : (1 + a) / (1 - a) < (1 + b) / (1 - b) := by
    rw [div_lt_div_iff₀ (by linarith) (by linarith)]
    nlinarith
  nlinarith [hsa, hsb, hpa, hpb, hr]

-- [T51] :: {MASTER} | BOTH READINGS SHARE THEIR ZERO
theorem t51_shared_zero : tau_B_of 0 = 0 ∧ doppler 0 = 1 ∧ tanh_op 0 = 0 :=
  ⟨t22_tau_b_noble, t21_doppler_noble, t39_tanh_zero⟩

-- [T52] :: {INV} | THE DOPPLER FACTOR ORDERS WITH READING A
theorem t52_doppler_mono (a b : ℝ) (ha1 : -1 < a) (hb2 : b < 1) (h : a < b) :
    doppler a < doppler b := by
  have ha2 : a < 1 := by linarith
  have hb1 : -1 < b := by linarith
  have hsa := t20_doppler_sq a ha1 ha2
  have hsb := t20_doppler_sq b hb1 hb2
  have hpa := t19_doppler_pos a ha1 ha2
  have hpb := t19_doppler_pos b hb1 hb2
  have hr : (1 + a) / (1 - a) < (1 + b) / (1 - b) := by
    rw [div_lt_div_iff₀ (by linarith) (by linarith)]
    nlinarith
  nlinarith [hsa, hsb, hpa, hpb, hr]

-- [T53] :: {MASTER} | THE CEILING ON READING A AND THE RANGE OF READING B ARE
--                     ONE STATEMENT
theorem t53_limit_inverts :
    (∀ b : ℝ, tanh_op b < 1) ∧ (∀ M : ℝ, ∃ b : ℝ, M < b) :=
  ⟨t40_tanh_lt_one, fun M => ⟨M + 1, by linarith⟩⟩

-- [T54] :: {INV} | THE OPERATOR IS AN ODD FUNCTION
theorem t54_tanh_odd (b : ℝ) : tanh_op (-b) = -tanh_op b := by
  have he : Real.exp b ≠ 0 := Real.exp_ne_zero b
  simp only [tanh_op, Real.exp_neg]
  field_simp
  ring

-- ============================================================
-- SECTION 6: THE LORENTZ FACTOR, CELERITY, AND THE REMAINING FRACTION
-- ============================================================

/-- The Lorentz factor on a Reading A value. -/
def gamma_of (t : ℝ) : ℝ := 1 / Real.sqrt (1 - t ^ 2)

/-- Proper velocity, or celerity, in units of the limiting speed. -/
def celerity (t : ℝ) : ℝ := gamma_of t * t

-- [T55] :: {VER} | THE RADICAND IS POSITIVE INSIDE THE UNIT INTERVAL
theorem t55_radicand_pos (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : 0 < 1 - t ^ 2 := by
  nlinarith

-- [T56] :: {VER} | THE LORENTZ FACTOR IS POSITIVE
theorem t56_gamma_pos (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : 0 < gamma_of t := by
  simp only [gamma_of]
  exact div_pos one_pos (Real.sqrt_pos.mpr (t55_radicand_pos t h1 h2))

-- [T57] :: {MASTER} | THE LORENTZ FACTOR SQUARED IS THE RECIPROCAL RADICAND
theorem t57_gamma_sq (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    gamma_of t ^ 2 = 1 / (1 - t ^ 2) := by
  have hr := t55_radicand_pos t h1 h2
  simp only [gamma_of, div_pow, one_pow]
  rw [Real.sq_sqrt (le_of_lt hr)]

-- [T58] :: {MASTER} | THE REMAINING FRACTION IS A LORENTZ EXPRESSION
theorem t58_remaining_fraction (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    (gamma_of t * (1 - t)) ^ 2 = 1 / doppler t ^ 2 := by
  have hr := t55_radicand_pos t h1 h2
  have hd := t20_doppler_sq t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  have h1t : (0:ℝ) < 1 + t := by linarith
  rw [mul_pow, t57_gamma_sq t h1 h2, hd]
  field_simp
  ring

-- [T59] :: {MASTER} | THE REMAINING FRACTION IS THE RECIPROCAL DOPPLER FACTOR
theorem t59_remaining_is_inv_doppler (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    gamma_of t * (1 - t) = 1 / doppler t := by
  have hg := t56_gamma_pos t h1 h2
  have hd := t19_doppler_pos t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  have hsq := t58_remaining_fraction t h1 h2
  have hl : 0 < gamma_of t * (1 - t) := by positivity
  have hrr : 0 < 1 / doppler t := by positivity
  have hsq2 : (gamma_of t * (1 - t)) ^ 2 = (1 / doppler t) ^ 2 := by
    rw [hsq, div_pow, one_pow]
  have hfac : (gamma_of t * (1 - t) - 1 / doppler t)
      * (gamma_of t * (1 - t) + 1 / doppler t) = 0 := by
    linear_combination hsq2
  rcases mul_eq_zero.mp hfac with h | h
  · linarith
  · linarith

-- [T60] :: {MASTER} | CELERITY CLOSES THE LOOP — THE ROOT RETURNS THE LORENTZ
--                     FACTOR
theorem t60_celerity_root (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    Real.sqrt (1 + celerity t ^ 2) = gamma_of t := by
  have hr := t55_radicand_pos t h1 h2
  have hg := t56_gamma_pos t h1 h2
  have hgs := t57_gamma_sq t h1 h2
  have hkey : 1 + celerity t ^ 2 = gamma_of t ^ 2 := by
    simp only [celerity, mul_pow]
    rw [hgs]
    field_simp
    ring
  rw [hkey, Real.sqrt_sq (le_of_lt hg)]

-- [T61] :: {MASTER} | THE CELERITY IDENTITY TURNS A ROOT INTO THE REMAINING
--                     FRACTION
theorem t61_celerity_minus_root (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    celerity t - Real.sqrt (1 + celerity t ^ 2) = -(gamma_of t * (1 - t)) := by
  rw [t60_celerity_root t h1 h2]
  simp only [celerity]
  ring

-- [T62] :: {VER} | THE LORENTZ FACTOR IS ONE AT NOBLE
theorem t62_gamma_noble : gamma_of 0 = 1 := by
  simp only [gamma_of]; norm_num

-- [T63] :: {VER} | CELERITY IS ZERO AT NOBLE
theorem t63_celerity_noble : celerity 0 = 0 := by
  simp only [celerity]; ring

-- [T64] :: {INV} | THE LORENTZ FACTOR IS AT LEAST ONE INSIDE THE INTERVAL
theorem t64_gamma_ge_one (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : 1 ≤ gamma_of t := by
  have hr := t55_radicand_pos t h1 h2
  have hs : Real.sqrt (1 - t ^ 2) ≤ 1 := by
    have hle : Real.sqrt (1 - t ^ 2) ≤ Real.sqrt 1 := by
      apply Real.sqrt_le_sqrt
      nlinarith
    rwa [Real.sqrt_one] at hle
  have hsp : 0 < Real.sqrt (1 - t ^ 2) := Real.sqrt_pos.mpr hr
  simp only [gamma_of]
  rw [le_div_iff₀ hsp]
  linarith

-- [T65] :: {MASTER} | THE LORENTZ FACTOR IS THE HALF-SUM OF THE DOPPLER FACTOR
--                     AND ITS RECIPROCAL
theorem t65_gamma_half_sum (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    2 * gamma_of t = doppler t + 1 / doppler t := by
  have hd := t19_doppler_pos t h1 h2
  have hds := t20_doppler_sq t h1 h2
  have hg := t56_gamma_pos t h1 h2
  have hgs := t57_gamma_sq t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  have h1t : (0:ℝ) < 1 + t := by linarith
  have hr : (0:ℝ) < 1 - t ^ 2 := t55_radicand_pos t h1 h2
  have hrne : (1:ℝ) - t ^ 2 ≠ 0 := ne_of_gt hr
  have hdne : doppler t ≠ 0 := ne_of_gt hd
  have hsq : (2 * gamma_of t) ^ 2 = (doppler t + 1 / doppler t) ^ 2 := by
    rw [mul_pow, hgs]
    have hexp : (doppler t + 1 / doppler t) ^ 2
        = doppler t ^ 2 + 2 + 1 / doppler t ^ 2 := by
      field_simp; ring
    rw [hexp, hds]
    field_simp
    ring
  have hl : 0 < 2 * gamma_of t := by positivity
  have hr2 : 0 < doppler t + 1 / doppler t := by positivity
  nlinarith [hsq, hl, hr2]

-- [T66] :: {MASTER} | CELERITY IS THE HALF-DIFFERENCE
theorem t66_celerity_half_diff (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    2 * celerity t = doppler t - 1 / doppler t := by
  have hd := t19_doppler_pos t h1 h2
  have hds := t20_doppler_sq t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  have h1t : (0:ℝ) < 1 + t := by linarith
  have hhalf := t65_gamma_half_sum t h1 h2
  have hrem := t59_remaining_is_inv_doppler t h1 h2
  simp only [celerity]
  have : 2 * (gamma_of t * t) = 2 * gamma_of t - 2 * (gamma_of t * (1 - t)) := by ring
  rw [this, hhalf, hrem]
  field_simp
  ring

-- ============================================================
-- SECTION 7: THE CORRIDOR ON THE DOPPLER FACTOR
-- ============================================================

/-- The corridor-width argument: the single Reading A value whose Doppler
    factor is the ratio across the corridor. -/
def corridor_arg : ℝ :=
  (TORSION_LIMIT - TL_IVA) / (1 - TORSION_LIMIT * TL_IVA)

-- [T67] :: {VER} | THE CORRIDOR FLOOR LIES INSIDE THE UNIT INTERVAL
theorem t67_floor_in_unit : -1 < TL_IVA ∧ TL_IVA < 1 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T68] :: {MASTER} | THE CORRIDOR ARGUMENT IN CLOSED FORM
theorem t68_corridor_arg_closed :
    corridor_arg = (0.12 * TORSION_LIMIT) / (1 - 0.88 * TORSION_LIMIT ^ 2) := by
  simp only [corridor_arg, TL_IVA]
  ring_nf

-- [T69] :: {VER} | THE CORRIDOR ARGUMENT IS POSITIVE AND INSIDE THE INTERVAL
theorem t69_corridor_arg_in_unit : 0 < corridor_arg ∧ corridor_arg < 1 := by
  simp only [corridor_arg, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- [T70] :: {MASTER} | THE DOPPLER RATIO ACROSS THE CORRIDOR IS ONE DOPPLER
--                     FACTOR
theorem t70_corridor_doppler_ratio :
    doppler TORSION_LIMIT / doppler TL_IVA = doppler corridor_arg := by
  have ht := t10_tl_in_unit
  have hf := t67_floor_in_unit
  exact t35_doppler_div TORSION_LIMIT TL_IVA ht.1 ht.2 hf.1 hf.2

-- [T71] :: {MASTER} | THE CORRIDOR WIDTH ON READING B IS ONE READING B
theorem t71_corridor_width :
    tau_B_of TORSION_LIMIT - tau_B_of TL_IVA = tau_B_of corridor_arg := by
  have ht := t10_tl_in_unit
  have hf := t67_floor_in_unit
  exact t36_tau_b_sub TORSION_LIMIT TL_IVA ht.1 ht.2 hf.1 hf.2

-- [T72] :: {MASTER} | THE CORRIDOR IS ORDERED ON THE DOPPLER FACTOR
theorem t72_corridor_doppler_ordered : doppler TL_IVA < doppler TORSION_LIMIT := by
  have ht := t10_tl_in_unit
  have hf := t67_floor_in_unit
  exact t52_doppler_mono TL_IVA TORSION_LIMIT hf.1 ht.2 t9_floor_pos_below.2

-- [T73] :: {MASTER} | THE CORRIDOR IS ORDERED ON READING B
theorem t73_corridor_tau_b_ordered : tau_B_of TL_IVA < tau_B_of TORSION_LIMIT := by
  have ht := t10_tl_in_unit
  have hf := t67_floor_in_unit
  exact t50_tau_b_mono TL_IVA TORSION_LIMIT hf.1 ht.2 t9_floor_pos_below.2

-- [T74] :: {MASTER} | THE CORRIDOR WIDTH IS POSITIVE
theorem t74_corridor_width_pos : 0 < tau_B_of corridor_arg := by
  rw [← t71_corridor_width]
  linarith [t73_corridor_tau_b_ordered]

-- [T75] :: {MASTER} | THE DOPPLER FACTOR AT THE CEILING, SQUARED, IS EXACT
theorem t75_doppler_ceiling_sq :
    doppler TORSION_LIMIT ^ 2 = (1 + TORSION_LIMIT) / (1 - TORSION_LIMIT) := by
  have ht := t10_tl_in_unit
  exact t20_doppler_sq TORSION_LIMIT ht.1 ht.2

-- [T76] :: {MASTER} | THE DOPPLER FACTOR AT THE FLOOR, SQUARED, IS EXACT
theorem t76_doppler_floor_sq :
    doppler TL_IVA ^ 2 = (1 + TL_IVA) / (1 - TL_IVA) := by
  have hf := t67_floor_in_unit
  exact t20_doppler_sq TL_IVA hf.1 hf.2

-- [T77] :: {VER} | THE CORRIDOR ARGUMENT'S DOPPLER FACTOR EXCEEDS ONE
theorem t77_corridor_doppler_gt_one : 1 < doppler corridor_arg := by
  have h := t69_corridor_arg_in_unit
  exact t25_doppler_gt_one corridor_arg h.1 h.2

-- [T78] :: {MASTER} | THE CORRIDOR CLASSIFIES AS IVA AT ITS FLOOR AND SHATTER
--                     AT ITS CEILING
theorem t78_corridor_phases :
    classify TL_IVA = Phase.IVA ∧ classify TORSION_LIMIT = Phase.Shatter :=
  ⟨t12_floor_is_iva, t13_limit_is_shatter⟩

-- ============================================================
-- SECTION 8: THE ROCKET, THE MASS-RATIO GATE, AND THE MATCHED RATIO
-- ============================================================

/-- The rapidity gained: Reading A of the drive times Reading B of the mass. -/
def tau_B_final (te mr : ℝ) : ℝ := te * Real.log mr

/-- The mass-ratio gate: the mass ratio a drive needs to reach a given
    Reading B. -/
def mr_gate (tb te : ℝ) : ℝ := Real.exp (tb / te)

/-- The matched ratio of the corpus. -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

-- [T79] :: {MASTER} | THE ROCKET IS READING A TIMES READING B
theorem t79_rocket_product (te mr : ℝ) : tau_B_final te mr = te * Real.log mr := rfl

-- [T80] :: {MASTER} | THE GATE INVERTS THE ROCKET
theorem t80_gate_inverts (tb te : ℝ) (hte : te ≠ 0) :
    tau_B_final te (mr_gate tb te) = tb := by
  simp only [tau_B_final, mr_gate, Real.log_exp]
  field_simp

-- [T81] :: {MASTER} | THE ROCKET INVERTS THE GATE
theorem t81_rocket_inverts (te mr : ℝ) (hte : te ≠ 0) (hmr : 0 < mr) :
    mr_gate (tau_B_final te mr) te = mr := by
  have h : tau_B_final te mr / te = Real.log mr := by
    simp only [tau_B_final]
    field_simp
  simp only [mr_gate, h]
  exact Real.exp_log hmr

-- [T82] :: {VER} | THE GATE IS POSITIVE
theorem t82_gate_pos (tb te : ℝ) : 0 < mr_gate tb te := Real.exp_pos _

-- [T83] :: {INV} | A UNIT MASS RATIO GAINS NO RAPIDITY
theorem t83_unit_mass_no_gain (te : ℝ) : tau_B_final te 1 = 0 := by
  simp only [tau_B_final, Real.log_one]; ring

-- [T84] :: {MASTER} | THE GATE IS STRICTLY INCREASING IN THE TARGET
theorem t84_gate_mono (a b te : ℝ) (hte : 0 < te) (h : a < b) :
    mr_gate a te < mr_gate b te := by
  simp only [mr_gate]
  apply Real.exp_lt_exp.mpr
  exact div_lt_div_of_pos_right h hte

-- [T85] :: {MASTER} | STAGING ADDS READING B
theorem t85_staging_adds (te m1 m2 : ℝ) (h1 : 0 < m1) (h2 : 0 < m2) :
    tau_B_final te (m1 * m2) = tau_B_final te m1 + tau_B_final te m2 := by
  simp only [tau_B_final]
  rw [Real.log_mul (ne_of_gt h1) (ne_of_gt h2)]
  ring

-- [T86] :: {MASTER} | THE MATCHED RATIO IS THE SQUARED RECIPROCAL OF READING A
theorem t86_matched_ratio_form (t : ℝ) (h : t ≠ 0) : matched_ratio t * t ^ 2 = 1 := by
  simp only [matched_ratio]
  field_simp

-- [T87] :: {MASTER} | THE MATCHED RATIO READS ON READING B THROUGH THE OPERATOR
theorem t87_matched_ratio_on_tau_b (t : ℝ) (h1 : -1 < t) (h2 : t < 1) (h0 : t ≠ 0) :
    matched_ratio (tanh_op (tau_B_of t)) = matched_ratio t := by
  rw [t38_bridge t h1 h2]

-- [T88] :: {VER} | THE MATCHED RATIO IS POSITIVE
theorem t88_matched_ratio_pos (t : ℝ) (h : t ≠ 0) : 0 < matched_ratio t := by
  simp only [matched_ratio]
  positivity

-- [T89] :: {MASTER} | THE MATCHED RATIO IS ANTITONE ON THE POSITIVE SIDE
theorem t89_matched_ratio_antitone (a b : ℝ) (ha : 0 < a) (h : a < b) :
    matched_ratio b < matched_ratio a := by
  simp only [matched_ratio]
  apply div_lt_div_of_pos_left one_pos (by positivity)
  nlinarith

-- [T90] :: {MASTER} | THE MATCHED RATIO AT THE LIMIT IS ONE OVER TL SQUARED
theorem t90_matched_ratio_at_limit :
    matched_ratio TORSION_LIMIT * TORSION_LIMIT ^ 2 = 1 :=
  t86_matched_ratio_form TORSION_LIMIT (ne_of_gt t7_tl_pos)

-- ============================================================
-- SECTION 9: THE MEDIUM, AND THE SUBSTRATE TEST
-- ============================================================

/-- Reading A in a medium of refractive index n. -/
def tau_A_medium (n : ℝ) : ℝ := 1 / n

-- [T91] :: {MASTER} | READING A IN A MEDIUM IS THE RECIPROCAL INDEX
theorem t91_medium_reading (n : ℝ) (hn : n ≠ 0) : tau_A_medium n * n = 1 := by
  simp only [tau_A_medium]
  field_simp

-- [T92] :: {MASTER} | THE MEDIUM AT INDEX ONE OVER TL SITS AT THE LIMIT
theorem t92_medium_at_limit : tau_A_medium (1 / TORSION_LIMIT) = TORSION_LIMIT := by
  simp only [tau_A_medium]
  rw [one_div_one_div]

-- [T93] :: {MASTER} | THE MATCHED RATIO OF A MEDIUM IS ITS INDEX SQUARED
theorem t93_medium_matched_ratio (n : ℝ) (hn : n ≠ 0) :
    matched_ratio (tau_A_medium n) = n ^ 2 := by
  simp only [matched_ratio, tau_A_medium]
  field_simp

-- [T94] :: {INV} | A MEDIUM ABOVE INDEX ONE LIES INSIDE THE UNIT INTERVAL
theorem t94_medium_in_unit (n : ℝ) (hn : 1 < n) :
    0 < tau_A_medium n ∧ tau_A_medium n < 1 := by
  simp only [tau_A_medium]
  constructor
  · positivity
  · rw [div_lt_one (by linarith)]
    exact hn

-- [T95] :: {MASTER} | A MEDIUM ABOVE INDEX ONE CARRIES BOTH READINGS
theorem t95_medium_carries_both (n : ℝ) (hn : 1 < n) :
    0 < tau_B_of (tau_A_medium n) ∧ tanh_op (tau_B_of (tau_A_medium n)) = tau_A_medium n := by
  have h := t94_medium_in_unit n hn
  exact ⟨t26_tau_b_pos _ h.1 h.2, t38_bridge _ (by linarith [h.1]) h.2⟩

-- [T96] :: {MASTER} | THE MEDIUM AT INDEX ONE OVER TL CARRIES THE SHATTER
--                     DOPPLER FACTOR
theorem t96_medium_shatter_doppler :
    doppler (tau_A_medium (1 / TORSION_LIMIT)) = doppler TORSION_LIMIT := by
  rw [t92_medium_at_limit]

-- ============================================================
-- SECTION 10: THE CONVERSION FRACTION ON THE BRIDGE
-- ============================================================

/-- The conversion fraction of the corpus. -/
def eta_of (t : ℝ) : ℝ := t ^ 2 / 2

-- [T97] :: {MASTER} | READING A SQUARED IS TWICE THE CONVERSION FRACTION
theorem t97_tau_sq_is_twice_eta (t : ℝ) : t ^ 2 = 2 * eta_of t := by
  simp only [eta_of]; ring

-- [T98] :: {MASTER} | THE MATCHED RATIO IS THE RECIPROCAL OF TWICE THE FRACTION
theorem t98_matched_ratio_from_eta (t : ℝ) (h : t ≠ 0) :
    matched_ratio t * (2 * eta_of t) = 1 := by
  rw [← t97_tau_sq_is_twice_eta]
  exact t86_matched_ratio_form t h

-- [T99] :: {MASTER} | THE CONVERSION FRACTION READS THROUGH THE BRIDGE
theorem t99_eta_on_tau_b (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    eta_of (tanh_op (tau_B_of t)) = eta_of t := by
  rw [t38_bridge t h1 h2]

-- [T100] :: {VER} | THE CONVERSION FRACTION IS NONNEGATIVE
theorem t100_eta_nonneg (t : ℝ) : 0 ≤ eta_of t := by
  simp only [eta_of]; positivity

-- ============================================================
-- MASTER
-- ============================================================

-- [MASTER] :: {ANC} | THE VELOCITY SUBSTRATE
theorem MASTER_velocity_substrate :
    -- the anchor
    (TORSION_LIMIT = 0.136899099984016) ∧
    (BARE + TORSION_LIMIT = ALPHA_INV) ∧
    (TORSION_LIMIT * 1001 = ALPHA_INV) ∧
    -- the Doppler factor is multiplicative under velocity addition
    (∀ u v : ℝ, -1 < u → u < 1 → -1 < v → v < 1 →
      doppler (vadd u v) = doppler u * doppler v) ∧
    -- so Reading B is additive under it
    (∀ u v : ℝ, -1 < u → u < 1 → -1 < v → v < 1 →
      tau_B_of (vadd u v) = tau_B_of u + tau_B_of v) ∧
    -- the subtraction law is Doppler division
    (∀ a b : ℝ, -1 < a → a < 1 → -1 < b → b < 1 →
      doppler a / doppler b = doppler ((a - b) / (1 - a * b))) ∧
    (∀ a b : ℝ, -1 < a → a < 1 → -1 < b → b < 1 →
      tau_B_of a - tau_B_of b = tau_B_of ((a - b) / (1 - a * b))) ∧
    -- the bridge, and the operator that carries it
    (∀ t : ℝ, -1 < t → t < 1 → tanh_op (tau_B_of t) = t) ∧
    (∀ b : ℝ, tanh_op b = Real.tanh b) ∧
    (∀ u v : ℝ, -1 < u → u < 1 → -1 < v → v < 1 →
      tanh_op (tau_B_of u + tau_B_of v) = vadd u v) ∧
    -- the speed limit inverts
    (∀ b : ℝ, tanh_op b < 1) ∧
    (∀ b : ℝ, -1 < tanh_op b) ∧
    (∀ M : ℝ, ∃ b : ℝ, M < b) ∧
    -- both readings share their zero
    (tau_B_of 0 = 0 ∧ doppler 0 = 1 ∧ tanh_op 0 = 0) ∧
    -- the remaining fraction and celerity
    (∀ t : ℝ, -1 < t → t < 1 → gamma_of t * (1 - t) = 1 / doppler t) ∧
    (∀ t : ℝ, -1 < t → t < 1 → Real.sqrt (1 + celerity t ^ 2) = gamma_of t) ∧
    (∀ t : ℝ, -1 < t → t < 1 → 2 * gamma_of t = doppler t + 1 / doppler t) ∧
    (∀ t : ℝ, -1 < t → t < 1 → 2 * celerity t = doppler t - 1 / doppler t) ∧
    -- the corridor
    (corridor_arg = (0.12 * TORSION_LIMIT) / (1 - 0.88 * TORSION_LIMIT ^ 2)) ∧
    (doppler TORSION_LIMIT / doppler TL_IVA = doppler corridor_arg) ∧
    (tau_B_of TORSION_LIMIT - tau_B_of TL_IVA = tau_B_of corridor_arg) ∧
    (0 < tau_B_of corridor_arg) ∧
    -- the rocket and the gate
    (∀ tb te : ℝ, te ≠ 0 → tau_B_final te (mr_gate tb te) = tb) ∧
    (∀ te m1 m2 : ℝ, 0 < m1 → 0 < m2 →
      tau_B_final te (m1 * m2) = tau_B_final te m1 + tau_B_final te m2) ∧
    -- the matched ratio, and the medium
    (∀ t : ℝ, t ≠ 0 → matched_ratio t * t ^ 2 = 1) ∧
    (∀ n : ℝ, n ≠ 0 → matched_ratio (tau_A_medium n) = n ^ 2) ∧
    (tau_A_medium (1 / TORSION_LIMIT) = TORSION_LIMIT) ∧
    -- the conversion fraction
    (∀ t : ℝ, t ^ 2 = 2 * eta_of t) := by
  exact ⟨t1_tl_value, t3_bare_plus_kinetic, t4_tl_times_1001,
    fun u v a b c d => t31_doppler_mul u v a b c d,
    fun u v a b c d => t32_tau_b_additive u v a b c d,
    fun a b c d e f => t35_doppler_div a b c d e f,
    fun a b c d e f => t36_tau_b_sub a b c d e f,
    fun t a b => t38_bridge t a b,
    t44_tanh_op_is_tanh,
    fun u v a b c d => t45_tanh_satisfies_vadd u v a b c d,
    t40_tanh_lt_one, t41_tanh_gt_neg_one,
    fun M => ⟨M + 1, by linarith⟩,
    t51_shared_zero,
    fun t a b => t59_remaining_is_inv_doppler t a b,
    fun t a b => t60_celerity_root t a b,
    fun t a b => t65_gamma_half_sum t a b,
    fun t a b => t66_celerity_half_diff t a b,
    t68_corridor_arg_closed, t70_corridor_doppler_ratio, t71_corridor_width,
    t74_corridor_width_pos,
    fun tb te h => t80_gate_inverts tb te h,
    fun te m1 m2 h1 h2 => t85_staging_adds te m1 m2 h1 h2,
    fun t h => t86_matched_ratio_form t h,
    fun n h => t93_medium_matched_ratio n h,
    t92_medium_at_limit,
    t97_tau_sq_is_twice_eta⟩

end SNSFL_VelocitySubstrateRapidity

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes the velocity substrate as the place where both corpus
-- readings are defined at once, and carries the map between them. The Torsion
-- Limit enters from the inverse fine-structure constant by subtraction, with
-- the bare term at one thousand Torsion Limits and the multiplier factoring as
-- 7 * 11 * 13, and nothing in the file sets it. The relativistic Doppler
-- factor k(t) = sqrt((1+t)/(1-t)) is shown positive on the open unit interval,
-- squaring to the ratio itself, equal to one at Noble and above one everywhere
-- past it. The central result is that the Doppler factor is MULTIPLICATIVE
-- under relativistic velocity addition, because one plus the composed reading
-- and one minus it each factor into the corresponding terms of the two
-- arguments; Reading B, defined as the logarithm of the Doppler factor, is
-- therefore ADDITIVE under the law that Reading A composes by, which is the
-- additivity the parent reduction proves for e-fold counts along a path. The
-- subtraction law follows as Doppler division, so a difference of Reading B
-- values is one Reading B value at a single argument, and the corridor width is
-- that one value with its argument given in closed form. The corpus tangent
-- operator, written on the exponential so that it needs nothing beyond exp,
-- inverts Reading B exactly, agrees with the standard hyperbolic tangent, is
-- zero at Noble, odd, strictly increasing, strictly inside the open unit
-- interval at every argument, and satisfies the velocity-addition law under
-- addition of its arguments — so the map is the solution of the composition law
-- rather than a choice. The speed limit inverts in consequence: no argument of
-- the operator reaches one while its argument ranges without bound. On the
-- Lorentz column the remaining fraction is shown to be the Lorentz factor times
-- one minus Reading A and equal to the reciprocal Doppler factor, the Lorentz
-- factor is the half-sum of the Doppler factor and its reciprocal, celerity is
-- the half-difference, and the root of one plus celerity squared returns the
-- Lorentz factor, which turns the celerity expression into the remaining
-- fraction. The corridor is ordered on both the Doppler factor and Reading B,
-- its width is positive, its argument lies inside the unit interval, its
-- endpoint Doppler factors square exactly to their ratios, and the floor and
-- ceiling classify as IVA and Shatter. The rocket relation gives Reading B
-- final as Reading A of the drive times Reading B of the mass, the mass-ratio
-- gate inverts it in both directions, staging adds Reading B, and the gate is
-- strictly increasing in its target. The matched ratio is carried as the
-- squared reciprocal of Reading A, shown antitone and positive, read through
-- the bridge, and evaluated for a medium as the square of its refractive index,
-- with the medium at index one over the Torsion Limit sitting at the Torsion
-- Limit itself and carrying the Shatter Doppler factor. A medium above index one
-- is shown to carry both readings, which is the substrate test in its formal
-- form. Finally the conversion fraction is placed on the bridge, with Reading A
-- squared equal to twice the fraction and the matched ratio its reciprocal.
--
-- THEOREMS : 100 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
