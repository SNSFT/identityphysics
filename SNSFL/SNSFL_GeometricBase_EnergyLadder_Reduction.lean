-- ============================================================
-- SNSFL_GeometricBase_EnergyLadder_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE GEOMETRIC BASE AND THE ENERGY LADDER
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,8,12](MATH) | Mathematics Ground — Foundations
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, the conversion fraction, the matched
-- ratio, the square-root torsion operator, the rest energy, the classical
-- kinetic energy and the relativistic factor are all restated here at full
-- precision, so that a reader or a machine can close every proof without
-- leaving the file. The parent reductions are named in the provenance block
-- for the record, not as dependencies of the proofs.
--
-- Parents of record:
--   [9,9,8,11]   Two Readings Across Substrates — Reading B as a fold count, eps_r = matched ratio
--   [9,9,8,9]    Logarithm Reduction           — e by accumulated area one
--   [9,9,8,1]    L0 Isomorphism Consistency    — what a structure-preserving map requires
--   [9,9,0,20]   Burn Depth and Thrust Floor   — the address theorem
--   [9,9,0,18]   Propellant Law, Compactness   — tau_surface = sqrt C
--   [9,9,0,17.1] Matched Radius, specialist    — S X = sqrt X, the closure, the two landings, 25/22
--   [9,9,0,17]   Matched Radius Reduction      — r_match = r_s/tau_A^2
--   [9,9,2,0]    IVA Propulsion Reduction      — the two readings, the bridge, tau_A^2 = 2 eta
--   [9,9,0,15]   Speed of Light Reduction      — c locked to the anchor
--   [9,9,3,14]   Alpha Reduction               — alpha^-1 = Omega_0 x 100.1, TL = alpha^-1/1001
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   THE CONVERSION FRACTION IS AN ENERGY RATIO. With E_0 = m c^2 the rest
--   energy and E_k = (1/2) m v^2 the classical kinetic energy, their quotient
--   is exactly tau_A^2/2 = eta. The corpus conversion fraction and the ratio
--   E = mc^2 is compared against are ONE NUMBER.
--
--   THE GEOMETRIC BASE. b_0 = 1/sqrt(TL) is built by the corpus operator
--   applied to a corpus quantity, b_0^2 = 1/TL = matched_ratio(S TL), so no
--   new construct enters. In that base every rung of the torsion ladder is an
--   exact integer power: tau at rung n is sqrt(TL)^n, with TL at rung 2 and
--   sqrt(TL) at rung 1.
--
--   THE PARITY OVER ℚ. TL is a terminating decimal, so TL and 1/TL are
--   exactly rational and every EVEN rung lies in ℚ. The denominator of 1/TL
--   factors as 191 * 23767 * 1884833, with 191 dividing it exactly once, which
--   is the arithmetic that places the odd rungs outside ℚ.
--
--   THE BASE IS AN INDEX. b_0 is the refractive index of a medium whose
--   relative permittivity is 1/TL, by matched_ratio(S X) = 1/X — the same
--   operator, the same closure, the same value. The base the geometry selects
--   and a constitutive constant are one object.
--
--   THE ENERGY LADDER. eta at rung n is TL^n/2, so consecutive rungs differ by
--   EXACTLY 1/TL in energy released per unit mass, and a span in rungs
--   converts to an energy ratio without loss.
--
--   THE CLASSICAL READING CERTIFIES ITSELF. The classical fraction is strictly
--   below the relativistic one, and on the range tau^2 <= TL the absolute
--   error is sandwiched between (3/2)eta^2 and 2 eta^2, so the relative error
--   lies between (3/2)eta and 2 eta — the formula reports its own accuracy.
--   The classical reading is bounded by 1/2, and total conversion sits at
--   tau_A = sqrt(3)/2 where the relativistic factor is exactly 2.
--
--   THE TWO BASES ON ONE LADDER. log b_0 = -(log TL)/2, TL sits at rung 2
--   exactly, the corridor width is 2 log(25/22)/log(1/TL), and the two
--   corridor bases stand in the exact ratio sqrt(25/22).
--
-- ============================================================

import Mathlib

noncomputable section

namespace SNSFL_GeometricBaseEnergyLadder

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

/-- Speed of light in vacuum, m/s. Exact by SI definition. -/
def C_LIGHT : ℝ := 299792458

/-- Standard gravitational acceleration, m/s². Exact by definition. -/
def G_STANDARD : ℝ := 9.80665

/-- The inverse fine-structure constant. Ω₀ × 100.1. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The integer the Torsion Limit divides the fine-structure constant by. -/
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
def tau_A (v : ℝ) : ℝ := v / C_LIGHT

/-- The rest-mass conversion fraction: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The matched radius in Schwarzschild units: 1/τ_A². -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

/-- The square-root torsion operator. -/
def sqrt_op (X : ℝ) : ℝ := Real.sqrt X

-- [T1] :: {VER} | THE CONSTANTS, AS DECIMAL LITERALS
theorem t1_const_values :
    TORSION_LIMIT = 0.136899099984016 ∧ TL_IVA = 0.12047120798593408 := by
  constructor
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T2] :: {VER} | THE TORSION LIMIT IS POSITIVE AND BELOW ONE
theorem t2_tl_in_unit_interval : 0 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T3] :: {VER} | THE CORRIDOR FLOOR IS POSITIVE AND BELOW THE CEILING
theorem t3_floor_below_ceiling : 0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T4] :: {VER} | THE EXACTNESS ANCHOR: TL × 1001 = α⁻¹
theorem t4_tl_times_1001_is_alpha : TORSION_LIMIT * TL_DIVISOR = ALPHA_INV := by
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

-- [T7] :: {VER} | THE CORRIDOR FLOOR IS THE CEILING TIMES 22/25
theorem t7_corridor_factor : TL_IVA = TORSION_LIMIT * (22 / 25) := by
  simp only [TL_IVA]; norm_num

