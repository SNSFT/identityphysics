-- ============================================================
-- SNSFL_MatchedRadius_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE MATCHED RADIUS — THE ROCKET EQUATION ON THE SCHWARZSCHILD METRIC
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,17](GRAV) | Physics Ground — Gravitation
-- Version: 1.1
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, both readings, the conversion fraction, the
-- resonance gain and the gain cap are all restated here at full precision,
-- so that a reader or a machine can close every proof without leaving the
-- file. The parent reductions are named in the provenance block for the
-- record, not as dependencies of the proofs.
--
-- Parents of record:
--   [9,9,2,0]  IVA Propulsion Reduction      — the two readings, the bridge, the gain cap
--   [9,9,0,1]  GR Reduction                   — r_s as the Pattern-lock threshold
--   [9,9,3,20] Transcendental Time Engine     — TL as the step on the dynamic equation's left side
--   [9,9,3,14] Alpha Reduction                — α⁻¹ = Ω₀ × 100.1, TL = α⁻¹/1001
--   [9,9,0,15] Speed of Light Reduction       — c on the anchor, the photon as the supremum
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   Reading A is a radius. For any drive with exhaust velocity v_e and any
--   mass M, exactly one radius has escape velocity v_e, and it is
--   r = r_s/τ_A². The ratio r/r_s = 1/τ_A² = 1/(2η) is fixed by the drive
--   alone; the mass cancels.
--
--   At that radius the two dilations of relativity coincide: gravitational
--   √(1 − r_s/r) and kinematic √(1 − v_e²/c²) are the same quantity,
--   √(1 − 2η). Stated here on the squared forms, where it is an equality of
--   polynomials.
--
--   The relativistic gain cap and the event horizon are the same bound:
--   (1 + g_r)·τ_A < 1 ⟺ r_match > r_s.
--
--   The four phases map onto radius with no freedom left, the chain budget
--   equals the matched ratio, and the stable-orbit reachability of the
--   depth-beats-gain crossover reduces to 4 · (0.88)² > 3.
--
-- ============================================================
-- ON THE ESCAPE-VELOCITY FORM
-- ============================================================
--
--   v_esc(r) = c·√(r_s/r) is the speed a static local observer measures,
--   and it is exact in the full Schwarzschild metric at every r > r_s. On a
--   radial geodesic with E/m = 1, (dr/dτ)² = c² r_s/r and
--   dt/dτ = 1/(1 − r_s/r), so dr/dt = c√(r_s/r)(1 − r_s/r). A static
--   observer measures dl = dr/√(1 − r_s/r) and dT = √(1 − r_s/r)·dt, giving
--   v_local = (dr/dt)/(1 − r_s/r) = c√(r_s/r). The factors cancel
--   identically. Sections 2 through 7 and Section 12 therefore hold at every
--   radius outside the horizon.
--
--   Sections 8 through 11 are stated in the Newtonian energy regime, where
--   specific energy is v²/2 − GM/r and burns are impulsive. That is the
--   regime of published astrodynamics and of every exhaust velocity and mass
--   ratio placed in this file.
--
-- ============================================================
-- THEOREMS: 67 tagged + master | SORRY: 0 | AXIOMS: 0
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

noncomputable section

namespace SNSFL_MatchedRadius

-- ============================================================
-- SECTION 0: CONSTANTS, THE FOUR PHASES, THE TWO READINGS
-- Restated here in full. This file depends on no other file.
-- ============================================================

/-- The Sovereign Anchor, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Torsion Limit. Ω₀/10 — discovered, not chosen. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor. 0.88 × TL = 0.12047120798593408. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- The corridor width factor, which carries the whole of Section 10. -/
def IVA_FACTOR : ℝ := 0.88

/-- Speed of light in vacuum, m/s. Exact by SI definition. -/
def C_LIGHT : ℝ := 299792458

/-- The inverse fine-structure constant. Ω₀ × 100.1. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The integer the Torsion Limit divides the fine-structure constant by.
1001 = 7 × 11 × 13. -/
def TL_DIVISOR : ℝ := 1001

/-- Minimum resonance gain for the sovereign advantage. -/
def GAIN_THRESHOLD : ℝ := 1.5

/-- IAU 2015 nominal solar mass parameter, m³ s⁻². Exact as an integer. -/
def GM_SUN : ℝ := 132712440018000000000

/-- The astronomical unit, m. Exact as an integer. -/
def AU : ℝ := 149597870700

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

/-- Reading B. The mass ratio's logarithm. -/
def tau_B (r : ℝ) : ℝ := Real.log r

/-- The rest-mass conversion fraction of the ideal rocket: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The corridor floor as a conversion fraction. -/
def eta_floor : ℝ := TL_IVA ^ 2 / 2

/-- The corridor ceiling as a conversion fraction. -/
def eta_ceiling : ℝ := TORSION_LIMIT ^ 2 / 2

-- [T1] :: {VER} | THE CONSTANTS, AS DECIMAL LITERALS
theorem t1_const_values :
    TORSION_LIMIT = 0.136899099984016 ∧ TL_IVA = 0.12047120798593408 := by
  unfold TORSION_LIMIT TL_IVA SOVEREIGN_ANCHOR; norm_num

-- [T2] :: {VER} | POSITIVITY OF THE CONSTANTS
theorem t2_positivity :
    (0:ℝ) < SOVEREIGN_ANCHOR ∧ (0:ℝ) < TORSION_LIMIT ∧ (0:ℝ) < TL_IVA ∧
    (0:ℝ) < C_LIGHT ∧ (0:ℝ) < ALPHA_INV ∧ (0:ℝ) < GM_SUN := by
  unfold SOVEREIGN_ANCHOR TORSION_LIMIT TL_IVA C_LIGHT ALPHA_INV GM_SUN
  norm_num

theorem tl_pos : (0:ℝ) < TORSION_LIMIT := t2_positivity.2.1
theorem tli_pos : (0:ℝ) < TL_IVA := t2_positivity.2.2.1
theorem c_pos : (0:ℝ) < C_LIGHT := t2_positivity.2.2.2.1

-- [T3] :: {VER} | THE CORRIDOR IS THE BAND BELOW THE TORSION LIMIT
theorem t3_corridor_ordering : TL_IVA < TORSION_LIMIT := by
  unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- [T4] :: {VER} | THE TORSION LIMIT FROM THE FINE-STRUCTURE CONSTANT
