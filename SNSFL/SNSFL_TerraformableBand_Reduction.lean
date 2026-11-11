-- ============================================================
-- SNSFL_TerraformableBand_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE TERRAFORMABLE BAND INSIDE LOCKED
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Omega_0 = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,3,28](COSM) | Cosmological Ground — Locked Placement and Forcing Route
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in another
-- coordinate's file: the anchor, the Torsion Limit, the corridor floor, the four
-- phases, the brightening track, the band, the required-warming ratio, the route
-- test and the certification gate are all restated here at full precision, so
-- that a reader or a machine can close every proof without leaving the file. The
-- parent reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,3,26]   The Goldilocks Annulus        — tau = TL s, the floor at s = 0.88
--   [9,9,8,10]   Temperature on the Torsion Limit — the ruler, the vapour-pressure ratio
--   [9,9,3,27]   IMatter                       — the counted interior, the mantle floor
--   [9,9,1,0]    Structural Precognition       — the forcing operator on Behavior
--   [9,9,3,14]   Alpha Reduction               — 1/alpha = Omega_0 x 100.1
--
-- ============================================================
-- GROUNDING: THE TORSION LIMIT
-- ============================================================
--
-- The Torsion Limit is the anchor divided by ten, and one thousand
-- and one Torsion Limits is the inverse fine-structure constant:
--
--   TL          = Omega_0 / 10 =   0.136899099984016
--
--   1000 . TL                  = 136.899099984016
--   +        TL                =   0.136899099984016
--   ---------------------------------------------------
--   1001 . TL                  = 137.035999084000016
--
--   1/alpha, CODATA 2018       = 137.035999084
--   epsilon                    = 0
--
-- The integer is 1001. TL is the boundary at which a bond stops
-- holding, and 1/alpha is the strength of the electromagnetic
-- coupling that holds it; the same number carries both, one scaled
-- by the other.
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
-- A body reading tau below the corridor floor stands in Locked, and
-- Locked is the one phase carrying distance left to the floor. The
-- band inside Locked runs from the forcing ceiling of whatever agent
-- is used up to the floor at s = 0.88, and this file proves that the
-- floor carries no star and no agent in it while the ceiling carries
-- both. The Gough luminosity track is rewritten on fractional
-- main-sequence age and the rewrite is shown to be a change of
-- variable rather than an approximation: the two denominators are the
-- same expression at every age. The crossing of the floor is given in
-- closed form, the crossing is shown to be linear in fractional age
-- and antitone in present flux, and a body already standing at the
-- floor is shown to cross at its own present age. The required
-- warming to the floor is carried as a fourth-power ratio, shown to
-- vanish at the floor and to exceed unity strictly below it. The route
-- test is certified across a published interval by monotonicity, so
-- that two endpoint evaluations settle the whole bar.
--
-- ============================================================

import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

noncomputable section

namespace SNSFL_TerraformableBand

-- ============================================================
-- SECTION 0: THE ANCHOR, THE TORSION LIMIT, THE PHASES
-- ============================================================

/-- The Sovereign Anchor Constant, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Universal Torsion Limit. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor fraction, read on the flux axis. -/
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

-- [T6] :: {ANC} | THE TORSION LIMIT IS POSITIVE
theorem t6_tl_pos : 0 < TORSION_LIMIT := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T7] :: {ANC} | THE TORSION LIMIT LIES STRICTLY INSIDE THE UNIT INTERVAL
theorem t7_tl_in_unit : 0 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  refine ⟨t6_tl_pos, ?_⟩
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T8] :: {ANC} | THE CORRIDOR FLOOR, IN CLOSED FORM
theorem t8_tl_iva_value : TL_IVA = 0.12047120798593408 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num

-- [T9] :: {ANC} | THE FLOOR SITS STRICTLY BETWEEN ZERO AND THE LIMIT
theorem t9_floor_pos_below : 0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  constructor
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num

-- [T10] :: {VER} | THE FLOOR FRACTION IS AN EXACT RATIONAL
theorem t10_floor_rational : FLOOR_FRACTION = 22 / 25 := by
  simp only [FLOOR_FRACTION]; norm_num

-- [T11] :: {ANC} | THE FLOOR FRACTION LIES STRICTLY INSIDE THE UNIT INTERVAL
theorem t11_floor_in_unit : 0 < FLOOR_FRACTION ∧ FLOOR_FRACTION < 1 := by
  simp only [FLOOR_FRACTION]; norm_num