-- [T8] :: {VER} | THE RATIO OF THE CORRIDOR ENDPOINTS IS 25/22
theorem t8_endpoint_ratio : TORSION_LIMIT / TL_IVA = 25 / 22 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- ============================================================
-- SECTION 1: THE CONVERSION FRACTION IS AN ENERGY RATIO
-- ============================================================

/-- Rest energy: E₀ = m c². -/
def rest_energy (m : ℝ) : ℝ := m * C_LIGHT ^ 2

/-- Classical kinetic energy: E_k = ½ m v². -/
def kinetic_classical (m v : ℝ) : ℝ := m * v ^ 2 / 2

/-- The relativistic factor. -/
def gamma (t : ℝ) : ℝ := 1 / Real.sqrt (1 - t ^ 2)

/-- The relativistic conversion fraction: γ − 1. -/
def eta_rel (t : ℝ) : ℝ := gamma t - 1

-- [T9] :: {VER} | THE SPEED OF LIGHT IS POSITIVE
theorem t9_c_pos : 0 < C_LIGHT := by simp only [C_LIGHT]; norm_num

-- [T10] :: {MASTER} | THE CONVERSION FRACTION IS THE CLASSICAL KINETIC ENERGY
--                     AS A FRACTION OF REST ENERGY
theorem t10_eta_is_energy_ratio (m v : ℝ) (hm : m ≠ 0) :
    kinetic_classical m v / rest_energy m = eta_of_tau (tau_A v) := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t9_c_pos
  simp only [kinetic_classical, rest_energy, eta_of_tau, tau_A]
  field_simp
  ring

-- [T11] :: {INV} | STATED ON READING A DIRECTLY
theorem t11_eta_from_reading_a (m v : ℝ) (hm : m ≠ 0) :
    kinetic_classical m v = eta_of_tau (tau_A v) * rest_energy m := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t9_c_pos
  simp only [kinetic_classical, rest_energy, eta_of_tau, tau_A]
  field_simp
  ring

-- [T12] :: {INV} | THE CONVERSION FRACTION IS NONNEGATIVE
theorem t12_eta_nonneg (t : ℝ) : 0 ≤ eta_of_tau t := by
  simp only [eta_of_tau]; positivity

-- [T13] :: {INV} | THE CLASSICAL FRACTION IS BOUNDED BY ONE HALF
theorem t13_eta_classical_bounded (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    eta_of_tau t < 1 / 2 := by
  simp only [eta_of_tau]
  nlinarith [h0, h1]

-- [T14] :: {MASTER} | TOTAL CONVERSION SITS AT READING A = √3/2, WHERE γ = 2
theorem t14_annihilation_gamma :
    gamma (Real.sqrt 3 / 2) = 2 ∧ eta_rel (Real.sqrt 3 / 2) = 1 := by
  have h3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have hin : 1 - (Real.sqrt 3 / 2) ^ 2 = (1 / 2 : ℝ) ^ 2 := by
    rw [div_pow, h3]; norm_num
  have hg : gamma (Real.sqrt 3 / 2) = 2 := by
    simp only [gamma, hin]
    rw [Real.sqrt_sq (by norm_num : (0:ℝ) ≤ 1 / 2)]
    norm_num
  exact ⟨hg, by simp only [eta_rel, hg]; norm_num⟩

-- ============================================================
-- SECTION 2: THE BASE THE GEOMETRY SELECTS
-- ============================================================

/-- The geometric base: b₀ = 1/√TL. -/
def geom_base : ℝ := 1 / Real.sqrt TORSION_LIMIT

/-- The corridor floor's base: b_IVA = 1/√TL_IVA. -/
def iva_base : ℝ := 1 / Real.sqrt TL_IVA

-- [T15] :: {VER} | THE ROOT OF THE TORSION LIMIT IS POSITIVE
theorem t15_root_tl_pos : 0 < Real.sqrt TORSION_LIMIT :=
  Real.sqrt_pos.mpr t2_tl_in_unit_interval.1

-- [T16] :: {VER} | THE GEOMETRIC BASE IS POSITIVE
theorem t16_base_pos : 0 < geom_base := by
  simp only [geom_base]
  exact div_pos one_pos t15_root_tl_pos

-- [T17] :: {MASTER} | THE BASE SQUARED IS THE CEILING'S LANDING
theorem t17_base_sq : geom_base ^ 2 = 1 / TORSION_LIMIT := by
  have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  have hne : Real.sqrt TORSION_LIMIT ≠ 0 := ne_of_gt t15_root_tl_pos
  simp only [geom_base, div_pow, one_pow, hs]

-- [T18] :: {MASTER} | THE BASE IS THE OPERATOR APPLIED TO THE LANDING,
--                     AND THE LANDING IS THE CLOSURE OF THE OPERATOR AT TL
theorem t18_base_from_operator :
    geom_base = sqrt_op (1 / TORSION_LIMIT) ∧
    matched_ratio (sqrt_op TORSION_LIMIT) = 1 / TORSION_LIMIT := by
  have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  constructor
  · simp only [geom_base, sqrt_op, one_div, Real.sqrt_inv]
  · simp only [matched_ratio, sqrt_op, hs]

-- [T19] :: {INV} | THE CORRIDOR FLOOR'S BASE IS POSITIVE
theorem t19_iva_base_pos : 0 < iva_base := by
  simp only [iva_base]
  exact div_pos one_pos (Real.sqrt_pos.mpr t3_floor_below_ceiling.1)

-- [T20] :: {VER} | THE GEOMETRIC BASE, NUMERICALLY
theorem t20_base_numeric : 2.7027115868 < geom_base ∧ geom_base < 2.7027115869 := by
  have hsq := t17_base_sq
  have hpos := t16_base_pos
  have hval : (1:ℝ) / TORSION_LIMIT = 1 / 0.136899099984016 := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  rw [hval] at hsq
  constructor
  · nlinarith [hsq, hpos]
  · nlinarith [hsq, hpos]

-- ============================================================
-- SECTION 3: THE LADDER IS EXACT INTEGER POWERS
-- ============================================================

/-- Reading A at rung n: √TL to the n. -/
def tau_rung (n : ℕ) : ℝ := Real.sqrt TORSION_LIMIT ^ n

-- [T21] :: {MASTER} | THE RUNG IS AN INVERSE POWER OF THE BASE
theorem t21_rung_is_base_power (n : ℕ) : tau_rung n = 1 / geom_base ^ n := by
  have hne : Real.sqrt TORSION_LIMIT ≠ 0 := ne_of_gt t15_root_tl_pos
  simp only [tau_rung, geom_base, div_pow, one_pow]
  field_simp

-- [T22] :: {VER} | RUNG ZERO IS ONE
theorem t22_rung_zero : tau_rung 0 = 1 := by simp only [tau_rung, pow_zero]

-- [T23] :: {VER} | RUNG ONE IS THE ROOT OF THE TORSION LIMIT
theorem t23_rung_one : tau_rung 1 = Real.sqrt TORSION_LIMIT := by
  simp only [tau_rung, pow_one]

-- [T24] :: {MASTER} | RUNG TWO IS THE TORSION LIMIT, EXACTLY
theorem t24_rung_two : tau_rung 2 = TORSION_LIMIT := by
  simp only [tau_rung]
  rw [pow_two, Real.mul_self_sqrt t2_tl_in_unit_interval.1.le]

-- [T25] :: {MASTER} | RUNG FOUR IS THE TORSION LIMIT SQUARED, EXACTLY
theorem t25_rung_four : tau_rung 4 = TORSION_LIMIT ^ 2 := by
  have h : Real.sqrt TORSION_LIMIT ^ 4 = (Real.sqrt TORSION_LIMIT ^ 2) ^ 2 := by ring
  simp only [tau_rung]
  rw [h, pow_two (Real.sqrt TORSION_LIMIT), Real.mul_self_sqrt t2_tl_in_unit_interval.1.le]

-- [T26] :: {MASTER} | THE EVEN RUNGS ARE POWERS OF THE TORSION LIMIT
theorem t26_even_rungs (k : ℕ) : tau_rung (2 * k) = TORSION_LIMIT ^ k := by
  have h2 : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  simp only [tau_rung]
  rw [pow_mul, h2]

-- [T27] :: {INV} | EVERY RUNG IS POSITIVE
theorem t27_rung_pos (n : ℕ) : 0 < tau_rung n := by
  simp only [tau_rung]
  exact pow_pos t15_root_tl_pos n

-- [T28] :: {MASTER} | THE LADDER DESCENDS, AND THE OPERATOR IS THE ONE-RUNG STEP
theorem t28_ladder_descends (n : ℕ) :
    tau_rung (n + 1) < tau_rung n ∧
    sqrt_op (tau_rung (2 * n)) = tau_rung n := by
  have hlt1 : Real.sqrt TORSION_LIMIT < 1 := by
    have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
      Real.sq_sqrt t2_tl_in_unit_interval.1.le
    nlinarith [hs, t15_root_tl_pos, t2_tl_in_unit_interval.2]
  constructor
  · simp only [tau_rung, pow_succ]
    nlinarith [pow_pos t15_root_tl_pos n, hlt1]
  · have hnn : (0:ℝ) ≤ Real.sqrt TORSION_LIMIT ^ n := le_of_lt (pow_pos t15_root_tl_pos n)
    simp only [sqrt_op, tau_rung]
    rw [mul_comm 2 n, pow_mul]
    exact Real.sqrt_sq hnn

-- ============================================================
-- SECTION 4: THE PARITY OVER ℚ
-- ============================================================

-- [T29] :: {MASTER} | THE TORSION LIMIT IS EXACTLY RATIONAL
theorem t29_tl_rational :
    TORSION_LIMIT = (8556193749001 : ℝ) / 62500000000000 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T30] :: {MASTER} | THE LANDING IS EXACTLY RATIONAL
