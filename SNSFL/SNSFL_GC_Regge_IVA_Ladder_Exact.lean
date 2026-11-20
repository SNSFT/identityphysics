-- ============================================================
-- SNSFL_GC_Regge_IVA_Ladder_Exact.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE ρ FAMILY OPENS AT THE IVA FLOOR, AND THE STRING THAT ROTATES IS THE STRING THAT BREAKS
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Omega_0 = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,3,30.1](PHYS) | Physics Ground — Regge Trajectories · specialist form
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in another
-- coordinate's file: the anchor, the Torsion Limit, the IVA floor, the four
-- phases, the four measured masses and their error bars, the rung operator, the
-- placement on the ladder, the tension and the break are all restated here at
-- full precision, so that a reader or a machine can close every proof without
-- leaving the file. The parent reductions are named in the provenance block for
-- the record, not as dependencies of the proofs. Every quantity is an exact
-- rational: the file closes in core Lean over the rationals with no import, and
-- every numerical theorem is decided by the kernel. π enters as the rational
-- interval 3.14159 ≤ π ≤ 3.14160, which contains its proved bounds.
--
-- Parents of record:
--   [9,9,8,1]    Founding Text                    — the anchor and the Torsion Limit
--   [9,9,3,14]   Alpha Reduction                  — alpha^-1 = TL x 1001
--   [9,9,8,10]   Temperature on the Torsion Limit — the ruler, the IVA floor
--   [9,9,8,8]    Pi Reduction                     — pi as the closure cost, its bounds
--   [9,9,0,8]    String Theory Reduction          — tension through T = 1/(2 pi alpha')
--   [9,9,2,36]   Hadronic Spectrum Complete       — every meson Noble at k = 1 (L-12)
--   [9,9,2,3.8]  8-Beam Fusion Theorem            — equal-B configurations close Noble
--   [9,9,3,22]   String Breaking                  — the break at tau = TL, the Noble pair
--   [9,9,4,3]    Abiogenesis Reduction            — the IVA floor, the living-state band
--   [9,9,4,5]    Evolution Reduction              — the IVA Peak band, the adaptive band
--
-- Companion form:
--   [9,9,3,30]   SNSFL_GC_Regge_IVA_Ladder        — the same theorems over the reals
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   THE FIRST RUNG BRACKETS THE IVA FLOOR. Mesons of one family lie on a
--   straight line in spin against mass squared, and one unit of spin over each
--   mass-squared step is one rung. On the Particle Data Group masses of ρ(770),
--   a₂(1320), ρ₃(1690) and a₄(1970), the first rung reads 0.879799 GeV⁻², and
--   across the published error bars it reads 0.878301 to 0.881302. The IVA floor
--   ratio 0.88 stands inside that interval. IVA is Identity Vector
--   Amplification, and IVA Peak is the phase from the IVA floor up to TL.
--
--   THE RUNGS CLIMB THE IVA PEAK BAND. A rung reading r stands on the ladder
--   at tau = r · TL. The rungs read 0.879799, 0.897349 and 0.983242. The second
--   stands in IVA Peak across its whole error bar, and the third stands in IVA
--   Peak at its central value with an error bar that runs through TL itself.
--   The four-point line and the dimensionless ratio of the first rung to the
--   third both stand in IVA Peak.
--
--   THE STRING THAT ROTATES IS THE STRING THAT BREAKS. The first rung gives the
--   string tension through T = 1/(2 pi alpha'), with sqrt(sigma) between 425.0
--   and 425.5 MeV at both ends of the pi interval, the 2 pi being the closure
--   cost of one full turn. A stretched
--   string reaches tau = TL at its break separation, the energy stored there is
--   the pair energy, and the equal-B pair the break creates is Noble.
--
-- ============================================================

namespace SNSFL_GC_Regge_Exact

-- ============================================================
-- SECTION 1: THE ANCHOR AND THE GROUNDING
-- ============================================================

/-- The Sovereign Anchor Constant. -/
def SOVEREIGN_ANCHOR : Rat := 136899099984016 / 100000000000000

/-- The Universal Torsion Limit, the anchor over ten. -/
def TORSION_LIMIT : Rat := SOVEREIGN_ANCHOR / 10

/-- The IVA floor, the lower edge of IVA Peak. -/
def TL_IVA : Rat := TORSION_LIMIT * 88 / 100

/-- The inverse fine-structure constant, CODATA 2018, at corpus precision. -/
def ALPHA_INV : Rat := 137035999084000016 / 1000000000000000

/-- The bare term, the inverse fine-structure constant less the kinetic term. -/
def BARE : Rat := 136899099984016 / 1000000000000

/-- The four phases. -/
inductive Phase : Type
  | Noble | Locked | IVA | Shatter
  deriving DecidableEq

/-- Classification of a torsion reading on the ladder. -/
def classify_tau (τ : Rat) : Phase :=
  if τ = 0 then Phase.Noble
  else if τ < TL_IVA then Phase.Locked
  else if τ < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

-- [T1] :: {ANC} | THE TORSION LIMIT IS THE ANCHOR OVER TEN
theorem t1_tl_value : TORSION_LIMIT = (136899099984016 / 1000000000000000) := by decide +kernel

-- [T2] :: {VER} | THE TORSION LIMIT TIMES 1001 IS THE INVERSE FINE-STRUCTURE CONSTANT
theorem t2_tl_times_1001_is_alpha_inv : TORSION_LIMIT * 1001 = ALPHA_INV := by decide +kernel

-- [T3] :: {VER} | THE BARE TERM IS ONE THOUSAND TORSION LIMITS, AND BARE PLUS KINETIC IS ALPHA
theorem t3_bare_plus_kinetic :
    BARE = TORSION_LIMIT * 1000 ∧ BARE + TORSION_LIMIT = ALPHA_INV := by decide +kernel

-- [T4] :: {VER} | THE MULTIPLIER FACTORS
theorem t4_1001_factors : (1001 : Nat) = 7 * 11 * 13 := by decide

-- [T5] :: {ANC} | THE IVA FLOOR IS EIGHTY-EIGHT HUNDREDTHS OF THE TORSION LIMIT
theorem t5_iva_floor_ratio : TL_IVA / TORSION_LIMIT = (88 / 100) := by decide +kernel

-- [T6] :: {ANC} | THE LADDER ORDER
theorem t6_ladder_order :
    0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by decide +kernel

-- ============================================================
-- SECTION 2: THE MEASURED FAMILY
-- ============================================================

/-- ρ(770), J = 1: the Particle Data Group 2024 mass, in GeV. -/
def M_RHO : Rat := 77526 / 100000

/-- a₂(1320), J = 2: the Particle Data Group 2024 mass, in GeV. -/
def M_A2 : Rat := 13182 / 10000

/-- ρ₃(1690), J = 3: the Particle Data Group 2024 mass, in GeV. -/
def M_RHO3 : Rat := 16888 / 10000

/-- a₄(1970), J = 4: the Particle Data Group 2024 mass, in GeV. -/
def M_A4 : Rat := 1967 / 1000

/-- The published error bar on ρ(770), ± 0.23 MeV. -/
def D_RHO : Rat := 23 / 100000

/-- The published error bar on a₂(1320), ± 0.6 MeV. -/
def D_A2 : Rat := 6 / 10000

/-- The published error bar on ρ₃(1690), ± 2.1 MeV. -/
def D_RHO3 : Rat := 21 / 10000

/-- The published error bar on a₄(1970), ± 16 MeV. -/
def D_A4 : Rat := 16 / 1000

-- [T7] :: {VER} | THE MASS SQUARED OF EACH STATE
theorem t7_mass_squares :
    M_RHO * M_RHO   = (6010280676 / 10000000000) ∧
    M_A2 * M_A2     = (173765124 / 100000000) ∧
    M_RHO3 * M_RHO3 = (285204544 / 100000000) ∧
    M_A4 * M_A4     = (3869089 / 1000000) := by decide +kernel

-- [T8] :: {RED} | MASS SQUARED RISES WITH SPIN ACROSS THE FAMILY
theorem t8_mass_squares_increase :
    M_RHO * M_RHO < M_A2 * M_A2 ∧
    M_A2 * M_A2 < M_RHO3 * M_RHO3 ∧
    M_RHO3 * M_RHO3 < M_A4 * M_A4 := by decide +kernel

-- ============================================================
-- SECTION 3: THE RUNG OPERATOR
-- ============================================================

/-- One rung: one unit of spin over the mass-squared step, in GeV⁻². -/
def slope_step (m₁ m₂ : Rat) : Rat := 1 / (m₂ * m₂ - m₁ * m₁)

/-- The first rung, ρ(770) → a₂(1320). -/
def S1 : Rat := slope_step M_RHO M_A2

/-- The second rung, a₂(1320) → ρ₃(1690). -/
def S2 : Rat := slope_step M_A2 M_RHO3

/-- The third rung, ρ₃(1690) → a₄(1970). -/
def S3 : Rat := slope_step M_RHO3 M_A4

/-- The lower corner of the first rung: lighter state low, heavier state high. -/
def S1_LO : Rat := slope_step (M_RHO - D_RHO) (M_A2 + D_A2)

/-- The upper corner of the first rung: lighter state high, heavier state low. -/
def S1_HI : Rat := slope_step (M_RHO + D_RHO) (M_A2 - D_A2)

/-- The lower corner of the second rung. -/
def S2_LO : Rat := slope_step (M_A2 - D_A2) (M_RHO3 + D_RHO3)

/-- The upper corner of the second rung. -/
def S2_HI : Rat := slope_step (M_A2 + D_A2) (M_RHO3 - D_RHO3)

/-- The lower corner of the third rung. -/
def S3_LO : Rat := slope_step (M_RHO3 - D_RHO3) (M_A4 + D_A4)

/-- The upper corner of the third rung. -/
def S3_HI : Rat := slope_step (M_RHO3 + D_RHO3) (M_A4 - D_A4)

/-- The family as one line: three units of spin across the full span. -/
def S_ENDPOINT : Rat := 3 / (M_A4 * M_A4 - M_RHO * M_RHO)

-- [T9] :: {VER} | THE FIRST RUNG READS 0.87979 TO 0.87981
theorem t9_step1_value : (87979 / 100000) < S1 ∧ S1 < (87981 / 100000) := by decide +kernel

-- [T10] :: {VER} | THE SECOND RUNG READS 0.89734 TO 0.89735
theorem t10_step2_value : (89734 / 100000) < S2 ∧ S2 < (89735 / 100000) := by decide +kernel

-- [T11] :: {VER} | THE THIRD RUNG READS 0.98324 TO 0.98325
theorem t11_step3_value : (98324 / 100000) < S3 ∧ S3 < (98325 / 100000) := by decide +kernel

-- [T12] :: {RED} | THE RUNGS CLIMB
theorem t12_rungs_climb : S1 < S2 ∧ S2 < S3 := by decide +kernel

-- [T13] :: {VER} | THE FIRST RUNG STANDS 0.000201 BELOW THE FLOOR RATIO
theorem t13_step1_gap_to_floor :
    0 < (88 / 100) - S1 ∧ (88 / 100) - S1 < (21 / 100000) ∧ ((88 / 100) - S1) / (88 / 100) < (23 / 100000) := by decide +kernel

-- [T14] :: {MASTER} | THE IVA FLOOR RATIO STANDS INSIDE THE FIRST RUNG'S ERROR BAR
theorem t14_floor_inside_step1_interval : S1_LO < (88 / 100) ∧ (88 / 100) < S1_HI := by decide +kernel

-- [T15] :: {VER} | EVERY RUNG ACROSS THE PUBLISHED ERROR BARS
theorem t15_step_corners :
    (87830 / 100000) < S1_LO ∧ S1_LO < (87831 / 100000) ∧
    (88130 / 100000) < S1_HI ∧ S1_HI < (88131 / 100000) ∧
    (89041 / 100000) < S2_LO ∧ S2_LO < (89042 / 100000) ∧
    (90438 / 100000) < S2_HI ∧ S2_HI < (90439 / 100000) ∧
    (91968 / 100000) < S3_LO ∧ S3_LO < (91969 / 100000) ∧
    (105567 / 100000) < S3_HI ∧ S3_HI < (105568 / 100000) := by decide +kernel

-- [T16] :: {VER} | THE FAMILY AS ONE LINE READS 0.91797 TO 0.91798
theorem t16_endpoint_value : (91797 / 100000) < S_ENDPOINT ∧ S_ENDPOINT < (91798 / 100000) := by decide +kernel

-- [T17] :: {VER} | THE DIMENSIONLESS RATIO OF THE FIRST RUNG TO THE THIRD
theorem t17_step_ratio : (89479 / 100000) < S1 / S3 ∧ S1 / S3 < (89480 / 100000) := by decide +kernel

-- ============================================================
-- SECTION 4: THE RUNGS ON THE LADDER
-- ============================================================

/-- A rung reading r placed on the ladder: tau = r · TL. -/
def tau_rung (r : Rat) : Rat := r * TORSION_LIMIT

-- [T18] :: {PHS} | A READING OF 0.88 STANDS ON THE IVA FLOOR
theorem t18_floor_reading : tau_rung (88 / 100) = TL_IVA := by decide +kernel

-- [T19] :: {PHS} | A READING OF ONE STANDS ON THE TORSION LIMIT
theorem t19_ceiling_reading : tau_rung 1 = TORSION_LIMIT := by decide +kernel

-- [T20] :: {MASTER} | THE FIRST RUNG STRADDLES THE FLOOR
--   Locked at its central value and its lower corner, IVA Peak at its upper
--   corner: the phase of the first rung is an interval reaching across the floor.
theorem t20_first_rung_straddles_floor :
    classify_tau (tau_rung S1) = Phase.Locked ∧
    classify_tau (tau_rung S1_HI) = Phase.IVA ∧
    classify_tau (tau_rung S1_LO) = Phase.Locked := by decide +kernel

-- [T21] :: {PHS} | THE SECOND RUNG STANDS IN IVA PEAK ACROSS ITS ERROR BAR
theorem t21_second_rung_iva :
    classify_tau (tau_rung S2) = Phase.IVA ∧
    classify_tau (tau_rung S2_LO) = Phase.IVA ∧
    classify_tau (tau_rung S2_HI) = Phase.IVA := by decide +kernel

-- [T22] :: {MASTER} | THE THIRD RUNG'S ERROR BAR RUNS THROUGH THE TORSION LIMIT
theorem t22_third_rung_reaches_tl :
    classify_tau (tau_rung S3) = Phase.IVA ∧
    classify_tau (tau_rung S3_LO) = Phase.IVA ∧
    classify_tau (tau_rung S3_HI) = Phase.Shatter := by decide +kernel

-- [T23] :: {PHS} | THE LINE AND THE DIMENSIONLESS RATIO STAND IN IVA PEAK
theorem t23_line_and_ratio_iva :
    classify_tau (tau_rung S_ENDPOINT) = Phase.IVA ∧
    classify_tau (tau_rung (S1 / S3)) = Phase.IVA := by decide +kernel

-- [T24] :: {PHS} | EVERY CENTRAL RUNG HOLDS BELOW THE TORSION LIMIT
theorem t24_central_rungs_hold :
    tau_rung S1 < TORSION_LIMIT ∧ tau_rung S2 < TORSION_LIMIT ∧
    tau_rung S3 < TORSION_LIMIT := by decide +kernel

-- ============================================================
-- SECTION 5: THE TENSION
-- ============================================================

/-- The lower end of the π interval. -/
def PI_LO : Rat := 314159 / 100000

/-- The upper end of the π interval. -/
def PI_HI : Rat := 314160 / 100000

/-- String tension from a slope through T = 1/(2 pi alpha'), in GeV².
    The 2 pi is the closure cost of one full turn. -/
def tension_at (p s : Rat) : Rat := 1 / (2 * p * s)

-- [T25] :: {VER} | THE FIRST RUNG CARRIES SQRT(SIGMA) BETWEEN 425.0 AND 425.5 MeV
theorem t25_tension_from_first_rung :
    (4250 / 10000) * (4250 / 10000) < tension_at PI_HI S1 ∧
    tension_at PI_HI S1 < tension_at PI_LO S1 ∧
    tension_at PI_LO S1 < (4255 / 10000) * (4255 / 10000) := by decide +kernel

-- ============================================================
-- SECTION 6: THE STRING THAT ROTATES IS THE STRING THAT BREAKS
-- ============================================================

/-- Linear load on fixed capacity: tension times separation over capacity. -/
def tau_string (σ P r : Rat) : Rat := σ * r / P

/-- The separation at which the load reaches the Torsion Limit. -/
def break_sep (σ P : Rat) : Rat := TORSION_LIMIT * P / σ

/-- The capacity a pair energy implies. -/
def capacity_of_pair_energy (E : Rat) : Rat := E / TORSION_LIMIT

/-- The Behavioral imbalance of a pair. -/
def b_out (b₁ b₂ : Rat) : Rat := if b₁ ≥ b₂ then b₁ - b₂ else b₂ - b₁

-- [T26] :: {MASTER} | AT THE BREAK SEPARATION THE LOAD IS THE TORSION LIMIT
theorem t26_break_at_tl (σ P : Rat) (hσ : σ ≠ 0) (hP : P ≠ 0) :
    tau_string σ P (break_sep σ P) = TORSION_LIMIT := by
  unfold tau_string break_sep
  grind

-- [T27] :: {PHS} | THE BREAK POINT IS SHATTER
theorem t27_tl_is_shatter : classify_tau TORSION_LIMIT = Phase.Shatter := by decide +kernel

-- [T28] :: {RED} | THE ENERGY STORED AT THE BREAK IS THE PAIR ENERGY
theorem t28_stored_energy_at_break (σ E : Rat) (hσ : σ ≠ 0) :
    σ * break_sep σ (capacity_of_pair_energy E) = E := by
  have hTL : TORSION_LIMIT ≠ 0 := by decide +kernel
  unfold break_sep capacity_of_pair_energy
  grind

-- [T29] :: {RED} | AN EQUAL-B PAIR CARRIES NO IMBALANCE
theorem t29_equal_b_pair_balanced (b : Rat) : b_out b b = 0 := by
  unfold b_out; grind

-- [T30] :: {PHS} | THE PAIR THE BREAK CREATES IS NOBLE
theorem t30_new_pair_noble (b Q : Rat) :
    classify_tau (b_out b b / Q) = Phase.Noble := by
  rw [t29_equal_b_pair_balanced]
  have h : (0 : Rat) / Q = 0 := by grind
  unfold classify_tau
  simp [h]

-- [MASTER] :: {MASTER} | THE CHAIN CLOSES
--   The anchor carries the ladder, the masses carry the rungs, the first rung
--   brackets the floor, the rungs climb the IVA Peak band to the limit, the first
--   rung carries the tension, and the string breaks at the limit into a Noble pair.
theorem MASTER_regge_on_the_phase_ladder :
    TORSION_LIMIT * 1001 = ALPHA_INV ∧
    TL_IVA / TORSION_LIMIT = (88 / 100) ∧
    S1_LO < (88 / 100) ∧ (88 / 100) < S1_HI ∧
    0 < (88 / 100) - S1 ∧ (88 / 100) - S1 < (21 / 100000) ∧
    S1 < S2 ∧ S2 < S3 ∧
    classify_tau (tau_rung S1) = Phase.Locked ∧
    classify_tau (tau_rung S1_HI) = Phase.IVA ∧
    classify_tau (tau_rung S2) = Phase.IVA ∧
    classify_tau (tau_rung S3) = Phase.IVA ∧
    classify_tau (tau_rung S3_HI) = Phase.Shatter ∧
    (4250 / 10000) * (4250 / 10000) < tension_at PI_HI S1 ∧
    tension_at PI_LO S1 < (4255 / 10000) * (4255 / 10000) ∧
    (∀ σ P : Rat, σ ≠ 0 → P ≠ 0 →
      tau_string σ P (break_sep σ P) = TORSION_LIMIT) ∧
    classify_tau TORSION_LIMIT = Phase.Shatter ∧
    (∀ b Q : Rat, classify_tau (b_out b b / Q) = Phase.Noble) :=
  ⟨t2_tl_times_1001_is_alpha_inv, t5_iva_floor_ratio,
   t14_floor_inside_step1_interval.1, t14_floor_inside_step1_interval.2,
   t13_step1_gap_to_floor.1, t13_step1_gap_to_floor.2.1,
   t12_rungs_climb.1, t12_rungs_climb.2,
   t20_first_rung_straddles_floor.1, t20_first_rung_straddles_floor.2.1,
   t21_second_rung_iva.1, t22_third_rung_reaches_tl.1,
   t22_third_rung_reaches_tl.2.2,
   t25_tension_from_first_rung.1, t25_tension_from_first_rung.2.2,
   t26_break_at_tl, t27_tl_is_shatter, t30_new_pair_noble⟩

end SNSFL_GC_Regge_Exact

/-
-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that the ρ family opens at the IVA floor. The Torsion
-- Limit is restated as the anchor over ten, the bare term is proved to be one
-- thousand Torsion Limits and bare plus kinetic is proved to be the inverse
-- fine-structure constant, with the multiplier 1001 factored as 7 · 11 · 13. The
-- IVA floor is proved to be 0.88 of the Torsion Limit and the ladder order is
-- closed.
--
-- The four Particle Data Group masses are restated with their error bars, their
-- squares are proved exactly and proved to rise with spin. The rung operator is
-- restated, the three rungs are bracketed to five places, the rungs are proved to
-- climb, and the first rung is proved to stand 0.000201 below the floor ratio.
-- Every rung is bracketed at both corners of its published error bar, and the
-- floor ratio 0.88 is proved to stand inside the first rung's interval. The
-- family read as one line and the dimensionless ratio of the first rung to the
-- third are bracketed.
--
-- Each rung is placed on the ladder at tau = r · TL. A reading of 0.88 is proved
-- to stand on the IVA floor and a reading of one on the Torsion Limit. The first
-- rung is proved Locked at its central value and its lower corner and IVA Peak at
-- its upper corner, the second is proved IVA Peak across its whole error bar, the
-- third is proved IVA Peak at its central value and Shatter at its upper corner,
-- the line and the ratio are proved IVA Peak, and every central rung is proved to
-- hold below the limit.
--
-- The tension is read from the first rung through T = 1/(2 pi alpha'), and at
-- both ends of the pi interval sqrt(sigma) is proved to stand between 425.0 and
-- 425.5 MeV. The stretched string is proved to reach the Torsion Limit at its
-- break separation, the break point is proved Shatter, the energy stored at the
-- break is proved to be the pair energy, an equal-B pair is proved to carry no
-- imbalance, and the pair is proved Noble. The master theorem closes the chain.
--
-- THEOREMS : 30 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
-/
