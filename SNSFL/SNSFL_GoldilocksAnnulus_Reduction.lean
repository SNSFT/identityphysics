-- ============================================================
-- SNSFL_GoldilocksAnnulus_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE GOLDILOCKS ZONE IS AN ANNULUS OF RATIO sqrt(25/22)
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Omega_0 = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,3,26](COSM) | Cosmological Ground — Planetary Placement
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in another
-- coordinate's file: the anchor, the Torsion Limit, the corridor floor, the four
-- phases, the temperature ruler, the margin, the bounded-uncertainty gate and the
-- energy ladder are all restated here at full precision, so that a reader or a
-- machine can close every proof without leaving the file. The parent reductions
-- are named in the provenance block for the record, not as dependencies of the
-- proofs.
--
-- Parents of record:
--   [9,9,1,0]    Structural Precognition        — the I-F-U triad, the margin P(TL - tau)
--   [9,9,8,10]   Temperature on the Torsion Limit — the ruler, the vapour-pressure ratio
--   [9,9,3,25]   Accretion Boundaries           — tau = TL x (critical / measured)
--   [9,9,3,24]   Galaxy Toomre                  — tau = TL / Q
--   [9,9,4,3]    Abiogenesis                    — the activation floor, the IM floor
--   [9,9,4,4]    Evolution                      — LUCA Locked, sustained life IVA
--   [9,9,2,0]    IVA Propulsion Reduction       — the corridor, the energy ladder
--   [9,9,0,17]   Matched Radius Reduction       — v_esc(r_match) = tau_A c
--   [9,9,0,20]   Burn Depth and Thrust Floor    — the fourth power of Reading A
--   [9,9,3,14]   Alpha Reduction                — alpha^-1 = Omega_0 x 100.1
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   THE SHATTER ANCHOR ON STELLAR FLUX IS THE RUNAWAY GREENHOUSE, because a
--   runaway greenhouse is the boil and the boil is tau = TL. Writing the reduced
--   flux s = S / S_runaway, the four phases land on it directly.
--
--   THE CORRIDOR TRANSFERS TO ORBITAL RADIUS AS AN ANNULUS. Flux obeys the
--   inverse-square law, so the band's two edges stand at d = sqrt(L/S) for their
--   own S, and the ratio of the edges is sqrt(1/0.88) = sqrt(25/22), in which the
--   luminosity, the effective temperature and the anchor itself all cancel.
--
--   A PLANET HOLDS ITS PHASE FOR A WHOLE ORBIT exactly when
--   e s / (1 - e^2)^2 < (1 - 0.88)/4 = 3/100, one quarter of the band width.
--
--   THE MARGIN IS 1 - s AND THE UTILISATION IS THE PUSH OVER IT, with the IVA
--   margin bounded by 0.12 and therefore the smallest of any non-Shatter state.
--
--   BOUNDED UNCERTAINTY CERTIFIES A PLACEMENT when tau_hat + eps < TL.
--
--   THE MARGIN CLOSES ON A CLOCK, because a main-sequence star brightens; the
--   residence in band is antitone in luminosity and therefore a band rather than
--   a point.
--
--   THE RATIO PLACES THE SUBSTRATE: r = p_vap/p_amb, with the boil relocating per
--   body, the axis terminating at the critical point, and the sign of the column
--   gradient settled by g against R T^2/(L H).
--
--   THE COSMIC SHORELINE CARRIES TWO BRANCHES, v^4/(R T) under an absolute clock
--   and v^5/R^2 under the dynamical one, and both solve the escape balance.
--
-- ============================================================

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

noncomputable section

namespace SNSFL_GoldilocksAnnulus

-- ============================================================
-- SECTION 0: THE ANCHOR, THE TORSION LIMIT, THE PHASES
-- ============================================================

/-- The Sovereign Anchor Constant, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Universal Torsion Limit. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor fraction. -/
def FLOOR_FRACTION : ℝ := 0.88

/-- The IVA corridor floor. -/
def TL_IVA : ℝ := TORSION_LIMIT * FLOOR_FRACTION

/-- The inverse fine-structure constant, at corpus precision. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The bare term: the Torsion Limit times one thousand. -/
def BARE : ℝ := 136.899099984016

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

-- [T5] :: {ANC} | THE ONE-STEP ANCHOR ROUTE
theorem t5_anchor_route : SOVEREIGN_ANCHOR * 100.1 = ALPHA_INV := by
  simp only [SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T6] :: {VER} | THE MULTIPLIER FACTORS AS SEVEN ELEVEN THIRTEEN
theorem t6_multiplier_factors : (1001 : ℝ) = 7 * 11 * 13 := by norm_num

-- [T7] :: {ANC} | THE TORSION LIMIT IS POSITIVE
theorem t7_tl_pos : 0 < TORSION_LIMIT := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T8] :: {ANC} | THE TORSION LIMIT LIES STRICTLY INSIDE THE UNIT INTERVAL
theorem t8_tl_in_unit : 0 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  constructor
  · exact t7_tl_pos
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T9] :: {ANC} | THE CORRIDOR FLOOR, IN CLOSED FORM
theorem t9_tl_iva_value : TL_IVA = 0.12047120798593408 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num

-- [T10] :: {ANC} | THE FLOOR IS POSITIVE AND BELOW THE CEILING
theorem t10_floor_pos_below : 0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  constructor
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num

-- [T11] :: {ANC} | THE TORSION LIMIT IS AN EXACT RATIONAL
theorem t11_tl_rational : TORSION_LIMIT = 8556193749001 / 62500000000000 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T12] :: {ANC} | THE FLOOR FRACTION IS AN EXACT RATIONAL
theorem t12_floor_rational : FLOOR_FRACTION = 22 / 25 := by
  simp only [FLOOR_FRACTION]; norm_num

-- [T13] :: {ANC} | THE BAND WIDTH IS EXACTLY THREE TWENTY-FIFTHS
theorem t13_band_width : 1 - FLOOR_FRACTION = 3 / 25 := by
  simp only [FLOOR_FRACTION]; norm_num

/-- The four phases. -/
inductive Phase | Noble | Locked | IVA | Shatter
deriving DecidableEq, Repr

/-- Classification of a torsion reading against the corridor. -/
def classify (t : ℝ) : Phase :=
  if t ≥ TORSION_LIMIT then Phase.Shatter
  else if t ≥ TL_IVA then Phase.IVA
  else if t > 0 then Phase.Locked
  else Phase.Noble

-- [T14] :: {PHS} | ZERO TORSION IS NOBLE
theorem t14_zero_is_noble : classify 0 = Phase.Noble := by
  simp only [classify]
  rw [if_neg (by simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num),
      if_neg (by simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num),
      if_neg (by norm_num)]

-- [T15] :: {PHS} | THE FLOOR CLASSIFIES AS IVA
theorem t15_floor_is_iva : classify TL_IVA = Phase.IVA := by
  simp only [classify]
  rw [if_neg (by simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num),
      if_pos (le_refl TL_IVA)]

-- [T16] :: {PHS} | THE LIMIT CLASSIFIES AS SHATTER
theorem t16_limit_is_shatter : classify TORSION_LIMIT = Phase.Shatter := by
  simp only [classify]; rw [if_pos (le_refl TORSION_LIMIT)]

-- [T17] :: {PHS} | ANY READING INSIDE THE CORRIDOR IS IVA
theorem t17_corridor_is_iva (t : ℝ) (h1 : TL_IVA ≤ t) (h2 : t < TORSION_LIMIT) :
    classify t = Phase.IVA := by
  simp only [classify]; rw [if_neg (not_le.mpr h2), if_pos h1]

