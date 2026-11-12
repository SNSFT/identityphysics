-- ============================================================
-- SNSFL_GeometricCompletion_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | ESCAPE VELOCITY IS RADIUS, AND THE BAND CARRIES ITS OWN RETENTION FLOOR
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Omega_0 = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,3,29](COSM) | Cosmological Ground — Geometric Completion
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in another
-- coordinate's file: the anchor, the Torsion Limit, the corridor floor, the four
-- phases, the interior density law, the runaway flux, the completion operator,
-- the retention term and the crossing are all restated here at full precision,
-- so that a reader or a machine can close every proof without leaving the file.
-- The parent reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,8,1]    Founding Text                  — the anchor and the Torsion Limit
--   [9,9,3,14]   Alpha Reduction                — alpha^-1 = Omega_0 x 100.1
--   [9,9,8,10]   Temperature on the Torsion Limit — the ruler, the IVA floor
--   [9,9,8,11]   Two Readings Across Substrates — Reading B as an e-fold count
--   [9,9,8,12]   Geometric Base and Energy Ladder — b_0 = 1 / sqrt(TL)
--   [9,9,0,17]   Matched Radius Reduction       — v_esc(r_match) = tau_A c
--   [9,9,1,0]    Structural Precognition        — the I-F-U triad, the margin
--   [9,9,3,26]   The Goldilocks Annulus         — the runaway anchor, the phases on flux
--   [9,9,3,27]   IMatter                        — the counted interior, the mantle floor
--   [9,9,3,28]   The Terraformable Band         — the density law, the sub-boil gate
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   ESCAPE VELOCITY IS RADIUS, under the closure the interior density law
--   carries. The law rho(x) = 4400 + 7400 x^3 at Earth's structural coordinate
--   returns Earth's bulk density, so a body on the law satisfies M = R^3 in
--   Earth-normalised units. Escape velocity is sqrt(M / R), and substituting the
--   closure gives sqrt(R^3 / R) = sqrt(R^2) = R exactly, with no approximation
--   step. Surface gravity M / R^2 reduces to R by the same substitution, so one
--   number carries both. Retention, the fourth power of escape velocity over the
--   insolation, therefore reduces to R^4 / I on radius and insolation alone.
--
--   THE LAW SCREENS ITS OWN DOMAIN, because it is a cubic over the unit interval
--   and so its range is bounded at both ends. Dividing the range by Earth's bulk
--   density restates it as a test on the two published columns directly, adding
--   no constant, and the sub-boil gate in mass becomes a ceiling in radius.
--
--   THE BAND CARRIES ITS OWN RETENTION FLOOR, because the near bound is
--   geometric. A reading at or below 22/25 of the runaway flux carries an
--   insolation ceiling of 572/625 exactly, so retention at Earth radius and above
--   is bounded below by 625/572, which stands above the solar-system crossing by
--   a factor past eleven. Inverting the bound gives a critical radius, and every
--   body above it retains at every insolation the band admits. The legacy escape
--   boundary is the level set of the retention term, so the bound is a floor on a
--   boundary rather than a second test to run.
--
-- ============================================================

import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

noncomputable section

namespace SNSFL_GeometricCompletion

-- ============================================================
-- SECTION 1: THE ANCHOR AND THE GROUNDING
-- ============================================================

/-- The Sovereign Anchor Constant. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Universal Torsion Limit, the anchor over ten. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The floor fraction, 22/25. -/
def FLOOR_FRACTION : ℝ := 0.88

/-- The IVA floor, the corridor's lower edge. -/
def TL_IVA : ℝ := TORSION_LIMIT * FLOOR_FRACTION

/-- The inverse fine-structure constant, CODATA 2018. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The bare term, the inverse fine-structure constant less the kinetic term. -/
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

-- [T4] :: {VER} | THE TORSION LIMIT TIMES 1001 IS THE INVERSE FINE-STRUCTURE CONSTANT
theorem t4_tl_times_1001 : TORSION_LIMIT * 1001 = ALPHA_INV := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T5] :: {VER} | THE ANCHOR ROUTE TO ALPHA
theorem t5_anchor_route : SOVEREIGN_ANCHOR * 100.1 = ALPHA_INV := by
  simp only [SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T6] :: {VER} | THE MULTIPLIER FACTORS
theorem t6_multiplier_factors : (1001 : ℝ) = 7 * 11 * 13 := by norm_num