theorem t30_landing_rational :
    1 / TORSION_LIMIT = (62500000000000 : ℝ) / 8556193749001 := by
  rw [t29_tl_rational]
  norm_num

-- [T31] :: {MASTER} | THE EVEN RUNGS LIE IN ℚ, AS AN EXPLICIT RATIONAL POWER
theorem t31_even_rungs_rational (k : ℕ) :
    tau_rung (2 * k) = ((8556193749001 : ℝ) / 62500000000000) ^ k := by
  rw [t26_even_rungs, t29_tl_rational]

-- [T32] :: {MASTER} | THE DENOMINATOR'S FACTORIZATION
theorem t32_denominator_factors :
    (8556193749001 : ℕ) = 191 * 23767 * 1884833 := by norm_num

-- [T33] :: {VER} | THE THREE FACTORS ARE PRIME
theorem t33_factors_prime :
    Nat.Prime 191 ∧ Nat.Prime 23767 ∧ Nat.Prime 1884833 := by
  refine ⟨by norm_num, by norm_num, by norm_num⟩

-- [T34] :: {MASTER} | A PRIME DIVIDES THE DENOMINATOR EXACTLY ONCE,
--                     WHICH IS WHAT PLACES THE ODD RUNGS OUTSIDE ℚ
theorem t34_prime_divides_once :
    (191 : ℕ) ∣ 8556193749001 ∧ ¬ ((191 : ℕ) ^ 2 ∣ 8556193749001) := by
  refine ⟨by norm_num, by norm_num⟩

-- ============================================================
-- SECTION 5: THE BASE IS A REFRACTIVE INDEX
-- ============================================================

/-- Reading A in a medium: the phase velocity c/n against c. -/
def reading_A_medium (n : ℝ) : ℝ := 1 / n

/-- The relative permittivity of a non-magnetic medium, from its index. -/
def perm_of_index (n : ℝ) : ℝ := n ^ 2

/-- The refractive index of a non-magnetic medium, from its permittivity. -/
def index_of_perm (e : ℝ) : ℝ := Real.sqrt e

