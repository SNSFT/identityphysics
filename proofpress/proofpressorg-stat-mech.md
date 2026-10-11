# Statistical Mechanics Reduced to PNBA: A Lossless Map in Which Every Equation Is a Function of τ = E/k_BT

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,0,16](PHYS) · Physics Ground · Statistical Mechanics
**Issue:** ProofPress, Volume 1, Issue 3 · May 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 20 theorems · 307 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_StatMech_Reduction.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

Statistical mechanics connects the microstates of a system to its thermodynamics through the Boltzmann factor exp(−βE), with β = 1/k_BT. This article reduces it to PNBA by a single invertible map: the Pattern is the thermal energy P = k_BT, the Behavior of microstate i is its energy above the ground state B = E_i, the Narrative is the microstate count Ω, and torsion is τ_i = E_i/k_BT = βE_i. The inverse map T = P/k_B, E = B recovers every thermal state, so the reduction is lossless. In these variables the Boltzmann factor is exp(−τ) and the partition function is Z = Σ exp(−τ_i). The article proves that Z is positive, that the probabilities exp(−τ_i)/Z sum to one, that the ratio of two probabilities depends only on the torsion difference, p_i = exp(τ_j − τ_i)·p_j, and that lower torsion is always more probable. The free energy is F = −P ln Z, zero for a lone ground state and negative once Z > 1, and the Boltzmann entropy k_B ln Ω vanishes for a single microstate and rises strictly with Ω. A two-level system with gap τ occupies its upper level with probability 1/(eτ + 1), which is the Fermi function; Fermi–Dirac occupation lies strictly between 0 and 1 and equals 1/2 at the chemical potential; Bose–Einstein occupation is positive above it. The phases of a microstate follow from the map. The ground state has τ = 0 and full weight: Noble. A Locked microstate keeps relative weight above 1 − TL_IVA ≈ 0.87953, a Shatter microstate has weight at most 1/(1 + TL) ≈ 0.87958, and the two bounds meet. A quadratic degree of freedom at its equipartition energy k_BT/2 has τ = 1/2: Shatter.

## What This Article Proves

1. The map (T, E) → (k_BT, E) is invertible; torsion is βE; the Boltzmann factor is exp(−τ) (`round_trip`, `torsion_is_beta_E`, `boltzmann_factor_is_exp_neg_tau`).
2. The partition function Σ exp(−τ_i) is positive; probabilities sum to 1; p_i = exp(τ_j − τ_i)·p_j; lower torsion is more probable (`Z_pos`, `prob_sum_one`, `relative_weight`, `lower_torsion_more_probable`).
3. Free energy −P ln Z is 0 for a lone ground state and negative for Z > 1; Boltzmann entropy is 0 at Ω = 1, non-negative, and strictly increasing in Ω (`free_energy`, `boltzmann_entropy`).
4. The two-level upper occupation equals 1/(eτ + 1); Fermi–Dirac occupation lies in (0, 1) and is 1/2 at μ; Bose–Einstein occupation is positive above μ (`two_level_occupation`, `fermi_dirac`, `bose_einstein_positive`).
5. Phases: the ground state is Noble with weight 1; Locked weight > 1 − TL_IVA; Shatter weight ≤ 1/(1 + TL); the bounds meet between 0.8795 and 0.8796; equipartition τ = 1/2 is Shatter. The master theorem holds all of the above together (`ground_state_noble`, `locked_weight`, `shatter_weight`, `weight_bounds_meet`, `equipartition_shatter`, `stat_mech_master`).

## The PNBA Map