-- [T18] :: {PHS} | ANY READING AT OR ABOVE THE LIMIT IS SHATTER
theorem t18_above_limit_is_shatter (t : ℝ) (h : TORSION_LIMIT ≤ t) :
    classify t = Phase.Shatter := by
  simp only [classify]; rw [if_pos h]

-- [T19] :: {PHS} | A POSITIVE READING BELOW THE FLOOR IS LOCKED
theorem t19_below_floor_is_locked (t : ℝ) (h1 : 0 < t) (h2 : t < TL_IVA) :
    classify t = Phase.Locked := by
  have hlt : t < TORSION_LIMIT := lt_trans h2 t10_floor_pos_below.2
  simp only [classify]
  rw [if_neg (not_le.mpr hlt), if_neg (not_le.mpr h2), if_pos h1]

-- [T20] :: {PHS} | THE PHASE BOUNDARIES ARE ORDERED
theorem t20_boundary_ordering : 0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT ∧ TORSION_LIMIT < 1 :=
  ⟨t10_floor_pos_below.1, t10_floor_pos_below.2, t8_tl_in_unit.2⟩

-- ============================================================
-- SECTION 1: THE REDUCED FLUX, AND THE SHATTER ANCHOR
-- ============================================================

/-- The reduced flux: stellar flux against the body's own runaway-greenhouse boundary. -/
def reduced_flux (S S_run : ℝ) : ℝ := S / S_run

/-- Torsion on the insolation axis. -/
def tau_flux (s : ℝ) : ℝ := TORSION_LIMIT * s

-- [T21] :: {RED} | AT THE RUNAWAY BOUNDARY THE REDUCED FLUX IS ONE
theorem t21_anchor_is_one (S_run : ℝ) (h : S_run ≠ 0) : reduced_flux S_run S_run = 1 := by
  simp only [reduced_flux]; field_simp

-- [T22] :: {RED} | THE RUNAWAY BOUNDARY IS THE SHATTER MARK
theorem t22_runaway_is_shatter (S_run : ℝ) (h : S_run ≠ 0) :
    tau_flux (reduced_flux S_run S_run) = TORSION_LIMIT := by
  rw [t21_anchor_is_one S_run h]; simp only [tau_flux]; ring

-- [T23] :: {RED} | THE IVA FLOOR IN REDUCED FLUX IS THE FLOOR FRACTION
theorem t23_floor_in_flux : tau_flux FLOOR_FRACTION = TL_IVA := by
  simp only [tau_flux, TL_IVA]

-- [T24] :: {RED} | THE REDUCED FLUX CARRIES THE PHASE
theorem t24_flux_phase_shatter (s : ℝ) (h : 1 ≤ s) : classify (tau_flux s) = Phase.Shatter := by
  apply t18_above_limit_is_shatter
  simp only [tau_flux]
  nlinarith [t7_tl_pos]

-- [T25] :: {RED} | A REDUCED FLUX IN THE BAND IS IVA
theorem t25_flux_phase_iva (s : ℝ) (h1 : FLOOR_FRACTION ≤ s) (h2 : s < 1) :
    classify (tau_flux s) = Phase.IVA := by
  apply t17_corridor_is_iva
  · simp only [tau_flux, TL_IVA]
    nlinarith [t7_tl_pos]
  · simp only [tau_flux]
    nlinarith [t7_tl_pos]

-- [T26] :: {RED} | A POSITIVE REDUCED FLUX BELOW THE FLOOR IS LOCKED
theorem t26_flux_phase_locked (s : ℝ) (h1 : 0 < s) (h2 : s < FLOOR_FRACTION) :
    classify (tau_flux s) = Phase.Locked := by
  apply t19_below_floor_is_locked
  · simp only [tau_flux]; exact mul_pos t7_tl_pos h1
  · simp only [tau_flux, TL_IVA]
    nlinarith [t7_tl_pos]

-- [T27] :: {RED} | THE IVA FLOOR IN SOLAR FLUX FOR THE PUBLISHED ANCHOR
theorem t27_iva_floor_solar : FLOOR_FRACTION * 1.04 = 0.9152 := by
  simp only [FLOOR_FRACTION]; norm_num

-- [T28] :: {RED} | TORSION ON THE AXIS IS MONOTONE IN THE FLUX
theorem t28_tau_mono (s1 s2 : ℝ) (h : s1 < s2) : tau_flux s1 < tau_flux s2 := by
  simp only [tau_flux]
  exact mul_lt_mul_of_pos_left h t7_tl_pos

-- ============================================================
-- SECTION 2: THE ANNULUS
-- ============================================================

/-- The inner edge of the corridor in orbital radius, where the reduced flux is one. -/
def d_in (L S_run : ℝ) : ℝ := Real.sqrt (L / S_run)

/-- The outer edge, where the reduced flux is the floor fraction. -/
def d_out (L S_run : ℝ) : ℝ := Real.sqrt (L / (FLOOR_FRACTION * S_run))

/-- The annulus ratio. -/
def ANNULUS_RATIO : ℝ := Real.sqrt (25 / 22)

-- [T29] :: {ANN} | THE ANNULUS RATIO SQUARES TO TWENTY-FIVE TWENTY-SECONDS
theorem t29_ratio_sq : ANNULUS_RATIO ^ 2 = 25 / 22 := by
  simp only [ANNULUS_RATIO]
  rw [sq]
  exact Real.mul_self_sqrt (by norm_num)

-- [T30] :: {ANN} | TWENTY-FIVE TWENTY-SECONDS IS THE RECIPROCAL FLOOR FRACTION
theorem t30_ratio_is_recip_floor : (25 : ℝ) / 22 = 1 / FLOOR_FRACTION := by
  simp only [FLOOR_FRACTION]; norm_num

-- [T31] :: {ANN} | THE ANNULUS RATIO IS POSITIVE
theorem t31_ratio_pos : 0 < ANNULUS_RATIO := by
  simp only [ANNULUS_RATIO]; exact Real.sqrt_pos.mpr (by norm_num)

-- [T32] :: {ANN} | THE ANNULUS RATIO EXCEEDS ONE
theorem t32_ratio_gt_one : 1 < ANNULUS_RATIO := by
  have h : Real.sqrt 1 < Real.sqrt (25 / 22) :=
    Real.sqrt_lt_sqrt (by norm_num) (by norm_num)
  rwa [Real.sqrt_one] at h

-- [T33] :: {ANN} | THE INNER EDGE SQUARES TO THE FLUX RATIO
theorem t33_d_in_sq (L S_run : ℝ) (hL : 0 ≤ L) (hS : 0 < S_run) :
    d_in L S_run ^ 2 = L / S_run := by
  simp only [d_in]
  exact Real.sq_sqrt (div_nonneg hL (le_of_lt hS))

-- [T34] :: {ANN} | THE OUTER EDGE SQUARES TO ITS OWN FLUX RATIO
theorem t34_d_out_sq (L S_run : ℝ) (hL : 0 ≤ L) (hS : 0 < S_run) :
    d_out L S_run ^ 2 = L / (FLOOR_FRACTION * S_run) := by
  simp only [d_out]
  refine Real.sq_sqrt (div_nonneg hL (le_of_lt ?_))
  simp only [FLOOR_FRACTION]; linarith

-- [T35] :: {ANN} | THE EDGES ARE POSITIVE FOR A POSITIVE LUMINOSITY
theorem t35_edges_pos (L S_run : ℝ) (hL : 0 < L) (hS : 0 < S_run) :
    0 < d_in L S_run ∧ 0 < d_out L S_run := by
  constructor
  · simp only [d_in]; exact Real.sqrt_pos.mpr (div_pos hL hS)
  · simp only [d_out]
    refine Real.sqrt_pos.mpr (div_pos hL ?_)
    have : (0:ℝ) < FLOOR_FRACTION := by simp only [FLOOR_FRACTION]; norm_num
    exact mul_pos this hS