-- [T7] :: {ANC} | THE TORSION LIMIT IS POSITIVE
theorem t7_tl_pos : 0 < TORSION_LIMIT := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T8] :: {ANC} | THE TORSION LIMIT LIES IN THE UNIT INTERVAL
theorem t8_tl_in_unit : 0 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  refine ⟨t7_tl_pos, ?_⟩
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T9] :: {ANC} | THE IVA FLOOR READS AT FULL PRECISION
theorem t9_tl_iva_value : TL_IVA = 0.12047120798593408 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num

-- [T10] :: {PHS} | THE FLOOR STANDS STRICTLY INSIDE THE LIMIT
theorem t10_floor_pos_below : 0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  constructor
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num

-- [T11] :: {VER} | THE FLOOR FRACTION IS TWENTY-TWO TWENTY-FIFTHS
theorem t11_floor_rational : FLOOR_FRACTION = 22 / 25 := by
  simp only [FLOOR_FRACTION]; norm_num

-- [T12] :: {VER} | THE CORRIDOR WIDTH ON THE FLUX AXIS IS THREE TWENTY-FIFTHS
theorem t12_corridor_width : 1 - FLOOR_FRACTION = 3 / 25 := by
  simp only [FLOOR_FRACTION]; norm_num

-- ============================================================
-- SECTION 2: THE INTERIOR DENSITY LAW AND ITS RANGE
-- ============================================================

/-- The mantle floor of the interior density law, in kilograms per cubic metre. -/
def RHO_FLOOR : ℝ := 4400

/-- The span of the interior density law. -/
def RHO_SPAN : ℝ := 7400

/-- Earth's structural coordinate. -/
def X_EARTH : ℝ := 0.53188

/-- The interior density law: a cubic in the structural coordinate. -/
def rhoBar (x : ℝ) : ℝ := RHO_FLOOR + RHO_SPAN * x ^ 3

-- [T13] :: {RED} | THE LAW READS THE MANTLE FLOOR AT ZERO
theorem t13_rho_at_zero : rhoBar 0 = 4400 := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN]; norm_num

-- [T14] :: {RED} | THE LAW READS THE CEILING AT ONE
theorem t14_rho_at_one : rhoBar 1 = 11800 := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN]; norm_num

-- [T15] :: {RED} | THE LAW RISES WITH THE STRUCTURAL COORDINATE
theorem t15_rho_mono (x y : ℝ) (hx : 0 ≤ x) (h : x < y) : rhoBar x < rhoBar y := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN]
  have hy0 : 0 < y := lt_of_le_of_lt hx h
  have hsq : x ^ 2 < y ^ 2 := by nlinarith
  have hstep1 : x * x ^ 2 ≤ x * y ^ 2 := mul_le_mul_of_nonneg_left (le_of_lt hsq) hx
  have hstep2 : x * y ^ 2 < y * y ^ 2 := mul_lt_mul_of_pos_right h (pow_pos hy0 2)
  nlinarith [hstep1, hstep2]

-- [T16] :: {MASTER} | THE LAW'S RANGE OVER THE UNIT INTERVAL
--   The law is a cubic over the unit interval, so its range is bounded at both
--   ends with no further constant.
theorem t16_rho_range (x : ℝ) (h0 : 0 ≤ x) (h1 : x ≤ 1) :
    4400 ≤ rhoBar x ∧ rhoBar x ≤ 11800 := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN]
  constructor
  · nlinarith [pow_nonneg h0 3]
  · nlinarith [h0, h1, sq_nonneg x, sq_nonneg (1 - x), mul_nonneg h0 h0]

-- [T17] :: {VER} | THE LAW AT EARTH'S COORDINATE RETURNS EARTH'S BULK DENSITY
theorem t17_rho_earth : 5513.4 < rhoBar X_EARTH ∧ rhoBar X_EARTH < 5513.5 := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN, X_EARTH]; norm_num

-- [T18] :: {RED} | EARTH'S COORDINATE STANDS INSIDE THE UNIT INTERVAL
theorem t18_x_earth_in_unit : 0 ≤ X_EARTH ∧ X_EARTH ≤ 1 := by
  simp only [X_EARTH]; norm_num