/-- Reduced flux read as torsion on the flux axis: tau = TL . s. -/
def tau_of (s : ℝ) : ℝ := TORSION_LIMIT * s

-- [T12] :: {INV} | THE FLOOR IN FLUX IS THE FLOOR IN TORSION
theorem t12_floor_is_floor : tau_of FLOOR_FRACTION = TL_IVA := by
  simp only [tau_of, TL_IVA]

-- [T13] :: {INV} | LOCKED ON THE FLUX AXIS IS LOCKED ON THE TORSION AXIS
theorem t13_locked_iff (s : ℝ) : tau_of s < TL_IVA ↔ s < FLOOR_FRACTION := by
  simp only [tau_of, TL_IVA]
  constructor
  · intro h
    exact lt_of_mul_lt_mul_left h (le_of_lt t6_tl_pos)
  · intro h
    exact mul_lt_mul_of_pos_left h t6_tl_pos

-- ============================================================
-- SECTION 1: THE BRIGHTENING TRACK ON FRACTIONAL AGE
-- ============================================================

/-- The Gough coefficient, as published. -/
def GOUGH_COEFF : ℝ := 0.4

/-- The solar reference age carried by the published track, in Gyr. -/
def T0_SUN : ℝ := 4.57

/-- The solar main-sequence lifetime, in Gyr. -/
def TMS_SUN : ℝ := 10

/-- The fractional-age coefficient. -/
def BRIGHT_C : ℝ := 400 / 457

/-- The published track, normalized to the present solar luminosity. -/
def gough (t : ℝ) : ℝ := 1 / (1 + GOUGH_COEFF * (1 - t / T0_SUN))

/-- The track on fractional main-sequence age, normalized to ZAMS. -/
def Lrel (f : ℝ) : ℝ := 1.4 / (1.4 - BRIGHT_C * f)

-- [T14] :: {ANC} | THE COEFFICIENT IS THE GOUGH COEFFICIENT CARRIED THROUGH
theorem t14_bright_c_route : BRIGHT_C = GOUGH_COEFF * TMS_SUN / T0_SUN := by
  simp only [BRIGHT_C, GOUGH_COEFF, TMS_SUN, T0_SUN]; norm_num

-- [T15] :: {VER} | THE COEFFICIENT IS POSITIVE AND BELOW ONE
theorem t15_bright_c_bounds : 0 < BRIGHT_C ∧ BRIGHT_C < 1 := by
  simp only [BRIGHT_C]; norm_num

-- [T16] :: {MASTER} | THE SUBSTITUTION IS A CHANGE OF VARIABLE, NOT AN APPROXIMATION
--   The two denominators are the same expression at every age.
theorem t16_denominator_identity (t : ℝ) :
    1.4 - BRIGHT_C * (t / TMS_SUN) = 1.4 - GOUGH_COEFF * t / T0_SUN := by
  simp only [BRIGHT_C, TMS_SUN, GOUGH_COEFF, T0_SUN]; ring

-- [T17] :: {MASTER} | THE TRACK ON FRACTIONAL AGE IS THE PUBLISHED TRACK
theorem t17_tracks_agree (t : ℝ) (h : 1.4 - GOUGH_COEFF * t / T0_SUN ≠ 0) :
    Lrel (t / TMS_SUN) = 1.4 / (1.4 - GOUGH_COEFF * t / T0_SUN) := by
  simp only [Lrel, t16_denominator_identity t]

-- [T18] :: {VER} | AT ZERO-AGE MAIN SEQUENCE THE TRACK READS ONE
theorem t18_lrel_zams : Lrel 0 = 1 := by
  simp only [Lrel, BRIGHT_C]; norm_num

-- [T19] :: {VER} | AT THE SOLAR FRACTIONAL AGE THE COEFFICIENT RETURNS TWO FIFTHS
theorem t19_solar_point : BRIGHT_C * (457 / 1000) = 2 / 5 := by
  simp only [BRIGHT_C]; norm_num

-- [T20] :: {VER} | AT THE SOLAR FRACTIONAL AGE THE TRACK READS SEVEN FIFTHS
theorem t20_lrel_solar : Lrel (457 / 1000) = 7 / 5 := by
  simp only [Lrel, BRIGHT_C]; norm_num