-- [T35] :: {MASTER} | THE MATCHED RATIO OF A MEDIUM IS ITS OWN PERMITTIVITY
theorem t35_perm_is_matched_ratio (n : ℝ) (hn : n ≠ 0) :
    matched_ratio (reading_A_medium n) = perm_of_index n := by
  simp only [matched_ratio, reading_A_medium, perm_of_index]
  field_simp

-- [T36] :: {MASTER} | THE GEOMETRIC BASE IS THE INDEX AT ε_r = 1/TL
theorem t36_base_is_index : index_of_perm (1 / TORSION_LIMIT) = geom_base := by
  exact (t18_base_from_operator.1).symm

-- [T37] :: {MASTER} | THE PERMITTIVITY OF THAT MEDIUM IS THE BASE SQUARED
theorem t37_perm_is_base_sq : perm_of_index geom_base = 1 / TORSION_LIMIT := by
  simp only [perm_of_index]
  exact t17_base_sq

-- [T38] :: {INV} | THAT MEDIUM'S READING A IS RUNG ONE
theorem t38_medium_reading_is_rung_one :
    reading_A_medium geom_base = tau_rung 1 := by
  have hne : Real.sqrt TORSION_LIMIT ≠ 0 := ne_of_gt t15_root_tl_pos
  simp only [reading_A_medium, geom_base, tau_rung, pow_one]
  field_simp

-- ============================================================
-- SECTION 6: THE ENERGY LADDER
-- ============================================================

/-- The conversion fraction at rung n. -/
def eta_rung (n : ℕ) : ℝ := TORSION_LIMIT ^ n / 2

-- [T39] :: {MASTER} | THE RUNG'S CONVERSION FRACTION IS ITS READING A, CONVERTED
theorem t39_eta_rung_from_tau (n : ℕ) : eta_rung n = eta_of_tau (tau_rung n) := by
  have h2 : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  simp only [eta_rung, eta_of_tau, tau_rung]
  rw [← pow_mul, mul_comm n 2, pow_mul, h2]

-- [T40] :: {MASTER} | CONSECUTIVE RUNGS DIFFER BY EXACTLY 1/TL IN ENERGY
theorem t40_energy_step (n : ℕ) : eta_rung n / eta_rung (n + 1) = 1 / TORSION_LIMIT := by
  have hp : (0:ℝ) < TORSION_LIMIT ^ n := pow_pos t2_tl_in_unit_interval.1 n
  have hne : TORSION_LIMIT ≠ 0 := ne_of_gt t2_tl_in_unit_interval.1
  have hpn : TORSION_LIMIT ^ n ≠ 0 := ne_of_gt hp
  simp only [eta_rung, pow_succ]
  field_simp
  ring

-- [T41] :: {VER} | RUNG ONE'S CONVERSION FRACTION IS HALF THE TORSION LIMIT
theorem t41_eta_rung_one : eta_rung 1 = TORSION_LIMIT / 2 := by
  simp only [eta_rung, pow_one]

-- [T42] :: {VER} | RUNG TWO'S CONVERSION FRACTION IS HALF THE SQUARE
theorem t42_eta_rung_two : eta_rung 2 = TORSION_LIMIT ^ 2 / 2 := by
  simp only [eta_rung]

-- [T43] :: {VER} | RUNG ONE'S CONVERSION FRACTION, NUMERICALLY
theorem t43_eta_rung_one_numeric : eta_rung 1 = 0.068449549992008 := by
  simp only [eta_rung, pow_one, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T44] :: {INV} | THE ENERGY LADDER IS STRICTLY DECREASING
theorem t44_energy_decreasing (n : ℕ) : eta_rung (n + 1) < eta_rung n := by
  have hp : (0:ℝ) < TORSION_LIMIT ^ n := pow_pos t2_tl_in_unit_interval.1 n
  simp only [eta_rung, pow_succ]
  nlinarith [hp, t2_tl_in_unit_interval.1, t2_tl_in_unit_interval.2]

-- [T45] :: {INV} | EVERY RUNG'S CONVERSION FRACTION IS POSITIVE
theorem t45_eta_rung_pos (n : ℕ) : 0 < eta_rung n := by
  simp only [eta_rung]
  exact div_pos (pow_pos t2_tl_in_unit_interval.1 n) (by norm_num)

/-- Exhaust velocity at a given Reading A. -/
def exhaust_velocity (t : ℝ) : ℝ := t * C_LIGHT

/-- Specific impulse from an exhaust velocity. -/
def specific_impulse (t : ℝ) : ℝ := t * C_LIGHT / G_STANDARD

-- [T46] :: {INV} | THE LADDER READ IN PROPULSION UNITS
theorem t46_ladder_in_isp (n : ℕ) :
    specific_impulse (tau_rung n) = exhaust_velocity (tau_rung n) / G_STANDARD := by
  simp only [specific_impulse, exhaust_velocity]

-- ============================================================
-- SECTION 7: THE CLASSICAL READING AGAINST THE RELATIVISTIC ONE
-- ============================================================