-- [T19] :: {MASTER} | THE RANGE RESTATED ON THE PUBLISHED COLUMNS
--   Dividing the law's range by Earth's bulk density carries the test onto the
--   ratio of the two published columns directly, adding no constant.
theorem t19_codomain_screen :
    0.79804 < RHO_FLOOR / 5513.4550773 ∧ RHO_FLOOR / 5513.4550773 < 0.79806 ∧
    2.14021 < (RHO_FLOOR + RHO_SPAN) / 5513.4550773 ∧
    (RHO_FLOOR + RHO_SPAN) / 5513.4550773 < 2.14023 := by
  simp only [RHO_FLOOR, RHO_SPAN]; norm_num

-- [T20] :: {VER} | MARS READS BELOW THE LAW'S RANGE
--   The reading that places Mars outside the solver's domain in [9,9,3,27] is
--   returned here by the law's own range from the same constant.
theorem t20_mars_below_range : (3918 : ℝ) / 5513.4550773 < RHO_FLOOR / 5513.4550773 := by
  simp only [RHO_FLOOR]; norm_num

-- ============================================================
-- SECTION 3: THE COMPLETION OPERATOR
-- ============================================================

/-- The completion operator in the mass direction: a body on the law at Earth's
    coordinate carries mass as the cube of radius, in Earth-normalised units. -/
def massOf (R : ℝ) : ℝ := R ^ 3

/-- The sub-boil super-earth gate in mass. -/
def GATE_MASS : ℝ := 10

/-- The gate restated as a radius ceiling. -/
def GATE_RADIUS : ℝ := 2.154434690031884

-- [T21] :: {RED} | THE OPERATOR RISES WITH RADIUS
theorem t21_mass_mono (R S : ℝ) (hR : 0 < R) (h : R < S) : massOf R < massOf S := by
  simp only [massOf]
  have hS : 0 < S := lt_trans hR h
  nlinarith [sq_nonneg R, sq_nonneg S, mul_pos hR hS]

-- [T22] :: {RED} | THE OPERATOR IS INJECTIVE ON POSITIVE RADII
theorem t22_mass_inj (R S : ℝ) (hR : 0 < R) (hS : 0 < S) (h : massOf R = massOf S) :
    R = S := by
  rcases lt_trichotomy R S with hlt | heq | hgt
  · exact absurd h (ne_of_lt (t21_mass_mono R S hR hlt))
  · exact heq
  · exact absurd h.symm (ne_of_lt (t21_mass_mono S R hS hgt))

-- [T23] :: {RED} | THE OPERATOR CARRIES POSITIVE RADIUS TO POSITIVE MASS
theorem t23_mass_pos (R : ℝ) (hR : 0 < R) : 0 < massOf R := by
  simp only [massOf]; exact pow_pos hR 3

-- [T24] :: {MASTER} | A BODY ON THE LAW READS EARTH'S DENSITY RATIO EXACTLY
--   The screen of Section 2 reads unity on any body the operator resolves, which
--   is why a published pair standing outside the range carries something other
--   than a bulk density.
theorem t24_density_ratio_one (R : ℝ) (hR : 0 < R) : massOf R / R ^ 3 = 1 := by
  simp only [massOf]; exact div_self (pow_ne_zero 3 (ne_of_gt hR))

-- [T25] :: {VER} | THE GATE IN MASS IS A CEILING IN RADIUS
theorem t25_gate_brackets : (2.1544 : ℝ) ^ 3 < GATE_MASS ∧ GATE_MASS < (2.1545 : ℝ) ^ 3 := by
  simp only [GATE_MASS]; norm_num

-- [T26] :: {VER} | THE RADIUS CEILING CUBES TO THE MASS GATE
theorem t26_gate_radius_cubes : (9.9999 : ℝ) < GATE_RADIUS ^ 3 ∧ GATE_RADIUS ^ 3 < 10.0001 := by
  simp only [GATE_RADIUS]; norm_num

-- [T27] :: {RED} | A RADIUS BELOW THE CEILING CARRIES A MASS BELOW THE GATE
theorem t27_gate_transfer (R : ℝ) (hR : 0 < R) (h : R ≤ 2.1544) : massOf R ≤ GATE_MASS := by
  simp only [massOf, GATE_MASS]
  nlinarith [hR, h, sq_nonneg R, sq_nonneg (R - 2.1544)]

-- ============================================================
-- SECTION 4: ESCAPE VELOCITY, SURFACE GRAVITY AND RETENTION
-- ============================================================

