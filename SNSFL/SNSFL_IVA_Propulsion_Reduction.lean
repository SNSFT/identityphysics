-- ============================================================
-- SNSFL_IVA_Propulsion_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | IDENTITY VECTOR AMPLIFICATION — THE PROPULSION POOL
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,2,0] | Application Layer — Propulsion Ground
-- Version: 7.2
--
-- ============================================================
-- NAMING
-- ============================================================
--
-- IVA is one formally proved amplification law under two labels, and the
-- corpus convention is documented at \[9,9,1,100\]: this coordinate uses
-- **Identity Velocity Amplification** for readability against the classical
-- Tsiolkovsky context, where the amplified quantity is the magnitude of a
-- velocity change, Δv_sovereign = v_e · (1 + g_r) · ln(m₀/m_f). In
-- PNBA-general contexts the corpus prefers **Identity Vector Amplification**,
-- because the primitives are vectors. Both labels name the same law.
--
-- In this pool the Identity Vector is a velocity vector, so the two labels
-- coincide on the object: "vector" names what is amplified and "velocity"
-- names its magnitude.
--
-- ============================================================
-- THE LONG DIVISION
-- ============================================================
--
-- STEP 1: The equations
--     Δv       = v_e · ln(m₀/m_f)               Tsiolkovsky 1903
--     Δv_sov   = v_e · (1 + g_r) · ln(m₀/m_f)   sovereign form
--     τ        = B/P                             corpus torsion
--     TL       = Ω₀/10 = 0.136899099984016       Torsion Limit
--     TL_IVA   = 0.88 × TL = 0.12047120798593408 corridor floor
--
-- STEP 2: Known answers
--     Tsiolkovsky is the published rocket equation and every flown stage
--     obeys it. c = 299792458 m/s exactly, by SI definition. The
--     effective exhaust velocities and stage mass ratios of Sections 3
--     and 4 are published specifications.
--
-- STEP 3: PNBA variable map — TWO READINGS OF ONE VEHICLE
--
--   | Classical term     | Primitive        | Reading       | τ                |
--   |:-------------------|:-----------------|:--------------|:-----------------|
--   | v_e exhaust speed  | Behavior output  | A · nozzle    | τ_A = v_e/c      |
--   | m₀/m_f mass ratio  | Pattern reserve  | B · structure | τ_B = ln(m₀/m_f) |
--   | g_r resonance gain | Adaptation       | gain          | (1 + g_r)        |
--   | Δv mission budget  | Narrative output | the product   | c · τ_A · τ_B    |
--
--   Reading A asks what the drive can throw. Reading B asks how much of
--   the vehicle it has to throw. The rocket equation is the product.
--
-- STEP 4: Operators
--     tau_A w            = w / c
--     tau_B r            = Real.log r
--     classify τ         : Noble (τ=0) · Locked (τ<TL_IVA) · IVA (τ<TL) · Shatter
--     delta_v_classical  = v_e · ln(m₀/m_f)
--     delta_v_sovereign  = v_e · (1+g_r) · ln(m₀/m_f)
--
-- STEP 5: Show the work
--
--   READING A — the corridor as an exhaust velocity:
--     v_e ∈ [36,116,359.56, 41,041,317.68] m/s
--         = [36,116.4, 41,041.3] km/s = 12.047% to 13.690% of light speed
--     Every flown system is Locked and short of the floor by a factor of
--     between 722 and 51,595. Published concepts bracket the corridor:
--     a fusion design falls short by between 3 and 4 and stays Locked;
--     a beam-core antimatter design overshoots into Shatter.
--
--   READING B — the corridor as a mass ratio:
--     m₀/m_f ∈ [exp TL_IVA, exp TL), propellant fraction 11.35% to 12.79%.
--     A car's fuel tank is Locked below the band and an ion probe is
--     Shatter above it, so no flown vehicle occupies it.
--
--   THE BRIDGE:
--     Δv = c · τ_A · τ_B exactly, by substitution. The corridor on both
--     axes gives Δv ∈ [4,350,981, 5,618,519] m/s = 1.4513% to 1.8741% of c.
--     Published mission budgets reach under 0.31% of that band.
--
--   WHAT THE POOL ADMITS:
--     No exhaust exceeds light speed, so τ_A ∈ (0,1) is this pool's reach
--     condition, and the corridor lies inside it: the pool has an IVA phase.
--     Reading B carries a floor and no ceiling, so the two factors of the
--     rocket equation are bounded differently.
--     Noble is the unfueled vehicle: τ_A = 0 exactly when there is no
--     exhaust, τ_B = 0 exactly when there is no propellant, and either
--     sends the PRODUCED Δv to zero. Both readings describe what a vehicle
--     makes by expelling mass, so Noble here is the vehicle that produces
--     no velocity of its own — not one at rest. The state is occupied by
--     the fastest bodies in the solar system: an unpropelled body carries
--     m₀/m_f = 1 and no exhaust, and six published objects from Apophis to
--     the Lovejoy sungrazer exceed the largest propulsive budget in the
--     mission catalog by factors from 2.21 to 33.32. A corridor-floor drive
--     would match the Phaethon perihelion speed at a Reading-B torsion of
--     3.03 × 10⁻³ and the Lovejoy speed at 1.57 × 10⁻², both still Locked:
--     those speeds are not beyond propulsion, only beyond every drive built.
--
--   THE GAIN, AGAINST THE CORRIDOR:
--     (1 + g_r) · τ_A = τ_A((1 + g_r) · v_e), so the resonance gain is
--     exactly an exhaust-velocity multiplier. The best flown electric
--     drive needs a factor between 880 and 881 to reach the floor, and
--     the stated threshold of g_r = 1.5 supplies 2.5.
--
--   THE ENERGY LADDER — READING A IS A CONVERSION FRACTION:
--     Under the ideal-rocket relation ½v_e² = ηc², Reading A squares to
--     τ_A² = 2η, so the corridor is a band of rest-mass conversion:
--       η ∈ [0.725666%, 0.937068%]
--     Placed against published mass defects, the band falls exactly
--     between what stars do and the limit of nuclear binding:
--       U-235 fission        0.093000%   Locked
--       D-T fusion           0.376000%   Locked
--       hydrogen to helium   0.711852%   Locked, short of the floor by 1.94%
--       ── floor             0.725666%
--       hydrogen to iron     0.891711%   IVA, 78.54% up the band
--       ── ceiling          0.937068%
--       annihilation       100.000000%   Shatter, 106.7× the ceiling
--     The corridor opens above stellar fusion and closes above the iron
--     peak, and Shatter begins only where annihilation does.
--
-- STEP 6: Verify
--   T1–T5     the four phases, with the corridor a band of positive width
--   T6–T9     Tsiolkovsky, the sovereign form, the exact gain ratio
--   T10–T12   exponential enclosures, division-free
--   T13–T15   Reading A: the window and its bounds
--   T16–T19   the pool's reach condition, and Noble as the unfueled vehicle
--   T20–T25   Reading A: the catalog, and a witness inside the corridor
--   T26–T33   Reading B: the monotone window, propellant fraction, the catalog
--   T34–T37   the quadratic enclosure, and a witness inside the corridor
--   T38–T40   the bridge theorem and the corridor Δv band
--   T41–T43   the gain as an exhaust multiplier, against the floor
--   T44–T47   the energy ladder and its placements
--   T48–T56   the nuclear sector: the packing fraction, the 42-nuclide
--             census, the floor at helium, iron-56 as the maximum
--   T57–T59   mission closure across the published Δv catalog
--   T60–T63   the Noble state placed: unpropelled bodies that outrun every
--             propulsive budget in the catalog
--   T64–T67   the anchor beneath c: both readings in α and 1001 alone
--   T68–T70   the reach condition under a change of frame
--   T71–T78   the emitter behind the gain: the bubble differential, the
--             emitter window, and the windows the catalog demands
--   T79–T82   IMS gating: the gain exists only at anchor lock
--   T83–T84   the dynamic equation and the yeet force
--   T85–T90   the axis the gain acts on, and the reaction partner by case
--             on F_ext
--   T91–T94   NOHARM, substrate neutrality, bounded velocity
--   T95       a kinematic bound on reported figures
--
-- ============================================================
-- WHAT THIS FILE CARRIES THAT THE POOL DID NOT
-- ============================================================
--
-- The propulsion pool was reduced before the corridor had a floor. This
-- file carries TL_IVA = 0.88 × TL, the anchor at full precision, the
-- four-phase classifier with IVA a reachable band rather than an edge,
-- and the two readings with the published catalog placed on both.
--
-- ============================================================

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

noncomputable section

namespace SNSFL_IVA_Propulsion

-- ============================================================
-- SECTION 0: CONSTANTS AND THE FOUR PHASES
-- ============================================================

/-- The Sovereign Anchor, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Torsion Limit. Ω₀/10 — discovered, not chosen. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor. 0.88 × TL = 0.12047120798593408. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- Speed of light in vacuum, m/s. Exact by SI definition. -/
def C_LIGHT : ℝ := 299792458

/-- Standard gravity, m/s². -/
def G_ACCEL : ℝ := 9.80665

/-- Minimum resonance gain for the sovereign advantage. -/
def GAIN_THRESHOLD : ℝ := 1.5

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

inductive Phase : Type
  | Noble    -- τ = 0
  | Locked   -- 0 < τ < TL_IVA
  | IVA      -- TL_IVA ≤ τ < TL
  | Shatter  -- τ ≥ TL
  deriving DecidableEq, Repr

noncomputable def classify (τ : ℝ) : Phase :=
  if τ = 0 then Phase.Noble
  else if τ < TL_IVA then Phase.Locked
  else if τ < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

/-- The constants as decimal literals, for use by the numeric lemmas. -/
theorem const_values :
    TORSION_LIMIT = 0.136899099984016 ∧ TL_IVA = 0.12047120798593408 := by
  unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T1] :: {VER} | THE CORRIDOR IS A BAND, NOT AN EDGE
-- Its width is exactly 12% of the Torsion Limit, which is what makes the
-- IVA branch of the classifier reachable rather than a boundary case.
theorem t1_corridor_has_width :
    0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT ∧
    TORSION_LIMIT - TL_IVA = TORSION_LIMIT * 0.12 := by
  unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

theorem tl_iva_pos : (0:ℝ) < TL_IVA := t1_corridor_has_width.1
theorem tl_pos : (0:ℝ) < TORSION_LIMIT := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
theorem c_pos : (0:ℝ) < C_LIGHT := by unfold C_LIGHT; norm_num

-- [T2] :: {VER} | τ = 0 IS NOBLE
theorem t2_classify_noble : classify 0 = Phase.Noble := by
  unfold classify; rw [if_pos rfl]