-- [T36] :: {ANN} | THE SQUARED EDGE RATIO IS THE RECIPROCAL FLOOR FRACTION, STELLAR TERMS CANCELLED
theorem t36_anchor_cancels (L S_run : ℝ) (hL : 0 < L) (hS : 0 < S_run) :
    d_out L S_run ^ 2 / d_in L S_run ^ 2 = 1 / FLOOR_FRACTION := by
  rw [t33_d_in_sq L S_run (le_of_lt hL) hS, t34_d_out_sq L S_run (le_of_lt hL) hS]
  have hf : (0:ℝ) < FLOOR_FRACTION := by simp only [FLOOR_FRACTION]; norm_num
  field_simp

-- [T37] :: {ANN} | THE SQUARED EDGE RATIO IS TWENTY-FIVE TWENTY-SECONDS
theorem t37_squared_ratio_rational (L S_run : ℝ) (hL : 0 < L) (hS : 0 < S_run) :
    d_out L S_run ^ 2 / d_in L S_run ^ 2 = 25 / 22 := by
  rw [t36_anchor_cancels L S_run hL hS, ← t30_ratio_is_recip_floor]

-- [T38] :: {ANN} | THE SQUARED EDGE RATIO IS THE SQUARED ANNULUS RATIO
theorem t38_matches_annulus (L S_run : ℝ) (hL : 0 < L) (hS : 0 < S_run) :
    d_out L S_run ^ 2 / d_in L S_run ^ 2 = ANNULUS_RATIO ^ 2 := by
  rw [t37_squared_ratio_rational L S_run hL hS, t29_ratio_sq]

-- [T39] :: {ANN} | THE OUTER EDGE STANDS OUTSIDE THE INNER ONE
theorem t39_out_beyond_in (L S_run : ℝ) (hL : 0 < L) (hS : 0 < S_run) :
    d_in L S_run < d_out L S_run := by
  obtain ⟨hi, _⟩ := t35_edges_pos L S_run hL hS
  have hsq : d_in L S_run ^ 2 < d_out L S_run ^ 2 := by
    rw [t33_d_in_sq L S_run (le_of_lt hL) hS, t34_d_out_sq L S_run (le_of_lt hL) hS]
    have hf : (0:ℝ) < FLOOR_FRACTION := by simp only [FLOOR_FRACTION]; norm_num
    rw [div_lt_div_iff hS (mul_pos hf hS)]
    nlinarith [hL]
  nlinarith [hi]

-- [T40] :: {ANN} | THE ANNULUS WIDTH IS POSITIVE
theorem t40_width_pos (L S_run : ℝ) (hL : 0 < L) (hS : 0 < S_run) :
    0 < d_out L S_run - d_in L S_run := by
  have := t39_out_beyond_in L S_run hL hS; linarith

-- [T41] :: {ANN} | THE RATIO IS THE SAME FOR EVERY STAR: TWO LUMINOSITIES AGREE
theorem t41_same_for_every_star (L1 L2 S_run : ℝ) (h1 : 0 < L1) (h2 : 0 < L2) (hS : 0 < S_run) :
    d_out L1 S_run ^ 2 / d_in L1 S_run ^ 2 = d_out L2 S_run ^ 2 / d_in L2 S_run ^ 2 := by
  rw [t37_squared_ratio_rational L1 S_run h1 hS, t37_squared_ratio_rational L2 S_run h2 hS]

-- [T42] :: {ANN} | THE RATIO SURVIVES RELOCATION OF THE ANCHOR
theorem t42_anchor_relocation (L A1 A2 : ℝ) (hL : 0 < L) (ha1 : 0 < A1) (ha2 : 0 < A2) :
    d_out L A1 ^ 2 / d_in L A1 ^ 2 = d_out L A2 ^ 2 / d_in L A2 ^ 2 := by
  rw [t37_squared_ratio_rational L A1 hL ha1, t37_squared_ratio_rational L A2 hL ha2]

-- ============================================================
-- SECTION 3: THE PHASE-HOLDING CRITERION
-- ============================================================

/-- The flux at perihelion, for a reduced flux s and eccentricity e. -/
def s_peri (s e : ℝ) : ℝ := s / (1 - e) ^ 2

/-- The flux at aphelion. -/
def s_apo (s e : ℝ) : ℝ := s / (1 + e) ^ 2

/-- The swing across one orbit. -/
def swing (s e : ℝ) : ℝ := 4 * e * s / (1 - e ^ 2) ^ 2

/-- The phase-holding constant: one quarter of the band width. -/
def HOLD_CONST : ℝ := (1 - FLOOR_FRACTION) / 4

-- [T43] :: {HLD} | THE HOLD CONSTANT IS EXACTLY THREE HUNDREDTHS
theorem t43_hold_const : HOLD_CONST = 3 / 100 := by
  simp only [HOLD_CONST, FLOOR_FRACTION]; norm_num

-- [T44] :: {HLD} | THE HOLD CONSTANT IS A QUARTER OF THE BAND WIDTH
theorem t44_hold_is_quarter_band : 4 * HOLD_CONST = 1 - FLOOR_FRACTION := by
  simp only [HOLD_CONST]; ring

-- [T45] :: {HLD} | THE SWING IS THE DIFFERENCE OF THE TWO EXTREME FLUXES
theorem t45_swing_identity (s e : ℝ) (h1 : e ≠ 1) (h2 : e ≠ -1) :
    s_peri s e - s_apo s e = swing s e := by
  simp only [s_peri, s_apo, swing]
  have ha : (1 - e) ≠ 0 := sub_ne_zero.mpr (Ne.symm h1)
  have hb : (1 + e) ≠ 0 := by
    intro hc; apply h2; linarith
  have hc : (1 - e ^ 2) ≠ 0 := by
    intro hd
    have : (1 - e) * (1 + e) = 0 := by ring_nf; linarith [hd]
    rcases mul_eq_zero.mp this with h | h
    · exact ha h
    · exact hb h
  field_simp
  ring

-- [T46] :: {HLD} | THE SWING IS POSITIVE FOR A POSITIVE ECCENTRICITY AND FLUX
theorem t46_swing_pos (s e : ℝ) (hs : 0 < s) (he : 0 < e) (he1 : e < 1) :
    0 < swing s e := by
  simp only [swing]
  have hd : 0 < (1 - e ^ 2) ^ 2 := by positivity
  apply div_pos
  · nlinarith
  · exact hd

-- [T47] :: {HLD} | HOLDING THE PHASE IS THE HOLD CONSTANT INEQUALITY
theorem t47_hold_criterion (s e : ℝ) (he1 : e < 1) (he2 : -1 < e) :
    swing s e < 1 - FLOOR_FRACTION ↔ e * s / (1 - e ^ 2) ^ 2 < HOLD_CONST := by
  simp only [swing, HOLD_CONST]
  have hd : 0 < (1 - e ^ 2) ^ 2 := by
    have : (1 - e ^ 2) ≠ 0 := by nlinarith
    positivity
  rw [div_lt_iff₀ hd, div_lt_iff₀ hd]
  constructor <;> intro h <;> linarith

-- [T48] :: {HLD} | A ZERO ECCENTRICITY HOLDS ITS PHASE
theorem t48_circular_holds (s : ℝ) : swing s 0 = 0 := by
  simp only [swing]; norm_num