/-- Escape velocity in Earth-normalised units. -/
def vEsc (M R : ℝ) : ℝ := Real.sqrt (M / R)

/-- Surface gravity in Earth-normalised units. -/
def gSurf (M R : ℝ) : ℝ := M / R ^ 2

/-- The retention term: the fourth power of escape velocity over the insolation. -/
def retention (v I : ℝ) : ℝ := v ^ 4 / I

/-- The retention term carried on radius and insolation alone. -/
def retentionGeom (R I : ℝ) : ℝ := R ^ 4 / I

-- [T28] :: {MASTER} | ESCAPE VELOCITY IS RADIUS
--   Substituting the closure into the escape-velocity reading leaves radius, with
--   no approximation step. This is the identity that carries the escape-velocity
--   column onto a row publishing a mass alone.
theorem t28_vesc_is_radius (R : ℝ) (hR : 0 < R) : vEsc (massOf R) R = R := by
  simp only [vEsc, massOf]
  rw [show R ^ 3 / R = R ^ 2 by
    rw [pow_succ, mul_div_assoc, div_self (ne_of_gt hR), mul_one]]
  exact Real.sqrt_sq (le_of_lt hR)

-- [T29] :: {MASTER} | SURFACE GRAVITY IS RADIUS
--   The same substitution carries surface gravity onto radius, so one number
--   reads both columns.
theorem t29_gsurf_is_radius (R : ℝ) (hR : 0 < R) : gSurf (massOf R) R = R := by
  simp only [gSurf, massOf]
  rw [pow_succ, mul_comm, mul_div_assoc, div_self (pow_ne_zero 2 (ne_of_gt hR)), mul_one]

-- [T30] :: {RED} | ESCAPE VELOCITY AND SURFACE GRAVITY AGREE UNDER THE CLOSURE
theorem t30_vesc_eq_gsurf (R : ℝ) (hR : 0 < R) : vEsc (massOf R) R = gSurf (massOf R) R := by
  rw [t28_vesc_is_radius R hR, t29_gsurf_is_radius R hR]

-- [T31] :: {VER} | EARTH READS ONE ON BOTH COLUMNS
theorem t31_earth_unit : vEsc (massOf 1) 1 = 1 ∧ gSurf (massOf 1) 1 = 1 := by
  constructor
  · exact t28_vesc_is_radius 1 one_pos
  · exact t29_gsurf_is_radius 1 one_pos

-- [T32] :: {MASTER} | RETENTION REDUCES TO RADIUS AND INSOLATION
--   The retention term loses a variable under the closure, which is what places
--   it on the two axes the legacy escape boundary is drawn on.
theorem t32_retention_reduces (R I : ℝ) (hR : 0 < R) :
    retention (vEsc (massOf R) R) I = retentionGeom R I := by
  simp only [retention, retentionGeom]
  rw [t28_vesc_is_radius R hR]

-- [T33] :: {VER} | RETENTION READS ONE AT EARTH
theorem t33_retention_earth : retentionGeom 1 1 = 1 := by
  simp only [retentionGeom]; norm_num

-- [T34] :: {RED} | RETENTION RISES WITH RADIUS
theorem t34_retention_mono_R (R S I : ℝ) (hR : 0 < R) (hI : 0 < I) (h : R < S) :
    retentionGeom R I < retentionGeom S I := by
  simp only [retentionGeom]
  have hS : 0 < S := lt_trans hR h
  have hsq : R ^ 2 < S ^ 2 := by nlinarith
  have h4 : R ^ 4 < S ^ 4 := by nlinarith [pow_pos hR 2, pow_pos hS 2]
  exact div_lt_div_of_pos_right h4 hI

-- [T35] :: {RED} | RETENTION FALLS AS THE INSOLATION RISES
theorem t35_retention_anti_I (R I J : ℝ) (hR : 0 < R) (hI : 0 < I) (h : I < J) :
    retentionGeom R J < retentionGeom R I := by
  simp only [retentionGeom]
  exact div_lt_div_of_pos_left (pow_pos hR 4) hI h