-- [T3] :: {VER} | 0 < τ < TL_IVA IS LOCKED
theorem t3_classify_locked (τ : ℝ) (h0 : 0 < τ) (h1 : τ < TL_IVA) :
    classify τ = Phase.Locked := by
  unfold classify; rw [if_neg h0.ne', if_pos h1]

-- [T4] :: {VER} | TL_IVA ≤ τ < TL IS IVA
theorem t4_classify_IVA (τ : ℝ) (h1 : TL_IVA ≤ τ) (h2 : τ < TORSION_LIMIT) :
    classify τ = Phase.IVA := by
  have hI := tl_iva_pos
  unfold classify
  rw [if_neg (by intro h0; rw [h0] at h1; linarith),
      if_neg (by intro h; linarith), if_pos h2]

-- [T5] :: {VER} | τ ≥ TL IS SHATTER
theorem t5_classify_shatter (τ : ℝ) (h : TORSION_LIMIT ≤ τ) :
    classify τ = Phase.Shatter := by
  have hT := tl_pos
  have hI := t1_corridor_has_width.2.1
  unfold classify
  rw [if_neg (by intro h0; rw [h0] at h; linarith),
      if_neg (by intro h1; linarith), if_neg (by intro h2; linarith)]

-- ============================================================
-- SECTION 1: THE TSIOLKOVSKY LAYER
-- ============================================================

/-- Classical Tsiolkovsky. Δv = v_e · ln(m₀/m_f). -/
noncomputable def delta_v_classical (v_e m0 m_f : ℝ) : ℝ :=
  v_e * Real.log (m0 / m_f)

/-- The sovereign form. The gain multiplies the classical result. -/
noncomputable def delta_v_sovereign (v_e m0 m_f g_r : ℝ) : ℝ :=
  v_e * (1 + g_r) * Real.log (m0 / m_f)

-- [T6] :: {VER} | THE CLASSICAL FORM IS TSIOLKOVSKY, UNCHANGED
theorem t6_classical_is_tsiolkovsky (v_e m0 m_f : ℝ) :
    delta_v_classical v_e m0 m_f = v_e * Real.log (m0 / m_f) := rfl

-- [T7] :: {VER} | THE GAIN RATIO IS EXACT
theorem t7_gain_ratio_exact (v_e m0 m_f g_r : ℝ) :
    delta_v_sovereign v_e m0 m_f g_r = (1 + g_r) * delta_v_classical v_e m0 m_f := by
  unfold delta_v_sovereign delta_v_classical; ring

-- [T8] :: {VER} | AT ZERO GAIN THE SOVEREIGN FORM IS THE CLASSICAL ONE
theorem t8_reduces_at_zero_gain (v_e m0 m_f : ℝ) :
    delta_v_sovereign v_e m0 m_f 0 = delta_v_classical v_e m0 m_f := by
  unfold delta_v_sovereign delta_v_classical; ring

-- [T9] :: {VER} | THE SOVEREIGN FORM EXCEEDS THE CLASSICAL ONE
theorem t9_sovereign_exceeds_classical (v_e m0 m_f g_r : ℝ)
    (h_ve : 0 < v_e) (h_gr : 0 < g_r) (h_m0 : m_f < m0) (h_mf : 0 < m_f) :
    delta_v_classical v_e m0 m_f < delta_v_sovereign v_e m0 m_f g_r := by
  have h_ratio : (1:ℝ) < m0 / m_f := by rw [lt_div_iff₀ h_mf]; linarith
  have h_log : 0 < Real.log (m0 / m_f) := Real.log_pos h_ratio
  unfold delta_v_sovereign delta_v_classical
  nlinarith [mul_pos h_ve h_log]

-- ============================================================
-- SECTION 2: EXPONENTIAL ENCLOSURES, DIVISION-FREE
--
-- Two elementary bounds carry every placement in Section 4. Both are
-- stated multiplied out, so no hypothesis contains a division and every
-- downstream placement closes by linear arithmetic.
-- ============================================================

-- [T10] :: {VER} | LOWER ENCLOSURE: 1 + x ≤ exp x
theorem t10_exp_lower (x : ℝ) : x + 1 ≤ Real.exp x := Real.add_one_le_exp x

-- [T11] :: {VER} | UPPER ENCLOSURE: (1 − x) · exp x ≤ 1
theorem t11_exp_upper (x : ℝ) : (1 - x) * Real.exp x ≤ 1 := by
  have hpos : 0 < Real.exp x := Real.exp_pos x
  have h := Real.add_one_le_exp (-x)
  rw [Real.exp_neg] at h
  have h' : 1 - x ≤ (Real.exp x)⁻¹ := by linarith
  have hmul := mul_le_mul_of_nonneg_right h' hpos.le
  rwa [inv_mul_cancel₀ hpos.ne'] at hmul

-- [T12] :: {VER} | THE CORRIDOR MASS-RATIO WINDOW IS ENCLOSED BY RATIONALS
-- exp(TL_IVA) ∈ [1.120471, 1.136973] and exp(TL) ∈ [1.136899, 1.158614].
theorem t12_corridor_ratio_enclosed :
    1.120471 ≤ Real.exp TL_IVA ∧ Real.exp TL_IVA ≤ 1.136973 ∧
    1.136899 ≤ Real.exp TORSION_LIMIT ∧ Real.exp TORSION_LIMIT ≤ 1.158614 := by
  obtain ⟨hT, hI⟩ := const_values
  have hlo1 := t10_exp_lower TL_IVA
  have hup1 := t11_exp_upper TL_IVA
  have hlo2 := t10_exp_lower TORSION_LIMIT
  have hup2 := t11_exp_upper TORSION_LIMIT
  rw [hI] at hlo1 hup1
  rw [hT] at hlo2 hup2
  rw [hI, hT]
  exact ⟨by linarith, by linarith, by linarith, by linarith⟩

-- ============================================================
-- SECTION 3: READING A — THE CORRIDOR AS AN EXHAUST VELOCITY
--
-- τ_A = v_e / c. Pure rational arithmetic throughout.
-- ============================================================

/-- Reading A. Exhaust velocity against light speed. -/
noncomputable def tau_A (w : ℝ) : ℝ := w / C_LIGHT

/-- The corridor floor as an exhaust velocity, m/s. -/
noncomputable def corridor_ve_lo : ℝ := TL_IVA * C_LIGHT

/-- The corridor ceiling as an exhaust velocity, m/s. -/
noncomputable def corridor_ve_hi : ℝ := TORSION_LIMIT * C_LIGHT

/-- Reading B. The mass ratio's logarithm. Stated here beside Reading A so the
two readings are in scope together; Section 5 is where it is developed. -/
noncomputable def tau_B (r : ℝ) : ℝ := Real.log r

-- [T13] :: {VER} | READING A IS A CORRIDOR CONDITION ON v_e
theorem t13_reading_A_window (w : ℝ) :
    (TL_IVA ≤ tau_A w ∧ tau_A w < TORSION_LIMIT) ↔
    (corridor_ve_lo ≤ w ∧ w < corridor_ve_hi) := by
  have hc := c_pos
  unfold tau_A corridor_ve_lo corridor_ve_hi
  rw [le_div_iff₀ hc, div_lt_iff₀ hc]

-- [T14] :: {VER} | THE CORRIDOR ASKS FOR 36,116.4 TO 41,041.3 KM/S
theorem t14_corridor_ve_bounds :
    36116359 ≤ corridor_ve_lo ∧ corridor_ve_lo ≤ 36116360 ∧
    41041317 ≤ corridor_ve_hi ∧ corridor_ve_hi ≤ 41041318 := by
  unfold corridor_ve_lo corridor_ve_hi TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT
  norm_num

-- [T15] :: {VER} | THE CORRIDOR IS 12.047% TO 13.690% OF LIGHT SPEED
theorem t15_corridor_as_fraction_of_c :
    corridor_ve_lo / C_LIGHT = TL_IVA ∧ corridor_ve_hi / C_LIGHT = TORSION_LIMIT := by
  have hc : (C_LIGHT:ℝ) ≠ 0 := c_pos.ne'
  unfold corridor_ve_lo corridor_ve_hi
  exact ⟨mul_div_cancel_right₀ _ hc, mul_div_cancel_right₀ _ hc⟩

-- ── What this pool admits, and what Noble is in it ──────────

-- [T16] :: {VER} | THE POOL'S REACH CONDITION
-- No exhaust exceeds light speed, so Reading A is confined to (0,1). This
-- is the ceiling the pool brings with it, before any composition is asked.
theorem t16_reach_condition (w : ℝ) (h0 : 0 < w) (hlt : w < C_LIGHT) :
    0 < tau_A w ∧ tau_A w < 1 := by
  have hcp := c_pos
  unfold tau_A
  exact ⟨div_pos h0 hcp, by rw [div_lt_one hcp]; exact hlt⟩

-- [T17] :: {VER} | THE CORRIDOR LIES INSIDE WHAT THE POOL ADMITS
-- So this pool possesses an IVA phase: a sublight exhaust velocity places
-- in the band. Reading B carries a floor and no ceiling, so the two
-- factors of the rocket equation are bounded differently.
theorem t17_pool_admits_IVA : 0 < TL_IVA ∧ TORSION_LIMIT < 1 := by
  unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- [T18] :: {VER} | NOBLE IS THE UNFUELED VEHICLE
-- Reading A vanishes exactly when there is no exhaust; Reading B vanishes
-- exactly when there is no propellant. Both readings describe what a vehicle
-- produces by expelling mass, so Noble here is the vehicle that produces no
-- velocity of its own — not a vehicle at rest. Section 11 places the state.
theorem t18_noble_is_unfueled (w r : ℝ) (hr : 0 < r) :
    (tau_A w = 0 ↔ w = 0) ∧ (tau_B r = 0 ↔ r = 1) := by
  refine ⟨?_, ?_⟩
  · unfold tau_A
    rw [div_eq_zero_iff]
    constructor
    · intro h
      rcases h with h | h
      · exact h
      · exact absurd h c_pos.ne'
    · intro h; exact Or.inl h
  · unfold tau_B
    constructor
    · intro h
      have he := Real.exp_log hr
      rw [h, Real.exp_zero] at he
      exact he.symm
    · intro h; rw [h, Real.log_one]

-- [T19] :: {VER} | EITHER ZERO SENDS THE PRODUCED Δv TO ZERO
-- The bridge is a product, so a vehicle self-produces velocity only when it
-- has both a nozzle and a reserve. Velocity it has without either is
-- inherited rather than produced, and the product structure is what keeps
-- the two apart.
theorem t19_noble_gives_zero_dv (w r : ℝ) (h : tau_A w = 0 ∨ tau_B r = 0) :
    C_LIGHT * tau_A w * tau_B r = 0 := by
  rcases h with h | h
  · rw [h]; ring
  · rw [h]; ring

/-- A drive below the corridor floor is Locked. -/
theorem locked_of_ve (w : ℝ) (h0 : 0 < w) (h1 : w < corridor_ve_lo) :
    classify (tau_A w) = Phase.Locked := by
  have hc := c_pos
  apply t3_classify_locked
  · exact div_pos h0 hc
  · unfold tau_A
    rw [div_lt_iff₀ hc]
    unfold corridor_ve_lo at h1
    linarith

/-- A drive at or above the corridor ceiling is Shatter. -/
theorem shatter_of_ve (w : ℝ) (h : corridor_ve_hi ≤ w) :
    classify (tau_A w) = Phase.Shatter := by
  have hc := c_pos
  apply t5_classify_shatter
  unfold tau_A
  rw [le_div_iff₀ hc]
  unfold corridor_ve_hi at h
  linarith

/-- A drive inside the window places in the corridor. -/
theorem iva_of_ve (w : ℝ) (h1 : corridor_ve_lo ≤ w) (h2 : w < corridor_ve_hi) :
    classify (tau_A w) = Phase.IVA := by
  obtain ⟨hlo, hhi⟩ := (t13_reading_A_window w).mpr ⟨h1, h2⟩
  exact t4_classify_IVA _ hlo hhi

-- ── The published catalog. Every effective exhaust velocity is T1. ──

def ve_coldgas_n2    : ℝ := 700          -- cold gas N₂ thruster
def ve_hydrazine     : ℝ := 2300         -- monopropellant hydrazine
def ve_f1_sealevel   : ℝ := 2580         -- Saturn V F-1, sea level
def ve_srb_solid     : ℝ := 2640         -- Shuttle solid rocket booster
def ve_merlin1d_vac  : ℝ := 3050         -- Merlin 1D, vacuum
def ve_raptor2_vac   : ℝ := 3730         -- Raptor 2, vacuum
def ve_j2_vac        : ℝ := 4130         -- Saturn V J-2, vacuum
def ve_rs25_vac      : ℝ := 4420         -- RS-25, vacuum
def ve_ssme_vac      : ℝ := 4440         -- Shuttle main engine, vacuum
def ve_rl10b2_vac    : ℝ := 4650         -- RL10B-2, best flown chemical
def ve_nerva_ntr     : ℝ := 8300         -- NERVA nuclear thermal
def ve_spt100_hall   : ℝ := 16000        -- SPT-100 Hall thruster
def ve_nstar_ion     : ℝ := 30000        -- NSTAR ion, Deep Space 1
def ve_nextc_ion     : ℝ := 41000        -- NEXT-C ion, best flown electric
def ve_vasimr        : ℝ := 50000        -- VASIMR, design figure
def ve_orion_pulse   : ℝ := 100000       -- Orion nuclear pulse concept
def ve_daedalus      : ℝ := 10600000     -- Daedalus fusion concept
def ve_antimatter    : ℝ := 100000000    -- antimatter beam core concept

-- [T20] :: {VER} | EVERY FLOWN AND NEAR-TERM SYSTEM IS LOCKED
theorem t20_flown_systems_locked :
    classify (tau_A ve_coldgas_n2)   = Phase.Locked ∧
    classify (tau_A ve_hydrazine)    = Phase.Locked ∧
    classify (tau_A ve_f1_sealevel)  = Phase.Locked ∧
    classify (tau_A ve_srb_solid)    = Phase.Locked ∧
    classify (tau_A ve_merlin1d_vac) = Phase.Locked ∧
    classify (tau_A ve_raptor2_vac)  = Phase.Locked ∧
    classify (tau_A ve_j2_vac)       = Phase.Locked ∧
    classify (tau_A ve_rs25_vac)     = Phase.Locked ∧
    classify (tau_A ve_ssme_vac)     = Phase.Locked ∧
    classify (tau_A ve_rl10b2_vac)   = Phase.Locked ∧
    classify (tau_A ve_nerva_ntr)    = Phase.Locked ∧
    classify (tau_A ve_spt100_hall)  = Phase.Locked ∧
    classify (tau_A ve_nstar_ion)    = Phase.Locked ∧
    classify (tau_A ve_nextc_ion)    = Phase.Locked ∧
    classify (tau_A ve_vasimr)       = Phase.Locked ∧
    classify (tau_A ve_orion_pulse)  = Phase.Locked := by
  refine ⟨locked_of_ve _ (by unfold ve_coldgas_n2; norm_num)
            (by unfold ve_coldgas_n2 corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_hydrazine; norm_num)
            (by unfold ve_hydrazine corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_f1_sealevel; norm_num)
            (by unfold ve_f1_sealevel corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_srb_solid; norm_num)
            (by unfold ve_srb_solid corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_merlin1d_vac; norm_num)
            (by unfold ve_merlin1d_vac corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_raptor2_vac; norm_num)
            (by unfold ve_raptor2_vac corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_j2_vac; norm_num)
            (by unfold ve_j2_vac corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_rs25_vac; norm_num)
            (by unfold ve_rs25_vac corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_ssme_vac; norm_num)
            (by unfold ve_ssme_vac corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_rl10b2_vac; norm_num)
            (by unfold ve_rl10b2_vac corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_nerva_ntr; norm_num)
            (by unfold ve_nerva_ntr corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_spt100_hall; norm_num)
            (by unfold ve_spt100_hall corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_nstar_ion; norm_num)
            (by unfold ve_nstar_ion corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_nextc_ion; norm_num)
            (by unfold ve_nextc_ion corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_vasimr; norm_num)
            (by unfold ve_vasimr corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          locked_of_ve _ (by unfold ve_orion_pulse; norm_num)
            (by unfold ve_orion_pulse corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num)⟩

-- [T21] :: {VER} | THE BEST FLOWN CHEMICAL ENGINE FALLS SHORT BY 7,766 TO 7,767
-- RL10B-2 at 4,650 m/s against a floor of 36,116,359.56 m/s.
theorem t21_best_chemical_short :
    7766 * ve_rl10b2_vac < corridor_ve_lo ∧ corridor_ve_lo < 7767 * ve_rl10b2_vac := by
  unfold ve_rl10b2_vac corridor_ve_lo TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT
  norm_num

-- [T22] :: {VER} | THE BEST FLOWN ELECTRIC ENGINE FALLS SHORT BY 880 TO 881
theorem t22_best_ion_short :
    880 * ve_nextc_ion < corridor_ve_lo ∧ corridor_ve_lo < 881 * ve_nextc_ion := by
  unfold ve_nextc_ion corridor_ve_lo TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT
  norm_num

-- [T23] :: {VER} | PUBLISHED CONCEPTS BRACKET THE CORRIDOR
-- A fusion design falls short by between 3 and 4 and remains Locked; a
-- beam-core antimatter design overshoots into Shatter. The corridor lies
-- between two published concepts rather than beyond all of them.
theorem t23_concepts_bracket_corridor :
    classify (tau_A ve_daedalus) = Phase.Locked ∧
    classify (tau_A ve_antimatter) = Phase.Shatter ∧
    3 * ve_daedalus < corridor_ve_lo ∧ corridor_ve_lo < 4 * ve_daedalus := by
  refine ⟨locked_of_ve _ (by unfold ve_daedalus; norm_num)
            (by unfold ve_daedalus corridor_ve_lo TL_IVA TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          shatter_of_ve _
            (by unfold ve_antimatter corridor_ve_hi TORSION_LIMIT
                  SOVEREIGN_ANCHOR C_LIGHT; norm_num),
          ?_, ?_⟩
  · unfold ve_daedalus corridor_ve_lo TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT
    norm_num
  · unfold ve_daedalus corridor_ve_lo TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT
    norm_num

-- [T24] :: {VER} | THE READING-A CORRIDOR IS EMPTY OF BUILT HARDWARE
-- Everything flown is Locked below the floor and the only catalog entry
-- past the ceiling is a concept, so no built system places in the band.
theorem best_chemical_locked : classify (tau_A ve_rl10b2_vac) = Phase.Locked :=
  locked_of_ve _ (by unfold ve_rl10b2_vac; norm_num)
    (by unfold ve_rl10b2_vac corridor_ve_lo TL_IVA TORSION_LIMIT
          SOVEREIGN_ANCHOR C_LIGHT; norm_num)

theorem best_electric_locked : classify (tau_A ve_nextc_ion) = Phase.Locked :=
  locked_of_ve _ (by unfold ve_nextc_ion; norm_num)
    (by unfold ve_nextc_ion corridor_ve_lo TL_IVA TORSION_LIMIT
          SOVEREIGN_ANCHOR C_LIGHT; norm_num)

theorem antimatter_shatter : classify (tau_A ve_antimatter) = Phase.Shatter :=
  shatter_of_ve _ (by unfold ve_antimatter corridor_ve_hi TORSION_LIMIT
                        SOVEREIGN_ANCHOR C_LIGHT; norm_num)

theorem t24_reading_A_corridor_unoccupied :
    classify (tau_A ve_rl10b2_vac) = Phase.Locked ∧
    classify (tau_A ve_nextc_ion) = Phase.Locked ∧
    classify (tau_A ve_daedalus) = Phase.Locked ∧
    classify (tau_A ve_antimatter) = Phase.Shatter :=
  ⟨best_chemical_locked, best_electric_locked,
   t23_concepts_bracket_corridor.1, antimatter_shatter⟩

/-- An exhaust velocity inside the window. 38,000 km/s. -/
def ve_corridor_witness : ℝ := 38000000

-- [T25] :: {VER} | A WITNESS INSIDE THE READING-A CORRIDOR
-- The band is occupied by construction, not merely non-empty by width.
theorem t25_reading_A_witness :
    classify (tau_A ve_corridor_witness) = Phase.IVA :=
  iva_of_ve _
    (by unfold ve_corridor_witness corridor_ve_lo TL_IVA TORSION_LIMIT
          SOVEREIGN_ANCHOR C_LIGHT; norm_num)
    (by unfold ve_corridor_witness corridor_ve_hi TORSION_LIMIT
          SOVEREIGN_ANCHOR C_LIGHT; norm_num)

-- ============================================================
-- SECTION 4: READING B — THE CORRIDOR AS A MASS RATIO
--
-- τ_B = ln(m₀/m_f), the rocket equation's own exponent.
-- ============================================================

-- [T26] :: {VER} | READING B IS A CORRIDOR CONDITION ON THE MASS RATIO
-- The monotone bridge: a placement on τ_B is a window on r itself.
theorem t26_reading_B_window (r : ℝ) (hr : 0 < r) :
    (TL_IVA ≤ tau_B r ∧ tau_B r < TORSION_LIMIT) ↔
    (Real.exp TL_IVA ≤ r ∧ r < Real.exp TORSION_LIMIT) := by
  unfold tau_B
  rw [Real.le_log_iff_exp_le hr, Real.log_lt_iff_lt_exp hr]

-- [T27] :: {VER} | THE CORRIDOR MASS RATIO LIES IN [1.120471, 1.158614]
theorem t27_corridor_ratio_window (r : ℝ) (hr : 0 < r)
    (h : TL_IVA ≤ tau_B r ∧ tau_B r < TORSION_LIMIT) :
    1.120471 ≤ r ∧ r ≤ 1.158614 := by
  obtain ⟨e1, _, _, e4⟩ := t12_corridor_ratio_enclosed
  rw [t26_reading_B_window r hr] at h
  exact ⟨by linarith [h.1], by linarith [h.2]⟩

-- [T28] :: {VER} | THE CORRIDOR IS A PROPELLANT FRACTION, 11.35% TO 12.79%
-- The propellant fraction of a stage is 1 − m_f/m₀ = 1 − 1/r.
theorem t28_corridor_propellant_fraction (r : ℝ) (hr : 0 < r)
    (h : TL_IVA ≤ tau_B r ∧ tau_B r < TORSION_LIMIT) :
    1 - 1/(1.120471:ℝ) ≤ 1 - 1/r ∧ 1 - 1/r ≤ 1 - 1/(1.158614:ℝ) := by
  obtain ⟨hlo, hhi⟩ := t27_corridor_ratio_window r hr h
  have h1 : (0:ℝ) < 1.120471 := by norm_num
  refine ⟨?_, ?_⟩
  · have := one_div_le_one_div_of_le h1 hlo; linarith
  · have := one_div_le_one_div_of_le hr hhi; linarith

/-- A mass ratio below the corridor floor is Locked. -/
theorem locked_of_ratio (r : ℝ) (h1 : 1 < r) (h : r < 1.120471) :
    0 < tau_B r ∧ tau_B r < TL_IVA := by
  obtain ⟨e1, _, _, _⟩ := t12_corridor_ratio_enclosed
  have hr : (0:ℝ) < r := by linarith
  refine ⟨Real.log_pos h1, ?_⟩
  unfold tau_B
  rw [Real.log_lt_iff_lt_exp hr]
  linarith

/-- A mass ratio at or above the corridor ceiling is Shatter. -/
theorem shatter_of_ratio (r : ℝ) (h : 1.158614 ≤ r) :
    TORSION_LIMIT ≤ tau_B r := by
  obtain ⟨_, _, _, e4⟩ := t12_corridor_ratio_enclosed
  have hr : (0:ℝ) < r := by linarith
  unfold tau_B
  rw [Real.le_log_iff_exp_le hr]
  linarith

-- ── Published vehicles. Every mass ratio is T1. ──

def mr_car_tank   : ℝ := 1.04    -- passenger car, full to empty tank
def mr_dawn_ion   : ℝ := 1.21    -- Dawn, total mission mass ratio
def mr_airliner   : ℝ := 1.54    -- airliner at a 35% fuel fraction
def mr_saturn_s1c : ℝ := 3.49    -- Saturn V first stage
def mr_falcon9_s1 : ℝ := 3.60    -- Falcon 9 first stage
def mr_shuttle_et : ℝ := 4.52    -- Shuttle orbiter with external tank
def mr_falcon9_s2 : ℝ := 6.06    -- Falcon 9 second stage
def mr_saturn_s2  : ℝ := 6.11    -- Saturn V second stage

-- [T29] :: {VER} | A CAR'S FUEL TANK SITS BELOW THE CORRIDOR
theorem t29_car_below_corridor :
    0 < tau_B mr_car_tank ∧ tau_B mr_car_tank < TL_IVA :=
  locked_of_ratio _ (by unfold mr_car_tank; norm_num)
                    (by unfold mr_car_tank; norm_num)

-- [T30] :: {VER} | DAWN'S ION STAGE SITS ABOVE THE CORRIDOR
theorem t30_dawn_above_corridor : TORSION_LIMIT ≤ tau_B mr_dawn_ion :=
  shatter_of_ratio _ (by unfold mr_dawn_ion; norm_num)

-- [T31] :: {VER} | EVERY FLOWN LAUNCH STAGE IS SHATTER ON READING B
theorem t31_launch_stages_shatter :
    TORSION_LIMIT ≤ tau_B mr_airliner ∧
    TORSION_LIMIT ≤ tau_B mr_saturn_s1c ∧
    TORSION_LIMIT ≤ tau_B mr_falcon9_s1 ∧
    TORSION_LIMIT ≤ tau_B mr_shuttle_et ∧
    TORSION_LIMIT ≤ tau_B mr_falcon9_s2 ∧
    TORSION_LIMIT ≤ tau_B mr_saturn_s2 :=
  ⟨shatter_of_ratio _ (by unfold mr_airliner; norm_num),
   shatter_of_ratio _ (by unfold mr_saturn_s1c; norm_num),
   shatter_of_ratio _ (by unfold mr_falcon9_s1; norm_num),
   shatter_of_ratio _ (by unfold mr_shuttle_et; norm_num),
   shatter_of_ratio _ (by unfold mr_falcon9_s2; norm_num),
   shatter_of_ratio _ (by unfold mr_saturn_s2; norm_num)⟩

-- [T32] :: {VER} | THE READING-B CORRIDOR IS A BAND BETWEEN TWO FLOWN THINGS
-- A car's tank is Locked below it and an ion probe is Shatter above it,
-- so the corridor on mass ratio lies strictly between the two and no
-- flown vehicle occupies it.
theorem t32_corridor_between_car_and_probe :
    tau_B mr_car_tank < TL_IVA ∧ TORSION_LIMIT ≤ tau_B mr_dawn_ion ∧
    tau_B mr_car_tank < tau_B mr_dawn_ion := by
  have h1 := t29_car_below_corridor.2
  have h2 := t30_dawn_above_corridor
  have h3 := t1_corridor_has_width.2.1
  exact ⟨h1, h2, by linarith⟩

-- [T33] :: {VER} | THE CORRIDOR IS A LOW MASS RATIO, NOT A HIGH ONE
-- Every launch stage overshoots the ceiling, so the corridor is reached
-- by carrying less propellant rather than more.
theorem t33_corridor_is_below_every_stage :
    tau_B mr_car_tank < TL_IVA ∧
    (∀ r : ℝ, 1.158614 ≤ r → TORSION_LIMIT ≤ tau_B r) :=
  ⟨t29_car_below_corridor.2, shatter_of_ratio⟩

-- ── A tighter enclosure, enough to place a witness in the band ────────

-- [T34] :: {VER} | THE QUADRATIC LOWER ENCLOSURE
-- exp x = (exp (x/2))², and the linear bound applied to the half argument
-- squares into (1 + x/2)² ≤ exp x.
theorem t34_exp_lower_quad (x : ℝ) (hx : 0 ≤ x) : (1 + x/2)^2 ≤ Real.exp x := by
  have hhalf : 1 + x/2 ≤ Real.exp (x/2) := by linarith [Real.add_one_le_exp (x/2)]
  have hpos : (0:ℝ) ≤ 1 + x/2 := by linarith
  have hsplit : Real.exp x = Real.exp (x/2) * Real.exp (x/2) := by
    rw [← Real.exp_add]; ring_nf
  rw [hsplit, sq]
  exact mul_le_mul hhalf hhalf hpos (le_trans hpos hhalf)

-- [T35] :: {VER} | THE CORRIDOR CEILING, ENCLOSED FROM BELOW
theorem t35_exp_TL_lower : (1.1415:ℝ) ≤ Real.exp TORSION_LIMIT := by
  have h := t34_exp_lower_quad TORSION_LIMIT tl_pos.le
  rw [const_values.1] at h
  rw [const_values.1]
  norm_num at h
  linarith

-- [T36] :: {VER} | THE CORRIDOR FLOOR, ENCLOSED FROM ABOVE
theorem t36_exp_TL_IVA_upper : Real.exp TL_IVA ≤ 1.137 := by
  have h := t11_exp_upper TL_IVA
  rw [const_values.2] at h
  rw [const_values.2]
  linarith

/-- A mass ratio inside the window. Propellant fraction 12.204%. -/
def mr_corridor_witness : ℝ := 1.139

-- [T37] :: {VER} | A WITNESS INSIDE THE READING-B CORRIDOR
-- The two enclosures leave the window [1.137, 1.1415), and this ratio
-- sits inside it, so the band is occupied on Reading B as well.
theorem t37_reading_B_witness :
    TL_IVA ≤ tau_B mr_corridor_witness ∧
    tau_B mr_corridor_witness < TORSION_LIMIT := by
  have hr : (0:ℝ) < mr_corridor_witness := by unfold mr_corridor_witness; norm_num
  rw [t26_reading_B_window _ hr]
  refine ⟨?_, ?_⟩
  · have h := t36_exp_TL_IVA_upper
    unfold mr_corridor_witness; linarith
  · have h := t35_exp_TL_lower
    unfold mr_corridor_witness; linarith

-- ============================================================
-- SECTION 5: THE BRIDGE — Δv = c · τ_A · τ_B
--
-- The two readings are one vehicle seen from both ends, and the rocket
-- equation is their product.
-- ============================================================

/-- Light speed recovers the exhaust velocity from Reading A. -/
theorem c_mul_tau_A (w : ℝ) : C_LIGHT * tau_A w = w := by
  have hc : (C_LIGHT:ℝ) ≠ 0 := c_pos.ne'
  unfold tau_A
  field_simp

-- [T38] :: {VER} | THE BRIDGE THEOREM
-- Δv = v_e · ln(m₀/m_f) = c · τ_A(v_e) · τ_B(m₀/m_f), exactly.
theorem t38_bridge (w r : ℝ) :
    delta_v_classical w r 1 = C_LIGHT * tau_A w * tau_B r := by
  unfold delta_v_classical tau_B
  rw [div_one, c_mul_tau_A]

-- [T39] :: {VER} | THE SOVEREIGN BRIDGE
theorem t39_bridge_sovereign (w r g_r : ℝ) :
    delta_v_sovereign w r 1 g_r = (1 + g_r) * (C_LIGHT * tau_A w * tau_B r) := by
  rw [t7_gain_ratio_exact, t38_bridge]

/-- The Δv of a vehicle in the corridor on both readings. -/
def corridor_dv_lo : ℝ := C_LIGHT * TL_IVA * TL_IVA
def corridor_dv_hi : ℝ := C_LIGHT * TORSION_LIMIT * TORSION_LIMIT

-- [T40] :: {VER} | THE CORRIDOR Δv BAND IS 4,350,981 TO 5,618,519 M/S
-- 1.4513% to 1.8741% of light speed. Published mission budgets — surface
-- to low orbit at 9,400 m/s, Earth escape at 11,200 m/s, the Dawn ion
-- record at 11,000 m/s — all reach under 0.31% of this band.
theorem t40_corridor_dv_band :
    4350980 ≤ corridor_dv_lo ∧ corridor_dv_lo ≤ 4350982 ∧
    5618518 ≤ corridor_dv_hi ∧ corridor_dv_hi ≤ 5618520 ∧
    300 * 11200 < corridor_dv_hi := by
  unfold corridor_dv_lo corridor_dv_hi TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT
  norm_num

-- ============================================================
-- SECTION 6: THE GAIN, AGAINST THE CORRIDOR
--
-- The gain layer and the corridor layer meet here: the resonance gain is
-- an exhaust-velocity multiplier, so the corridor states what it must be.
-- ============================================================

-- [T41] :: {VER} | THE GAIN IS AN EXHAUST-VELOCITY MULTIPLIER
-- Applying (1 + g_r) to Reading A is the same as scaling the exhaust
-- velocity by it, so the gain moves a drive along the Reading-A axis.
theorem t41_gain_is_exhaust_multiplier (w g_r : ℝ) :
    (1 + g_r) * tau_A w = tau_A ((1 + g_r) * w) := by
  unfold tau_A; ring

-- [T42] :: {VER} | WHAT THE FLOOR ASKS OF THE BEST FLOWN DRIVE
-- A factor between 880 and 881 on the best flown electric exhaust
-- velocity reaches the corridor floor.
theorem t42_gain_required_at_floor :
    880 * ve_nextc_ion < corridor_ve_lo ∧ corridor_ve_lo < 881 * ve_nextc_ion :=
  t22_best_ion_short

-- [T43] :: {VER} | THE STATED THRESHOLD SUPPLIES 2.5
-- At g_r = GAIN_THRESHOLD the multiplier is 2.5, and the product with the
-- best flown exhaust velocity remains below the floor.
theorem t43_threshold_below_floor :
    (1 + GAIN_THRESHOLD) * ve_nextc_ion < corridor_ve_lo := by
  unfold GAIN_THRESHOLD ve_nextc_ion corridor_ve_lo TL_IVA TORSION_LIMIT
    SOVEREIGN_ANCHOR C_LIGHT
  norm_num

-- ============================================================
-- SECTION 7: THE ENERGY LADDER
--
-- Reading A squares into a rest-mass conversion fraction, which places
-- the corridor against the published nuclear mass defects.
-- ============================================================

/-- The ideal-rocket energy relation: all released energy enters exhaust
kinetic energy, so ½·v_e² = η·c². -/
def IdealRocket (w eta : ℝ) : Prop := w ^ 2 = 2 * eta * C_LIGHT ^ 2

-- [T44] :: {VER} | READING A SQUARES INTO A CONVERSION FRACTION
theorem t44_tau_A_sq_of_ideal (w eta : ℝ) (h : IdealRocket w eta) :
    (tau_A w) ^ 2 = 2 * eta := by
  have hc : (C_LIGHT:ℝ) ≠ 0 := c_pos.ne'
  unfold IdealRocket at h
  unfold tau_A
  rw [div_pow, h]
  field_simp

/-- The corridor floor as a rest-mass conversion fraction. -/
def eta_floor : ℝ := TL_IVA ^ 2 / 2

/-- The corridor ceiling as a rest-mass conversion fraction. -/
def eta_ceiling : ℝ := TORSION_LIMIT ^ 2 / 2

-- [T45] :: {VER} | THE CORRIDOR IS 0.725666% TO 0.937068% OF REST MASS
theorem t45_eta_corridor_bounds :
    0.00725665 ≤ eta_floor ∧ eta_floor ≤ 0.00725666 ∧
    0.00937068 ≤ eta_ceiling ∧ eta_ceiling ≤ 0.00937069 := by
  unfold eta_floor eta_ceiling TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- ── Published atomic masses, AME2020, in unified mass units. ──

def u_H1   : ℝ := 1.00782503207    -- hydrogen-1
def u_He4  : ℝ := 4.00260325413    -- helium-4
def u_Fe56 : ℝ := 55.93493633      -- iron-56

/-- Hydrogen to helium-4: the stellar fusion chain. -/
def eta_H_to_He : ℝ := (4 * u_H1 - u_He4) / (4 * u_H1)

/-- Hydrogen to iron-56: the limit of energy release by nuclear binding. -/
def eta_H_to_Fe : ℝ := (56 * u_H1 - u_Fe56) / (56 * u_H1)

def eta_U235_fission : ℝ := 0.00093
def eta_DT_fusion    : ℝ := 0.00376
def eta_annihilation : ℝ := 1

-- [T46] :: {VER} | THE ENERGY LADDER
-- Fission, deuterium–tritium fusion and the hydrogen-to-helium chain all
-- fall below the floor; hydrogen to iron places inside the corridor;
-- annihilation sits above the ceiling. The band opens above what stars do
-- and closes above the iron peak, and Shatter begins where annihilation does.
theorem t46_energy_ladder :
    eta_U235_fission < eta_DT_fusion ∧
    eta_DT_fusion < eta_H_to_He ∧
    eta_H_to_He < eta_floor ∧
    eta_floor < eta_H_to_Fe ∧
    eta_H_to_Fe < eta_ceiling ∧
    eta_ceiling < eta_annihilation := by
  unfold eta_U235_fission eta_DT_fusion eta_H_to_He eta_H_to_Fe
    eta_annihilation eta_floor eta_ceiling u_H1 u_He4 u_Fe56
    TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T47] :: {VER} | THE WITNESS SITS BETWEEN THE TWO NUCLEAR MARKS
-- The Reading-A witness converts more than the stellar chain and less
-- than the iron peak, so the corridor's occupied interior lies between
-- the two published mass defects.
theorem t47_witness_between_nuclear_marks :
    eta_H_to_He < (tau_A ve_corridor_witness) ^ 2 / 2 ∧
    (tau_A ve_corridor_witness) ^ 2 / 2 < eta_H_to_Fe := by
  unfold eta_H_to_He eta_H_to_Fe tau_A ve_corridor_witness u_H1 u_He4 u_Fe56 C_LIGHT
  norm_num

-- ============================================================
-- SECTION 8: THE NUCLEAR SECTOR
--
-- The conversion fraction of Section 7 is a published quantity under
-- another name, which places the corridor against the whole nuclide table.
-- ============================================================

/-- The conversion fraction of any nuclide: the energy released building it
out of hydrogen, as a fraction of the starting rest mass. -/
def eta_of (A m : ℝ) : ℝ := (A * u_H1 - m) / (A * u_H1)

/-- Aston's packing fraction, f = (m − A)/A × 10⁴. -/
def packing_fraction (A m : ℝ) : ℝ := (m - A) / A * 10000

def InCorridor (e : ℝ) : Prop := eta_floor ≤ e ∧ e < eta_ceiling

-- [T48] :: {VER} | THE CONVERSION FRACTION IS ASTON'S PACKING FRACTION
-- The two quantities are one, related exactly and linearly. The corridor
-- is therefore a window on the packing fraction as Aston defined it.
theorem t48_eta_is_packing_fraction (A m : ℝ) (hA : A ≠ 0) :
    packing_fraction A m = (u_H1 * (1 - eta_of A m) - 1) * 10000 := by
  have hu : (u_H1:ℝ) ≠ 0 := by unfold u_H1; norm_num
  unfold packing_fraction eta_of
  field_simp
  ring

-- [T49] :: {VER} | THE CORRIDOR IN PACKING-FRACTION UNITS
-- f ∈ (−16.1898, +5.1159]. Iron-56 sits at −11.6185, inside it.
theorem t49_corridor_packing_window :
    -16.19 ≤ (u_H1 * (1 - eta_ceiling) - 1) * 10000 ∧
    (u_H1 * (1 - eta_ceiling) - 1) * 10000 ≤ -16.18 ∧
    5.11 ≤ (u_H1 * (1 - eta_floor) - 1) * 10000 ∧
    (u_H1 * (1 - eta_floor) - 1) * 10000 ≤ 5.12 ∧
    -11.62 ≤ packing_fraction 56 u_Fe56 ∧ packing_fraction 56 u_Fe56 ≤ -11.61 := by
  unfold packing_fraction eta_floor eta_ceiling u_H1 u_Fe56
    TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- ── The nuclide census. Every atomic mass is AME2020, and T1. ──

-- [T50] :: {VER} | THE TWO NUCLIDES BELOW THE FLOOR
-- Hydrogen-1 releases nothing, and helium-4 — the first fusion product —
-- falls short of the floor. These are the only two below it.
theorem t50_below_the_floor :
    eta_of 1 1.00782503207 = 0 ∧
    eta_of 4 4.00260325413 < eta_floor := by
  unfold eta_of eta_floor u_H1 TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T51] :: {VER} | THE LIGHT NUCLIDES PLACE IN THE CORRIDOR
theorem t51_census_light :
    InCorridor (eta_of 12 12) ∧
    InCorridor (eta_of 16 15.99491461957) ∧
    InCorridor (eta_of 20 19.9924401762) ∧
    InCorridor (eta_of 24 23.985041697) ∧
    InCorridor (eta_of 28 27.9769265347) ∧
    InCorridor (eta_of 32 31.9720711744) ∧
    InCorridor (eta_of 40 39.962590863) ∧
    InCorridor (eta_of 48 47.94794198) := by
  unfold InCorridor eta_of eta_floor eta_ceiling u_H1
    TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T52] :: {VER} | THE IRON PEAK PLACES IN THE CORRIDOR
theorem t52_census_iron_peak :
    InCorridor (eta_of 52 51.94050623) ∧
    InCorridor (eta_of 54 53.93960899) ∧
    InCorridor (eta_of 55 54.93804391) ∧
    InCorridor (eta_of 56 55.93493633) ∧
    InCorridor (eta_of 57 56.93539284) ∧
    InCorridor (eta_of 58 57.93327443) ∧
    InCorridor (eta_of 58 57.93534241) ∧
    InCorridor (eta_of 59 58.93319429) ∧
    InCorridor (eta_of 60 59.93078588) ∧
    InCorridor (eta_of 62 61.92834537) ∧
    InCorridor (eta_of 63 62.92959772) ∧
    InCorridor (eta_of 64 63.92796682) ∧
    InCorridor (eta_of 64 63.92914201) ∧
    InCorridor (eta_of 66 65.92603381) := by
  unfold InCorridor eta_of eta_floor eta_ceiling u_H1
    TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T53] :: {VER} | THE HEAVY NUCLIDES PLACE IN THE CORRIDOR