-- [T49] :: {HLD} | THE SWING RISES WITH ECCENTRICITY AT FIXED FLUX
theorem t49_swing_mono_in_e (s e1 e2 : ℝ) (hs : 0 < s)
    (h1 : 0 ≤ e1) (h12 : e1 < e2) (h2 : e2 < 1) :
    swing s e1 < swing s e2 := by
  simp only [swing]
  have hd1 : 0 < (1 - e1 ^ 2) ^ 2 := by nlinarith
  have hd2 : 0 < (1 - e2 ^ 2) ^ 2 := by nlinarith
  rw [div_lt_div_iff hd1 hd2]
  nlinarith [sq_nonneg (e1 * e2), sq_nonneg (e1 + e2), sq_nonneg (e1 - e2)]

-- [T50] :: {HLD} | THE SWING RISES WITH FLUX AT FIXED ECCENTRICITY
theorem t50_swing_mono_in_s (s1 s2 e : ℝ) (he : 0 < e) (he1 : e < 1) (h : s1 < s2) :
    swing s1 e < swing s2 e := by
  simp only [swing]
  have hd : 0 < (1 - e ^ 2) ^ 2 := by nlinarith
  rw [div_lt_div_iff hd hd]
  nlinarith

-- THE BAND-CROSSING NUMBER
def crossing_number (s e : ℝ) : ℝ := swing s e / (1 - FLOOR_FRACTION)

-- [T51] :: {HLD} | HOLDING IS THE CROSSING NUMBER BELOW ONE
theorem t52_crossing_lt_one (s e : ℝ) :
    crossing_number s e < 1 ↔ swing s e < 1 - FLOOR_FRACTION := by
  simp only [crossing_number]
  have h : (0:ℝ) < 1 - FLOOR_FRACTION := by simp only [FLOOR_FRACTION]; norm_num
  rw [div_lt_one h]

-- ============================================================
-- SECTION 4: BOUNDED UNCERTAINTY
-- ============================================================

/-- A placement is certified when the estimate plus its error bar clears the limit. -/
def certified (tauhat eps : ℝ) : Prop := tauhat + eps < TORSION_LIMIT

/-- A placement is certified Shatter when the estimate less its bar still reaches the limit. -/
def certified_shatter (tauhat eps : ℝ) : Prop := TORSION_LIMIT ≤ tauhat - eps

-- [T52] :: {CRT} | AN ESTIMATE WITHIN ITS BAR CERTIFIES THE PLACEMENT
theorem t53_cert_sound (tau tauhat eps : ℝ) (hb : |tau - tauhat| ≤ eps)
    (hc : certified tauhat eps) : tau < TORSION_LIMIT := by
  simp only [certified] at hc
  have h := (abs_le.mp hb).2
  linarith

-- [T53] :: {CRT} | A CERTIFIED-SHATTER BAR PLACES THE ROW AT OR ABOVE THE LIMIT
theorem t54_cert_shatter_sound (tau tauhat eps : ℝ) (hb : |tau - tauhat| ≤ eps)
    (hc : certified_shatter tauhat eps) : TORSION_LIMIT ≤ tau := by
  simp only [certified_shatter] at hc
  have h := (abs_le.mp hb).1
  linarith

-- [T54] :: {CRT} | THE TWO CERTIFICATIONS EXCLUDE EACH OTHER
theorem t55_cert_exclusive (tauhat eps : ℝ) (he : 0 ≤ eps) :
    ¬ (certified tauhat eps ∧ certified_shatter tauhat eps) := by
  rintro ⟨h1, h2⟩
  simp only [certified] at h1
  simp only [certified_shatter] at h2
  linarith

-- [T55] :: {CRT} | A SHARPER BAR CERTIFIES WHATEVER A WIDER ONE DID
theorem t56_sharper_bar (tauhat e1 e2 : ℝ) (h : e1 ≤ e2) (hc : certified tauhat e2) :
    certified tauhat e1 := by
  simp only [certified] at *; linarith

-- [T56] :: {CRT} | A ZERO-WIDTH BAR CERTIFIES EXACTLY THE SUB-LIMIT READINGS
theorem t57_zero_bar (tauhat : ℝ) : certified tauhat 0 ↔ tauhat < TORSION_LIMIT := by
  simp only [certified]; constructor <;> intro h <;> linarith

-- [T57] :: {CRT} | A ROW IS UNCERTIFIED EXACTLY WHEN ITS BAR SPANS THE LIMIT
theorem t58_spanning (tauhat eps : ℝ) :
    (¬ certified tauhat eps ∧ ¬ certified_shatter tauhat eps) ↔
    (tauhat - eps < TORSION_LIMIT ∧ TORSION_LIMIT ≤ tauhat + eps) := by
  simp only [certified, certified_shatter, not_lt, not_le]
  constructor
  · rintro ⟨h1, h2⟩; exact ⟨h2, h1⟩
  · rintro ⟨h1, h2⟩; exact ⟨h2, h1⟩

-- ============================================================
-- SECTION 5: THE MARGIN AND THE UTILISATION
-- ============================================================

/-- The U margin to Shatter, in reduced flux. -/
def margin (s : ℝ) : ℝ := 1 - s

/-- The perihelion push, in reduced flux. -/
def push (s e : ℝ) : ℝ := s / (1 - e) ^ 2 - s

/-- The margin utilisation. -/
def util (s e : ℝ) : ℝ := push s e / margin s

-- [T58] :: {MRG} | THE MARGIN IS POSITIVE BELOW SHATTER
theorem t59_margin_pos (s : ℝ) (h : s < 1) : 0 < margin s := by
  simp only [margin]; linarith

-- [T59] :: {MRG} | THE MARGIN VANISHES AT SHATTER
theorem t60_margin_zero : margin 1 = 0 := by simp only [margin]; ring

-- [T60] :: {MRG} | IN THE IVA BAND THE MARGIN IS AT MOST THE BAND WIDTH
theorem t61_iva_margin_bound (s : ℝ) (h1 : FLOOR_FRACTION ≤ s) (h2 : s < 1) :
    margin s ≤ 1 - FLOOR_FRACTION := by
  simp only [margin]; linarith

-- [T61] :: {MRG} | THE IVA MARGIN IS THE SMALLEST OF ANY SUB-SHATTER STATE
theorem t62_iva_least_margin (s1 s2 : ℝ) (h1 : FLOOR_FRACTION ≤ s1) (h2 : s2 < FLOOR_FRACTION) :
    margin s1 ≤ margin s2 := by
  simp only [margin]; linarith

-- [T62] :: {MRG} | THE PUSH IS POSITIVE FOR A POSITIVE ECCENTRICITY
theorem t63_push_pos (s e : ℝ) (hs : 0 < s) (he : 0 < e) (he1 : e < 1) : 0 < push s e := by
  simp only [push]
  have hd : 0 < (1 - e) ^ 2 := by nlinarith
  have hlt : (1 - e) ^ 2 < 1 := by nlinarith
  rw [sub_pos, lt_div_iff₀ hd]
  nlinarith

-- [T63] :: {MRG} | A CIRCULAR ORBIT PUSHES NOTHING
theorem t64_push_zero (s : ℝ) : push s 0 = 0 := by simp only [push]; norm_num

-- [T64] :: {MRG} | SURVIVING PERIHELION IS THE PUSH BELOW THE MARGIN
theorem t65_util_lt_one (s e : ℝ) (h : s < 1) : util s e < 1 ↔ push s e < margin s := by
  simp only [util]
  rw [div_lt_one (t59_margin_pos s h)]