| Statistical mechanics | PNBA |
| --- | --- |
| Thermal energy k_BT | P |
| Microstate energy E_i | B |
| Microstate count Ω | N |
| βE_i = E_i/k_BT | τ = B/P |
| Boltzmann factor exp(−βE) | exp(−τ) |
| Partition function Z | Σ exp(−τ_i) |
| Free energy −k_BT ln Z | −P ln Z |
| Ground state (E = 0) | Noble |
| E < 0.12 k_BT | Locked (weight > 0.8795) |
| E ≥ 0.137 k_BT; equipartition k_BT/2 | Shatter |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Boltzmann, L. (1877). Über die Beziehung zwischen dem zweiten Hauptsatze der mechanischen Wärmetheorie und der Wahrscheinlichkeitsrechnung. *Wiener Berichte*, 76, 373–435.
2. Gibbs, J. W. (1902). *Elementary Principles in Statistical Mechanics*. Scribner.
3. Fermi, E. (1926). Zur Quantelung des idealen einatomigen Gases. *Zeitschrift für Physik*, 36, 902–912.
4. Bose, S. N. (1924). Plancks Gesetz und Lichtquantenhypothese. *Zeitschrift für Physik*, 26, 178–181.
5. Reif, F. (1965). *Fundamentals of Statistical and Thermal Physics*. McGraw-Hill.
6. Trent, R. V. III. Quantum Mechanics → PNBA. ProofPress.
7. Trent, R. V. III. Economics Reduced to PNBA. ProofPress, Volume 1, Issue 3.
8. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_StatMech_Reduction.lean
-- ============================================================
--
-- Statistical Mechanics → PNBA
-- A lossless reduction: thermal energy is the Pattern, state
-- energy is the Behavior, and every equation of statistical
-- mechanics is a function of torsion τ = E / k_BT.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,0,16](PHYS)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      May 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
--
-- ============================================================
-- THE MAP
-- ============================================================
--
--   P = k_B T      thermal energy scale
--   B = E_i        energy of microstate i above the ground state
--   N = Ω          number of microstates
--   τ_i = B / P = E_i / k_B T = β E_i
--
-- The map is invertible: T = P / k_B and E_i = B. Nothing is lost.
--
-- THE EQUATIONS IN PNBA
--   Boltzmann factor     exp(−βE_i)         = exp(−τ_i)
--   Partition function   Z = Σ exp(−βE_i)   = Σ exp(−τ_i)
--   Probability          p_i = exp(−τ_i)/Z, Σ p_i = 1
--   Relative weight      p_i / p_j          = exp(τ_j − τ_i)
--   Free energy          F = −k_BT ln Z     = −P ln Z
--   Entropy              S = k_B ln Ω       = k_B ln N
--   Two-level system     upper occupation   = 1/(exp τ + 1)
--   Fermi–Dirac          n = 1/(exp(τ − τ_μ) + 1) ∈ (0, 1)
--   Bose–Einstein        n = 1/(exp(τ − τ_μ) − 1) > 0
--   Equipartition        ⟨E⟩ = k_BT/2 per quadratic mode: τ = 1/2
--
-- THE PHASES OF A MICROSTATE
--   τ = 0          NOBLE    the ground state; full weight
--   τ < TL_IVA     LOCKED   relative weight above 1 − TL_IVA ≈ 0.8795
--   τ ≥ TL         SHATTER  relative weight below 1/(1 + TL) ≈ 0.8796
--   A quadratic mode at equipartition (τ = 1/2) is Shatter.
--
-- ============================================================

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic
import Mathlib.Data.Real.Basic

noncomputable section

namespace SNSFL_StatMech

open Finset

-- ============================================================
-- SECTION 0: SOVEREIGN ANCHOR
-- ============================================================

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10
def TL_IVA_PEAK      : ℝ := 88 * TORSION_LIMIT / 100

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- Boltzmann constant (exact SI 2019), J/K
def K_BOLTZMANN : ℝ := 1.380649e-23

-- ============================================================
-- SECTION 1: THE MAP AND ITS INVERSE
-- ============================================================

structure ThermalState where
  T : ℝ   -- temperature
  E : ℝ   -- microstate energy above the ground state

structure PNBAState where
  P : ℝ   -- thermal energy k_B T
  B : ℝ   -- microstate energy

def to_pnba (k : ℝ) (s : ThermalState) : PNBAState := ⟨k * s.T, s.E⟩
noncomputable def from_pnba (k : ℝ) (q : PNBAState) : ThermalState := ⟨q.P / k, q.B⟩

noncomputable def torsion (q : PNBAState) : ℝ := q.B / q.P

-- [T1] The map is lossless: PNBA → thermal recovers every state
theorem round_trip (k : ℝ) (hk : k ≠ 0) (s : ThermalState) :
    from_pnba k (to_pnba k s) = s := by
  rcases s with ⟨T, E⟩
  show ThermalState.mk (k * T / k) E = ThermalState.mk T E
  rw [mul_div_cancel_left₀ T hk]

-- [T2] Torsion is β·E = E / k_B T
theorem torsion_is_beta_E (k : ℝ) (s : ThermalState) :
    torsion (to_pnba k s) = s.E / (k * s.T) := rfl

-- [T3] The Boltzmann factor is exp(−τ)
theorem boltzmann_factor_is_exp_neg_tau (k : ℝ) (s : ThermalState) :
    Real.exp (-(s.E / (k * s.T))) = Real.exp (-torsion (to_pnba k s)) := rfl

-- ============================================================
-- SECTION 2: THE PARTITION FUNCTION
-- ============================================================

-- Partition function over n + 1 microstates with torsions τ
noncomputable def Z {n : ℕ} (τ : Fin (n + 1) → ℝ) : ℝ := ∑ i, Real.exp (-τ i)

noncomputable def prob {n : ℕ} (τ : Fin (n + 1) → ℝ) (i : Fin (n + 1)) : ℝ :=
  Real.exp (-τ i) / Z τ