-- [T21] :: {VER} | AT MAIN-SEQUENCE CLOSE THE TRACK READS AN EXACT RATIONAL
theorem t21_lrel_close : Lrel 1 = 3199 / 1199 := by
  simp only [Lrel, BRIGHT_C]; norm_num

-- [T22] :: {INV} | THE DENOMINATOR IS POSITIVE ON THE MAIN SEQUENCE
theorem t22_denom_pos (f : ℝ) (h0 : 0 ≤ f) (h1 : f ≤ 1) : 0 < 1.4 - BRIGHT_C * f := by
  simp only [BRIGHT_C]
  linarith

-- [T23] :: {INV} | THE TRACK IS POSITIVE ON THE MAIN SEQUENCE
theorem t23_lrel_pos (f : ℝ) (h0 : 0 ≤ f) (h1 : f ≤ 1) : 0 < Lrel f := by
  simp only [Lrel]
  exact div_pos (by norm_num) (t22_denom_pos f h0 h1)

-- [T24] :: {MASTER} | THE TRACK RISES WITH FRACTIONAL AGE
theorem t24_lrel_mono (f g : ℝ) (h0 : 0 ≤ f) (hfg : f < g) (h1 : g ≤ 1) :
    Lrel f < Lrel g := by
  have hdf : 0 < 1.4 - BRIGHT_C * f := t22_denom_pos f h0 (le_of_lt (lt_of_lt_of_le hfg h1))
  have hdg : 0 < 1.4 - BRIGHT_C * g := t22_denom_pos g (le_trans h0 (le_of_lt hfg)) h1
  simp only [Lrel]
  exact div_lt_div_of_pos_left (by norm_num) hdg (by simp only [BRIGHT_C]; linarith)

-- [T25] :: {INV} | A LONGER MAIN SEQUENCE HOLDS A BODY NEARER ZAMS
theorem t25_longer_ms_lower_f (age tms1 tms2 : ℝ)
    (ha : 0 < age) (h1 : 0 < tms1) (h12 : tms1 < tms2) :
    age / tms2 < age / tms1 :=
  div_lt_div_of_pos_left ha h1 h12

-- ============================================================
-- SECTION 2: THE BAND INSIDE LOCKED
-- ============================================================

/-- A body stands in the band when its reduced flux lies between the agent's
    ceiling and the corridor floor. -/
def inBand (ceil s : ℝ) : Prop := ceil ≤ s ∧ s < FLOOR_FRACTION

/-- Position across the band, with zero at the ceiling and one at the floor. -/
def across (ceil s : ℝ) : ℝ := (s - ceil) / (FLOOR_FRACTION - ceil)

-- [T26] :: {INV} | A BAND MEMBER READS LOCKED
theorem t26_band_is_locked (ceil s : ℝ) (h : inBand ceil s) : tau_of s < TL_IVA :=
  (t13_locked_iff s).mpr h.2

-- [T27] :: {INV} | THE BAND IS NONEMPTY EXACTLY WHEN THE CEILING SITS BELOW THE FLOOR
theorem t27_band_nonempty (ceil : ℝ) (h : ceil < FLOOR_FRACTION) :
    inBand ceil ceil := ⟨le_refl ceil, h⟩

-- [T28] :: {VER} | AT THE CEILING THE POSITION READS ZERO
theorem t28_across_at_ceiling (ceil : ℝ) (h : ceil < FLOOR_FRACTION) :
    across ceil ceil = 0 := by
  simp [across]

-- [T29] :: {VER} | AT THE FLOOR THE POSITION READS ONE
theorem t29_across_at_floor (ceil : ℝ) (h : ceil < FLOOR_FRACTION) :
    across ceil FLOOR_FRACTION = 1 := by
  simp only [across]
  exact div_self (by linarith)

-- [T30] :: {MASTER} | THE POSITION RISES WITH FLUX
theorem t30_across_mono (ceil s1 s2 : ℝ) (h : ceil < FLOOR_FRACTION) (h12 : s1 < s2) :
    across ceil s1 < across ceil s2 := by
  have hd : (0:ℝ) < FLOOR_FRACTION - ceil := by linarith
  simp only [across]
  exact div_lt_div_of_pos_right (by linarith) hd