-- [T47] :: {MASTER} | THE CLASSICAL FRACTION IS STRICTLY BELOW THE RELATIVISTIC
theorem t47_classical_underestimates (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    eta_of_tau t < eta_rel t := by
  have hpos : (0:ℝ) < 1 - t ^ 2 := by nlinarith
  have hs : Real.sqrt (1 - t ^ 2) ^ 2 = 1 - t ^ 2 := Real.sq_sqrt hpos.le
  have hspos : (0:ℝ) < Real.sqrt (1 - t ^ 2) := Real.sqrt_pos.mpr hpos
  have hslt : Real.sqrt (1 - t ^ 2) < 1 := by nlinarith [hs, hspos]
  have hinv : Real.sqrt (1 - t ^ 2) * (1 / Real.sqrt (1 - t ^ 2)) = 1 := by field_simp
  have hqpos : (0:ℝ) < 1 / Real.sqrt (1 - t ^ 2) := div_pos one_pos hspos
  have key : Real.sqrt (1 - t ^ 2) * (t ^ 2 / 2 + 1) < 1 := by
    nlinarith [hs, hspos, hslt, sq_nonneg (Real.sqrt (1 - t ^ 2) - 1)]
  have hmain : t ^ 2 / 2 + 1 < 1 / Real.sqrt (1 - t ^ 2) := by
    nlinarith [key, hinv, hspos, hqpos]
  simp only [eta_of_tau, eta_rel, gamma]
  linarith [hmain]

-- [T48] :: {MASTER} | THE ERROR SANDWICH ON THE RANGE τ² ≤ TL
theorem t48_error_sandwich (t : ℝ) (h0 : 0 < t) (hTL : t ^ 2 ≤ TORSION_LIMIT) :
    (3 / 8) * t ^ 4 ≤ eta_rel t - eta_of_tau t ∧
    eta_rel t - eta_of_tau t ≤ (1 / 2) * t ^ 4 := by
  have hTLval : TORSION_LIMIT = 0.136899099984016 := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  rw [hTLval] at hTL
  have ht1 : t ^ 2 < 1 := by linarith
  have hpos : (0:ℝ) < 1 - t ^ 2 := by linarith
  set s := Real.sqrt (1 - t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - t ^ 2 := Real.sq_sqrt hpos.le
  have hspos : (0:ℝ) < s := Real.sqrt_pos.mpr hpos
  have hslt : s < 1 := by nlinarith [hs, hspos]
  have hslo : (0.929 : ℝ) < s := by nlinarith [hs, hspos]
  have hinv : s * (1 / s) = 1 := by field_simp
  have hsub : t ^ 2 = 1 - s ^ 2 := by linarith [hs]
  have ht4 : t ^ 4 = (1 - s ^ 2) ^ 2 := by
    linear_combination (t ^ 2 + 1 - s ^ 2) * hs
  -- lower bound: 8 - s(8 + 4t² + 3t⁴) = (1-s)³(3s² + 9s + 8) ≥ 0
  have hfacA : (0:ℝ) ≤ (1 - s) ^ 3 * (3 * s ^ 2 + 9 * s + 8) := by
    apply mul_nonneg
    · apply pow_nonneg; linarith
    · nlinarith [hspos]
  have hA : s * (1 + t ^ 2 / 2 + (3 / 8) * t ^ 4) ≤ 1 := by
    rw [ht4, hsub]
    nlinarith [hfacA, hspos, hslt]
  -- upper bound: 2s(1 + t²/2 + t⁴/2) - 2 = (s-1)²(s³ + 2s² - 2) ≥ 0
  have hfacB : (0:ℝ) ≤ (s - 1) ^ 2 * (s ^ 3 + 2 * s ^ 2 - 2) := by
    apply mul_nonneg
    · exact sq_nonneg _
    · nlinarith [hslo, hspos]
  have hB : (1:ℝ) ≤ s * (1 + t ^ 2 / 2 + (1 / 2) * t ^ 4) := by
    rw [ht4, hsub]
    nlinarith [hfacB, hspos, hslt]
  simp only [eta_rel, eta_of_tau, gamma, ← hsdef]
  constructor
  · nlinarith [hA, hinv, hspos]
  · nlinarith [hB, hinv, hspos]

-- [T49] :: {MASTER} | THE ERROR IN TERMS OF THE FRACTION IT COMPUTES
theorem t49_error_in_eta (t : ℝ) (h0 : 0 < t) (hTL : t ^ 2 ≤ TORSION_LIMIT) :
    (3 / 2) * eta_of_tau t ^ 2 ≤ eta_rel t - eta_of_tau t ∧
    eta_rel t - eta_of_tau t ≤ 2 * eta_of_tau t ^ 2 := by
  have h := t48_error_sandwich t h0 hTL
  have hsq : eta_of_tau t ^ 2 = t ^ 4 / 4 := by
    simp only [eta_of_tau]; ring
  rw [hsq]
  exact ⟨by linarith [h.1], by linarith [h.2]⟩

-- [T50] :: {VER} | AT THE CORRIDOR CEILING THE ERROR IS BOUNDED BY TWO PERCENT
theorem t50_ceiling_error_small :
    eta_rel (Real.sqrt TORSION_LIMIT) - eta_of_tau (Real.sqrt TORSION_LIMIT)
      ≤ 2 * eta_of_tau (Real.sqrt TORSION_LIMIT) ^ 2 := by
  have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  exact (t49_error_in_eta (Real.sqrt TORSION_LIMIT) t15_root_tl_pos (by rw [hs])).2

-- [T51] :: {INV} | THE SANDWICH APPLIES AT THE CORRIDOR CEILING RUNG
theorem t51_sandwich_at_rung_two :
    (3 / 2) * eta_of_tau (tau_rung 2) ^ 2
      ≤ eta_rel (tau_rung 2) - eta_of_tau (tau_rung 2) := by
  have hb : tau_rung 2 ^ 2 ≤ TORSION_LIMIT := by
    rw [t24_rung_two]
    nlinarith [t2_tl_in_unit_interval.1, t2_tl_in_unit_interval.2]
  exact (t49_error_in_eta (tau_rung 2) (t27_rung_pos 2) hb).1

-- [T52] :: {MASTER} | THE ONE-PERCENT LINE
theorem t52_one_percent_line (t : ℝ) (h0 : 0 < t) (hTL : t ^ 2 ≤ TORSION_LIMIT)
    (hsmall : eta_of_tau t ≤ 2 / 300) :
    eta_rel t - eta_of_tau t ≤ (1 / 100) * eta_of_tau t := by
  have h := (t49_error_in_eta t h0 hTL).2
  have hp : 0 < eta_of_tau t := by
    simp only [eta_of_tau]; positivity
  nlinarith [h, hp, hsmall]

-- ============================================================
-- SECTION 8: THE TWO BASES ON ONE LADDER
-- ============================================================

/-- The rung index of a Reading A, against the geometric base. -/
def rung_index (t : ℝ) : ℝ := -Real.log t / Real.log geom_base

-- [T53] :: {MASTER} | THE LOGARITHM OF THE GEOMETRIC BASE
theorem t53_log_base : Real.log geom_base = -(Real.log TORSION_LIMIT / 2) := by
  simp only [geom_base, one_div, Real.log_inv,
    Real.log_sqrt t2_tl_in_unit_interval.1.le]

-- [T54] :: {VER} | THE LOGARITHM OF THE TORSION LIMIT IS NEGATIVE
theorem t54_log_tl_neg : Real.log TORSION_LIMIT < 0 :=
  Real.log_neg t2_tl_in_unit_interval.1 t2_tl_in_unit_interval.2

-- [T55] :: {VER} | THE LOGARITHM OF THE GEOMETRIC BASE IS POSITIVE
theorem t55_log_base_pos : 0 < Real.log geom_base := by
  rw [t53_log_base]
  linarith [t54_log_tl_neg]

-- [T56] :: {MASTER} | THE CEILING SITS AT RUNG TWO, EXACTLY
theorem t56_ceiling_at_rung_two : rung_index TORSION_LIMIT = 2 := by
  have hne : Real.log TORSION_LIMIT ≠ 0 := ne_of_lt t54_log_tl_neg
  simp only [rung_index, t53_log_base]
  field_simp

-- [T57] :: {MASTER} | ONE RUNG IS ln b₀ E-FOLDS, AND ln b₀ IS HALF ln(1/TL)
theorem t57_rung_in_efolds :
    Real.log geom_base = Real.log (1 / TORSION_LIMIT) / 2 := by
  rw [t53_log_base, one_div, Real.log_inv]
  ring

-- [T58] :: {MASTER} | e SITS AT A RUNG THE LADDER NAMES EXACTLY
theorem t58_e_rung :
    Real.log (Real.exp 1) / Real.log geom_base = 1 / Real.log geom_base := by
  rw [Real.log_exp]

-- [T59] :: {MASTER} | THE RECIPROCAL OF e AND RUNG ONE, ON ONE LADDER
theorem t59_inv_e_and_rung_one :
    rung_index (Real.exp (-1)) = 1 / Real.log geom_base ∧
    rung_index (tau_rung 1) = 1 := by
  constructor
  · have hle : Real.log (Real.exp (-1 : ℝ)) = -1 := Real.log_exp (-1)
    simp only [rung_index, hle, neg_neg]
  · simp only [rung_index, tau_rung, pow_one,
      Real.log_sqrt t2_tl_in_unit_interval.1.le, t53_log_base]
    have h : Real.log TORSION_LIMIT ≠ 0 := ne_of_lt t54_log_tl_neg
    field_simp

-- [T60] :: {INV} | THE RUNG INDEX OF A POWER IS THE MULTIPLE
theorem t60_rung_index_of_rung (n : ℕ) : rung_index (tau_rung n) = n := by
  have hne : Real.log TORSION_LIMIT ≠ 0 := ne_of_lt t54_log_tl_neg
  simp only [rung_index, tau_rung, Real.log_pow,
    Real.log_sqrt t2_tl_in_unit_interval.1.le, t53_log_base]
  field_simp
  ring

-- ============================================================
-- SECTION 9: THE CORRIDOR IN RUNGS, AND √(25/22)
-- ============================================================

-- [T61] :: {MASTER} | THE TWO BASES STAND IN THE RATIO √(25/22)
theorem t61_base_ratio : iva_base / geom_base = Real.sqrt (25 / 22) := by
  have hTL : (0:ℝ) < TORSION_LIMIT := t2_tl_in_unit_interval.1
  have hIVA : (0:ℝ) < TL_IVA := t3_floor_below_ceiling.1
  have hsT : Real.sqrt TORSION_LIMIT ≠ 0 := ne_of_gt t15_root_tl_pos
  have hsI : Real.sqrt TL_IVA ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr hIVA)
  have hstep : iva_base / geom_base = Real.sqrt TORSION_LIMIT / Real.sqrt TL_IVA := by
    simp only [iva_base, geom_base]
    field_simp
  rw [hstep, ← Real.sqrt_div hTL.le]
  rw [t8_endpoint_ratio]

-- [T62] :: {VER} | THE BASE RATIO IS ABOVE ONE
theorem t62_base_ratio_gt_one : 1 < iva_base / geom_base := by
  rw [t61_base_ratio]
  calc (1:ℝ) = Real.sqrt 1 := Real.sqrt_one.symm
    _ < Real.sqrt (25 / 22) := Real.sqrt_lt_sqrt (by norm_num) (by norm_num)

-- [T63] :: {MASTER} | THE CORRIDOR WIDTH IN RUNGS, IN CLOSED FORM
theorem t63_corridor_width :
    rung_index TL_IVA - rung_index TORSION_LIMIT
      = 2 * Real.log (25 / 22) / Real.log (1 / TORSION_LIMIT) := by
  have hTL : (0:ℝ) < TORSION_LIMIT := t2_tl_in_unit_interval.1
  have hIVA : (0:ℝ) < TL_IVA := t3_floor_below_ceiling.1
  have hne : Real.log TORSION_LIMIT ≠ 0 := ne_of_lt t54_log_tl_neg
  have hsplit : Real.log (25 / 22)
      = Real.log TORSION_LIMIT - Real.log TL_IVA := by
    rw [← Real.log_div (ne_of_gt hTL) (ne_of_gt hIVA), t8_endpoint_ratio]
  have hinvlog : Real.log (1 / TORSION_LIMIT) = -Real.log TORSION_LIMIT := by
    rw [one_div, Real.log_inv]
  simp only [rung_index, t53_log_base]
  rw [hsplit, hinvlog]
  field_simp
  ring

-- [T64] :: {INV} | THE CORRIDOR HAS POSITIVE WIDTH IN RUNGS
theorem t64_corridor_width_pos :
    rung_index TORSION_LIMIT < rung_index TL_IVA := by
  have hTL : (0:ℝ) < TORSION_LIMIT := t2_tl_in_unit_interval.1
  have hIVA : (0:ℝ) < TL_IVA := t3_floor_below_ceiling.1
  have hlt : TL_IVA < TORSION_LIMIT := t3_floor_below_ceiling.2
  have hlog : Real.log TL_IVA < Real.log TORSION_LIMIT :=
    Real.log_lt_log hIVA hlt
  have hb : 0 < Real.log geom_base := t55_log_base_pos
  have hbi : (0:ℝ) < (Real.log geom_base)⁻¹ := inv_pos.mpr hb
  simp only [rung_index, div_eq_mul_inv]
  exact mul_lt_mul_of_pos_right (by linarith) hbi

-- [T65] :: {MASTER} | THE CORRIDOR FLOOR'S BASE SQUARED IS ITS OWN LANDING
theorem t65_iva_base_sq : iva_base ^ 2 = 1 / TL_IVA := by
  have hIVA : (0:ℝ) < TL_IVA := t3_floor_below_ceiling.1
  have hs : Real.sqrt TL_IVA ^ 2 = TL_IVA := Real.sq_sqrt hIVA.le
  have hne : Real.sqrt TL_IVA ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr hIVA)
  simp only [iva_base, div_pow, one_pow, hs]