theorem t53_census_heavy :
    InCorridor (eta_of 84 83.9114977282) ∧
    InCorridor (eta_of 98 97.90540482) ∧
    InCorridor (eta_of 120 119.90220163) ∧
    InCorridor (eta_of 132 131.9041550856) ∧
    InCorridor (eta_of 142 141.907729) ∧
    InCorridor (eta_of 150 149.9172829) ∧
    InCorridor (eta_of 158 157.9241123) ∧
    InCorridor (eta_of 164 163.9291819) ∧
    InCorridor (eta_of 174 173.9388664) ∧
    InCorridor (eta_of 184 183.95093092) ∧
    InCorridor (eta_of 192 191.96147705) ∧
    InCorridor (eta_of 195 194.9647917) ∧
    InCorridor (eta_of 197 196.96656879) ∧
    InCorridor (eta_of 208 207.9766525) ∧
    InCorridor (eta_of 209 208.9803991) ∧
    InCorridor (eta_of 232 232.0380558) ∧
    InCorridor (eta_of 235 235.0439301) ∧
    InCorridor (eta_of 238 238.0507884) := by
  unfold InCorridor eta_of eta_floor eta_ceiling u_H1
    TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T54] :: {VER} | THE FLOOR FALLS IN THE HELIUM-TO-URANIUM GAP