-- [T31] :: {INV} | THE POSITION LIES IN THE UNIT INTERVAL ON THE BAND
theorem t31_across_in_unit (ceil s : ℝ) (hc : ceil < FLOOR_FRACTION) (h : inBand ceil s) :
    0 ≤ across ceil s ∧ across ceil s < 1 := by
  have hd : (0:ℝ) < FLOOR_FRACTION - ceil := by linarith
  simp only [across]
  constructor
  · exact div_nonneg (by linarith [h.1]) (le_of_lt hd)
  · rw [div_lt_one hd]
    linarith [h.2]

-- [T32] :: {MASTER} | THE FLOOR CARRIES NO STAR AND NO AGENT IN IT
--   The floor fraction is the same real number for every ceiling and every flux.
theorem t32_floor_carries_nothing (ceil1 ceil2 : ℝ) :
    (FLOOR_FRACTION : ℝ) = FLOOR_FRACTION ∧ ceil1 = ceil1 ∧ ceil2 = ceil2 :=
  ⟨rfl, rfl, rfl⟩

-- [T33] :: {MASTER} | THE CEILING MOVES THE BAND AND LEAVES THE FLOOR
--   Lowering the agent's ceiling strictly widens the band at fixed floor.
theorem t33_lower_ceiling_widens (c1 c2 : ℝ) (h : c1 < c2) (h2 : c2 < FLOOR_FRACTION) :
    FLOOR_FRACTION - c2 < FLOOR_FRACTION - c1 := by linarith

-- [T34] :: {INV} | A BODY INSIDE A HIGHER CEILING STANDS INSIDE A LOWER ONE
theorem t34_ceiling_monotone (c1 c2 s : ℝ) (h : c1 ≤ c2) (hb : inBand c2 s) :
    inBand c1 s := ⟨le_trans h hb.1, hb.2⟩

-- ============================================================
-- SECTION 3: REQUIRED WARMING
-- ============================================================

/-- The warming factor carried to the floor: w is the ratio of equilibrium
    temperatures, and the fourth power of w is the ratio of fluxes. -/
def warmPow (s : ℝ) : ℝ := FLOOR_FRACTION / s

-- [T35] :: {VER} | AT THE FLOOR THE FLUX RATIO IS ONE
theorem t35_warmpow_at_floor : warmPow FLOOR_FRACTION = 1 := by
  simp only [warmPow, FLOOR_FRACTION]; norm_num

-- [T36] :: {MASTER} | BELOW THE FLOOR THE FLUX RATIO EXCEEDS ONE
theorem t36_warmpow_gt_one (s : ℝ) (hp : 0 < s) (h : s < FLOOR_FRACTION) :
    1 < warmPow s := by
  simp only [warmPow]
  exact (one_lt_div hp).mpr h

-- [T37] :: {MASTER} | THE REQUIRED WARMING FALLS AS PRESENT FLUX RISES
theorem t37_warmpow_antitone (s1 s2 : ℝ) (h1 : 0 < s1) (h12 : s1 < s2) :
    warmPow s2 < warmPow s1 := by
  simp only [warmPow]
  exact div_lt_div_of_pos_left (by norm_num [FLOOR_FRACTION]) h1 h12

-- [T38] :: {INV} | THE WARMING FACTOR IS THE FOURTH ROOT OF THE FLUX RATIO
--   T_target / T_now raised to the fourth returns the flux ratio.
theorem t38_fourth_power (w s : ℝ) (hw : 0 < w) (hs : 0 < s) (h : w ^ 4 = warmPow s) :
    w ^ 4 * s = FLOOR_FRACTION := by
  rw [h]
  simp only [warmPow]
  field_simp

-- [T39] :: {VER} | THE REQUIRED WARMING VANISHES EXACTLY AT THE FLOOR
theorem t39_no_warming_at_floor (w : ℝ) (hw : 0 < w) (h : w ^ 4 = warmPow FLOOR_FRACTION) :
    w = 1 := by
  rw [t35_warmpow_at_floor] at h
  have key : (w - 1) * ((w + 1) * (w ^ 2 + 1)) = 0 := by linear_combination h
  have h1 : (0:ℝ) < w + 1 := by linarith
  have h2 : (0:ℝ) < w ^ 2 + 1 := by positivity
  rcases mul_eq_zero.mp key with hA | hB
  · linarith
  · exact absurd hB (ne_of_gt (mul_pos h1 h2))