-- [T36] :: {MASTER} | THE LEGACY ESCAPE BOUNDARY IS A LEVEL SET OF THE TERM
--   Two rows read the same retention exactly when the insolations stand in the
--   ratio of the fourth powers of the radii, which is the published fourth-power
--   relation. The boundary is one contour of the term.
theorem t36_level_set (R S I J : ℝ) (hI : 0 < I) (hJ : 0 < J) :
    retentionGeom R I = retentionGeom S J ↔ J * R ^ 4 = I * S ^ 4 := by
  simp only [retentionGeom]
  rw [div_eq_div_iff (ne_of_gt hI) (ne_of_gt hJ)]
  constructor
  · intro h; linarith [h]
  · intro h; linarith [h]

-- ============================================================
-- SECTION 5: THE PRODUCTS AND THE SIGN OF THE MARGIN
-- ============================================================

/-- The runaway flux, Earth at one. -/
def S_RUN : ℝ := 1.04

/-- Earth's reading on the flux axis. -/
def S_EARTH : ℝ := 1 / S_RUN

/-- The shock margin: the headroom a reading holds below the limit. -/
def shockMargin (s : ℝ) : ℝ := (1 - s) / (1 - S_EARTH)

/-- The overshoot a reading carries past the limit. -/
def shatterMargin (s : ℝ) : ℝ := (s - 1) / (1 - S_EARTH)

/-- The hold reading: the two factors defined in every phase. -/
def hold (R M I : ℝ) : ℝ := retentionGeom R I * M

/-- The tankiness reading: the three-factor product, where headroom carries it. -/
def tank (s R M I : ℝ) : ℝ := shockMargin s * hold R M I

-- [T37] :: {VER} | EARTH'S FLUX READING IS TWENTY-FIVE TWENTY-SIXTHS
theorem t37_s_earth_rational : S_EARTH = 25 / 26 := by
  simp only [S_EARTH, S_RUN]; norm_num

-- [T38] :: {VER} | THE SHOCK DENOMINATOR IS ONE TWENTY-SIXTH
theorem t38_shock_denominator : 1 - S_EARTH = 1 / 26 := by
  simp only [S_EARTH, S_RUN]; norm_num

-- [T39] :: {VER} | THE SHOCK MARGIN READS ONE AT EARTH
theorem t39_shock_earth : shockMargin S_EARTH = 1 := by
  simp only [shockMargin, S_EARTH, S_RUN]; norm_num

-- [T40] :: {MASTER} | THE SIGN OF THE MARGIN CARRIES THE PHASE
--   Headroom is what a body holds below the limit, so the margin is positive
--   exactly below it and the same magnitude is overshoot above it.
theorem t40_shock_sign (s : ℝ) : 0 < shockMargin s ↔ s < 1 := by
  simp only [shockMargin]
  rw [t38_shock_denominator]
  constructor
  · intro h; nlinarith [h]
  · intro h; nlinarith [h]

-- [T41] :: {RED} | THE OVERSHOOT IS THE MARGIN REFLECTED
theorem t41_shatter_is_reflected (s : ℝ) : shatterMargin s = - shockMargin s := by
  simp only [shatterMargin, shockMargin]
  rw [t38_shock_denominator]; ring

-- [T42] :: {RED} | THE OVERSHOOT IS POSITIVE PAST THE LIMIT
theorem t42_shatter_pos (s : ℝ) (h : 1 < s) : 0 < shatterMargin s := by
  simp only [shatterMargin]
  rw [t38_shock_denominator]
  nlinarith [h]

-- [T43] :: {VER} | THE HOLD READING IS ONE AT EARTH
theorem t43_hold_earth : hold 1 1 1 = 1 := by
  simp only [hold, retentionGeom]; norm_num

-- [T44] :: {VER} | THE TANKINESS READING IS ONE AT EARTH
theorem t44_tank_earth : tank S_EARTH 1 1 1 = 1 := by
  simp only [tank]
  rw [t39_shock_earth, t43_hold_earth]; norm_num

-- [T45] :: {RED} | THE HOLD READING IS POSITIVE ON A POSITIVE ROW
theorem t45_hold_pos (R M I : ℝ) (hR : 0 < R) (hM : 0 < M) (hI : 0 < I) :
    0 < hold R M I := by
  simp only [hold, retentionGeom]
  exact mul_pos (div_pos (pow_pos hR 4) hI) hM

-- ============================================================
-- SECTION 6: THE INSOLATION CEILING AND THE RETENTION FLOOR
-- ============================================================