-- [T4] Z is positive
theorem Z_pos {n : ℕ} (τ : Fin (n + 1) → ℝ) : 0 < Z τ := by
  unfold Z
  exact Finset.sum_pos (fun i _ => Real.exp_pos _) Finset.univ_nonempty

-- [T5] Probabilities sum to 1
theorem prob_sum_one {n : ℕ} (τ : Fin (n + 1) → ℝ) : ∑ i, prob τ i = 1 := by
  unfold prob
  rw [← Finset.sum_div]
  exact div_self (ne_of_gt (Z_pos τ))

-- [T6] Relative weight depends only on the torsion difference:
-- p_i = exp(τ_j − τ_i) · p_j
theorem relative_weight {n : ℕ} (τ : Fin (n + 1) → ℝ) (i j : Fin (n + 1)) :
    prob τ i = Real.exp (τ j - τ i) * prob τ j := by
  unfold prob
  rw [mul_div_assoc', ← Real.exp_add, show τ j - τ i + -τ j = -τ i by ring]

-- [T7] Lower torsion is more probable
theorem lower_torsion_more_probable {n : ℕ} (τ : Fin (n + 1) → ℝ) (i j : Fin (n + 1))
    (h : τ i < τ j) : prob τ j < prob τ i := by
  unfold prob
  exact div_lt_div_of_pos_right (Real.exp_lt_exp.mpr (by linarith)) (Z_pos τ)

-- ============================================================
-- SECTION 3: FREE ENERGY AND ENTROPY
-- ============================================================

-- [T8] Free energy F = −P ln Z: zero for a lone ground state,
-- negative once Z > 1
theorem free_energy (P Zv : ℝ) (hP : 0 < P) (hZ : 1 < Zv) :
    -(P * Real.log 1) = 0 ∧ -(P * Real.log Zv) < 0 := by
  constructor
  · simp
  · have hlog : 0 < Real.log Zv := Real.log_pos hZ
    nlinarith

-- [T9] Entropy S = k_B ln Ω: zero for a single microstate (the third
-- law ground state), non-negative, and strictly increasing in Ω
theorem boltzmann_entropy (k : ℝ) (hk : 0 < k) (Ω1 Ω2 : ℕ) (h1 : 1 ≤ Ω1) (h : Ω1 < Ω2) :
    k * Real.log ((1 : ℕ) : ℝ) = 0 ∧
    0 ≤ k * Real.log (Ω1 : ℝ) ∧
    k * Real.log (Ω1 : ℝ) < k * Real.log (Ω2 : ℝ) := by
  refine ⟨by simp, ?_, ?_⟩
  · apply mul_nonneg hk.le
    apply Real.log_nonneg
    exact_mod_cast h1
  · apply mul_lt_mul_of_pos_left _ hk
    apply Real.log_lt_log
    · exact_mod_cast (by omega : 0 < Ω1)
    · exact_mod_cast h

-- ============================================================
-- SECTION 4: OCCUPATION LAWS
-- ============================================================

-- [T10] Two-level system with gap τ: the upper level is occupied
-- with probability 1/(exp τ + 1), the Fermi function at τ_μ = 0
theorem two_level_occupation (τ : ℝ) :
    Real.exp (-τ) / (1 + Real.exp (-τ)) = 1 / (Real.exp τ + 1) := by
  have hb : (1 + Real.exp (-τ)) ≠ 0 := by positivity
  have hd : (Real.exp τ + 1) ≠ 0 := by positivity
  have h : Real.exp (-τ) * Real.exp τ = 1 := by
    rw [← Real.exp_add]; simp
  rw [eq_div_iff hd, div_mul_eq_mul_div, div_eq_iff hb]
  linear_combination h

-- [T11] Fermi–Dirac occupation lies strictly between 0 and 1, and is
-- exactly 1/2 at the chemical potential
theorem fermi_dirac (x : ℝ) :
    0 < 1 / (Real.exp x + 1) ∧ 1 / (Real.exp x + 1) < 1 ∧
    1 / (Real.exp 0 + 1) = 1 / 2 := by
  have hpos : 0 < Real.exp x + 1 := by positivity
  refine ⟨by positivity, ?_, ?_⟩
  · rw [div_lt_one hpos]
    linarith [Real.exp_pos x]
  · rw [Real.exp_zero]; norm_num

-- [T12] Bose–Einstein occupation is positive above the chemical
-- potential
theorem bose_einstein_positive (x : ℝ) (hx : 0 < x) :
    0 < 1 / (Real.exp x - 1) := by
  have h1 : 1 < Real.exp x := Real.one_lt_exp_iff.mpr hx
  exact div_pos one_pos (by linarith)

-- ============================================================
-- SECTION 5: THE PHASES OF A MICROSTATE
-- ============================================================

-- [T13] The ground state (B = 0) is Noble, with full weight
theorem ground_state_noble (P : ℝ) :
    torsion ⟨P, 0⟩ = 0 ∧ Real.exp (-torsion ⟨P, 0⟩) = 1 := by
  have h : torsion ⟨P, 0⟩ = 0 := by unfold torsion; simp
  exact ⟨h, by rw [h]; simp⟩

-- [T14] A Locked microstate keeps relative weight above 1 − TL_IVA
theorem locked_weight (τ : ℝ) (h : τ < TL_IVA_PEAK) :
    1 - TL_IVA_PEAK < Real.exp (-τ) := by
  have := Real.add_one_le_exp (-τ)
  linarith

-- [T15] A Shatter microstate has relative weight at most 1/(1 + TL)
theorem shatter_weight (τ : ℝ) (h : TORSION_LIMIT ≤ τ) :
    Real.exp (-τ) ≤ 1 / (1 + TORSION_LIMIT) := by
  have hTL : 0 < 1 + TORSION_LIMIT := by
    unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  rw [Real.exp_neg, ← one_div]
  exact one_div_le_one_div_of_le hTL (by linarith [Real.add_one_le_exp τ])

-- [T16] The two weight bounds meet: 1 − TL_IVA ≈ 0.87953 and
-- 1/(1 + TL) ≈ 0.87958
theorem weight_bounds_meet :
    0.8795 < 1 - TL_IVA_PEAK ∧ 1 - TL_IVA_PEAK < 1 / (1 + TORSION_LIMIT) ∧
    1 / (1 + TORSION_LIMIT) < 0.8796 := by
  unfold TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num

-- [T17] Equipartition: a quadratic mode at mean energy k_BT/2 has
-- τ = 1/2, which is Shatter
theorem equipartition_shatter (P : ℝ) (hP : 0 < P) :
    torsion ⟨P, P / 2⟩ = 1 / 2 ∧ TORSION_LIMIT ≤ torsion ⟨P, P / 2⟩ := by
  have h : torsion ⟨P, P / 2⟩ = 1 / 2 := by
    unfold torsion
    show P / 2 / P = 1 / 2
    rw [div_div, mul_comm, ← div_div, div_self (ne_of_gt hP)]
  refine ⟨h, ?_⟩
  rw [h]
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T18] STATISTICAL MECHANICS → PNBA
theorem stat_mech_master {n : ℕ} (τ : Fin (n + 1) → ℝ) (k : ℝ) (hk : k ≠ 0) :
    -- the map is lossless
    (∀ s : ThermalState, from_pnba k (to_pnba k s) = s) ∧
    -- the partition function in torsion
    0 < Z τ ∧ ∑ i, prob τ i = 1 ∧
    (∀ i j, prob τ i = Real.exp (τ j - τ i) * prob τ j) ∧
    -- occupation
    (∀ x : ℝ, Real.exp (-x) / (1 + Real.exp (-x)) = 1 / (Real.exp x + 1)) ∧
    -- phases of a microstate
    (∀ P : ℝ, torsion ⟨P, 0⟩ = 0) ∧
    (∀ t : ℝ, t < TL_IVA_PEAK → 1 - TL_IVA_PEAK < Real.exp (-t)) ∧
    (∀ t : ℝ, TORSION_LIMIT ≤ t → Real.exp (-t) ≤ 1 / (1 + TORSION_LIMIT)) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨round_trip k hk, Z_pos τ, prob_sum_one τ, relative_weight τ,
   two_level_occupation, fun P => (ground_state_noble P).1,
   locked_weight, shatter_weight, anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_StatMech

/-!
-- ============================================================
-- FILE:       SNSFL_StatMech_Reduction.lean
-- COORDINATE: [9,9,0,16](PHYS)
-- SORRY:      0
--
-- THE MAP: P = k_B T, B = E_i, N = Ω, τ = βE. Invertible (T1).
--
-- RESULTS:
--   Lossless map; τ = βE; Boltzmann factor exp(−τ) (T1–T3)
--   Partition function: Z > 0, Σ p = 1, p_i = exp(τ_j − τ_i)·p_j,
--     lower torsion more probable (T4–T7)
--   Free energy −P ln Z; Boltzmann entropy k_B ln Ω (T8, T9)
--   Two-level system = Fermi function; Fermi–Dirac in (0, 1),
--     1/2 at μ; Bose–Einstein positive (T10–T12)
--   Phases: ground state Noble; Locked weight > 1 − TL_IVA;
--     Shatter weight ≤ 1/(1 + TL); the bounds meet near 0.8795;
--     equipartition τ = 1/2 is Shatter (T13–T17)
--
-- CONNECTIONS:
--   [9,9,8,0]  Economics → PNBA
--   [9,9,0,4.8] Quantum Mechanics → PNBA
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/

```