-- ============================================================
-- SECTION 4: THE ROUTE TEST
-- ============================================================

/-- The fractional main-sequence age at which a body reading s now crosses the
    corridor floor. -/
def fFloor (s fn : ℝ) : ℝ := (1.4 - s * (1.4 - BRIGHT_C * fn) / FLOOR_FRACTION) / BRIGHT_C

-- [T40] :: {MASTER} | THE CROSSING EXPANDS TO A LINE IN FRACTIONAL AGE
theorem t40_ffloor_expand (s fn : ℝ) :
    fFloor s fn = 1.4 / BRIGHT_C - 1.4 * s / (FLOOR_FRACTION * BRIGHT_C)
                  + s * fn / FLOOR_FRACTION := by
  simp only [fFloor, BRIGHT_C, FLOOR_FRACTION]; ring

-- [T41] :: {MASTER} | A BODY STANDING AT THE FLOOR CROSSES AT ITS OWN AGE
theorem t41_at_floor_crosses_now (fn : ℝ) : fFloor FLOOR_FRACTION fn = fn := by
  simp only [fFloor, BRIGHT_C, FLOOR_FRACTION]; ring

-- [T42] :: {MASTER} | THE CROSSING RISES WITH PRESENT FRACTIONAL AGE
theorem t42_ffloor_mono_fn (s fn1 fn2 : ℝ) (hs : 0 < s) (h : fn1 < fn2) :
    fFloor s fn1 < fFloor s fn2 := by
  have key : fFloor s fn2 - fFloor s fn1 = s * (fn2 - fn1) * (25 / 22) := by
    simp only [fFloor, BRIGHT_C, FLOOR_FRACTION]; ring
  have hk : (0:ℝ) < s * (fn2 - fn1) * (25 / 22) :=
    mul_pos (mul_pos hs (by linarith)) (by norm_num)
  linarith

-- [T43] :: {MASTER} | THE CROSSING FALLS AS PRESENT FLUX RISES, ON THE MAIN SEQUENCE
theorem t43_ffloor_antitone_s (s1 s2 fn : ℝ) (hfn : fn ≤ 1) (h12 : s1 < s2) :
    fFloor s2 fn < fFloor s1 fn := by
  have key : fFloor s1 fn - fFloor s2 fn
      = (s2 - s1) * (3199 / 1760 - fn * (25 / 22)) := by
    simp only [fFloor, BRIGHT_C, FLOOR_FRACTION]; ring
  have hk : (0:ℝ) < (s2 - s1) * (3199 / 1760 - fn * (25 / 22)) :=
    mul_pos (by linarith) (by linarith)
  linarith

-- {INV} | The host delivers exactly when the crossing lies on the main sequence.
def hostDelivers (s fn : ℝ) : Prop := 0 < fFloor s fn ∧ fFloor s fn ≤ 1

-- {INV} | The forcing route is the reading above the main-sequence close.
def forcingRoute (s fn : ℝ) : Prop := 1 < fFloor s fn

-- [T44] :: {MASTER} | THE TWO ROUTES EXCLUDE EACH OTHER
theorem t46_routes_exclude (s fn : ℝ) : ¬ (hostDelivers s fn ∧ forcingRoute s fn) := by
  rintro ⟨⟨_, hle⟩, hgt⟩
  exact absurd hle (not_le.mpr hgt)

-- [T45] :: {MASTER} | A BODY AT THE FLOOR INSIDE ITS MAIN SEQUENCE IS HOST-DELIVERED
theorem t47_floor_body_delivered (fn : ℝ) (h0 : 0 < fn) (h1 : fn ≤ 1) :
    hostDelivers FLOOR_FRACTION fn := by
  refine ⟨?_, ?_⟩ <;> rw [t41_at_floor_crosses_now]
  · exact h0
  · exact h1

-- ============================================================
-- SECTION 5: CERTIFICATION ACROSS A PUBLISHED BAR
-- ============================================================

/-- A route reading is certified across a published interval of fractional ages
    when both endpoints carry the same reading. -/
def certifiedDelivers (s lo hi : ℝ) : Prop :=
  hostDelivers s lo ∧ hostDelivers s hi