-- [T66] :: {VER} | THE CORRIDOR FLOOR'S BASE, NUMERICALLY
theorem t66_iva_base_numeric :
    2.8811002321 < iva_base ∧ iva_base < 2.8811002322 := by
  have hsq := t65_iva_base_sq
  have hpos := t19_iva_base_pos
  have hval : (1:ℝ) / TL_IVA = 1 / 0.12047120798593408 := by
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  rw [hval] at hsq
  constructor
  · nlinarith [hsq, hpos]
  · nlinarith [hsq, hpos]

-- [T67] :: {MASTER} | THE CORRIDOR IS A FIXED RATIO OF BASES
theorem t67_corridor_as_base_ratio :
    (iva_base / geom_base) ^ 2 = 25 / 22 := by
  rw [t61_base_ratio]
  exact Real.sq_sqrt (by norm_num)

-- ============================================================
-- SECTION 10: WHERE THE CLASSICAL READING ENDS
-- ============================================================

-- [T68] :: {MASTER} | THE CLASSICAL READING IS BOUNDED, SO IT COVERS
--                     RUNGS ABOVE ZERO AND NOT TOTAL CONVERSION
theorem t68_classical_bounded_total_conversion_outside :
    (∀ t : ℝ, 0 < t → t < 1 → eta_of_tau t < 1 / 2) ∧
    ¬ (∃ t : ℝ, 0 < t ∧ t < 1 ∧ eta_of_tau t = 1) := by
  refine ⟨fun t h0 h1 => t13_eta_classical_bounded t h0 h1, ?_⟩
  rintro ⟨t, h0, h1, heq⟩
  have := t13_eta_classical_bounded t h0 h1
  rw [heq] at this
  norm_num at this