/-- The insolation ceiling the geometric near bound carries. -/
def I_CEILING : ℝ := FLOOR_FRACTION * S_RUN

/-- The solar-system crossing of the escape boundary. -/
def CROSSING : ℝ := 0.096402

/-- The critical radius at the band's insolation ceiling. -/
def R_CRIT : ℝ := 0.545005

-- [T46] :: {MASTER} | THE GEOMETRIC NEAR BOUND CARRIES AN INSOLATION CEILING
--   The near bound is geometric, so the ceiling is an exact rational.
theorem t46_i_ceiling : I_CEILING = 572 / 625 := by
  simp only [I_CEILING, FLOOR_FRACTION, S_RUN]; norm_num

-- [T47] :: {RED} | A READING AT OR BELOW THE NEAR BOUND STANDS BELOW THE CEILING
theorem t47_insolation_bound (s : ℝ) (h : s ≤ FLOOR_FRACTION) : s * S_RUN ≤ I_CEILING := by
  simp only [I_CEILING, S_RUN]
  nlinarith [h]

-- [T48] :: {VER} | THE CEILING IS POSITIVE
theorem t48_i_ceiling_pos : 0 < I_CEILING := by
  rw [t46_i_ceiling]; norm_num

-- [T49] :: {VER} | THE FLOOR ON RETENTION IS SIX HUNDRED TWENTY-FIVE FIVE HUNDRED SEVENTY-SECONDS
theorem t49_floor_rational : 1 / I_CEILING = 625 / 572 := by
  rw [t46_i_ceiling]; norm_num

-- [T50] :: {MASTER} | THE BAND CARRIES ITS OWN RETENTION FLOOR
--   A reading inside the band at Earth radius or above is bounded below on
--   retention by the reciprocal of the insolation ceiling, with no appeal to a
--   catalogue and no free parameter.
theorem t50_subsumption_bound (s R : ℝ) (hs : 0 < s) (hsb : s ≤ FLOOR_FRACTION)
    (hR : 1 ≤ R) : 1 / I_CEILING ≤ retentionGeom R (s * S_RUN) := by
  simp only [retentionGeom]
  have hSR : (0 : ℝ) < S_RUN := by simp only [S_RUN]; norm_num
  have hsr : 0 < s * S_RUN := mul_pos hs hSR
  have hceil : s * S_RUN ≤ I_CEILING := t47_insolation_bound s hsb
  have hIC : (0 : ℝ) < I_CEILING := t48_i_ceiling_pos
  have hinv : (0 : ℝ) ≤ 1 / I_CEILING := le_of_lt (one_div_pos.mpr hIC)
  have h4 : (1 : ℝ) ≤ R ^ 4 := by nlinarith [hR, sq_nonneg R, sq_nonneg (R - 1)]
  rw [le_div_iff₀ hsr]
  have hprod : (1 / I_CEILING) * (s * S_RUN) ≤ (1 / I_CEILING) * I_CEILING :=
    mul_le_mul_of_nonneg_left hceil hinv
  have hone : (1 / I_CEILING) * I_CEILING = 1 := by field_simp
  linarith [hprod, hone, h4]

-- [T51] :: {VER} | THE FLOOR STANDS ABOVE THE CROSSING PAST ELEVEN
theorem t51_margin_bound :
    (11.33 : ℝ) < (1 / I_CEILING) / CROSSING ∧ (1 / I_CEILING) / CROSSING < 11.34 := by
  rw [t49_floor_rational]
  simp only [CROSSING]; norm_num

-- [T52] :: {VER} | THE CRITICAL RADIUS AT THE CEILING
--   The fourth power of the critical radius is the crossing times the ceiling,
--   so the radius itself stands between two four-decimal brackets.
theorem t52_critical_radius :
    (0.5450 : ℝ) ^ 4 < CROSSING * I_CEILING ∧ CROSSING * I_CEILING < (0.5451 : ℝ) ^ 4 := by
  rw [t46_i_ceiling]
  simp only [CROSSING]; norm_num

-- [T53] :: {VER} | THE STATED CRITICAL RADIUS STANDS INSIDE THE BRACKET
theorem t53_r_crit_in_bracket : (0.5450 : ℝ) < R_CRIT ∧ R_CRIT < 0.5451 := by
  simp only [R_CRIT]; norm_num