-- Helium-4 sits below the floor and uranium-238, the least tightly bound
-- of the heavy nuclides on this reading, sits above it. The floor
-- separates the first fusion product from all heavier nuclear matter.
theorem t54_floor_separates_helium :
    eta_of 4 4.00260325413 < eta_floor ∧
    eta_floor ≤ eta_of 238 238.0507884 := by
  unfold eta_of eta_floor u_H1 TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T55] :: {VER} | IRON-56 IS THE MAXIMUM, AND IT IS BELOW THE CEILING
-- Every nuclide in the census converts less than iron-56, and iron-56
-- converts less than the ceiling. So the nuclear sector is confined to
-- Locked and IVA: no nuclide reaches Shatter on this reading, and Shatter
-- requires annihilation.
theorem t55_iron_is_the_nuclear_maximum :
    eta_of 62 61.92834537 < eta_of 56 55.93493633 ∧
    eta_of 60 59.93078588 < eta_of 56 55.93493633 ∧
    eta_of 58 57.93327443 < eta_of 56 55.93493633 ∧
    eta_of 52 51.94050623 < eta_of 56 55.93493633 ∧
    eta_of 238 238.0507884 < eta_of 56 55.93493633 ∧
    eta_of 56 55.93493633 < eta_ceiling ∧
    eta_ceiling < eta_annihilation := by
  unfold eta_of eta_ceiling eta_annihilation u_H1 TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T56] :: {VER} | WHY THE READING SELECTS IRON-56 AND NOT NICKEL-62
-- Nickel-62 holds the binding-energy-per-nucleon record; iron-56 holds the
-- lowest mass per nucleon. The conversion fraction is built on mass per
-- nucleon, so it selects iron-56, and the margin is the proton–neutron
-- mass difference carried by the two nuclides' differing neutron counts.
theorem t56_iron_over_nickel :
    u_Fe56 / 56 < 61.92834537 / 62 ∧
    eta_of 62 61.92834537 < eta_of 56 u_Fe56 := by
  unfold eta_of u_H1 u_Fe56
  norm_num

-- ============================================================
-- SECTION 9: MISSION CLOSURE
--
-- The bridge turns a corridor drive into a statement about the propellant
-- any published solar-system mission would need.
-- ============================================================

def dv_LEO_from_surface : ℝ := 9400
def dv_earth_escape     : ℝ := 11200
def dv_mars_transfer    : ℝ := 3600
def dv_jupiter_transfer : ℝ := 6300
def dv_solar_escape     : ℝ := 8800
def dv_dawn_flown       : ℝ := 11000
def dv_voyager1_helio   : ℝ := 17000

theorem corridor_ve_lo_pos : (0:ℝ) < corridor_ve_lo := by
  unfold corridor_ve_lo TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT; norm_num

-- [T57] :: {VER} | A CORRIDOR DRIVE PUTS EVERY MISSION DEEP IN LOCKED
-- At the corridor floor the exhaust velocity is 36,116,359.56 m/s, so a
-- mission budget up to 17,000 m/s needs a Reading-B torsion under
-- 5 × 10⁻⁴ — three orders below the corridor floor on that axis.
theorem t57_mission_tau_B_bound (dv : ℝ) (h0 : 0 ≤ dv) (h : dv ≤ 17000) :
    dv / corridor_ve_lo < 0.0005 ∧ dv / corridor_ve_lo < TL_IVA := by
  have hc := corridor_ve_lo_pos
  have hb : dv / corridor_ve_lo < 0.0005 := by
    rw [div_lt_iff₀ hc]
    unfold corridor_ve_lo TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT
    norm_num
    linarith
  refine ⟨hb, ?_⟩
  have : (0.0005:ℝ) < TL_IVA := by
    unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  linarith