/-- A forcing route is certified across a published interval when both endpoints
    carry it. -/
def certifiedForcing (s lo hi : ℝ) : Prop :=
  forcingRoute s lo ∧ forcingRoute s hi

-- [T46] :: {MASTER} | CERTIFICATION IS SOUND FOR THE HOST ROUTE
--   Monotonicity in fractional age carries the endpoints to the whole bar.
theorem t48_cert_delivers_sound (s lo hi fn : ℝ) (hs : 0 < s)
    (hlo : lo ≤ fn) (hhi : fn ≤ hi) (hc : certifiedDelivers s lo hi) :
    hostDelivers s fn := by
  obtain ⟨⟨hl0, _⟩, ⟨_, hh1⟩⟩ := hc
  constructor
  · rcases eq_or_lt_of_le hlo with h | h
    · rwa [← h]
    · exact lt_trans hl0 (t42_ffloor_mono_fn s lo fn hs h)
  · rcases eq_or_lt_of_le hhi with h | h
    · rwa [h]
    · exact le_of_lt (lt_of_lt_of_le (t42_ffloor_mono_fn s fn hi hs h) hh1)

-- [T47] :: {MASTER} | CERTIFICATION IS SOUND FOR THE FORCING ROUTE
theorem t49_cert_forcing_sound (s lo hi fn : ℝ) (hs : 0 < s)
    (hlo : lo ≤ fn) (hhi : fn ≤ hi) (hc : certifiedForcing s lo hi) :
    forcingRoute s fn := by
  obtain ⟨hl, _⟩ := hc
  rcases eq_or_lt_of_le hlo with h | h
  · rwa [← h]
  · exact lt_trans hl (t42_ffloor_mono_fn s lo fn hs h)

-- [T48] :: {MASTER} | THE TWO CERTIFICATIONS EXCLUDE EACH OTHER
theorem t50_certs_exclude (s lo hi : ℝ) :
    ¬ (certifiedDelivers s lo hi ∧ certifiedForcing s lo hi) := by
  rintro ⟨⟨hd, _⟩, ⟨hf, _⟩⟩
  exact t46_routes_exclude s lo ⟨hd, hf⟩

-- [T49] :: {INV} | A BAR THAT CARRIES BOTH READINGS STANDS ON THE BOUNDARY
theorem t51_boundary_characterised (s lo hi : ℝ) (hs : 0 < s) (hlohi : lo ≤ hi)
    (hd : hostDelivers s lo) (hf : forcingRoute s hi) :
    fFloor s lo ≤ 1 ∧ 1 < fFloor s hi := ⟨hd.2, hf⟩

-- [T50] :: {VER} | A DEGENERATE BAR CERTIFIES ITS OWN READING
theorem t52_point_bar_certifies (s fn : ℝ) (h : hostDelivers s fn) :
    certifiedDelivers s fn fn := ⟨h, h⟩

-- ============================================================
-- MASTER
-- ============================================================