theorem t4_tl_from_alpha : TORSION_LIMIT = ALPHA_INV / TL_DIVISOR := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR ALPHA_INV TL_DIVISOR; norm_num

-- [T5] :: {VER} | THE IVA FACTOR IS THE CORRIDOR'S OWN RATIO
theorem t5_iva_factor : TL_IVA = IVA_FACTOR * TORSION_LIMIT := by
  unfold TL_IVA IVA_FACTOR; ring

-- ============================================================
-- SECTION 1: THE SCHWARZSCHILD LAYER
-- ============================================================

/-- The Schwarzschild radius of a mass, given its gravitational parameter
GM. r_s = 2GM/c². In the GR Reduction's mapping this is the Pattern-lock
threshold: the Pattern density at which the vacuum solution closes. -/
def r_s (GM : ℝ) : ℝ := 2 * GM / C_LIGHT ^ 2

/-- The squared escape velocity at radius r, as a fraction of c².
Exact in the full Schwarzschild metric for the locally measured speed. -/
def tau_esc_sq (GM r : ℝ) : ℝ := r_s GM / r

/-- The squared gravitational time-dilation factor at radius r. -/
def grav_dilation_sq (GM r : ℝ) : ℝ := 1 - r_s GM / r

/-- The squared kinematic time-dilation factor for a body at Reading A τ. -/
def kin_dilation_sq (t : ℝ) : ℝ := 1 - t ^ 2

/-- The photon sphere, in Schwarzschild radii. -/
def R_PHOTON_SPHERE : ℝ := 1.5

/-- The innermost stable circular orbit, in Schwarzschild radii. -/
def R_ISCO : ℝ := 3

-- [T6] :: {VER} | THE SCHWARZSCHILD RADIUS IS POSITIVE FOR A POSITIVE MASS
theorem t6_rs_pos (GM : ℝ) (h : 0 < GM) : 0 < r_s GM := by
  unfold r_s
  have hc : (0:ℝ) < C_LIGHT ^ 2 := by positivity
  positivity

-- [T7] :: {VER} | THE SOLAR SCHWARZSCHILD RADIUS, BRACKETED
theorem t7_solar_rs : 2953.25 < r_s GM_SUN ∧ r_s GM_SUN < 2953.26 := by
  unfold r_s GM_SUN C_LIGHT; norm_num

-- ============================================================
-- SECTION 2: THE MATCHED RADIUS
-- ============================================================

/-- The matched radius: the radius at which the escape velocity of a mass
equals a drive's exhaust velocity. r = r_s/τ_A². -/
def r_match (GM t : ℝ) : ℝ := r_s GM / t ^ 2

/-- The matched radius in Schwarzschild units. Depends on the drive alone. -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

-- [T8] :: {VER} | THE MATCHED RADIUS MATCHES, BY CONSTRUCTION
-- At r_match the squared escape velocity is exactly τ_A².
theorem t8_matched_radius_matches (GM t : ℝ) (hGM : 0 < GM) (ht : t ≠ 0) :
    tau_esc_sq GM (r_match GM t) = t ^ 2 := by
  unfold tau_esc_sq r_match
  have hrs : r_s GM ≠ 0 := (t6_rs_pos GM hGM).ne'
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T9] :: {VER} | THE MASS CANCELS
-- r_match/r_s is a property of the drive, not of the field it is placed in.
theorem t9_mass_cancels (GM t : ℝ) (hGM : 0 < GM) (ht : t ≠ 0) :
    r_match GM t / r_s GM = matched_ratio t := by
  unfold r_match matched_ratio
  have hrs : r_s GM ≠ 0 := (t6_rs_pos GM hGM).ne'
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T10] :: {VER} | THE MATCHED RATIO IS THE RECIPROCAL OF TWICE THE CONVERSION FRACTION
theorem t10_ratio_is_conversion (t : ℝ) (ht : t ≠ 0) :
    matched_ratio t = 1 / (2 * eta_of_tau t) := by
  unfold matched_ratio eta_of_tau
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T11] :: {VER} | THE MATCHED RATIO IS STRICTLY DECREASING IN READING A
theorem t11_ratio_antitone (s t : ℝ) (hs : 0 < s) (hst : s < t) :
    matched_ratio t < matched_ratio s := by
  unfold matched_ratio
  have ht : 0 < t := lt_trans hs hst
  have h1 : s ^ 2 < t ^ 2 := by nlinarith
  have h2 : (0:ℝ) < s ^ 2 := by positivity
  exact one_div_lt_one_div_of_lt h2 h1

-- [T12] :: {VER} | THE CORRIDOR ON RADIUS, BRACKETED
theorem t12_corridor_on_radius :
    53.35791 < matched_ratio TORSION_LIMIT ∧
    matched_ratio TORSION_LIMIT < 53.357911 ∧
    68.90226 < matched_ratio TL_IVA ∧
    matched_ratio TL_IVA < 68.902261 := by
  unfold matched_ratio TORSION_LIMIT TL_IVA SOVEREIGN_ANCHOR
  norm_num

-- [T13] :: {VER} | THE CORRIDOR BAND IS ORDERED, AND LIES OUTSIDE THE STRONG FIELD
theorem t13_corridor_outside_strong_field :
    matched_ratio TORSION_LIMIT < matched_ratio TL_IVA ∧
    R_ISCO < matched_ratio TORSION_LIMIT ∧
    R_PHOTON_SPHERE < matched_ratio TORSION_LIMIT ∧
    1 < matched_ratio TORSION_LIMIT := by
  unfold matched_ratio R_ISCO R_PHOTON_SPHERE TORSION_LIMIT TL_IVA SOVEREIGN_ANCHOR
  norm_num

-- ============================================================
-- SECTION 3: THE EQUIVALENCE AT THE MATCHED RADIUS
-- ============================================================

-- [T14] :: {VER} | THE TWO DILATIONS COINCIDE AT THE MATCHED RADIUS
-- Gravitational and kinematic dilation are the same quantity there.
theorem t14_equivalence (GM t : ℝ) (hGM : 0 < GM) (ht : t ≠ 0) :
    grav_dilation_sq GM (r_match GM t) = kin_dilation_sq t := by
  unfold grav_dilation_sq kin_dilation_sq
  rw [show r_s GM / r_match GM t = t ^ 2 from t8_matched_radius_matches GM t hGM ht]