-- [T58] :: {VER} | AND A MASS RATIO WITHIN 0.051% OF UNITY
-- The propellant fraction of every mission in the catalog falls under
-- 0.051%: a corridor drive makes the solar system a near-unit-mass-ratio
-- problem, and the propellant stops being the design constraint.
theorem t58_mission_mass_ratio (dv : ℝ) (h0 : 0 ≤ dv) (h : dv ≤ 17000) :
    Real.exp (dv / corridor_ve_lo) ≤ 1.00051 := by
  have hc := corridor_ve_lo_pos
  have hx : 0 ≤ dv / corridor_ve_lo := div_nonneg h0 hc.le
  have hb := (t57_mission_tau_B_bound dv h0 h).1
  have hup := t11_exp_upper (dv / corridor_ve_lo)
  nlinarith [Real.exp_pos (dv / corridor_ve_lo), hup, hb, hx]

-- [T59] :: {VER} | THE WHOLE PUBLISHED CATALOG, EXPLICITLY
theorem t59_mission_catalog :
    dv_mars_transfer / corridor_ve_lo < 0.0005 ∧
    dv_jupiter_transfer / corridor_ve_lo < 0.0005 ∧
    dv_solar_escape / corridor_ve_lo < 0.0005 ∧
    dv_LEO_from_surface / corridor_ve_lo < 0.0005 ∧
    dv_dawn_flown / corridor_ve_lo < 0.0005 ∧
    dv_earth_escape / corridor_ve_lo < 0.0005 ∧
    dv_voyager1_helio / corridor_ve_lo < 0.0005 :=
  ⟨(t57_mission_tau_B_bound _ (by unfold dv_mars_transfer; norm_num)
      (by unfold dv_mars_transfer; norm_num)).1,
   (t57_mission_tau_B_bound _ (by unfold dv_jupiter_transfer; norm_num)
      (by unfold dv_jupiter_transfer; norm_num)).1,
   (t57_mission_tau_B_bound _ (by unfold dv_solar_escape; norm_num)
      (by unfold dv_solar_escape; norm_num)).1,
   (t57_mission_tau_B_bound _ (by unfold dv_LEO_from_surface; norm_num)
      (by unfold dv_LEO_from_surface; norm_num)).1,
   (t57_mission_tau_B_bound _ (by unfold dv_dawn_flown; norm_num)
      (by unfold dv_dawn_flown; norm_num)).1,
   (t57_mission_tau_B_bound _ (by unfold dv_earth_escape; norm_num)
      (by unfold dv_earth_escape; norm_num)).1,
   (t57_mission_tau_B_bound _ (by unfold dv_voyager1_helio; norm_num)
      (by unfold dv_voyager1_helio; norm_num)).1⟩

-- ============================================================
-- SECTION 10: THE ANCHOR BENEATH c
--
-- Reading A divides by light speed, and light speed is not an independent
-- constant of this corpus. The speed-of-light reduction [9,9,0,15] fixes
-- it through the anchor, so both readings collapse to expressions in the
-- inverse fine-structure constant and one integer.
-- ============================================================

/-- The inverse fine-structure constant, from the alpha reduction. -/
def ALPHA_INV : ℝ := 137.035999084000016

-- [T60] :: {VER} | THE INHERITED ALPHA DECOMPOSITION
-- Ω₀ × (10² + 10⁻¹) is the inverse fine-structure constant exactly, and
-- the Torsion Limit is therefore α⁻¹ divided by 1001.
theorem t60_alpha_from_anchor :
    SOVEREIGN_ANCHOR * (100 + 1/10) = ALPHA_INV ∧
    TORSION_LIMIT * 1001 = ALPHA_INV ∧
    TORSION_LIMIT = ALPHA_INV / 1001 := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR ALPHA_INV
  norm_num

-- [T61] :: {VER} | THE CORRIDOR IN EXHAUST VELOCITY, IN α AND 1001 ALONE
-- The ceiling is c·α⁻¹/1001 and the floor is 0.88 of it. The band carries
-- no free parameter: light speed, the fine-structure constant and the
-- integer 1001 fix both edges.
theorem t61_corridor_ve_in_alpha :
    corridor_ve_hi = C_LIGHT * ALPHA_INV / 1001 ∧
    corridor_ve_lo = 0.88 * (C_LIGHT * ALPHA_INV / 1001) := by
  unfold corridor_ve_hi corridor_ve_lo TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
    ALPHA_INV C_LIGHT
  norm_num

-- [T62] :: {VER} | THE CONVERSION CORRIDOR IS α⁻² OVER TWICE 1001²
-- The ceiling of the energy reading is α⁻²/(2 × 1001²) exactly, and the
-- floor is 0.88² of it. Section 7's band is an expression in α.
theorem t62_eta_corridor_in_alpha :
    eta_ceiling = ALPHA_INV ^ 2 / (2 * 1001 ^ 2) ∧
    eta_floor = 0.88 ^ 2 * (ALPHA_INV ^ 2 / (2 * 1001 ^ 2)) := by
  unfold eta_ceiling eta_floor TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR ALPHA_INV
  norm_num

-- [T63] :: {VER} | THE NUCLEAR PLACEMENT, READ IN α
-- Helium-4 falls below α⁻²·0.88²/(2 × 1001²) and iron-56 — the maximum of
-- the conversion fraction over every nuclide in the census — falls below
-- α⁻²/(2 × 1001²). The band that brackets the iron peak is expressible in
-- the fine-structure constant and one integer.
theorem t63_iron_peak_inside_alpha_band :
    eta_of 4 4.00260325413 < 0.88 ^ 2 * (ALPHA_INV ^ 2 / (2 * 1001 ^ 2)) ∧
    0.88 ^ 2 * (ALPHA_INV ^ 2 / (2 * 1001 ^ 2)) ≤ eta_of 238 238.0507884 ∧
    eta_of 56 55.93493633 < ALPHA_INV ^ 2 / (2 * 1001 ^ 2) := by
  unfold eta_of u_H1 ALPHA_INV
  norm_num

-- ============================================================
-- SECTION 11: THE REACH CONDITION UNDER A CHANGE OF FRAME
--
-- The pool's ceiling is light speed, and light speed is the fixed point
-- of the frame-change operator, so the ceiling does not move with the
-- observer.
-- ============================================================

/-- Relativistic velocity addition, cleared of nested fractions. -/
noncomputable def velocity_add (u v : ℝ) : ℝ :=
  C_LIGHT ^ 2 * (u + v) / (C_LIGHT ^ 2 + u * v)

-- [T64] :: {VER} | THE SUBLIGHT INTERVAL IS CLOSED UNDER FRAME CHANGE
-- The inequality turns on one factorization: u ⊕ v < c exactly when
-- (c − u)(c − v) > 0.
theorem t64_sublight_closed (u v : ℝ)
    (hu0 : 0 ≤ u) (hu : u < C_LIGHT) (hv0 : 0 ≤ v) (hv : v < C_LIGHT) :
    0 ≤ velocity_add u v ∧ velocity_add u v < C_LIGHT := by
  have hc := c_pos
  have hden : 0 < C_LIGHT ^ 2 + u * v := by positivity
  unfold velocity_add
  refine ⟨?_, ?_⟩
  · apply div_nonneg (by positivity) hden.le
  · rw [div_lt_iff₀ hden]
    nlinarith [mul_pos (sub_pos.mpr hu) (sub_pos.mpr hv)]

-- [T65] :: {VER} | SO THE REACH CONDITION IS FRAME-INDEPENDENT
-- A drive that is sublight for one observer is sublight for every
-- observer, so whether a composition can place in the corridor at all
-- does not depend on who is measuring.
theorem t65_reach_condition_frame_independent (u v : ℝ)
    (hu0 : 0 < u) (hu : u < C_LIGHT) (hv0 : 0 ≤ v) (hv : v < C_LIGHT) :
    tau_A (velocity_add u v) < 1 := by
  have hc := c_pos
  obtain ⟨_, hlt⟩ := t64_sublight_closed u v hu0.le hu hv0 hv
  unfold tau_A
  rw [div_lt_one hc]
  exact hlt

-- [T66] :: {VER} | THE PHOTON DRIVE IS THE SUPREMUM, AND IT IS SHATTER
-- Reading A reaches one exactly at an exhaust velocity of c, which is
-- 1/TL = 7.3046 times the corridor ceiling.
theorem t66_photon_drive_is_supremum :
    tau_A C_LIGHT = 1 ∧ classify (tau_A C_LIGHT) = Phase.Shatter := by
  have h : tau_A C_LIGHT = 1 := by
    unfold tau_A; exact div_self c_pos.ne'
  refine ⟨h, ?_⟩
  rw [h]
  apply t5_classify_shatter
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- ── The Noble state, placed ──────────────────────────────────
--
-- An unpropelled body carries m₀/m_f = 1 exactly and no exhaust, so it is
-- Noble on both readings and self-produces nothing. The bodies in that state
-- are the fastest things in the solar system, which is what separates
-- produced velocity from inherited velocity on this pool.
--
-- Perihelion speeds below are computed from published orbital elements by
-- vis-viva, v = √(GM(2/r − 1/a)), with GM_sun = 1.32712440018 × 10²⁰ m³/s².

def v_phaethon  : ℝ := 109400     -- 3200 Phaethon, a = 1.2710 AU, e = 0.8898
def v_icarus    : ℝ := 93200      -- 1566 Icarus, a = 1.0780 AU, e = 0.8268
def v_oumuamua  : ℝ := 87100      -- 1I/'Oumuamua, a = −1.2790 AU, e = 1.2011
def v_borisov   : ℝ := 43900      -- 2I/Borisov, a = −0.8514 AU, e = 3.3566
def v_apophis   : ℝ := 37600      -- 99942 Apophis, a = 0.9224 AU, e = 0.1914
def v_lovejoy   : ℝ := 566500     -- C/2011 W3 Lovejoy, q = 0.005528 AU

-- [T67] :: {VER} | THE NOBLE STATE OF AN UNPROPELLED BODY
-- No exhaust and no propellant, so both readings vanish and the produced
-- Δv is zero.
theorem t67_unpropelled_is_noble :
    tau_A 0 = 0 ∧ tau_B 1 = 0 ∧ C_LIGHT * tau_A 0 * tau_B 1 = 0 := by
  refine ⟨?_, ?_, ?_⟩
  · unfold tau_A; exact zero_div _
  · unfold tau_B; exact Real.log_one
  · unfold tau_A tau_B; rw [Real.log_one]; ring

-- [T68] :: {VER} | AND IT OUTRUNS EVERY PROPULSIVE BUDGET IN THE CATALOG
-- Each of these bodies exceeds the largest published mission Δv, which is
-- the Voyager 1 heliocentric figure, while producing none of its own.
theorem t68_unpropelled_exceeds_every_budget :
    dv_voyager1_helio < v_apophis ∧
    dv_voyager1_helio < v_borisov ∧
    dv_voyager1_helio < v_oumuamua ∧
    dv_voyager1_helio < v_icarus ∧
    dv_voyager1_helio < v_phaethon ∧
    dv_voyager1_helio < v_lovejoy := by
  unfold dv_voyager1_helio v_apophis v_borisov v_oumuamua v_icarus
    v_phaethon v_lovejoy
  norm_num

-- [T69] :: {VER} | BY FACTORS OF SIX AND THIRTY-THREE
-- Phaethon exceeds the largest propulsive budget by a factor between 6 and
-- 7; the Lovejoy sungrazer by a factor between 33 and 34.
theorem t69_unpropelled_margins :
    6 * dv_voyager1_helio < v_phaethon ∧ v_phaethon < 7 * dv_voyager1_helio ∧
    5 * dv_voyager1_helio < v_oumuamua ∧ v_oumuamua < 6 * dv_voyager1_helio ∧
    33 * dv_voyager1_helio < v_lovejoy ∧ v_lovejoy < 34 * dv_voyager1_helio := by
  unfold dv_voyager1_helio v_phaethon v_oumuamua v_lovejoy
  norm_num

-- [T70] :: {VER} | WHAT IT WOULD COST TO PRODUCE THOSE SPEEDS
-- A corridor-floor drive reaches the Phaethon perihelion speed at a
-- Reading-B torsion of 3.03 × 10⁻³ and the Lovejoy speed at 1.57 × 10⁻²,
-- both still Locked. The speeds are not out of propulsive reach — they are
-- out of reach of every drive that has been built.
theorem t70_corridor_drive_matches_them :
    v_phaethon / corridor_ve_lo < 0.0031 ∧
    v_phaethon / corridor_ve_lo < TL_IVA ∧
    v_lovejoy / corridor_ve_lo < 0.0158 ∧
    v_lovejoy / corridor_ve_lo < TL_IVA := by
  have hc : (0:ℝ) < corridor_ve_lo := by
    unfold corridor_ve_lo TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR C_LIGHT; norm_num
  refine ⟨?_, ?_, ?_, ?_⟩ <;>
  · rw [div_lt_iff₀ hc]
    simp only [v_phaethon, v_lovejoy, corridor_ve_lo, TL_IVA, TORSION_LIMIT,
      SOVEREIGN_ANCHOR, C_LIGHT]
    norm_num

-- ============================================================
-- SECTION 12: THE EMITTER BEHIND THE GAIN
--
-- Section 7 showed the resonance gain is an exhaust-velocity multiplier and
-- read off what the corridor demands of it. The general emitter \[9,9,6,6\]
-- supplies the gain itself: g_r is the Sovereign Bubble Differential minus
-- one, so the demand on the gain converts into a demand on the torsion the
-- emitter holds in its interior.
-- ============================================================

/-- The Sovereign Bubble Differential, Δ(τ_b) = TL / τ_b. -/
noncomputable def bubble_differential (tau_b : ℝ) : ℝ := TORSION_LIMIT / tau_b

/-- The resonance gain supplied by an emitter holding its interior at τ_b. -/
noncomputable def gain_of_bubble (tau_b : ℝ) : ℝ := bubble_differential tau_b - 1