-- [T65] :: {MRG} | SURVIVING PERIHELION IS THE PERIHELION FLUX BELOW SHATTER
theorem t66_survives_iff (s e : ℝ) (h : s < 1) :
    push s e < margin s ↔ s / (1 - e) ^ 2 < 1 := by
  simp only [push, margin]
  constructor <;> intro hh <;> linarith

-- [T66] :: {MRG} | THE UTILISATION IS POSITIVE BELOW SHATTER WITH A POSITIVE PUSH
theorem t67_util_pos (s e : ℝ) (hs : 0 < s) (he : 0 < e) (he1 : e < 1) (h : s < 1) :
    0 < util s e := by
  simp only [util]
  exact div_pos (t63_push_pos s e hs he he1) (t59_margin_pos s h)

-- [T67] :: {MRG} | THE UTILISATION RISES AS THE MARGIN NARROWS
theorem t68_util_antitone_in_margin (p m1 m2 : ℝ) (hp : 0 < p) (h1 : 0 < m1) (h : m1 < m2) :
    p / m2 < p / m1 := by
  exact div_lt_div_of_pos_left hp h1 h

-- [T68] :: {MRG} | THE PUSH IS THE PERIHELION FLUX LESS THE MEAN
theorem t69_push_form (s e : ℝ) : push s e = s_peri s e - s := by
  simp only [push, s_peri]

-- ============================================================
-- SECTION 6: THE CLOCK
-- ============================================================

/-- The Gough main-sequence luminosity track, relative to the present. -/
def Lrel (T0 t : ℝ) : ℝ := 1 / (1 + 0.4 * (1 - t / T0))

/-- The reduced flux at time t, for a present reduced flux. -/
def s_at (s_now T0 t : ℝ) : ℝ := s_now * Lrel T0 t

-- [T69] :: {CLK} | AT THE PRESENT THE TRACK IS UNITY
theorem t70_track_now (T0 : ℝ) (h : T0 ≠ 0) : Lrel T0 T0 = 1 := by
  simp only [Lrel]; field_simp

-- [T70] :: {CLK} | THE PRESENT FLUX IS RECOVERED
theorem t71_flux_now (s_now T0 : ℝ) (h : T0 ≠ 0) : s_at s_now T0 T0 = s_now := by
  simp only [s_at]; rw [t70_track_now T0 h]; ring

-- [T71] :: {CLK} | THE TRACK RISES WITH TIME
theorem t72_track_mono (T0 t1 t2 : ℝ) (hT : 0 < T0) (h : t1 < t2)
    (hp1 : 0 < 1 + 0.4 * (1 - t1 / T0)) (hp2 : 0 < 1 + 0.4 * (1 - t2 / T0)) :
    Lrel T0 t1 < Lrel T0 t2 := by
  simp only [Lrel]
  rw [div_lt_div_iff hp1 hp2]
  have hq : t1 / T0 < t2 / T0 := by
    rw [div_lt_div_iff hT hT]; nlinarith
  linarith

-- [T72] :: {CLK} | THE FLUX RISES WITH TIME FOR A POSITIVE PRESENT FLUX
theorem t73_flux_mono (s_now T0 t1 t2 : ℝ) (hs : 0 < s_now) (hT : 0 < T0) (h : t1 < t2)
    (hp1 : 0 < 1 + 0.4 * (1 - t1 / T0)) (hp2 : 0 < 1 + 0.4 * (1 - t2 / T0)) :
    s_at s_now T0 t1 < s_at s_now T0 t2 := by
  simp only [s_at]
  exact mul_lt_mul_of_pos_left (t72_track_mono T0 t1 t2 hT h hp1 hp2) hs

-- [T73] :: {CLK} | THE MARGIN CLOSES AS THE FLUX RISES
theorem t74_margin_closes (s1 s2 : ℝ) (h : s1 < s2) : margin s2 < margin s1 := by
  simp only [margin]; linarith

-- THE RESIDENCE IN BAND, FROM THE TRACK'S OWN DERIVATIVE
def residence (T0 Lv : ℝ) : ℝ := (1 / FLOOR_FRACTION - 1) * T0 / (0.4 * Lv)

-- [T74] :: {CLK} | THE RESIDENCE IS POSITIVE
theorem t76_residence_pos (T0 Lv : ℝ) (hT : 0 < T0) (hL : 0 < Lv) : 0 < residence T0 Lv := by
  simp only [residence]
  apply div_pos
  · have hf : (0:ℝ) < 1 / FLOOR_FRACTION - 1 := by simp only [FLOOR_FRACTION]; norm_num
    exact mul_pos hf hT
  · linarith

-- [T75] :: {CLK} | THE RESIDENCE FALLS AS THE STAR BRIGHTENS
theorem t77_residence_antitone (T0 L1 L2 : ℝ) (hT : 0 < T0) (h1 : 0 < L1) (h : L1 < L2) :
    residence T0 L2 < residence T0 L1 := by
  simp only [residence]
  have hn : (0:ℝ) < (1 / FLOOR_FRACTION - 1) * T0 := by
    have hf : (0:ℝ) < 1 / FLOOR_FRACTION - 1 := by simp only [FLOOR_FRACTION]; norm_num
    exact mul_pos hf hT
  exact div_lt_div_of_pos_left hn (by linarith) (by linarith)

-- [T76] :: {CLK} | THE RESIDENCE IS A BAND, NOT A POINT
theorem t78_residence_band (T0 Llo Lhi Lv : ℝ) (hT : 0 < T0) (hlo : 0 < Llo)
    (h1 : Llo ≤ Lv) (h2 : Lv ≤ Lhi) :
    residence T0 Lhi ≤ residence T0 Lv ∧ residence T0 Lv ≤ residence T0 Llo := by
  have hn : (0:ℝ) < (1 / FLOOR_FRACTION - 1) * T0 := by
    have hf : (0:ℝ) < 1 / FLOOR_FRACTION - 1 := by simp only [FLOOR_FRACTION]; norm_num
    exact mul_pos hf hT
  have hv : 0 < Lv := lt_of_lt_of_le hlo h1
  constructor
  · rcases eq_or_lt_of_le h2 with he | he
    · rw [he]
    · exact le_of_lt (t77_residence_antitone T0 Lv Lhi hT hv he)
  · rcases eq_or_lt_of_le h1 with he | he
    · rw [he]
    · exact le_of_lt (t77_residence_antitone T0 Llo Lv hT hlo he)

-- THE RESIDENCE SCALES WITH THE MAIN-SEQUENCE LIFETIME
def ms_lifetime (M : ℝ) : ℝ := 10 / (M ^ 2 * Real.sqrt M)

-- [T77] :: {CLK} | THE LIFETIME IS POSITIVE FOR A POSITIVE MASS
theorem t80_lifetime_pos (M : ℝ) (h : 0 < M) : 0 < ms_lifetime M := by
  simp only [ms_lifetime]
  exact div_pos (by norm_num) (mul_pos (pow_pos h 2) (Real.sqrt_pos.mpr h))

-- [T78] :: {CLK} | A HEAVIER STAR LIVES A SHORTER LIFE
theorem t81_heavier_shorter (M1 M2 : ℝ) (h1 : 0 < M1) (h : M1 < M2) :
    ms_lifetime M2 < ms_lifetime M1 := by
  simp only [ms_lifetime]
  have h2 : 0 < M2 := lt_trans h1 h
  have hs1 : 0 < Real.sqrt M1 := Real.sqrt_pos.mpr h1
  have hs2 : Real.sqrt M1 < Real.sqrt M2 := Real.sqrt_lt_sqrt (le_of_lt h1) h
  have hd1 : 0 < M1 ^ 2 * Real.sqrt M1 := mul_pos (pow_pos h1 2) hs1
  have hlt : M1 ^ 2 * Real.sqrt M1 < M2 ^ 2 * Real.sqrt M2 := by nlinarith
  exact div_lt_div_of_pos_left (by norm_num) hd1 hlt