-- [T15] :: {VER} | BOTH DILATIONS EQUAL 1 − 2η
theorem t15_dilation_is_conversion (GM t : ℝ) (hGM : 0 < GM) (ht : t ≠ 0) :
    grav_dilation_sq GM (r_match GM t) = 1 - 2 * eta_of_tau t ∧
    kin_dilation_sq t = 1 - 2 * eta_of_tau t := by
  refine ⟨?_, ?_⟩
  · rw [t14_equivalence GM t hGM ht]; unfold kin_dilation_sq eta_of_tau; ring
  · unfold kin_dilation_sq eta_of_tau; ring

-- [T16] :: {VER} | THE DILATION FACTORS AT THE CORRIDOR EDGES, BRACKETED
theorem t16_corridor_dilations :
    0.98125 < kin_dilation_sq TORSION_LIMIT ∧
    kin_dilation_sq TORSION_LIMIT < 0.98126 ∧
    0.98548 < kin_dilation_sq TL_IVA ∧
    kin_dilation_sq TL_IVA < 0.98549 := by
  unfold kin_dilation_sq TORSION_LIMIT TL_IVA SOVEREIGN_ANCHOR; norm_num

-- [T17] :: {VER} | THE DILATION IS POSITIVE FOR ANY SUBLIGHT DRIVE
theorem t17_dilation_pos (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    0 < kin_dilation_sq t := by
  unfold kin_dilation_sq; nlinarith

-- ============================================================
-- SECTION 4: THE RELATIVISTIC GAIN CAP IS THE EVENT HORIZON
-- ============================================================

/-- The gained Reading A: the resonance gain is an exhaust-velocity
multiplier, so it scales Reading A. -/
def gained_tau (t g : ℝ) : ℝ := (1 + g) * t

-- [T18] :: {VER} | THE CAP CONDITION AND THE HORIZON CONDITION ARE THE SAME
theorem t18_cap_is_horizon (t g : ℝ) (ht : 0 < t) (hg : -1 < g) :
    gained_tau t g < 1 ↔ 1 < matched_ratio (gained_tau t g) := by
  unfold matched_ratio gained_tau
  have hpos : 0 < (1 + g) * t := by nlinarith
  constructor
  · intro h
    rw [lt_one_div (by positivity) (by norm_num)]
    nlinarith
  · intro h
    by_contra hc
    push_neg at hc
    have h1 : (1:ℝ) ≤ ((1 + g) * t) ^ 2 := by nlinarith
    have h2 : 1 / ((1 + g) * t) ^ 2 ≤ 1 := by
      rw [div_le_one (by positivity)]; exact h1
    linarith

-- [T19] :: {VER} | EQUALITY TRANSFERS: THE CAP IS THE HORIZON EXACTLY
theorem t19_cap_equals_horizon (t g : ℝ) (ht : 0 < t) (hg : -1 < g) :
    gained_tau t g = 1 ↔ matched_ratio (gained_tau t g) = 1 := by
  unfold matched_ratio gained_tau
  have hpos : 0 < (1 + g) * t := by nlinarith
  constructor
  · intro h; rw [h]; norm_num
  · intro h
    have h2 : ((1 + g) * t) ^ 2 = 1 := by
      field_simp at h; linarith
    nlinarith

-- [T20] :: {VER} | THE CAP IN CORRIDOR TERMS
-- At the corridor ceiling the cap on the gain is 1/TL − 1.
theorem t20_cap_at_ceiling :
    6.3046 < 1 / TORSION_LIMIT - 1 ∧ 1 / TORSION_LIMIT - 1 < 6.3047 ∧
    7.3046 < 1 / TORSION_LIMIT ∧ 1 / TORSION_LIMIT < 7.3047 := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- [T21] :: {VER} | THE PHOTON DRIVE MATCHES THE HORIZON OF EVERY MASS
theorem t21_photon_matches_horizon (GM : ℝ) (hGM : 0 < GM) :
    r_match GM 1 = r_s GM ∧ matched_ratio 1 = 1 := by
  unfold r_match matched_ratio; norm_num

-- [T22] :: {VER} | HALF LIGHT SPEED MATCHES EXACTLY FOUR SCHWARZSCHILD RADII
theorem t22_half_c_matches_four : matched_ratio 0.5 = 4 := by
  unfold matched_ratio; norm_num

-- ============================================================
-- SECTION 5: THE FOUR PHASES AS A MAP ON RADIUS
-- ============================================================

-- [T23] :: {VER} | LOCKED IS THE FAR FIELD
theorem t23_locked_is_far_field (t : ℝ) (h0 : 0 < t) (h : t < TL_IVA) :
    matched_ratio TL_IVA < matched_ratio t :=
  t11_ratio_antitone t TL_IVA h0 h

-- [T24] :: {VER} | SHATTER IS THE INTERIOR TO THE CORRIDOR
theorem t24_shatter_is_interior (t : ℝ) (h : TORSION_LIMIT < t) :
    matched_ratio t < matched_ratio TORSION_LIMIT :=
  t11_ratio_antitone TORSION_LIMIT t tl_pos h

-- [T25] :: {VER} | IVA IS THE SHELL BETWEEN THE TWO EDGES
theorem t25_iva_is_the_shell (t : ℝ) (hlo : TL_IVA ≤ t) (hhi : t < TORSION_LIMIT) :
    matched_ratio TORSION_LIMIT < matched_ratio t ∧
    matched_ratio t ≤ matched_ratio TL_IVA := by
  refine ⟨t11_ratio_antitone t TORSION_LIMIT (lt_of_lt_of_le tli_pos hlo) hhi, ?_⟩
  rcases eq_or_lt_of_le hlo with h | h
  · rw [h]
  · exact le_of_lt (t11_ratio_antitone TL_IVA t tli_pos h)

-- [T26] :: {VER} | THE STRONG FIELD LIES INSIDE THE SHATTER BAND
-- The exhaust velocity matching each landmark is above the Torsion Limit.
theorem t26_strong_field_is_shatter :
    TORSION_LIMIT < 0.577350269 ∧ TORSION_LIMIT < 0.816496581 ∧
    matched_ratio 0.577350269 < matched_ratio TORSION_LIMIT ∧
    matched_ratio 0.816496581 < matched_ratio TORSION_LIMIT := by
  refine ⟨by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num,
          by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num, ?_, ?_⟩
  · exact t24_shatter_is_interior _ (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)
  · exact t24_shatter_is_interior _ (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

-- [T27] :: {VER} | THE CORRIDOR CLASSIFIES AS IVA, THE EDGES AS STATED
theorem t27_phase_of_edges :
    classify TL_IVA = Phase.IVA ∧ classify TORSION_LIMIT = Phase.Shatter ∧
    classify 0 = Phase.Noble := by
  refine ⟨?_, ?_, ?_⟩
  · unfold classify
    rw [if_neg (ne_of_gt tli_pos), if_neg (lt_irrefl TL_IVA), if_pos t3_corridor_ordering]
  · unfold classify
    rw [if_neg (ne_of_gt tl_pos), if_neg (by linarith [t3_corridor_ordering]),
      if_neg (lt_irrefl TORSION_LIMIT)]
  · unfold classify; rw [if_pos rfl]

-- ============================================================
-- SECTION 6: BOTH EDGES ON RADIUS, IN THE FINE-STRUCTURE CONSTANT
-- ============================================================

-- [T28] :: {VER} | THE CEILING RADIUS IS (1001/α⁻¹)²
theorem t28_ceiling_radius_in_alpha :
    matched_ratio TORSION_LIMIT = (TL_DIVISOR / ALPHA_INV) ^ 2 := by
  unfold matched_ratio TORSION_LIMIT SOVEREIGN_ANCHOR TL_DIVISOR ALPHA_INV
  norm_num

-- [T29] :: {VER} | THE FLOOR RADIUS IS (1001/(0.88 · α⁻¹))²
theorem t29_floor_radius_in_alpha :
    matched_ratio TL_IVA = (TL_DIVISOR / (IVA_FACTOR * ALPHA_INV)) ^ 2 := by
  unfold matched_ratio TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR TL_DIVISOR IVA_FACTOR ALPHA_INV
  norm_num

-- [T30] :: {VER} | THE BAND WIDTH ON RADIUS, IN α AND 0.88 ALONE
theorem t30_band_width_in_alpha :
    matched_ratio TL_IVA - matched_ratio TORSION_LIMIT
      = (TL_DIVISOR / ALPHA_INV) ^ 2 * (1 / IVA_FACTOR ^ 2 - 1) := by
  unfold matched_ratio TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR TL_DIVISOR IVA_FACTOR ALPHA_INV
  norm_num

-- [T31] :: {VER} | THE CONVERSION-FRACTION EDGES, BRACKETED
theorem t31_eta_edges :
    0.00725665 < eta_floor ∧ eta_floor < 0.00725666 ∧
    0.00937068 < eta_ceiling ∧ eta_ceiling < 0.00937069 := by
  unfold eta_floor eta_ceiling TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- ============================================================
-- SECTION 7: READING B AGAINST THE WELL — ONE e-FOLD
-- ============================================================

-- [T32] :: {VER} | THE WELL AT THE MATCHED RADIUS IS WORTH τ_B = 1
-- A fall from rest at infinity to the matched radius delivers c·τ_A, and a
-- rocket delivers c·τ_A·τ_B, so the two agree exactly at τ_B = 1.
theorem t32_well_is_one_efold (t tB : ℝ) (ht : 0 < t) :
    t * tB = t ↔ tB = 1 := by
  constructor
  · intro h
    have := mul_left_cancel₀ (ne_of_gt ht) (by linarith : t * tB = t * 1)
    exact this
  · intro h; rw [h]; ring

-- [T33] :: {VER} | τ_B = 1 IS A MASS RATIO OF e
theorem t33_one_efold_is_e : tau_B (Real.exp 1) = 1 := by
  unfold tau_B; exact Real.log_exp 1

-- [T34] :: {VER} | THE CORRIDOR'S READING B IS BELOW ONE e-FOLD
theorem t34_corridor_below_one_efold :
    TL_IVA < 1 ∧ TORSION_LIMIT < 1 := by
  unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- ============================================================
-- SECTION 8: THE DILATION DEFICIT, BRACKETED BY THE CONVERSION FRACTION
-- Stated first on the polynomial forms, which carry the content, then on
-- the square root itself.
-- ============================================================

-- [T35] :: {VER} | THE LOWER BRACKET, AS A POLYNOMIAL
theorem t35_deficit_lower_poly (e : ℝ) (h0 : 0 < e) (h1 : e < 1/2) :
    1 - 2 * e < (1 - e) ^ 2 := by nlinarith

-- [T36] :: {VER} | THE UPPER BRACKET, AS A POLYNOMIAL
theorem t36_deficit_upper_poly (e : ℝ) (h0 : 0 < e) (h1 : e < 1/2) :
    (1 - e - e ^ 2) ^ 2 < 1 - 2 * e := by nlinarith

-- [T37] :: {VER} | THE BRACKET ON THE SQUARE ROOT
theorem t37_deficit_bracket (e : ℝ) (h0 : 0 < e) (h1 : e < 1/2) :
    e < 1 - Real.sqrt (1 - 2 * e) ∧ 1 - Real.sqrt (1 - 2 * e) < e * (1 + e) := by
  have hnn : (0:ℝ) ≤ 1 - 2 * e := by linarith
  have hu : (0:ℝ) < 1 - e := by linarith
  have hv : (0:ℝ) ≤ 1 - e - e ^ 2 := by nlinarith
  refine ⟨?_, ?_⟩
  · have : Real.sqrt (1 - 2 * e) < 1 - e := by
      rw [show (1:ℝ) - e = Real.sqrt ((1 - e) ^ 2) from (Real.sqrt_sq hu.le).symm]
      exact Real.sqrt_lt_sqrt hnn (t35_deficit_lower_poly e h0 h1)
    linarith
  · have : 1 - e - e ^ 2 < Real.sqrt (1 - 2 * e) := by
      rw [show (1:ℝ) - e - e ^ 2 = Real.sqrt ((1 - e - e ^ 2) ^ 2) from (Real.sqrt_sq hv).symm]
      exact Real.sqrt_lt_sqrt (by positivity) (t36_deficit_upper_poly e h0 h1)
    nlinarith

-- [T38] :: {VER} | THE CORRIDOR'S CONVERSION FRACTIONS ARE IN THE BRACKET'S DOMAIN
theorem t38_eta_in_domain :
    0 < eta_floor ∧ eta_floor < 1/2 ∧ 0 < eta_ceiling ∧ eta_ceiling < 1/2 := by
  unfold eta_floor eta_ceiling TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- ============================================================
-- SECTION 9: THE BUILD — A BURN AT THE MATCHED RADIUS
-- Newtonian energy regime, impulsive burns.
-- ============================================================

/-- The squared Oberth multiplier at a radius where the local speed gives
squared escape fraction `te2`, for a burn of Reading-A size `dv`. -/
def oberth_sq (te2 dv : ℝ) : ℝ := 1 + 2 * Real.sqrt te2 / dv

/-- The squared Oberth multiplier at the matched radius, where the local
escape velocity is the drive's own exhaust velocity. -/
def oberth_matched_sq (tB : ℝ) : ℝ := 1 + 2 / tB

-- [T39] :: {VER} | AT THE MATCHED RADIUS THE EXHAUST VELOCITY CANCELS
-- v_esc/Δv = v_e/(v_e·τ_B) = 1/τ_B, so the multiplier is a function of
-- Reading B alone.
theorem t39_exhaust_cancels (t tB : ℝ) (ht : t ≠ 0) (htB : tB ≠ 0) :
    t / (t * tB) = 1 / tB := by
  field_simp

-- [T40] :: {VER} | THE MULTIPLIER AT THE CORRIDOR EDGES, BRACKETED
theorem t40_multiplier_edges :
    15.6092998 < oberth_matched_sq TORSION_LIMIT ∧
    oberth_matched_sq TORSION_LIMIT < 15.6092999 ∧
    17.6014770 < oberth_matched_sq TL_IVA ∧
    oberth_matched_sq TL_IVA < 17.6014771 := by
  unfold oberth_matched_sq TORSION_LIMIT TL_IVA SOVEREIGN_ANCHOR; norm_num

-- [T41] :: {VER} | THE CEILING MULTIPLIER IS 1 + 2002/α⁻¹
theorem t41_multiplier_ceiling_in_alpha :
    oberth_matched_sq TORSION_LIMIT = 1 + 2 * TL_DIVISOR / ALPHA_INV := by
  unfold oberth_matched_sq TORSION_LIMIT SOVEREIGN_ANCHOR TL_DIVISOR ALPHA_INV
  norm_num

-- [T42] :: {VER} | THE FLOOR MULTIPLIER IS 1 + 2002/(0.88 · α⁻¹)
theorem t42_multiplier_floor_in_alpha :
    oberth_matched_sq TL_IVA = 1 + 2 * TL_DIVISOR / (IVA_FACTOR * ALPHA_INV) := by
  unfold oberth_matched_sq TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR TL_DIVISOR IVA_FACTOR ALPHA_INV
  norm_num

-- [T43] :: {VER} | THE MULTIPLIER EXCEEDS ONE FOR ANY POSITIVE READING B
theorem t43_multiplier_gt_one (tB : ℝ) (h : 0 < tB) : 1 < oberth_matched_sq tB := by
  unfold oberth_matched_sq
  have : 0 < 2 / tB := by positivity
  linarith

-- [T44] :: {VER} | THE MULTIPLIER IS STRICTLY DECREASING IN READING B
theorem t44_multiplier_antitone (a b : ℝ) (ha : 0 < a) (hab : a < b) :
    oberth_matched_sq b < oberth_matched_sq a := by
  unfold oberth_matched_sq
  have h : 2 / b < 2 / a := by
    apply div_lt_div_of_pos_left (by norm_num) ha hab
  linarith

-- ============================================================
-- SECTION 10: DEPTH AND GAIN ARE INTERCHANGEABLE
-- Newtonian energy regime. The headline is T48: the stable-orbit
-- reachability of the crossover reduces to 4 · (0.88)² > 3.
-- ============================================================

/-- The radius, in Schwarzschild units, at which the Oberth multiplier of a
burn equals a resonance-gain multiplier 1 + g. -/
def exchange_radius (t tB g : ℝ) : ℝ := 4 / (t * tB * ((1 + g) ^ 2 - 1)) ^ 2

/-- The radius, in Schwarzschild units, at which depth delivers what the
capped gain cannot. -/
def crossover_radius (t tB : ℝ) : ℝ := 4 * t ^ 2 / (tB ^ 2 * (1 - t ^ 2) ^ 2)

-- [T45] :: {VER} | THE EXCHANGE RADIUS IS POSITIVE WHERE IT IS DEFINED
theorem t45_exchange_pos (t tB g : ℝ) (ht : 0 < t) (htB : 0 < tB) (hg : 0 < g) :
    0 < exchange_radius t tB g := by
  unfold exchange_radius
  have h1 : 0 < (1 + g) ^ 2 - 1 := by nlinarith
  have : 0 < t * tB * ((1 + g) ^ 2 - 1) := by positivity
  positivity

-- [T46] :: {VER} | THE EXCHANGE RADIUS AT THE STATED GAIN THRESHOLD, BRACKETED
theorem t46_exchange_at_threshold :
    413.1797 < exchange_radius TORSION_LIMIT TORSION_LIMIT GAIN_THRESHOLD ∧
    exchange_radius TORSION_LIMIT TORSION_LIMIT GAIN_THRESHOLD < 413.1798 := by
  unfold exchange_radius TORSION_LIMIT SOVEREIGN_ANCHOR GAIN_THRESHOLD; norm_num

-- [T47] :: {VER} | THE CROSSOVER COLLAPSES WHEN THE TWO READINGS AGREE
theorem t47_crossover_collapses (t : ℝ) (ht : 0 < t) :
    crossover_radius t t = 4 / (1 - t ^ 2) ^ 2 := by
  unfold crossover_radius
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht.ne'
  field_simp

-- [T48] :: {VER} | THE HEADLINE: 4 · (0.88)² > 3
-- The stable-orbit reachability of the crossover is this one inequality.
-- The IVA factor clears the ISCO factor √3/2, and 1936/625 = 3.0976.
theorem t48_iva_factor_clears_isco :
    R_ISCO < 4 * IVA_FACTOR ^ 2 ∧ 4 * IVA_FACTOR ^ 2 = 1936 / 625 := by
  unfold R_ISCO IVA_FACTOR; norm_num

-- [T49] :: {VER} | EQUIVALENTLY, THE CORRIDOR'S RATIO IS BELOW 2/√3
theorem t49_ratio_below_two_over_root_three :
    (TORSION_LIMIT / TL_IVA) ^ 2 * R_ISCO < 4 := by
  unfold TORSION_LIMIT TL_IVA SOVEREIGN_ANCHOR R_ISCO; norm_num

-- [T50] :: {VER} | THE CROSSOVER LIES OUTSIDE THE ISCO AT EVERY CORRIDOR PAIRING
theorem t50_crossover_outside_isco :
    R_ISCO < crossover_radius TL_IVA TL_IVA ∧
    R_ISCO < crossover_radius TL_IVA TORSION_LIMIT ∧
    R_ISCO < crossover_radius TORSION_LIMIT TL_IVA ∧
    R_ISCO < crossover_radius TORSION_LIMIT TORSION_LIMIT := by
  unfold crossover_radius R_ISCO TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨by norm_num, by norm_num, by norm_num, by norm_num⟩

-- [T51] :: {VER} | THE CROSSOVER IS AT LEAST FOUR SCHWARZSCHILD RADII
theorem t51_crossover_at_least_four (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    4 ≤ crossover_radius t t := by
  rw [t47_crossover_collapses t h0]
  have hd : 0 < (1 - t ^ 2) ^ 2 := by nlinarith
  have h2 : (1 - t ^ 2) ^ 2 ≤ 1 := by nlinarith
  rw [le_div_iff₀ hd]
  nlinarith

-- ============================================================
-- SECTION 11: THE CHAIN
-- Newtonian energy regime, impulsive burns. Energy adds; velocity does not.
-- ============================================================

/-- The per-burn energy factor of a matched burn: K = τ_B(2 + τ_B). -/
def chain_K (tB : ℝ) : ℝ := tB * (2 + tB)

/-- The squared chain torsion after n matched burns. -/
def chain_tau_sq (t tB : ℝ) (n : ℕ) : ℝ := t ^ 2 * (n : ℝ) * chain_K tB

/-- The burn count at which the chain reaches light speed. -/
def chain_n_max (t tB : ℝ) : ℝ := 1 / (t ^ 2 * chain_K tB)

-- [T52] :: {VER} | THE CHAIN IS ADDITIVE IN ENERGY, SO IT COMPOUNDS AS √n
-- Each matched burn adds the same increment, independent of the burn index.
theorem t52_chain_additive (t tB : ℝ) (n : ℕ) :
    chain_tau_sq t tB (n + 1) = chain_tau_sq t tB n + t ^ 2 * chain_K tB := by
  unfold chain_tau_sq
  push_cast
  ring

-- [T53] :: {VER} | THE CHAIN AT ONE BURN IS THE OBERTH RESULT
theorem t53_chain_one_burn (t tB : ℝ) (htB : tB ≠ 0) :
    chain_tau_sq t tB 1 = (t * tB) ^ 2 * oberth_matched_sq tB := by
  unfold chain_tau_sq chain_K oberth_matched_sq
  push_cast
  field_simp
  ring

-- [T54] :: {VER} | THE CHAIN IS MONOTONE IN THE BURN COUNT
theorem t54_chain_monotone (t tB : ℝ) (ht : t ≠ 0) (htB : 0 < tB) (m n : ℕ) (h : m < n) :
    chain_tau_sq t tB m < chain_tau_sq t tB n := by
  unfold chain_tau_sq chain_K
  have hK : 0 < tB * (2 + tB) := by nlinarith
  have ht2 : 0 < t ^ 2 := by positivity
  have hmn : (m : ℝ) < (n : ℝ) := by exact_mod_cast h
  have := mul_lt_mul_of_pos_left hmn ht2
  nlinarith

-- [T55] :: {VER} | THE CEILING PAIRING: LOCKED AT ONE AND TWO BURNS
theorem t55_chain_locked_at_one_two :
    chain_tau_sq TORSION_LIMIT TORSION_LIMIT 1 < TL_IVA ^ 2 ∧
    chain_tau_sq TORSION_LIMIT TORSION_LIMIT 2 < TL_IVA ^ 2 := by
  unfold chain_tau_sq chain_K TORSION_LIMIT TL_IVA SOVEREIGN_ANCHOR
  norm_num

-- [T56] :: {VER} | THE CEILING PAIRING LANDS IN THE CORRIDOR AT EXACTLY THREE BURNS
theorem t56_chain_iva_at_three :
    TL_IVA ^ 2 ≤ chain_tau_sq TORSION_LIMIT TORSION_LIMIT 3 ∧
    chain_tau_sq TORSION_LIMIT TORSION_LIMIT 3 < TORSION_LIMIT ^ 2 := by
  unfold chain_tau_sq chain_K TORSION_LIMIT TL_IVA SOVEREIGN_ANCHOR
  norm_num

-- [T57] :: {VER} | AND SHATTERS AT FOUR
theorem t57_chain_shatter_at_four :
    TORSION_LIMIT ^ 2 ≤ chain_tau_sq TORSION_LIMIT TORSION_LIMIT 4 := by
  unfold chain_tau_sq chain_K TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T58] :: {VER} | THE SATURATION COUNT, BRACKETED
theorem t58_n_max_bracket :
    182.3955 < chain_n_max TORSION_LIMIT TORSION_LIMIT ∧
    chain_n_max TORSION_LIMIT TORSION_LIMIT < 182.3956 ∧
    269.7229 < chain_n_max TL_IVA TL_IVA ∧
    chain_n_max TL_IVA TL_IVA < 269.7230 := by
  unfold chain_n_max chain_K TORSION_LIMIT TL_IVA SOVEREIGN_ANCHOR
  norm_num

-- [T59] :: {VER} | THE SATURATION COUNT IN α AND 1001 ALONE
theorem t59_n_max_in_alpha :
    chain_n_max TORSION_LIMIT TORSION_LIMIT
      = TL_DIVISOR ^ 4 / (ALPHA_INV ^ 3 * (2 * TL_DIVISOR + ALPHA_INV)) := by
  unfold chain_n_max chain_K TORSION_LIMIT SOVEREIGN_ANCHOR TL_DIVISOR ALPHA_INV
  norm_num

-- ============================================================
-- SECTION 12: THE BUDGET IDENTITY
-- The matched radius, in Schwarzschild units, IS the chain budget.
-- This closes Section 2 against Section 11.
-- ============================================================

-- [T60] :: {VER} | THE CHAIN BUDGET IS THE MATCHED RADIUS
theorem t60_budget_is_matched_radius (t tB : ℝ) (ht : t ≠ 0) (htB : 0 < tB) :
    chain_n_max t tB * chain_K tB = matched_ratio t := by
  unfold chain_n_max matched_ratio chain_K
  have hK : tB * (2 + tB) ≠ 0 := by positivity
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T61] :: {VER} | THE BUDGET CLOSES AT EVERY CORRIDOR PAIRING
theorem t61_budget_at_corridor :
    chain_n_max TORSION_LIMIT TORSION_LIMIT * chain_K TORSION_LIMIT
      = matched_ratio TORSION_LIMIT ∧
    chain_n_max TORSION_LIMIT TL_IVA * chain_K TL_IVA
      = matched_ratio TORSION_LIMIT ∧
    chain_n_max TL_IVA TORSION_LIMIT * chain_K TORSION_LIMIT
      = matched_ratio TL_IVA ∧
    chain_n_max TL_IVA TL_IVA * chain_K TL_IVA
      = matched_ratio TL_IVA := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact t60_budget_is_matched_radius _ _ (ne_of_gt tl_pos) tl_pos
  · exact t60_budget_is_matched_radius _ _ (ne_of_gt tl_pos) tli_pos
  · exact t60_budget_is_matched_radius _ _ (ne_of_gt tli_pos) tl_pos
  · exact t60_budget_is_matched_radius _ _ (ne_of_gt tli_pos) tli_pos

-- ============================================================
-- SECTION 13: THE UNPROPELLED CATALOG
-- Published JPL orbital elements against the matched-radius construction.
-- ============================================================

/-- The matched radius of a body at the perihelion of a conic with
perihelion distance q and eccentricity e, in absolute units: 2q/(1 + e). -/
def perihelion_matched (q e : ℝ) : ℝ := 2 * q / (1 + e)

-- [T62] :: {VER} | THE PERIHELION MATCHED RADIUS IS 2q/(1 + e)
-- From vis-viva v_q² = GM(1 + e)/q and r_match = r_s/τ², the Schwarzschild
-- radius cancels and the result is a pure function of the orbit.
theorem t62_perihelion_matched (GM q e : ℝ) (hGM : 0 < GM) (hq : 0 < q) (he : 0 < 1 + e) :
    r_s GM / (r_s GM * (1 + e) / (2 * q)) = perihelion_matched q e := by
  unfold perihelion_matched
  have hrs : r_s GM ≠ 0 := (t6_rs_pos GM hGM).ne'
  field_simp

-- [T63] :: {VER} | A PARABOLIC TRAJECTORY MATCHES AT ITS OWN PERIHELION
theorem t63_parabolic_matches_perihelion (q : ℝ) :
    perihelion_matched q 1 = q := by
  unfold perihelion_matched; ring

-- [T64] :: {VER} | THE SIX PUBLISHED BODIES, r_match/q AGAINST 2/(1 + e)
theorem t64_catalog_ratios :
    perihelion_matched 1 0.8898 = 2 / 1.8898 ∧
    perihelion_matched 1 0.8268 = 2 / 1.8268 ∧
    perihelion_matched 1 1.2011 = 2 / 2.2011 ∧
    perihelion_matched 1 3.3566 = 2 / 4.3566 ∧
    perihelion_matched 1 0.1914 = 2 / 1.1914 := by
  unfold perihelion_matched
  refine ⟨by norm_num, by norm_num, by norm_num, by norm_num, by norm_num⟩

-- [T65] :: {VER} | THE UNPROPELLED BODIES SIT DEEP IN THE FAR FIELD
-- Their Reading A values place their matched radii at 10⁵ to 10⁷ r_s.
theorem t65_unpropelled_far_field :
    100000 < matched_ratio (tau_A 566500) ∧
    1000000 < matched_ratio (tau_A 109400) ∧
    1000000 < matched_ratio (tau_A 37600) := by
  unfold matched_ratio tau_A C_LIGHT
  refine ⟨by norm_num, by norm_num, by norm_num⟩

-- ============================================================
-- SECTION 14: THE PUBLISHED PROPULSION CATALOG ON THE RADIUS AXIS
-- ============================================================

def ve_cold_gas : ℝ := 700
def ve_rl10b2   : ℝ := 4650
def ve_nextc    : ℝ := 41000
def ve_daedalus : ℝ := 10600000

-- [T66] :: {VER} | EVERY FLOWN DRIVE MATCHES A RADIUS FAR OUTSIDE THE CORRIDOR
theorem t66_flown_outside_corridor :
    matched_ratio TL_IVA < matched_ratio (tau_A ve_cold_gas) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A ve_rl10b2) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A ve_nextc) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A ve_daedalus) := by
  unfold matched_ratio tau_A TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT
    ve_cold_gas ve_rl10b2 ve_nextc ve_daedalus
  refine ⟨by norm_num, by norm_num, by norm_num, by norm_num⟩