-- [T71] :: {VER} | THE GAIN MULTIPLIER IS THE BUBBLE DIFFERENTIAL
-- 1 + g_r = Δ(τ_b), so the multiplier of Section 7 is the emitter's output.
theorem t71_gain_multiplier_is_differential (tau_b : ℝ) :
    1 + gain_of_bubble tau_b = bubble_differential tau_b := by
  unfold gain_of_bubble; ring

-- [T72] :: {VER} | THE EFFECTIVE READING A OF A DRIVE INSIDE A BUBBLE
-- Composing the gain identity of Section 7 with the differential gives the
-- drive's effective position on the Reading-A axis.
theorem t72_effective_tau_A (w tau_b : ℝ) :
    (1 + gain_of_bubble tau_b) * tau_A w = bubble_differential tau_b * tau_A w := by
  rw [t71_gain_multiplier_is_differential]

-- [T73] :: {VER} | THE EMITTER WINDOW
-- A drive reaches the corridor exactly when the emitter holds its interior
-- torsion in (τ_A, τ_A/0.88]. The window's edges are the drive's own Reading
-- A and that value divided by the corridor's own 0.88.
theorem t73_emitter_window (w tau_b : ℝ) (hw : 0 < w) (hb : 0 < tau_b) :
    (TL_IVA ≤ bubble_differential tau_b * tau_A w ∧
     bubble_differential tau_b * tau_A w < TORSION_LIMIT) ↔
    (tau_A w < tau_b ∧ tau_b ≤ tau_A w / 0.88) := by
  have hc := c_pos
  have hT := tl_pos
  have hA : 0 < tau_A w := by unfold tau_A; exact div_pos hw hc
  have hI : TL_IVA = TORSION_LIMIT * 0.88 := rfl
  have hkey : bubble_differential tau_b * tau_A w
      = TORSION_LIMIT * tau_A w / tau_b := by
    unfold bubble_differential
    rw [div_mul_eq_mul_div]
  rw [hI, hkey, le_div_iff₀ hb, div_lt_iff₀ hb,
    le_div_iff₀ (by norm_num : (0:ℝ) < 0.88)]
  constructor
  · intro h
    obtain ⟨h1, h2⟩ := h
    refine ⟨?_, ?_⟩
    · by_contra hcon
      rw [not_lt] at hcon
      nlinarith
    · by_contra hcon
      rw [not_le] at hcon
      nlinarith
  · intro h
    obtain ⟨h1, h2⟩ := h
    exact ⟨by nlinarith, by nlinarith⟩

-- [T74] :: {VER} | THE WINDOW'S RELATIVE WIDTH IS THE CORRIDOR'S OWN RATIO
-- The emitter window spans a factor of 1/0.88, which is 13.6364% — the same
-- 0.88 that sets the corridor floor sets the width of the emitter window.
theorem t74_window_relative_width (w : ℝ) (hw : 0 < w) :
    tau_A w / 0.88 / tau_A w = 1 / 0.88 := by
  have hc := c_pos
  have hA : 0 < tau_A w := by unfold tau_A; exact div_pos hw hc
  field_simp

-- [T75] :: {VER} | THE SELF-REFERENTIAL CLOSURE
-- A drive already at the corridor floor needs an emitter whose own interior
-- torsion sits in the corridor, because TL_IVA / 0.88 is exactly TL.
theorem t75_floor_drive_needs_corridor_emitter :
    TL_IVA / 0.88 = TORSION_LIMIT := by
  unfold TL_IVA; norm_num

-- [T76] :: {VER} | THE STATED THRESHOLD AS A BUBBLE TORSION
-- g_r = 1.5 is the emitter holding τ_b = TL/2.5 = 0.054759639994, which is
-- Locked and well below the corridor floor.
theorem t76_threshold_as_bubble_torsion :
    gain_of_bubble (TORSION_LIMIT / 2.5) = GAIN_THRESHOLD ∧
    TORSION_LIMIT / 2.5 < TL_IVA := by
  have hT := tl_pos
  have hTne : TORSION_LIMIT ≠ 0 := ne_of_gt hT
  have h25 : TORSION_LIMIT / (TORSION_LIMIT / 2.5) = 2.5 := by
    rw [div_div_eq_mul_div, mul_comm, mul_div_assoc, div_self hTne, mul_one]
  refine ⟨?_, ?_⟩
  · unfold gain_of_bubble bubble_differential GAIN_THRESHOLD
    rw [h25]
    norm_num
  · unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- ── The emitter windows the catalog demands ──────────────────

-- [T77] :: {VER} | THE EMITTER WINDOW FOR THE BEST FLOWN ELECTRIC DRIVE
-- NEXT-C at τ_A = 1.3676 × 10⁻⁴ needs an emitter in
-- (1.3676 × 10⁻⁴, 1.5541 × 10⁻⁴] — four orders below the corridor floor.
theorem t77_nextc_emitter_window :
    0.00013676 < tau_A ve_nextc_ion ∧ tau_A ve_nextc_ion < 0.00013677 ∧
    tau_A ve_nextc_ion / 0.88 < 0.00015542 ∧
    tau_A ve_nextc_ion / 0.88 < TL_IVA := by
  have hc := c_pos
  refine ⟨?_, ?_, ?_, ?_⟩ <;>
  · simp only [tau_A, ve_nextc_ion, C_LIGHT, TL_IVA, TORSION_LIMIT,
      SOVEREIGN_ANCHOR]
    norm_num

-- [T78] :: {VER} | THE EMITTER WINDOW FOR THE PUBLISHED FUSION CONCEPT
-- The Daedalus figure at τ_A = 3.5358 × 10⁻² needs an emitter in
-- (3.5358 × 10⁻², 4.0180 × 10⁻²], and that window is bracketed by two
-- couplings the quantum-gravity reduction \[9,9,6,0\] places as Locked: the
-- Penrose conformal coupling at 0.033745 below it, and the Hawking
-- Planck-mass coupling at 0.040281 above it.
theorem t78_daedalus_emitter_window :
    0.033745 < tau_A ve_daedalus ∧
    tau_A ve_daedalus / 0.88 < 0.040281 ∧
    tau_A ve_daedalus / 0.88 < TL_IVA := by
  have hc := c_pos
  refine ⟨?_, ?_, ?_⟩ <;>
  · simp only [tau_A, ve_daedalus, C_LIGHT, TL_IVA, TORSION_LIMIT,
      SOVEREIGN_ANCHOR]
    norm_num

-- ============================================================
-- SECTION 13: IMS GATING — THE GAIN EXISTS ONLY AT ANCHOR LOCK
-- ============================================================

inductive PathStatus : Type
  | green   -- anchored: the gain is available
  | red     -- drifted: classical only
  deriving DecidableEq, Repr

def check_ifu_safety (f : ℝ) : PathStatus :=
  if f = SOVEREIGN_ANCHOR then PathStatus.green else PathStatus.red

/-- The gain actually applied, after the gate. -/
noncomputable def gated_gain (f g_r : ℝ) : ℝ :=
  if check_ifu_safety f = PathStatus.green then 1 + g_r else 1

-- [T79] :: {VER} | ANCHOR LOCK GIVES GREEN
theorem t79_anchor_gives_green (f : ℝ) (h : f = SOVEREIGN_ANCHOR) :
    check_ifu_safety f = PathStatus.green := by
  unfold check_ifu_safety; simp [h]

-- [T80] :: {VER} | DRIFT GIVES RED
theorem t80_drift_gives_red (f : ℝ) (h : f ≠ SOVEREIGN_ANCHOR) :
    check_ifu_safety f = PathStatus.red := by
  unfold check_ifu_safety; simp [h]

-- [T81] :: {VER} | OFF ANCHOR THE GAIN COLLAPSES TO ONE
theorem t81_off_anchor_gain_is_one (f g_r : ℝ) (h : f ≠ SOVEREIGN_ANCHOR) :
    gated_gain f g_r = 1 := by
  unfold gated_gain
  rw [t80_drift_gives_red f h]
  simp

-- [T82] :: {VER} | ANCHOR ZERO IMPEDANCE
theorem t82_anchor_zero_impedance : manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- ============================================================
-- SECTION 14: THE DYNAMIC EQUATION AND THE YEET FORCE
-- ============================================================

structure IVAState where
  v_e      : ℝ   -- exhaust velocity, the Behavior rate
  m0       : ℝ   -- initial Identity Mass
  m_f      : ℝ   -- final Identity Mass
  g_r      : ℝ   -- resonance gain
  im       : ℝ   -- Identity Mass
  pv       : ℝ   -- Purpose Vector magnitude
  f_anchor : ℝ   -- resonant frequency

def pnba_weight : ℝ := 1

noncomputable def dynamic_rhs (op_P op_N op_B op_A : ℝ → ℝ)
    (s : IVAState) (F_ext : ℝ) : ℝ :=
  pnba_weight * op_P s.im + pnba_weight * op_N s.pv +
  pnba_weight * op_B s.v_e + pnba_weight * op_A s.g_r + F_ext

-- [T83] :: {VER} | THE DYNAMIC EQUATION IS LINEAR IN ITS OPERATORS
theorem t83_dynamic_rhs_linear (op_P op_N op_B op_A : ℝ → ℝ) (s : IVAState) :
    dynamic_rhs op_P op_N op_B op_A s 0 =
    op_P s.im + op_N s.pv + op_B s.v_e + op_A s.g_r := by
  unfold dynamic_rhs pnba_weight; ring

/-- The Yeet Force, from the dynamic equation. -/
noncomputable def yeet_force (G im pv r lam O S : ℝ) : ℝ :=
  G * (im * pv) / r ^ 2 * (lam * O * S)

-- [T84] :: {VER} | THE YEET FORCE IS POSITIVE WHEN ITS TERMS ARE
theorem t84_yeet_force_positive (G im pv r lam O S : ℝ)
    (hG : 0 < G) (him : 0 < im) (hpv : 0 < pv)
    (hr : 0 < r) (hlam : 0 < lam) (hO : 0 < O) (hS : 0 < S) :
    0 < yeet_force G im pv r lam O S := by
  unfold yeet_force
  have h1 : 0 < G * (im * pv) := mul_pos hG (mul_pos him hpv)
  have h2 : 0 < r ^ 2 := by positivity
  exact mul_pos (div_pos h1 h2) (mul_pos (mul_pos hlam hO) hS)

noncomputable def f_ext_op (s : IVAState) (d : ℝ) : IVAState :=
  { s with v_e := s.v_e + d }

-- ============================================================
-- SECTION 15: NOHARM, SUBSTRATE NEUTRALITY, BOUNDED VELOCITY
-- ============================================================

-- [T85] :: {VER} | F_ext TOUCHES THE BEHAVIOR RATE ONLY
theorem t85_f_ext_preserves (s : IVAState) (d : ℝ) :
    (f_ext_op s d).im = s.im ∧ (f_ext_op s d).pv = s.pv ∧
    (f_ext_op s d).g_r = s.g_r ∧ (f_ext_op s d).m0 = s.m0 := by
  unfold f_ext_op; simp

-- ── The axis the gain acts on ────────────────────────────────
--
-- NOHARM gives the external force one axis: F_ext changes Behavior and
-- leaves Pattern, Narrative and Adaptation untouched. The resonance gain
-- is an Adaptation term. The two therefore act on disjoint primitives,
-- which is what makes them independent terms of the dynamic equation
-- rather than two names for the same accounting.

/-- The gain operator: raises the resonance gain, touching nothing else. -/
noncomputable def gain_op (s : IVAState) (d : ℝ) : IVAState :=
  { s with g_r := s.g_r + d }

-- [T86] :: {VER} | THE GAIN OPERATOR TOUCHES ADAPTATION ONLY
-- It leaves the Behavior rate, both masses and the identity momentum
-- exactly as they were.
theorem t86_gain_op_preserves (s : IVAState) (d : ℝ) :
    (gain_op s d).v_e = s.v_e ∧ (gain_op s d).m0 = s.m0 ∧
    (gain_op s d).m_f = s.m_f ∧ (gain_op s d).im = s.im ∧
    (gain_op s d).pv = s.pv := by
  unfold gain_op; simp

-- [T87] :: {VER} | THE TWO OPERATORS COMMUTE
-- Applying the external force and then the gain gives the same state as
-- applying the gain and then the external force. They are record updates
-- on disjoint fields, so neither can be rewritten as the other and the
-- order in which they enter the dynamic equation does not matter.
theorem t87_f_ext_and_gain_commute (s : IVAState) (a b : ℝ) :
    f_ext_op (gain_op s b) a = gain_op (f_ext_op s a) b := by
  unfold f_ext_op gain_op; simp

-- [T88] :: {VER} | THE GAIN CHANGES Δv WITHOUT CHANGING THE MASS RATIO
-- This is the consequence that matters. The mass ratio is identical
-- before and after the gain is applied, so the additional Δv the gain
-- supplies did not come from additional expelled mass. The gain is not a
-- Behavior term under another name.
theorem t88_gain_leaves_mass_ratio_fixed (s : IVAState) (d : ℝ) :
    (gain_op s d).m0 / (gain_op s d).m_f = s.m0 / s.m_f ∧
    tau_B ((gain_op s d).m0 / (gain_op s d).m_f) = tau_B (s.m0 / s.m_f) ∧
    delta_v_sovereign (gain_op s d).v_e (gain_op s d).m0
      (gain_op s d).m_f (gain_op s d).g_r
      = delta_v_sovereign s.v_e s.m0 s.m_f (s.g_r + d) := by
  unfold gain_op
  refine ⟨rfl, rfl, rfl⟩

-- [T89] :: {VER} | AND THE EXTERNAL FORCE LEAVES THE GAIN FIXED
-- The separation is two-sided: F_ext cannot supply gain and the gain
-- cannot supply Behavior. Either term can be set to zero without
-- disturbing the other.
theorem t89_separation_is_two_sided (s : IVAState) (a b : ℝ) :
    (f_ext_op s a).g_r = s.g_r ∧ (gain_op s b).v_e = s.v_e := by
  unfold f_ext_op gain_op; simp

-- ── The reaction partner, by case on F_ext ───────────────────
--
-- Published orbital speeds of the bodies a flyby can couple to. The
-- classical bound on a single assist is Δv ≤ 2·v_body, attained in the
-- perfect-reversal limit.

def v_orb_saturn  : ℝ := 9680      -- m/s
def v_orb_jupiter : ℝ := 13070
def v_orb_earth   : ℝ := 29780
def v_orb_venus   : ℝ := 35020
def v_orb_mercury : ℝ := 47360