-- THE DURATION GATE
def clears_rung (frac M req : ℝ) : Prop := frac * ms_lifetime M > req

-- [T79] :: {CLK} | A LIGHTER STAR CLEARS WHATEVER A HEAVIER ONE DID
theorem t83_lighter_clears (frac M1 M2 req : ℝ) (hf : 0 < frac) (h1 : 0 < M1)
    (h : M1 < M2) (hc : clears_rung frac M2 req) : clears_rung frac M1 req := by
  simp only [clears_rung] at *
  have := t81_heavier_shorter M1 M2 h1 h
  nlinarith

-- ============================================================
-- SECTION 7: THE ENERGY LADDER
-- ============================================================

/-- The corridor floor on the conversion fraction, as a percentage. -/
def ETA_FLOOR : ℝ := 0.725665598

/-- The corridor ceiling on the conversion fraction, as a percentage. -/
def ETA_CEIL : ℝ := 0.937068179

/-- Hydrogen to helium: what a main-sequence star burns. -/
def ETA_HHE : ℝ := 0.711852

/-- Hydrogen to iron. -/
def ETA_HFE : ℝ := 0.891711

-- [T80] :: {LAD} | THE CORRIDOR ON THE LADDER IS ORDERED
theorem t84_ladder_ordered : ETA_FLOOR < ETA_CEIL := by
  simp only [ETA_FLOOR, ETA_CEIL]; norm_num

-- [T81] :: {LAD} | THE STELLAR ENGINE IS LOCKED, BELOW THE FLOOR
theorem t85_engine_locked : ETA_HHE < ETA_FLOOR := by
  simp only [ETA_HHE, ETA_FLOOR]; norm_num

-- [T82] :: {LAD} | THE IRON PEAK IS INSIDE THE CORRIDOR
theorem t86_iron_is_iva : ETA_FLOOR < ETA_HFE ∧ ETA_HFE < ETA_CEIL := by
  constructor
  · simp only [ETA_FLOOR, ETA_HFE]; norm_num
  · simp only [ETA_HFE, ETA_CEIL]; norm_num

-- [T83] :: {LAD} | ANNIHILATION STANDS ABOVE THE CEILING
theorem t87_annihilation_shatter : ETA_CEIL < 100 := by
  simp only [ETA_CEIL]; norm_num

-- [T84] :: {LAD} | THE ENGINE CLEARS THE FLOOR BY A POSITIVE SHORTFALL
theorem t88_engine_shortfall : 0 < ETA_FLOOR - ETA_HHE := by
  have := t85_engine_locked; linarith

-- [T85] :: {LAD} | THE FULL LADDER ORDERING
theorem t89_ladder_full : ETA_HHE < ETA_FLOOR ∧ ETA_FLOOR < ETA_HFE ∧ ETA_HFE < ETA_CEIL :=
  ⟨t85_engine_locked, t86_iron_is_iva.1, t86_iron_is_iva.2⟩

-- ============================================================
-- SECTION 8: THE RATIO, THE RULER, AND THE COLUMN
-- ============================================================

/-- One tick of the temperature ruler. -/
def TICK : ℝ := TORSION_LIMIT / 100

/-- The vapour-pressure ratio: the substrate's place between the marks. -/
def ratio (p_vap p_amb : ℝ) : ℝ := p_vap / p_amb

/-- Torsion carried on the ratio. -/
def tau_ratio (r : ℝ) : ℝ := TORSION_LIMIT * r

-- [T86] :: {RUL} | ONE DEGREE IS THE ANCHOR OVER A THOUSAND
theorem t90_tick_value : TICK = SOVEREIGN_ANCHOR / 1000 := by
  simp only [TICK, TORSION_LIMIT]; ring

-- [T87] :: {RUL} | ONE HUNDRED TICKS IS THE TORSION LIMIT
theorem t91_hundred_ticks : 100 * TICK = TORSION_LIMIT := by
  simp only [TICK]; ring

-- [T88] :: {RUL} | EIGHTY-EIGHT TICKS IS THE CORRIDOR FLOOR
theorem t92_eightyeight_ticks : 88 * TICK = TL_IVA := by
  simp only [TICK, TL_IVA, FLOOR_FRACTION]; ring

-- [T89] :: {RUL} | THE BAND IS EXACTLY TWELVE TICKS WIDE
theorem t93_band_twelve_ticks : TORSION_LIMIT - TL_IVA = 12 * TICK := by
  simp only [TICK, TL_IVA, FLOOR_FRACTION]; ring

-- [T90] :: {RUL} | THE KELVIN MARKS CARRY THE SAME TICKS
theorem t94_kelvin_marks :
    (273.15 : ℝ) + 88 = 361.15 ∧ (273.15 : ℝ) + 100 = 373.15 := by
  constructor <;> norm_num

-- [T91] :: {RUL} | AT THE BOIL THE RATIO IS ONE AND THE TORSION IS THE LIMIT
theorem t95_boil_is_shatter (p : ℝ) (h : p ≠ 0) :
    ratio p p = 1 ∧ tau_ratio (ratio p p) = TORSION_LIMIT := by
  have hr : ratio p p = 1 := by simp only [ratio]; field_simp
  exact ⟨hr, by rw [hr]; simp only [tau_ratio]; ring⟩

-- [T92] :: {RUL} | A RATIO IN THE BAND IS IVA
theorem t96_ratio_iva (r : ℝ) (h1 : FLOOR_FRACTION ≤ r) (h2 : r < 1) :
    classify (tau_ratio r) = Phase.IVA := by
  apply t17_corridor_is_iva
  · simp only [tau_ratio, TL_IVA]; nlinarith [t7_tl_pos]
  · simp only [tau_ratio]; nlinarith [t7_tl_pos]

-- [T93] :: {RUL} | A ZERO RATIO IS NOBLE
theorem t97_ratio_noble : tau_ratio 0 = 0 := by simp only [tau_ratio]; ring

-- [T94] :: {RUL} | THE RATIO IS ANTITONE IN THE AMBIENT PRESSURE
theorem t98_ratio_antitone (pv p1 p2 : ℝ) (hv : 0 < pv) (h1 : 0 < p1) (h : p1 < p2) :
    ratio pv p2 < ratio pv p1 := by
  simp only [ratio]
  exact div_lt_div_of_pos_left hv h1 h

-- [T95] :: {RUL} | THE RATIO IS MONOTONE IN THE VAPOUR PRESSURE
theorem t99_ratio_mono (p1 p2 pa : ℝ) (ha : 0 < pa) (h : p1 < p2) :
    ratio p1 pa < ratio p2 pa := by
  simp only [ratio]
  rw [div_lt_div_iff ha ha]
  nlinarith

/-- The critical-lapse threshold: the gradient at which a column's ratio turns over. -/
def g_star (Rgas T Lvap H : ℝ) : ℝ := Rgas * T ^ 2 / (Lvap * H)

/-- The logarithmic gradient of the ratio through an atmospheric column. -/
def dlnr (Rgas T Lvap H g : ℝ) : ℝ := 1 / H - Lvap * g / (Rgas * T ^ 2)

-- [T96] :: {COL} | THE THRESHOLD IS POSITIVE
theorem t100_gstar_pos (Rgas T Lvap H : ℝ) (hR : 0 < Rgas) (hT : 0 < T)
    (hL : 0 < Lvap) (hH : 0 < H) : 0 < g_star Rgas T Lvap H := by
  simp only [g_star]
  apply div_pos
  · nlinarith
  · exact mul_pos hL hH