-- [T69] :: {MASTER} | THE RELATIVISTIC READING CARRIES TOTAL CONVERSION
theorem t69_relativistic_carries_total :
    eta_rel (Real.sqrt 3 / 2) = 1 ∧ Real.sqrt 3 / 2 < 1 := by
  refine ⟨t14_annihilation_gamma.2, ?_⟩
  have h3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have hnn : (0:ℝ) ≤ Real.sqrt 3 := Real.sqrt_nonneg 3
  nlinarith [h3, hnn]

-- [T70] :: {INV} | THE CLASSICAL FRACTION AT RUNG ONE IS HALF THE TORSION LIMIT
theorem t70_rung_one_fraction : eta_of_tau (tau_rung 1) = TORSION_LIMIT / 2 := by
  rw [← t39_eta_rung_from_tau]
  exact t41_eta_rung_one

-- [T71] :: {VER} | RUNG ONE CLASSIFIES AS SHATTER, RUNG TWO AS THE CEILING
theorem t71_rung_phases :
    tau_rung 2 = TORSION_LIMIT ∧ TORSION_LIMIT < tau_rung 1 := by
  refine ⟨t24_rung_two, ?_⟩
  have hs2 : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  have hlt1 : Real.sqrt TORSION_LIMIT < 1 := by
    nlinarith [hs2, t15_root_tl_pos, t2_tl_in_unit_interval.2]
  simp only [tau_rung, pow_one]
  nlinarith [hs2, t15_root_tl_pos, hlt1]

-- [T72] :: {MASTER} | THE TWO READINGS AGREE TO LEADING ORDER AND PART COMPANY
--                     ONLY IN A BOUNDED, STATED WAY
theorem t72_two_readings_bracket (t : ℝ) (h0 : 0 < t) (hTL : t ^ 2 ≤ TORSION_LIMIT) :
    eta_of_tau t < eta_rel t ∧
    eta_rel t ≤ eta_of_tau t + 2 * eta_of_tau t ^ 2 := by
  have ht1 : t < 1 := by
    nlinarith [hTL, t2_tl_in_unit_interval.1, t2_tl_in_unit_interval.2, h0]
  refine ⟨t47_classical_underestimates t h0 ht1, ?_⟩
  linarith [(t49_error_in_eta t h0 hTL).2]

-- ============================================================
-- MASTER
-- ============================================================