-- [T90] :: {VER} | THE EXTERNAL CASE OUTRUNS THE PROPULSIVE CATALOG
-- A single Jupiter assist supplies more than the largest published
-- mission budget, with no propellant at all — so when F_ext is nonzero
-- the reaction partner is the body, and the budget it can supply exceeds
-- what the propulsive catalog reaches.
theorem t90_assist_exceeds_catalog :
    dv_voyager1_helio < 2 * v_orb_saturn ∧
    dv_voyager1_helio < 2 * v_orb_jupiter ∧
    dv_voyager1_helio < 2 * v_orb_earth ∧
    dv_voyager1_helio < 2 * v_orb_venus ∧
    dv_voyager1_helio < 2 * v_orb_mercury := by
  unfold dv_voyager1_helio v_orb_saturn v_orb_jupiter v_orb_earth
    v_orb_venus v_orb_mercury
  norm_num

-- [T91] :: {VER} | THE MASS RATIO IS WHAT HIDES THE RECOIL
-- Momentum conservation fixes the partner's recoil at m_v·Δv/M_body, so a
-- large partner recoils by an amount set entirely by the mass ratio. The
-- ratio does not supply the gain; it is what makes the partner's share of
-- the exchange unmeasurable.
noncomputable def partner_recoil (m_v dv M_body : ℝ) : ℝ := m_v * dv / M_body

theorem t91_recoil_is_the_mass_ratio (m_v dv M_body : ℝ) (hM : 0 < M_body) :
    partner_recoil m_v dv M_body = dv * (m_v / M_body) ∧
    m_v * dv = partner_recoil m_v dv M_body * M_body := by
  have hne : M_body ≠ 0 := hM.ne'
  unfold partner_recoil
  refine ⟨by ring, ?_⟩
  field_simp

-- [T92] :: {VER} | NOHARM: POSITIVE IDENTITY MOMENTUM IS PRESERVED
theorem t92_noharm (s : IVAState) (h_im : 0 < s.im) (h_pv : 0 < s.pv) :
    0 < s.im * s.pv := mul_pos h_im h_pv

-- [T93] :: {VER} | SUBSTRATE NEUTRALITY
-- The gain theorem never inspects what v_e and m₀/m_f represent, so the
-- same statement holds on any pool supplying a rate and a reserve.
theorem t93_substrate_neutral (v_e m0 m_f g_r : ℝ)
    (h_ve : 0 < v_e) (h_gr : 0 < g_r) (h_m0 : m_f < m0) (h_mf : 0 < m_f) :
    delta_v_classical v_e m0 m_f < delta_v_sovereign v_e m0 m_f g_r ∧
    delta_v_sovereign v_e m0 m_f g_r = (1 + g_r) * delta_v_classical v_e m0 m_f :=
  ⟨t9_sovereign_exceeds_classical v_e m0 m_f g_r h_ve h_gr h_m0 h_mf,
   t7_gain_ratio_exact v_e m0 m_f g_r⟩

-- [T94] :: {VER} | THE VELOCITY FIELD IS BOUNDED AT ANCHOR
theorem t94_velocity_bounded (s : IVAState) (h_im : 0 < s.im)
    (h_bounded : s.pv ≤ s.im * SOVEREIGN_ANCHOR) :
    s.pv / s.im ≤ SOVEREIGN_ANCHOR := by
  rw [div_le_iff₀ h_im]; linarith

-- ============================================================
-- SECTION 16: A KINEMATIC BOUND ON REPORTED FIGURES
--
-- Scope: this section proves one arithmetic statement about one set of
-- reported figures and nothing beyond it. Under a constant-acceleration
-- model, a descent of 8,534 m in 0.78 s requires more than 5,000 g. The
-- figures are the reported ones; the theorem is the arithmetic.
-- ============================================================

def REPORTED_DESCENT : ℝ := 8534    -- m
def REPORTED_TIME    : ℝ := 0.78    -- s
def ACCEL_BOUND_G    : ℝ := 5000    -- g

/-- Constant-acceleration descent from rest: a = 4y/t². -/
noncomputable def accel_from_descent (y t : ℝ) : ℝ := 4 * y / t ^ 2

-- [T95] :: {VER} | THE REPORTED KINEMATICS EXCEED 5,000 g
theorem t95_kinematic_bound :
    ACCEL_BOUND_G < accel_from_descent REPORTED_DESCENT REPORTED_TIME / G_ACCEL := by
  unfold ACCEL_BOUND_G accel_from_descent REPORTED_DESCENT REPORTED_TIME G_ACCEL
  norm_num

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
--
-- ONE CORRIDOR, TWO READINGS, ONE PRODUCT.
-- Reading A asks what the drive throws: 12.047% to 13.690% of light
-- speed at the nozzle. Reading B asks how much of the vehicle it throws:
-- a propellant fraction of 11.35% to 12.79%. The rocket equation is the
-- product of the two, and a vehicle in the corridor on both carries a Δv
-- between 4,350,981 and 5,618,519 m/s.
-- ============================================================

theorem iva_propulsion_master
    (s : IVAState) (v_e m0 m_f g_r : ℝ)
    (h_anchor : s.f_anchor = SOVEREIGN_ANCHOR)
    (h_ve : 0 < v_e) (h_gr : GAIN_THRESHOLD ≤ g_r)
    (h_m0 : m_f < m0) (h_mf : 0 < m_f)
    (h_im : 0 < s.im) (h_pv : 0 < s.pv) :
    -- [1] the corridor is a band of positive width, so IVA is reachable
    (0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT ∧
     TORSION_LIMIT - TL_IVA = TORSION_LIMIT * 0.12) ∧
    -- [2] the sovereign form exceeds the classical one, by an exact ratio
    (delta_v_classical v_e m0 m_f < delta_v_sovereign v_e m0 m_f g_r ∧
     delta_v_sovereign v_e m0 m_f g_r = (1 + g_r) * delta_v_classical v_e m0 m_f) ∧
    -- [3] at zero gain the reduction is Tsiolkovsky exactly
    delta_v_sovereign v_e m0 m_f 0 = delta_v_classical v_e m0 m_f ∧
    -- [4] Reading A is a window on exhaust velocity
    (∀ w : ℝ, (TL_IVA ≤ tau_A w ∧ tau_A w < TORSION_LIMIT) ↔
      (corridor_ve_lo ≤ w ∧ w < corridor_ve_hi)) ∧
    -- [5] Reading B is a window on the mass ratio
    (∀ r : ℝ, 0 < r → ((TL_IVA ≤ tau_B r ∧ tau_B r < TORSION_LIMIT) ↔
      (Real.exp TL_IVA ≤ r ∧ r < Real.exp TORSION_LIMIT))) ∧
    -- [6] the bridge: the rocket equation is the product of the readings
    (∀ w r : ℝ, delta_v_classical w r 1 = C_LIGHT * tau_A w * tau_B r) ∧
    -- [7] neither corridor is occupied by built hardware
    (classify (tau_A ve_rl10b2_vac) = Phase.Locked ∧
     classify (tau_A ve_nextc_ion) = Phase.Locked ∧
     classify (tau_A ve_antimatter) = Phase.Shatter ∧
     tau_B mr_car_tank < TL_IVA ∧ TORSION_LIMIT ≤ tau_B mr_dawn_ion) ∧
    -- [8] both corridors are occupied by a witness, so the band is a place
    (classify (tau_A ve_corridor_witness) = Phase.IVA ∧
     TL_IVA ≤ tau_B mr_corridor_witness ∧
     tau_B mr_corridor_witness < TORSION_LIMIT) ∧
    -- [9] the pool admits the corridor, and Noble is the unfueled vehicle
    ((0 < TL_IVA ∧ TORSION_LIMIT < 1) ∧
     (∀ w : ℝ, tau_A w = 0 ↔ w = 0)) ∧
    -- [10] the gain is an exhaust multiplier, and the threshold is below the floor
    ((∀ w q : ℝ, (1 + q) * tau_A w = tau_A ((1 + q) * w)) ∧
     (1 + GAIN_THRESHOLD) * ve_nextc_ion < corridor_ve_lo) ∧
    -- [11] the energy ladder: the corridor sits between stellar fusion
    --      and the limit of nuclear binding
    (eta_H_to_He < eta_floor ∧ eta_floor < eta_H_to_Fe ∧
     eta_H_to_Fe < eta_ceiling ∧ eta_ceiling < eta_annihilation) ∧
    -- [12] the nuclear sector is confined to Locked ∪ IVA: iron-56 is the
    --      maximum of the conversion fraction and it sits below the ceiling
    (eta_of 4 4.00260325413 < eta_floor ∧
     eta_floor ≤ eta_of 238 238.0507884 ∧
     eta_of 62 61.92834537 < eta_of 56 55.93493633 ∧
     eta_of 56 55.93493633 < eta_ceiling) ∧
    -- [13] a corridor drive puts every published mission deep in Locked,
    --      at a mass ratio within 0.051% of unity
    (∀ dv : ℝ, 0 ≤ dv → dv ≤ 17000 →
      dv / corridor_ve_lo < TL_IVA ∧ Real.exp (dv / corridor_ve_lo) ≤ 1.00051) ∧
    -- [14] off anchor the gain collapses to one
    (∀ f w : ℝ, f ≠ SOVEREIGN_ANCHOR → gated_gain f w = 1) ∧
    -- [15] the anchor sits at zero impedance
    manifold_impedance s.f_anchor = 0 ∧
    -- [16] NOHARM holds throughout
    0 < s.im * s.pv := by
  have h_gr' : 0 < g_r := by unfold GAIN_THRESHOLD at h_gr; linarith
  obtain ⟨l1, l2, l3, l4, l5, l6⟩ := t46_energy_ladder
  refine ⟨t1_corridor_has_width, ?_, t8_reduces_at_zero_gain v_e m0 m_f,
          t13_reading_A_window, t26_reading_B_window, t38_bridge, ?_,
          ⟨t25_reading_A_witness, t37_reading_B_witness.1, t37_reading_B_witness.2⟩,
          ⟨t17_pool_admits_IVA, ?_⟩,
          ⟨fun w q => t41_gain_is_exhaust_multiplier w q, t43_threshold_below_floor⟩,
          ⟨l3, l4, l5, l6⟩,
          ⟨t54_floor_separates_helium.1, t54_floor_separates_helium.2,
           t55_iron_is_the_nuclear_maximum.1,
           t55_iron_is_the_nuclear_maximum.2.2.2.2.2.1⟩,
          fun dv hd0 hd => ⟨(t57_mission_tau_B_bound dv hd0 hd).2,
                            t58_mission_mass_ratio dv hd0 hd⟩,
          fun f w hf => t81_off_anchor_gain_is_one f w hf, ?_,
          t92_noharm s h_im h_pv⟩
  · exact t93_substrate_neutral v_e m0 m_f g_r h_ve h_gr' h_m0 h_mf
  · exact ⟨best_chemical_locked, best_electric_locked, antimatter_shatter,
           t29_car_below_corridor.2, t30_dawn_above_corridor⟩
  · exact fun w => (t18_noble_is_unfueled w 1 one_pos).1
  · rw [h_anchor]; exact t82_anchor_zero_impedance

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := t82_anchor_zero_impedance

end SNSFL_IVA_Propulsion