-- [T97] :: {COL} | THE RATIO FALLS WITH ALTITUDE EXACTLY ABOVE THE THRESHOLD
theorem t101_falls_iff (Rgas T Lvap H g : ℝ) (hR : 0 < Rgas) (hT : 0 < T)
    (hL : 0 < Lvap) (hH : 0 < H) :
    dlnr Rgas T Lvap H g < 0 ↔ g_star Rgas T Lvap H < g := by
  have hd : 0 < Rgas * T ^ 2 := mul_pos hR (pow_pos hT 2)
  have hLH : 0 < Lvap * H := mul_pos hL hH
  simp only [dlnr, g_star]
  rw [sub_lt_zero, div_lt_div_iff hH hd, div_lt_iff₀ hLH]
  constructor <;> intro h <;> nlinarith

-- ============================================================
-- SECTION 9: THE CRITICAL POINT
-- ============================================================

/-- The axis carries a boil only below the critical pressure. -/
def boil_exists (p p_crit : ℝ) : Prop := p < p_crit

-- [T98] :: {CRP} | ABOVE THE CRITICAL PRESSURE THE AXIS TERMINATES
theorem t102_axis_terminates (p p_crit : ℝ) (h : p_crit ≤ p) : ¬ boil_exists p p_crit := by
  simp only [boil_exists, not_lt]; exact h

-- A HYDROSTATIC COLUMN REACHES THE CRITICAL PRESSURE AT A DEPTH
def hydro_p (p0 rho gacc z : ℝ) : ℝ := p0 + rho * gacc * z

-- [T99] :: {CRP} | HYDROSTATIC PRESSURE RISES WITH DEPTH
theorem t104_hydro_mono (p0 rho gacc z1 z2 : ℝ) (hr : 0 < rho) (hg : 0 < gacc) (h : z1 < z2) :
    hydro_p p0 rho gacc z1 < hydro_p p0 rho gacc z2 := by
  simp only [hydro_p]
  nlinarith

-- THE TERMINATING DEPTH, IN CLOSED FORM
def z_terminate (p0 rho gacc p_crit : ℝ) : ℝ := (p_crit - p0) / (rho * gacc)

-- [T100] :: {CRP} | AT THE TERMINATING DEPTH THE PRESSURE IS CRITICAL
theorem t106_z_term (p0 rho gacc p_crit : ℝ) (hr : 0 < rho) (hg : 0 < gacc) :
    hydro_p p0 rho gacc (z_terminate p0 rho gacc p_crit) = p_crit := by
  simp only [hydro_p, z_terminate]
  have h : rho * gacc ≠ 0 := ne_of_gt (mul_pos hr hg)
  field_simp

-- [T101] :: {CRP} | BELOW THE TERMINATING DEPTH NO BOIL EXISTS
theorem t107_below_terminate (p0 rho gacc p_crit z : ℝ) (hr : 0 < rho) (hg : 0 < gacc)
    (h : z_terminate p0 rho gacc p_crit ≤ z) :
    ¬ boil_exists (hydro_p p0 rho gacc z) p_crit := by
  apply t102_axis_terminates
  rw [← t106_z_term p0 rho gacc p_crit hr hg]
  simp only [hydro_p]
  nlinarith

-- ============================================================
-- SECTION 10: THE COSMIC SHORELINE
-- ============================================================

/-- The binding energy of an atmosphere that is a fixed fraction of planet mass. -/
def E_bind (f vesc Rp G : ℝ) : ℝ := f * vesc ^ 4 * Rp / (4 * G)

/-- The energy delivered by a flux over an absolute time. -/
def E_in (eps I Rp T : ℝ) : ℝ := eps * I * Real.pi * Rp ^ 2 * T

/-- The shoreline under an absolute clock: the fourth-power branch. -/
def I_shore4 (f eps G Rp T vesc : ℝ) : ℝ := f * vesc ^ 4 / (4 * Real.pi * eps * G * Rp * T)

/-- The dynamical time of a body. -/
def t_dyn (Rp vesc : ℝ) : ℝ := Real.sqrt 2 * Rp / vesc

/-- The shoreline under the dynamical clock: the fifth-power branch. -/
def I_shore5 (f eps G Rp vesc : ℝ) : ℝ :=
  f * vesc ^ 5 / (4 * Real.sqrt 2 * Real.pi * eps * G * Rp ^ 2)

-- [T102] :: {SHR} | THE FOURTH-POWER BRANCH SOLVES THE ESCAPE BALANCE
theorem t108_shore4_solves (f eps G Rp T vesc : ℝ) (he : eps ≠ 0) (hG : G ≠ 0)
    (hR : Rp ≠ 0) (hT : T ≠ 0) :
    E_in eps (I_shore4 f eps G Rp T vesc) Rp T = E_bind f vesc Rp G := by
  simp only [E_in, E_bind, I_shore4]
  have hpi : Real.pi ≠ 0 := ne_of_gt Real.pi_pos
  field_simp
  ring

-- [T103] :: {SHR} | THE FOURTH-POWER BRANCH CARRIES A RADIUS AND A TIME
theorem t109_shore4_form (f eps G Rp T vesc : ℝ) (he : eps ≠ 0) (hG : G ≠ 0)
    (hR : Rp ≠ 0) (hT : T ≠ 0) :
    I_shore4 f eps G Rp T vesc * (Rp * T) = f * vesc ^ 4 / (4 * Real.pi * eps * G) := by
  simp only [I_shore4]
  have hpi : Real.pi ≠ 0 := ne_of_gt Real.pi_pos
  field_simp
  ring

-- [T104] :: {SHR} | THE DYNAMICAL TIME IS POSITIVE
theorem t110_tdyn_pos (Rp vesc : ℝ) (hR : 0 < Rp) (hv : 0 < vesc) : 0 < t_dyn Rp vesc := by
  simp only [t_dyn]
  apply div_pos _ hv
  exact mul_pos (Real.sqrt_pos.mpr (by norm_num)) hR

-- [T105] :: {SHR} | SUBSTITUTING THE DYNAMICAL CLOCK GIVES THE FIFTH POWER
theorem t111_shore5_from_tdyn (f eps G Rp vesc : ℝ) (he : eps ≠ 0) (hG : G ≠ 0)
    (hR : Rp ≠ 0) (hv : vesc ≠ 0) :
    I_shore4 f eps G Rp (t_dyn Rp vesc) vesc = I_shore5 f eps G Rp vesc := by
  simp only [I_shore4, I_shore5, t_dyn]
  have hpi : Real.pi ≠ 0 := ne_of_gt Real.pi_pos
  have hs : Real.sqrt 2 ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr (by norm_num))
  field_simp
  ring

-- [T106] :: {SHR} | THE TWO BRANCHES DIFFER BY ONE POWER OF THE ESCAPE VELOCITY
theorem t112_branches_differ (f eps G Rp vesc : ℝ) (he : eps ≠ 0) (hG : G ≠ 0)
    (hR : Rp ≠ 0) (hv : vesc ≠ 0) :
    I_shore5 f eps G Rp vesc * (4 * Real.sqrt 2 * Real.pi * eps * G * Rp ^ 2)
      = f * vesc ^ 5 := by
  simp only [I_shore5]
  have hpi : Real.pi ≠ 0 := ne_of_gt Real.pi_pos
  have hs : Real.sqrt 2 ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr (by norm_num))
  field_simp