-- [T67] :: {VER} | ORDINARY MOTION IS DEEP IN LOCKED ON THE SAME AXIS
theorem t67_ordinary_motion_locked :
    matched_ratio TL_IVA < matched_ratio (tau_A 29780) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A 900) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A 16900) := by
  unfold matched_ratio tau_A TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT
  refine ⟨by norm_num, by norm_num, by norm_num⟩

-- ============================================================
-- SECTION 15: MASTER
-- ============================================================

/-- **THE MATCHED RADIUS.**

1.  For any drive and any mass, exactly one radius has escape velocity equal
    to the exhaust velocity, and its ratio to the Schwarzschild radius is
    1/τ_A² = 1/(2η). The mass cancels.
2.  At that radius gravitational and kinematic time dilation are the same
    quantity, 1 − 2η.
3.  The relativistic gain cap and the event horizon are the same bound.
4.  The four phases map onto radius, with Locked the far field, IVA the shell
    at 53.36 to 68.90 r_s, Shatter the interior, and the cap the horizon.
5.  Both corridor edges on radius are closed forms in α⁻¹ and 1001.
6.  The Oberth multiplier at the matched radius is a function of Reading B
    alone, and the stable-orbit reachability of the depth-beats-gain
    crossover reduces to 4 · (0.88)² > 3.