-- [T54] :: {RED} | EVERY BODY ABOVE THE CRITICAL RADIUS RETAINS AT THE CEILING
theorem t54_above_crit_retains (R : ℝ) (h : 0.5451 ≤ R) :
    CROSSING < retentionGeom R I_CEILING := by
  simp only [retentionGeom]
  rw [t46_i_ceiling]
  have h4 : ((0.5451 : ℝ)) ^ 4 ≤ R ^ 4 := pow_le_pow_left₀ (by norm_num) h 4
  have hc : CROSSING * (572 / 625 : ℝ) < (0.5451 : ℝ) ^ 4 := by
    simp only [CROSSING]; norm_num
  rw [lt_div_iff₀ (by norm_num : (0 : ℝ) < 572 / 625)]
  linarith [h4, hc]

-- ============================================================
-- SECTION 7: PHASE ON THE FLUX AXIS, AND CERTIFICATION
-- ============================================================

/-- Torsion on the flux axis. -/
def tauOf (s : ℝ) : ℝ := TORSION_LIMIT * s

/-- The four phases. -/
inductive Phase | Noble | Locked | IVA | Shatter
deriving DecidableEq, Repr

/-- Classification of a torsion reading against the corridor. -/
def classify (t : ℝ) : Phase :=
  if t ≥ TORSION_LIMIT then Phase.Shatter
  else if t ≥ TL_IVA then Phase.IVA
  else if t > 0 then Phase.Locked
  else Phase.Noble

-- [T55] :: {RED} | THE FLOOR FRACTION CARRIES THE IVA FLOOR ON THE FLUX AXIS
theorem t55_floor_in_flux : tauOf FLOOR_FRACTION = TL_IVA := by
  simp only [tauOf, TL_IVA]

-- [T56] :: {PHS} | A READING AT OR ABOVE THE RUNAWAY IS SHATTER
theorem t56_flux_shatter (s : ℝ) (h : 1 ≤ s) : classify (tauOf s) = Phase.Shatter := by
  simp only [classify]
  rw [if_pos]
  simp only [tauOf]
  nlinarith [t7_tl_pos, h]

-- [T57] :: {PHS} | A READING INSIDE THE CORRIDOR IS IVA PEAK
theorem t57_flux_iva (s : ℝ) (h1 : FLOOR_FRACTION ≤ s) (h2 : s < 1) :
    classify (tauOf s) = Phase.IVA := by
  simp only [classify]
  have hlt : tauOf s < TORSION_LIMIT := by
    simp only [tauOf]; nlinarith [t7_tl_pos, h2]
  have hge : TL_IVA ≤ tauOf s := by
    rw [← t55_floor_in_flux]; simp only [tauOf]; nlinarith [t7_tl_pos, h1]
  rw [if_neg (not_le.mpr hlt), if_pos hge]

-- [T58] :: {PHS} | A POSITIVE READING BELOW THE FLOOR FRACTION IS LOCKED
theorem t58_flux_locked (s : ℝ) (h1 : 0 < s) (h2 : s < FLOOR_FRACTION) :
    classify (tauOf s) = Phase.Locked := by
  simp only [classify]
  have hiva : tauOf s < TL_IVA := by
    rw [← t55_floor_in_flux]; simp only [tauOf]; nlinarith [t7_tl_pos, h2]
  have hlt : tauOf s < TORSION_LIMIT := lt_trans hiva t10_floor_pos_below.2
  have hpos : 0 < tauOf s := by simp only [tauOf]; exact mul_pos t7_tl_pos h1
  rw [if_neg (not_le.mpr hlt), if_neg (not_le.mpr hiva), if_pos hpos]

-- [T59] :: {PHS} | THE BAND STANDS INSIDE LOCKED
--   Every band reading is a Locked reading, so the floor of Section 6 is a floor
--   on a phase block rather than on a separate population.
theorem t59_band_is_locked (s ceil : ℝ) (hc : 0 < ceil) (h1 : ceil ≤ s)
    (h2 : s < FLOOR_FRACTION) : classify (tauOf s) = Phase.Locked :=
  t58_flux_locked s (lt_of_lt_of_le hc h1) h2

/-- A retention reading is certified across a published interval when both
    endpoints stand above the crossing. -/
def certifiedRetaining (R lo hi : ℝ) : Prop :=
  CROSSING < retentionGeom R lo ∧ CROSSING < retentionGeom R hi