-- [T107] :: {SHR} | THE SHORELINE GROUP RISES AS THE FOURTH POWER OF ESCAPE VELOCITY
theorem t113_quartic (f eps G Rp T v1 v2 : ℝ) (hf : 0 < f) (he : 0 < eps) (hG : 0 < G)
    (hR : 0 < Rp) (hT : 0 < T) (h1 : 0 < v1) (h : v1 < v2) :
    I_shore4 f eps G Rp T v1 < I_shore4 f eps G Rp T v2 := by
  simp only [I_shore4]
  have hpi : 0 < Real.pi := Real.pi_pos
  have hd : 0 < 4 * Real.pi * eps * G * Rp * T := by positivity
  rw [div_lt_div_iff hd hd]
  have hq : v1 ^ 4 < v2 ^ 4 := by nlinarith [sq_nonneg (v1 + v2), sq_nonneg (v1 - v2)]
  nlinarith

-- The matched-radius identity carries Reading A onto an escape velocity.
/-- The speed of light in vacuum, SI exact. -/
def C_LIGHT : ℝ := 299792458

/-- Reading A of an escape velocity. -/
def tau_A_of (vesc : ℝ) : ℝ := vesc / C_LIGHT

-- [T108] :: {SHR} | THE MATCHED-RADIUS IDENTITY CARRIES READING A ONTO THE ESCAPE VELOCITY
theorem t114_reading_a_of_escape (vesc : ℝ) : tau_A_of vesc * C_LIGHT = vesc := by
  simp only [tau_A_of, C_LIGHT]; ring

-- [T109] :: {SHR} | THE SHORELINE IS A FOURTH POWER OF READING A
theorem t115_shoreline_on_reading_a (f eps G Rp T vesc : ℝ) :
    f * vesc ^ 4 = f * C_LIGHT ^ 4 * tau_A_of vesc ^ 4 := by
  simp only [tau_A_of, C_LIGHT]; ring

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [MASTER] :: {ANC} | THE GOLDILOCKS ANNULUS REDUCTION
theorem MASTER_goldilocks_annulus :
    -- the grounding
    TORSION_LIMIT * 1001 = ALPHA_INV ∧
    BARE + TORSION_LIMIT = ALPHA_INV ∧
    0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT ∧ TORSION_LIMIT < 1 ∧
    -- the annulus: the anchor cancels, and the ratio is an exact rational
    (∀ L S : ℝ, 0 < L → 0 < S → d_out L S ^ 2 / d_in L S ^ 2 = 25 / 22) ∧
    (∀ L A1 A2 : ℝ, 0 < L → 0 < A1 → 0 < A2 →
      d_out L A1 ^ 2 / d_in L A1 ^ 2 = d_out L A2 ^ 2 / d_in L A2 ^ 2) ∧
    ANNULUS_RATIO ^ 2 = 25 / 22 ∧ 1 < ANNULUS_RATIO ∧
    -- the phase-holding constant is a quarter of the band width
    HOLD_CONST = 3 / 100 ∧ 4 * HOLD_CONST = 1 - FLOOR_FRACTION ∧
    -- bounded uncertainty certifies
    (∀ tau tauhat eps : ℝ, |tau - tauhat| ≤ eps → certified tauhat eps → tau < TORSION_LIMIT) ∧
    -- the margin, and the IVA bound
    (∀ s : ℝ, s < 1 → 0 < margin s) ∧
    (∀ s : ℝ, FLOOR_FRACTION ≤ s → s < 1 → margin s ≤ 1 - FLOOR_FRACTION) ∧
    -- the clock: residence is antitone in luminosity, so it is a band
    (∀ T0 L1 L2 : ℝ, 0 < T0 → 0 < L1 → L1 < L2 → residence T0 L2 < residence T0 L1) ∧
    -- the ladder: the engine is Locked and the iron peak is IVA
    ETA_HHE < ETA_FLOOR ∧ ETA_FLOOR < ETA_HFE ∧ ETA_HFE < ETA_CEIL ∧
    -- the ruler: twelve ticks
    TORSION_LIMIT - TL_IVA = 12 * TICK ∧
    -- the shoreline: both branches solve the escape balance
    (∀ f eps G Rp T vesc : ℝ, eps ≠ 0 → G ≠ 0 → Rp ≠ 0 → T ≠ 0 →
      E_in eps (I_shore4 f eps G Rp T vesc) Rp T = E_bind f vesc Rp G) := by
  refine ⟨t4_tl_times_1001, t3_bare_plus_kinetic, t10_floor_pos_below.1,
    t10_floor_pos_below.2, t8_tl_in_unit.2,
    fun L S hL hS => t37_squared_ratio_rational L S hL hS,
    fun L A1 A2 hL h1 h2 => t42_anchor_relocation L A1 A2 hL h1 h2,
    t29_ratio_sq, t32_ratio_gt_one, t43_hold_const, t44_hold_is_quarter_band,
    fun tau tauhat eps hb hc => t53_cert_sound tau tauhat eps hb hc,
    fun s h => t59_margin_pos s h,
    fun s h1 h2 => t61_iva_margin_bound s h1 h2,
    fun T0 L1 L2 hT h1 h => t77_residence_antitone T0 L1 L2 hT h1 h,
    t85_engine_locked, t86_iron_is_iva.1, t86_iron_is_iva.2, t93_band_twelve_ticks,
    fun f eps G Rp T vesc he hG hR hT => t108_shore4_solves f eps G Rp T vesc he hG hR hT⟩

end SNSFL_GoldilocksAnnulus

end

/-!
-- ============================================================
-- FILE:       SNSFL_GoldilocksAnnulus_Reduction.lean
-- COORDINATE: [9,9,3,26](COSM)
--
-- This file establishes that the habitable zone is an annulus whose proportion is
-- a pure number. The Shatter anchor on stellar flux is the runaway greenhouse,
-- because a runaway greenhouse is the boil and the boil is tau = TL; writing the
-- reduced flux against a body's own anchor, the four phases land on it directly.
-- Because flux obeys the inverse-square law, the corridor transfers to orbital
-- radius as an annulus, and the squared ratio of its edges is 25/22 with the
-- luminosity, the effective temperature and the anchor itself all cancelling --
-- so relocating the anchor to a body's own conditions moves both edges together
-- and leaves the proportion where it is. A planet holds its phase across an orbit
-- exactly when e s/(1-e^2)^2 stays below (1 - 0.88)/4 = 3/100, one quarter of the
-- band width; the swing is shown to be the difference of the two extreme fluxes
-- and to rise with both eccentricity and flux. Bounded uncertainty certifies a
-- placement when tau_hat + eps < TL, the two certifications are shown to exclude
-- each other, and an uncertified row is characterised exactly as one whose bar
-- spans the limit. The margin to Shatter is 1 - s and the utilisation is the
-- perihelion push over it, with the IVA margin bounded by the band width and
-- therefore the smallest of any sub-Shatter state. The margin closes on a clock:
-- the luminosity track rises with time, the flux rises with it, and the residence
-- in band is antitone in luminosity and so is a band rather than a point, with a
-- lighter host shown to clear whatever rung a heavier one cleared. On the energy
-- ladder the stellar engine is Locked below the corridor floor while the iron
-- peak sits inside it. The ruler carries twelve ticks between the floor and the
-- limit on either scale, the ratio places a substrate between the marks and is
-- antitone in ambient pressure, a column's gradient reverses exactly at
-- g* = R T^2/(L H), and a hydrostatic column terminates its own axis where the
-- pressure passes the critical point. Finally both shoreline branches are shown
-- to solve the escape balance, the dynamical clock is shown to carry the fourth
-- power into the fifth, and the shoreline group is shown to rise as the fourth
-- power of an escape velocity, which the matched-radius identity carries onto
-- Reading A.
--
-- THEOREMS : 109 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
-/