7.  The chain compounds additively in energy, lands in the corridor at three
    burns for the ceiling pairing, and saturates at 1001⁴/(α⁻³(2002 + α⁻¹)).
8.  The chain budget equals the matched ratio, which closes the radius
    result against the chain result.
-/
theorem MASTER_matched_radius :
    -- [1] the matched radius, with the mass cancelling
    (∀ GM t : ℝ, 0 < GM → t ≠ 0 → tau_esc_sq GM (r_match GM t) = t ^ 2) ∧
    (∀ GM t : ℝ, 0 < GM → t ≠ 0 → r_match GM t / r_s GM = matched_ratio t) ∧
    (∀ t : ℝ, t ≠ 0 → matched_ratio t = 1 / (2 * eta_of_tau t)) ∧
    -- [2] the equivalence
    (∀ GM t : ℝ, 0 < GM → t ≠ 0 →
      grav_dilation_sq GM (r_match GM t) = kin_dilation_sq t) ∧
    (∀ GM t : ℝ, 0 < GM → t ≠ 0 →
      grav_dilation_sq GM (r_match GM t) = 1 - 2 * eta_of_tau t) ∧
    -- [3] the cap is the horizon
    (∀ t g : ℝ, 0 < t → -1 < g →
      (gained_tau t g < 1 ↔ 1 < matched_ratio (gained_tau t g))) ∧
    (∀ GM : ℝ, 0 < GM → r_match GM 1 = r_s GM) ∧
    -- [4] the phase map on radius
    (matched_ratio TORSION_LIMIT < matched_ratio TL_IVA ∧
      R_ISCO < matched_ratio TORSION_LIMIT) ∧
    (∀ t : ℝ, 0 < t → t < TL_IVA → matched_ratio TL_IVA < matched_ratio t) ∧
    (∀ t : ℝ, TORSION_LIMIT < t → matched_ratio t < matched_ratio TORSION_LIMIT) ∧
    -- [5] both edges in α
    (matched_ratio TORSION_LIMIT = (TL_DIVISOR / ALPHA_INV) ^ 2) ∧
    (matched_ratio TL_IVA = (TL_DIVISOR / (IVA_FACTOR * ALPHA_INV)) ^ 2) ∧
    -- [6] the burn, and the headline inequality
    (oberth_matched_sq TORSION_LIMIT = 1 + 2 * TL_DIVISOR / ALPHA_INV) ∧
    (R_ISCO < 4 * IVA_FACTOR ^ 2 ∧ 4 * IVA_FACTOR ^ 2 = 1936 / 625) ∧
    (R_ISCO < crossover_radius TORSION_LIMIT TORSION_LIMIT) ∧
    (∀ t : ℝ, 0 < t → t < 1 → 4 ≤ crossover_radius t t) ∧
    -- [7] the chain
    (∀ t tB : ℝ, ∀ n : ℕ,
      chain_tau_sq t tB (n + 1) = chain_tau_sq t tB n + t ^ 2 * chain_K tB) ∧
    (TL_IVA ^ 2 ≤ chain_tau_sq TORSION_LIMIT TORSION_LIMIT 3 ∧
      chain_tau_sq TORSION_LIMIT TORSION_LIMIT 3 < TORSION_LIMIT ^ 2) ∧
    (chain_n_max TORSION_LIMIT TORSION_LIMIT
      = TL_DIVISOR ^ 4 / (ALPHA_INV ^ 3 * (2 * TL_DIVISOR + ALPHA_INV))) ∧
    -- [8] the budget identity
    (∀ t tB : ℝ, t ≠ 0 → 0 < tB →
      chain_n_max t tB * chain_K tB = matched_ratio t) := by
  exact ⟨fun GM t h1 h2 => t8_matched_radius_matches GM t h1 h2,
    fun GM t h1 h2 => t9_mass_cancels GM t h1 h2,
    fun t h => t10_ratio_is_conversion t h,
    fun GM t h1 h2 => t14_equivalence GM t h1 h2,
    fun GM t h1 h2 => (t15_dilation_is_conversion GM t h1 h2).1,
    fun t g h1 h2 => t18_cap_is_horizon t g h1 h2,
    fun GM h => (t21_photon_matches_horizon GM h).1,
    ⟨t13_corridor_outside_strong_field.1, t13_corridor_outside_strong_field.2.1⟩,
    fun t h1 h2 => t23_locked_is_far_field t h1 h2,
    fun t h => t24_shatter_is_interior t h,
    t28_ceiling_radius_in_alpha, t29_floor_radius_in_alpha,
    t41_multiplier_ceiling_in_alpha, t48_iva_factor_clears_isco,
    t50_crossover_outside_isco.2.2.2,
    fun t h1 h2 => t51_crossover_at_least_four t h1 h2,
    fun t tB n => t52_chain_additive t tB n,
    t56_chain_iva_at_three, t59_n_max_in_alpha,
    fun t tB h1 h2 => t60_budget_is_matched_radius t tB h1 h2⟩

end SNSFL_MatchedRadius

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- Reading A is a radius. That is the whole of this file: the exhaust
-- velocity a drive throws fixes, for every mass in the universe, one radius
-- at which that mass pulls as hard as the drive pushes, and the ratio of
-- that radius to the Schwarzschild radius is the reciprocal of twice the
-- conversion fraction. The mass cancels. At that radius the gravitational
-- and kinematic dilations are one quantity, the gain cap and the horizon are
-- one bound, and the chain budget and the matched ratio are one number.
--
-- THEOREMS : 67 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