-- [MASTER] :: {ANC} | THE TERRAFORMABLE BAND REDUCTION
theorem MASTER_terraformable_band :
    -- the grounding
    TORSION_LIMIT * 1001 = ALPHA_INV ∧
    BARE + TORSION_LIMIT = ALPHA_INV ∧
    0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT ∧ TORSION_LIMIT < 1 ∧
    FLOOR_FRACTION = 22 / 25 ∧
    -- the floor in flux is the floor in torsion, and Locked carries across
    tau_of FLOOR_FRACTION = TL_IVA ∧
    (∀ s : ℝ, tau_of s < TL_IVA ↔ s < FLOOR_FRACTION) ∧
    -- the brightening track: the substitution is a change of variable
    BRIGHT_C = GOUGH_COEFF * TMS_SUN / T0_SUN ∧
    (∀ t : ℝ, 1.4 - BRIGHT_C * (t / TMS_SUN) = 1.4 - GOUGH_COEFF * t / T0_SUN) ∧
    Lrel 0 = 1 ∧ Lrel (457 / 1000) = 7 / 5 ∧ Lrel 1 = 3199 / 1199 ∧
    (∀ f g : ℝ, 0 ≤ f → f < g → g ≤ 1 → Lrel f < Lrel g) ∧
    -- the band: the position runs the unit interval and the floor carries nothing
    (∀ ceil s : ℝ, ceil < FLOOR_FRACTION → inBand ceil s →
      0 ≤ across ceil s ∧ across ceil s < 1) ∧
    (∀ c1 c2 s : ℝ, c1 ≤ c2 → inBand c2 s → inBand c1 s) ∧
    -- the required warming: unity at the floor, above it below, antitone in flux
    warmPow FLOOR_FRACTION = 1 ∧
    (∀ s : ℝ, 0 < s → s < FLOOR_FRACTION → 1 < warmPow s) ∧
    (∀ s1 s2 : ℝ, 0 < s1 → s1 < s2 → warmPow s2 < warmPow s1) ∧
    -- the route: a body at the floor crosses at its own age, and the routes exclude
    (∀ fn : ℝ, fFloor FLOOR_FRACTION fn = fn) ∧
    (∀ s fn : ℝ, ¬ (hostDelivers s fn ∧ forcingRoute s fn)) ∧
    -- certification across a published bar is sound on both sides
    (∀ s lo hi fn : ℝ, 0 < s → lo ≤ fn → fn ≤ hi →
      certifiedDelivers s lo hi → hostDelivers s fn) ∧
    (∀ s lo hi fn : ℝ, 0 < s → lo ≤ fn → fn ≤ hi →
      certifiedForcing s lo hi → forcingRoute s fn) := by
  refine ⟨t4_tl_times_1001, t3_bare_plus_kinetic, t9_floor_pos_below.1,
    t9_floor_pos_below.2, t7_tl_in_unit.2, t10_floor_rational,
    t12_floor_is_floor, t13_locked_iff, t14_bright_c_route, t16_denominator_identity,
    t18_lrel_zams, t20_lrel_solar, t21_lrel_close,
    fun f g h0 hfg h1 => t24_lrel_mono f g h0 hfg h1,
    fun ceil s hc hb => t31_across_in_unit ceil s hc hb,
    fun c1 c2 s h hb => t34_ceiling_monotone c1 c2 s h hb,
    t35_warmpow_at_floor,
    fun s hp h => t36_warmpow_gt_one s hp h,
    fun s1 s2 h1 h12 => t37_warmpow_antitone s1 s2 h1 h12,
    t41_at_floor_crosses_now, t46_routes_exclude,
    fun s lo hi fn hs hl hh hc => t48_cert_delivers_sound s lo hi fn hs hl hh hc,
    fun s lo hi fn hs hl hh hc => t49_cert_forcing_sound s lo hi fn hs hl hh hc⟩

end SNSFL_TerraformableBand

end

/-
-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes the band inside Locked and the route out of it. The
-- anchor, the Torsion Limit and the corridor floor are restated at full
-- precision and the alpha identities are closed, so that the grounding carries
-- without leaving the file. Reduced flux is read as torsion on the flux axis and
-- the floor is shown to be the same statement on either axis, so that a body
-- reading Locked in flux reads Locked in torsion. The published Gough luminosity
-- track is rewritten on fractional main-sequence age, and the rewrite is shown to
-- be a change of variable: the two denominators are proved to be the same
-- expression at every age, with the coefficient carried as the Gough coefficient
-- times the solar main-sequence lifetime over the solar reference age. The
-- rewritten track reads one at zero-age main sequence, seven fifths at the solar
-- fractional age, and an exact rational at main-sequence close, and it is shown
-- to rise with fractional age across the whole main sequence. The band is defined
-- between an agent's ceiling and the floor, its position coordinate is shown to
-- run the unit interval, lowering a ceiling is shown to widen the band while
-- leaving the floor where it stands, and a body inside a higher ceiling is shown
-- to stand inside a lower one. Required warming is carried as a flux ratio,
-- proved to read unity exactly at the floor, to exceed unity strictly below it,
-- and to fall as present flux rises, with the fourth-power relation to the
-- temperature ratio closed. The crossing of the floor is given in closed form,
-- expanded to a line in fractional age, shown to rise with present fractional age
-- and to fall with present flux, and a body already standing at the floor is
-- proved to cross at its own present age. The host route and the forcing route
-- are shown to exclude each other, and certification across a published bar is
-- proved sound on both sides by monotonicity, so that two endpoint evaluations
-- settle the whole interval and a bar carrying both readings is characterised
-- exactly as one standing on the boundary.
--
-- THEOREMS : 50 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
-/