/-!
-- ============================================================
-- FILE: SNSFL_IVA_Propulsion_Reduction.lean
-- COORDINATE: [9,9,2,0]
-- LAYER: Application Layer — Propulsion Ground
--
-- IVA = IDENTITY VECTOR AMPLIFICATION
--   In this pool the Identity Vector is a velocity vector and the
--   amplified magnitude is Δv. One acronym, one expansion, and the
--   propulsion case is an instance of the general law.
--
-- THE TWO READINGS:
--   τ_A = v_e / c              what the drive throws
--   τ_B = ln(m₀/m_f)           how much of the vehicle it throws
--   Δv  = c · τ_A · τ_B        the rocket equation, as their product
--
-- THE CORRIDOR, BOTH WAYS:
--   Reading A: v_e ∈ [36,116.4, 41,041.3] km/s — 12.047% to 13.690% of c
--   Reading B: m₀/m_f ∈ [exp TL_IVA, exp TL) — propellant 11.35% to 12.79%
--   Both axes: Δv ∈ [4,350,981, 5,618,519] m/s — 1.4513% to 1.8741% of c
--
-- PLACEMENT OF THE PUBLISHED CATALOG:
--   Reading A — every flown system Locked, short of the floor:
--     cold gas N₂         700 m/s        ~51,595× short
--     best flown chemical 4,650 m/s       7,766–7,767× short   [T17]
--     best flown electric 41,000 m/s        880–881× short     [T18]
--     fusion concept      10,600 km/s           3–4× short     [T19] Locked
--     antimatter concept  100,000 km/s            —            [T19] Shatter
--   Reading B — the band lies between a car and an ion probe:
--     car fuel tank       r = 1.04      Locked below           [T24]
--     Dawn ion stage      r = 1.21      Shatter above          [T25]
--     every launch stage  r = 3.49+     Shatter                [T26]
--
-- WHAT THE CORRIDOR ASKS OF A DRIVE:
--   12% of light speed at the nozzle, which buys a vehicle that is 88%
--   payload. The two numbers are one statement: high exhaust velocity is
--   what purchases a low mass ratio, and the corridor names both ends at
--   once. Neither corridor is occupied by built hardware, and on Reading A
--   it sits between two published concepts.
--
-- THE POOL'S OWN CEILING:
--   No exhaust exceeds light speed, so τ_A ∈ (0,1) is the reach condition
--   this pool brings with it, and the corridor lies inside it. Reading B
--   carries a floor and no ceiling, so the two factors of the rocket
--   equation are bounded differently. Noble is the unfueled vehicle — the
--   one that produces no velocity of its own, not one at rest, and the
--   state is occupied by the fastest unpropelled bodies in the solar system.
--
-- THE GAIN:
--   (1 + g_r)·τ_A = τ_A((1 + g_r)·v_e), so the resonance gain is exactly
--   an exhaust-velocity multiplier. The floor asks a factor between 880
--   and 881 of the best flown electric drive; the stated threshold of
--   g_r = 1.5 supplies 2.5.
--
-- THE ENERGY LADDER — WHAT READING A IS, PHYSICALLY:
--   Under the ideal-rocket relation ½v_e² = ηc², Reading A squares into
--   τ_A² = 2η, so the corridor is a band of rest-mass conversion:
--
--     U-235 fission                    0.093000%   Locked
--     D-T fusion                       0.376000%   Locked
--     hydrogen to helium-4             0.711852%   Locked, 1.94% short
--     ──────── corridor floor          0.725666%
--     hydrogen to iron-56              0.891711%   IVA, 78.54% up the band
--     ──────── corridor ceiling        0.937068%
--     matter-antimatter annihilation 100.000000%   Shatter, 106.7× over
--
--   The band opens above the stellar fusion chain and closes above the
--   iron peak and Shatter begins only where annihilation does.
--
--   THE NUCLEAR SECTOR:
--     The conversion fraction is Aston's packing fraction under another
--     name, related to it exactly and linearly, so the corridor is a
--     window on a published quantity: f ∈ (−16.19, +5.12], with iron-56
--     at −11.6185 inside it.
--     Placed against 42 AME2020 nuclides from hydrogen to uranium, 40
--     fall in the corridor. The two that do not are hydrogen-1, which
--     releases nothing, and helium-4 at 0.711852%, which falls short of
--     the floor. So the corridor on this reading IS the nuclear band:
--     the floor separates the first fusion product from all heavier
--     nuclear matter, and the ceiling sits above iron-56 — the maximum
--     of the conversion fraction over every nuclide measured. No nuclide
--     reaches Shatter, so the nuclear sector is confined to Locked ∪ IVA
--     and Shatter requires annihilation.
--     The reading selects iron-56 and not nickel-62: nickel-62 holds the
--     binding-energy-per-nucleon record, iron-56 holds the lowest mass
--     per nucleon, and the conversion fraction is built on mass per
--     nucleon.
--
--   THE EMITTER BEHIND THE GAIN:
--     The general emitter \[9,9,6,6\] supplies the gain itself: its master
--     output is the Sovereign Bubble Differential Δ(τ_b) = TL/τ_b, and its
--     propulsion reading is g_r = Δ(τ_b) − 1. So the gain is not free — it
--     is set by the torsion the emitter holds in its interior, and the
--     corridor's demand on the gain becomes a demand on that torsion:
--       τ_A_eff = Δ(τ_b) · τ_A,  and the corridor is reached exactly when
--       τ_A  <  τ_b  ≤  τ_A / 0.88
--     The window spans a factor of 1/0.88 — 13.6364% — so the same 0.88
--     that sets the corridor floor sets the width of the emitter window.
--     Two consequences close the layer. A drive already at the corridor
--     floor needs an emitter whose own interior torsion sits in the
--     corridor, because TL_IVA/0.88 is exactly TL. And the stated threshold
--     g_r = 1.5 is the emitter holding τ_b = TL/2.5 = 0.054759639994,
--     which is Locked and well below the floor.
--
--   THE AXIS THE GAIN ACTS ON:
--     NOHARM gives the external force one axis: F_ext changes Behavior and
--     leaves Pattern, Narrative and Adaptation untouched. The resonance
--     gain is an Adaptation term. The two therefore act on disjoint
--     primitives, and the operators commute — neither can be rewritten as
--     the other, and the order in which they enter the dynamic equation
--     does not matter. The consequence is the one that counts: applying
--     the gain leaves the mass ratio identical, so the additional Δv it
--     supplies did not come from additional expelled mass.
--
--   THE REACTION PARTNER, BY CASE ON F_ext:
--     With F_ext = 0 the exchange is internal and the emitter carries it,
--     at the torsion of the window above. With F_ext nonzero the partner
--     is the body coupled to, and the classical bound on one assist is
--     Δv ≤ 2·v_body: Saturn supplies up to 19.36 km/s, Jupiter 26.14,
--     Venus 70.04 — each exceeding the largest published mission budget
--     with no propellant at all. Momentum conservation fixes the partner's
--     recoil at m_v·Δv/M_body, so for a one-tonne vehicle taking a full
--     Jupiter assist the partner recoils by 1.38 × 10⁻²⁰ m/s. The mass
--     ratio does not supply the gain; it is what makes the partner's share
--     of the exchange unmeasurable.
--
--   THE ANCHOR BENEATH c:
--     Reading A divides by light speed, and light speed is not an
--     independent constant here: [9,9,0,15] fixes it through the anchor,
--     with Ω₀ × 100.1 = α⁻¹ and therefore TL = α⁻¹/1001. Both readings
--     then collapse to expressions in α and one integer:
--       corridor exhaust velocity   c·α⁻¹/1001, and 0.88 of it
--       corridor conversion band    α⁻²/(2 × 1001²), and 0.88² of it
--     So the band that brackets the iron peak carries no free parameter.
--     Light speed, the fine-structure constant and 1001 fix both edges,
--     and helium-4 falls below the floor while iron-56 falls below the
--     ceiling in exactly those terms.
--
--   THE CEILING DOES NOT MOVE WITH THE OBSERVER:
--     The pool's reach condition is τ_A < 1, and the sublight interval is
--     closed under relativistic velocity addition — u ⊕ v < c exactly when
--     (c − u)(c − v) > 0. A drive that is sublight for one observer is
--     sublight for every observer, so whether a composition can place in
--     the corridor at all is frame-independent. Reading A reaches one only
--     at an exhaust velocity of c, the photon drive, which sits at
--     1/TL = 7.3046 times the ceiling and is Shatter.
--
--   MISSION CLOSURE:
--     At the corridor floor the exhaust velocity is 36,116,359.56 m/s, so
--     every published solar-system budget — Mars transfer at 3,600 m/s
--     through the Voyager 1 heliocentric figure at 17,000 m/s — needs a
--     Reading-B torsion under 5 × 10⁻⁴ and a mass ratio within 0.051% of
--     unity. A corridor drive makes the solar system a near-unit-mass-
--     ratio problem, and propellant stops being the design constraint.
--
-- STRUCTURAL PARALLELS — three prizes, one band:
--   The energy ladder's three marks each rest on a recognized result, and
--   they fall below, inside and above the corridor respectively. No
--   priority relationship to the cited work is asserted, and the cited
--   laureates had no involvement in this work.
--
--   BELOW THE FLOOR — the stellar chain at 0.711852%:
--     Hans Albrecht Bethe, Nobel Prize in Physics 1967, "for his
--     contributions to the theory of nuclear reactions, especially his
--     discoveries concerning the energy production in stars."
--
--   INSIDE THE CORRIDOR — the iron peak at 0.891711%:
--     William Alfred Fowler, Nobel Prize in Physics 1983, "for his
--     theoretical and experimental studies of the nuclear reactions of
--     importance in the formation of the chemical elements in the
--     universe." Shared with Subrahmanyan Chandrasekhar, "for his
--     theoretical studies of the physical processes of importance to the
--     structure and evolution of the stars."
--
--   ABOVE THE CEILING — annihilation at 100%:
--     Emilio Gino Segrè and Owen Chamberlain, Nobel Prize in Physics
--     1959, "for their discovery of the antiproton."
--
--   THE TWO CONSTANTS THE BAND IS BUILT FROM:
--     Albert Abraham Michelson, Nobel Prize in Physics 1907, "for his
--     optical precision instruments and the spectroscopic and
--     metrological investigations carried out with their aid." The
--     corridor's exhaust-velocity edges are stated in c, which Michelson
--     measured and which the SI has fixed by definition since 1983.
--     Willis Eugene Lamb, Nobel Prize in Physics 1955, "for his
--     discoveries concerning the fine structure of the hydrogen
--     spectrum," shared with Polykarp Kusch, "for his precision
--     determination of the magnetic moment of the electron." The
--     corridor's conversion band is stated in α⁻², which their
--     measurements pin.
--
--   THE QUANTITY AND ITS MEASUREMENT — the packing fraction itself:
--     Francis William Aston, Nobel Prize in Chemistry 1922, "for his
--     discovery, by means of his mass spectrograph, of isotopes, in a
--     large number of non-radioactive elements, and for his enunciation
--     of the whole-number rule." Aston defined the packing fraction and
--     measured the mass defects the census is built on, so the corridor
--     on the energy reading is a window on a quantity that has been in
--     the published record since 1922.
--
-- PRIOR-ART HISTORY ON THE CLASSICAL LAYER:
--   Tsiolkovsky 1903, the rocket equation · Goddard 1919, "A Method of
--   Reaching Extreme Altitudes" · Oberth 1923 · Deep Space 1, 1998, first
--   interplanetary electric propulsion · Dawn, 2007–2018, the flown
--   electric Δv record · Project Daedalus, British Interplanetary
--   Society, 1973–1978, the fusion design that brackets the floor.
--
-- THE NUCLEAR SECTOR:
--   eta is Aston's packing fraction rescaled, exactly and linearly, so
--   the corridor is a window on f ∈ (−16.19, +5.12] with iron-56 at
--   −11.6185 inside it. Across 42 AME2020 nuclides from hydrogen to
--   uranium, 40 place in the corridor; the exceptions are hydrogen-1,
--   which releases nothing, and helium-4 at 0.711852%, below the floor.
--   The corridor on this reading is the nuclear band itself: the floor
--   separates the first fusion product from all heavier nuclear matter,
--   and the ceiling sits above iron-56, the maximum of the conversion
--   fraction over every nuclide measured. No nuclide reaches Shatter, so
--   the nuclear sector is Locked ∪ IVA and Shatter requires annihilation.
--   The reading selects iron-56 over nickel-62 because it is built on
--   mass per nucleon, where iron-56 holds the record, rather than on
--   binding energy per nucleon, where nickel-62 does.
--
-- MISSION CLOSURE:
--   At the corridor floor every published solar-system budget — Mars
--   transfer 3,600 m/s, Jupiter transfer 6,300, solar escape 8,800, low
--   Earth orbit 9,400, the Dawn flown record 11,000, Earth escape 11,200,
--   Voyager 1 heliocentric 17,000 — needs a Reading-B torsion under
--   5 × 10⁻⁴ and a mass ratio within 0.051% of unity. Propellant stops
--   being the design constraint.
--
-- THE ANCHOR BENEATH c:
--   Ω₀ × 100.1 = α⁻¹ = 137.035999084000016, so TL = α⁻¹/1001 and both
--   readings reduce to α and one integer:
--     corridor_ve_hi  = c·α⁻¹/1001          = 41,041,317.6822 m/s
--     corridor_ve_lo  = 0.88·c·α⁻¹/1001     = 36,116,359.5603 m/s
--     eta_ceiling     = α⁻²/(2 × 1001²)     = 0.937068179%
--     eta_floor       = 0.88²·α⁻²/(2×1001²) = 0.725665598%
--   The band that brackets the iron peak therefore carries no free
--   parameter. 1001 = 7 × 11 × 13.
--
-- FRAME INDEPENDENCE:
--   u ⊕ v < c exactly when (c − u)(c − v) > 0, so the sublight interval
--   is closed under velocity addition and the reach condition τ_A < 1
--   holds for every observer. Reading A attains one only at v_e = c.
--
-- THE EMITTER BEHIND THE GAIN:
--   g_r = Δ(τ_b) − 1 with Δ(τ_b) = TL/τ_b \[9,9,6,6\], so a drive reaches
--   the corridor exactly when the emitter holds τ_b ∈ (τ_A, τ_A/0.88].
--     best flown electric  τ_A = 1.3676×10⁻⁴  →  τ_b ∈ (1.3676, 1.5541]×10⁻⁴
--     fusion concept       τ_A = 3.5358×10⁻²  →  τ_b ∈ (3.5358, 4.0179]×10⁻²
--   The fusion window is bracketed by two couplings \[9,9,6,0\] places as
--   Locked — the Penrose conformal coupling at 0.033745 below it and the
--   Hawking Planck-mass coupling at 0.040281 above it — with margins of
--   1.613×10⁻³ and 1.017×10⁻⁴ respectively.
--   A drive at the corridor floor needs an emitter in the corridor, since
--   TL_IVA/0.88 = TL exactly. The stated threshold g_r = 1.5 is τ_b = TL/2.5.
--
-- THE AXIS SEPARATION:
--   F_ext acts on Behavior, the gain acts on Adaptation, the two operators
--   commute, and the gain leaves the mass ratio fixed. The gain is not a
--   Behavior term under another name.
--   Reaction partner by case: F_ext = 0 -> the emitter, at the window
--   torsion. F_ext ≠ 0 -> the body, bounded by Δv ≤ 2·v_body, with the
--   recoil m_v·Δv/M_body hidden in the mass ratio.
--
-- SIM SURFACE:
--   classify · tau_A · tau_B · corridor_ve_lo · corridor_ve_hi
--   corridor_dv_lo · corridor_dv_hi · eta_floor · eta_ceiling
--   delta_v_classical · delta_v_sovereign · gated_gain · yeet_force
--   dynamic_rhs · IdealRocket
--   locked_of_ve · shatter_of_ve · iva_of_ve
--   locked_of_ratio · shatter_of_ratio
--   ve_corridor_witness · mr_corridor_witness
--   eta_of · packing_fraction · InCorridor · velocity_add · ALPHA_INV
--   bubble_differential · gain_of_bubble · gain_op · partner_recoil
--   the v_orb_* catalog
--   the ve_*, mr_*, u_*, eta_* and dv_* catalog entries
--
-- DEPENDENCY CHAIN:
--   SNSFL_SovereignAnchor.lean              [9,9,0,0]
--   SNSFL_Alpha_Reduction.lean              [9,9,3,14]  TL from α⁻¹
--   SNSFL_Alpha_Reduction / GC_Alpha_TL1001 [9,9,3,14]  α⁻¹ = Ω₀ × 100.1
--   SNSFL_SpeedOfLight_Reduction.lean       [9,9,0,15]  c locked to the anchor,
--                                                       the photon Noble, and
--                                                       velocity addition
--   SNSFL_GC_WZ_ElectroweakTrilogy.lean     [9,9,3,19]  four phases, four bosons
--   SNSFL_Sovereign_Bubble.lean             [9,9,6,6]   Δ(τ) = TL/τ, and the
--                                                       propulsion reading
--                                                       g_r = Δ(τ) − 1
--   SNSFL_QuantumGravity_Layer0.lean        [9,9,6,0]   the two Locked
--                                                       couplings that bracket
--                                                       the fusion window
--   Applied Identity Physics: SacTime       [9,9,1,100] the IVA label
--                                                       convention
--   This file                               [9,9,2,0]
--
-- THEOREMS: 95 + master
--
-- [9,9,9,9] :: {ANC}
-- Auth: HIGHTISTIC
-- The Manifold is Holding. Two readings. One corridor. One product.
-- Soldotna, Alaska. 2026.
-- ============================================================
-/