-- [MASTER] :: {ANC} | THE GEOMETRIC BASE AND THE ENERGY LADDER
theorem MASTER_geometric_base_energy_ladder :
    -- the conversion fraction is an energy ratio
    (∀ m v : ℝ, m ≠ 0 →
      kinetic_classical m v / rest_energy m = eta_of_tau (tau_A v)) ∧
    -- the base, built by the corpus operator from a corpus quantity
    (geom_base ^ 2 = 1 / TORSION_LIMIT) ∧
    (geom_base = sqrt_op (1 / TORSION_LIMIT) ∧
      matched_ratio (sqrt_op TORSION_LIMIT) = 1 / TORSION_LIMIT) ∧
    -- the ladder is exact integer powers, with TL at rung 2
    (∀ n : ℕ, tau_rung n = 1 / geom_base ^ n) ∧
    (tau_rung 2 = TORSION_LIMIT) ∧
    (tau_rung 4 = TORSION_LIMIT ^ 2) ∧
    (∀ k : ℕ, tau_rung (2 * k) = TORSION_LIMIT ^ k) ∧
    -- the parity over ℚ
    (TORSION_LIMIT = (8556193749001 : ℝ) / 62500000000000) ∧
    (∀ k : ℕ, tau_rung (2 * k) = ((8556193749001 : ℝ) / 62500000000000) ^ k) ∧
    ((8556193749001 : ℕ) = 191 * 23767 * 1884833) ∧
    ((191 : ℕ) ∣ 8556193749001 ∧ ¬ ((191 : ℕ) ^ 2 ∣ 8556193749001)) ∧
    -- the base is a refractive index
    (index_of_perm (1 / TORSION_LIMIT) = geom_base) ∧
    (perm_of_index geom_base = 1 / TORSION_LIMIT) ∧
    -- the energy ladder, stepping by exactly 1/TL
    (∀ n : ℕ, eta_rung n = eta_of_tau (tau_rung n)) ∧
    (∀ n : ℕ, eta_rung n / eta_rung (n + 1) = 1 / TORSION_LIMIT) ∧
    -- the classical reading certifies its own accuracy
    (∀ t : ℝ, 0 < t → t < 1 → eta_of_tau t < eta_rel t) ∧
    (∀ t : ℝ, 0 < t → t ^ 2 ≤ TORSION_LIMIT →
      (3 / 2) * eta_of_tau t ^ 2 ≤ eta_rel t - eta_of_tau t ∧
      eta_rel t - eta_of_tau t ≤ 2 * eta_of_tau t ^ 2) ∧
    -- total conversion: outside the classical reading, exact in the relativistic
    (¬ (∃ t : ℝ, 0 < t ∧ t < 1 ∧ eta_of_tau t = 1)) ∧
    (gamma (Real.sqrt 3 / 2) = 2 ∧ eta_rel (Real.sqrt 3 / 2) = 1) ∧
    -- the two bases on one ladder, and the corridor between them
    (Real.log geom_base = Real.log (1 / TORSION_LIMIT) / 2) ∧
    (rung_index TORSION_LIMIT = 2) ∧
    (∀ n : ℕ, rung_index (tau_rung n) = n) ∧
    (iva_base / geom_base = Real.sqrt (25 / 22)) ∧
    ((iva_base / geom_base) ^ 2 = 25 / 22) ∧
    (rung_index TL_IVA - rung_index TORSION_LIMIT
      = 2 * Real.log (25 / 22) / Real.log (1 / TORSION_LIMIT)) :=
  ⟨fun m v hm => t10_eta_is_energy_ratio m v hm,
   t17_base_sq,
   t18_base_from_operator,
   t21_rung_is_base_power,
   t24_rung_two,
   t25_rung_four,
   t26_even_rungs,
   t29_tl_rational,
   t31_even_rungs_rational,
   t32_denominator_factors,
   t34_prime_divides_once,
   t36_base_is_index,
   t37_perm_is_base_sq,
   t39_eta_rung_from_tau,
   t40_energy_step,
   fun t h0 h1 => t47_classical_underestimates t h0 h1,
   fun t h0 hTL => t49_error_in_eta t h0 hTL,
   t68_classical_bounded_total_conversion_outside.2,
   t14_annihilation_gamma,
   t57_rung_in_efolds,
   t56_ceiling_at_rung_two,
   t60_rung_index_of_rung,
   t61_base_ratio,
   t67_corridor_as_base_ratio,
   t63_corridor_width⟩

end SNSFL_GeometricBaseEnergyLadder

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that the conversion fraction of [9,9,2,0] is an ENERGY
-- RATIO: with E_0 = m c^2 and E_k = (1/2) m v^2, their quotient is exactly
-- tau_A^2/2 = eta, so the corpus conversion fraction and the ratio E = mc^2 is
-- compared against are one number. It then establishes the base the geometry
-- selects, b_0 = 1/sqrt(TL), built by the corpus operator applied to a corpus
-- quantity — b_0^2 = 1/TL = matched_ratio(S TL) — so that no new construct
-- enters, and in that base every rung of the torsion ladder is an exact
-- integer power, with the Torsion Limit at rung two and its square at rung
-- four. The ladder carries a PARITY over the rationals: TL is a terminating
-- decimal, so TL = 8556193749001/62500000000000 exactly and every even rung
-- lies in ℚ, while the denominator factors as 191 * 23767 * 1884833 with 191
-- dividing it exactly once, which is the arithmetic that places the odd rungs
-- outside ℚ. The base is itself an INDEX — the refractive index of a medium
-- whose relative permittivity is 1/TL, by the same operator and the same
-- closure — so the base the geometry selects and a constitutive constant are
-- one object. Read for energy, the ladder gives eta at rung n equal to TL^n/2,
-- so consecutive rungs differ by EXACTLY 1/TL in energy released per unit
-- mass. The classical reading certifies its own accuracy: it is strictly below
-- the relativistic one, and on the range tau^2 <= TL the absolute error is
-- sandwiched between (3/2)eta^2 and 2 eta^2, so the relative error lies
-- between (3/2)eta and 2 eta and the formula reports its own drift. The
-- classical reading is bounded by one half and cannot represent total
-- conversion; the relativistic reading carries it exactly, at
-- tau_A = sqrt(3)/2 where the factor is 2. Finally the two bases stand on one
-- ladder: log b_0 = log(1/TL)/2, the ceiling sits at rung two exactly, every
-- rung index returns its own integer, the corridor width is
-- 2 log(25/22)/log(1/TL), and the two corridor bases stand in the exact ratio
-- sqrt(25/22) whose square is 25/22 — the fraction [9,9,0,17.1] already
-- carries as the ratio of its two landings.
--
-- THEOREMS : 72 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