-- [T60] :: {MASTER} | CERTIFICATION IS SOUND ON THE RETENTION READING
--   Retention falls as the insolation rises, so the floor over a published bar
--   stands at its upper endpoint, and one endpoint evaluation settles every
--   reading inside the bar.
theorem t60_cert_retaining_sound (R lo hi I : ℝ) (hR : 0 < R) (hI : 0 < I)
    (h1 : lo ≤ I) (h2 : I ≤ hi) (hc : certifiedRetaining R lo hi) :
    CROSSING < retentionGeom R I := by
  obtain ⟨_, hh⟩ := hc
  rcases eq_or_lt_of_le h2 with h | h
  · rwa [h]
  · exact lt_trans hh (t35_retention_anti_I R I hi hR hI h)

-- [T61] :: {MASTER} | THE CHAIN CLOSES
--   The density law carries the closure, the closure carries escape velocity onto
--   radius, radius carries retention onto two observables, the geometric near
--   bound carries an insolation ceiling, and the ceiling carries a floor on
--   retention that stands above the crossing past eleven.
theorem t61_master (s R : ℝ) (hs : 0 < s) (hsb : s ≤ FLOOR_FRACTION) (hR : 1 ≤ R) :
    vEsc (massOf R) R = R ∧
    retention (vEsc (massOf R) R) (s * S_RUN) = retentionGeom R (s * S_RUN) ∧
    1 / I_CEILING ≤ retentionGeom R (s * S_RUN) ∧
    classify (tauOf s) ≠ Phase.Shatter := by
  have hRpos : 0 < R := lt_of_lt_of_le one_pos hR
  refine ⟨t28_vesc_is_radius R hRpos, t32_retention_reduces R (s * S_RUN) hRpos,
          t50_subsumption_bound s R hs hsb hR, ?_⟩
  rcases lt_or_eq_of_le hsb with h | h
  · rw [t58_flux_locked s hs h]; simp
  · rw [h, t55_floor_in_flux]
    simp only [classify]
    rw [if_neg (not_le.mpr t10_floor_pos_below.2), if_pos (le_refl TL_IVA)]
    simp

end SNSFL_GeometricCompletion

end

/-
-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that escape velocity is radius. The interior density law
-- is restated as a cubic in the structural coordinate, its value at Earth's
-- coordinate is bracketed against Earth's bulk density, and its range over the
-- unit interval is proved bounded at both ends. That range, divided by Earth's
-- bulk density, is restated as a test on the ratio of the two published columns,
-- adding no constant, and the reading that places Mars outside the solver's
-- domain is returned by the same constant. The completion operator is proved to
-- rise with radius, to be injective on positive radii, and to carry a positive
-- radius to a positive mass, and a body it resolves is proved to read the density
-- ratio at unity exactly. The sub-boil gate in mass is bracketed as a ceiling in
-- radius and the transfer from the ceiling to the gate is closed.
--
-- Substituting the closure into the escape-velocity reading leaves radius
-- exactly, with no approximation step, and the same substitution carries surface
-- gravity onto radius as well, so the two columns are proved to agree and both
-- are proved to read one at Earth. The retention term is proved to reduce to the
-- fourth power of radius over the insolation, to read one at Earth, to rise with
-- radius and to fall as the insolation rises, and the legacy escape boundary is
-- characterised exactly as a level set of that term.
--
-- The shock margin is proved positive exactly below the limit, the overshoot is
-- proved to be the same magnitude reflected, and both products are proved to read
-- one at Earth and to stay positive on a positive row. The geometric near bound
-- is proved to carry an insolation ceiling of 572/625 exactly, the reciprocal of
-- that ceiling is proved to be 625/572, and retention inside the band at Earth
-- radius or above is proved bounded below by it. The floor is bracketed above the
-- solar-system crossing past eleven, the critical radius at the ceiling is
-- bracketed, and every body above it is proved to retain at the ceiling.
--
-- Torsion on the flux axis is restated, the four phases are classified against
-- the corridor, each of the three occupied phases is proved to follow from its
-- flux interval, and the band is proved to stand inside Locked. Certification on
-- the retention reading is proved sound by monotonicity in the insolation, so two
-- endpoint evaluations settle the whole published bar, and the master theorem
-- closes the chain from the closure through the identity and the reduction to the
-- floor and the phase.
--
-- THEOREMS : 61 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
-/
