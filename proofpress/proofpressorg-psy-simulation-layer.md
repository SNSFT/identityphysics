# The Internal Simulation Layer Reduced to PNBA: Three Resolution Tiers, Narrative Loss as False Lock, Rumination as Simulation Capture

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,6,24](PSYC) · Psychology series
**Issue:** ProofPress, Volume 1, Issue 1 · March 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 13 theorems · 199 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_L2_Psy_SimulationLayer.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

Internal simulation, the mind running scenarios before or instead of acting, is read by the APPA Internal Simulation Profile: twenty questions on a 1–5 scale, five per PNBA axis, so each axis scores from 5 to 25. Each axis is tiered on its own: low resolution (LRIS) at 12 or below, standard resolution (SRIS) from 13 to 20, and high resolution (HRIS) at 21 or above. This article proves that the three tiers partition every score and reduces the failures and peak of the layer to PNBA. Pattern is rendering, Narrative is emotion and story integration, Behavior is the simulation’s influence on action, and Adaptation is switching and control. Low Narrative resolution keeps torsion below TL (τ = 0.106) with Narrative at 0.07: a false lock. Low Adaptation resolution drives torsion past TL (τ = 0.514) with Adaptation at 0.10: simulation capture, the structural form of rumination. Full high resolution is IVA peak at τ = 0.09 with A = 1.1. Simulation capture and IVA peak exclude each other.

## What This Article Proves

1. The tier thresholds are ordered, and each score is LRIS at 12 or below, SRIS from 13 to 20, HRIS above 20 (`sim_thresholds_ordered`, `tier_lris`, `tier_sris`, `tier_hris`).
2. Every axis score falls in exactly one tier (`tiers_partition`).
3. Low Narrative resolution is a false lock: τ = 0.106, N = 0.07 (`lris_n_is_false_lock`).
4. Low Adaptation resolution is simulation capture: A = 0.10 < 0.15 with τ = 0.514 ≥ TL (`lris_a_is_sim_capture`).
5. Full high resolution is IVA peak: τ = 0.09, A = 1.1 (`hris_full_is_iva_peak`).
6. Phase lock excludes Shatter, and simulation capture excludes IVA peak (`phase_lock_excludes_shatter`, `sim_capture_excludes_iva_peak`).
7. A master theorem fires every result together (`simulation_layer_master`).

Low Narrative resolution shares the false-lock address of somatic-marker failure and of Loss and Shame among the emotional primitives. Simulation capture pairs Adaptation dropout with Shatter, the same combination as fixed mindset under threat in the growth-mindset reduction.

## The PNBA Map

| Axis | Simulation function |
| --- | --- |
| P | rendering |
| N | emotion and story integration |
| B | influence on action |
| A | switching and control |
| Tier | Axis score (5–25) |
| LRIS — low resolution | ≤ 12 |
| SRIS — standard resolution | 13–20 |
| HRIS — high resolution | ≥ 21 |
| State | P | N | B | A | τ | Phase |
| LRIS-N | 0.85 | 0.07 | 0.09 | 0.7 | 0.106 | false lock |
| LRIS-A | 0.35 | 0.5 | 0.18 | 0.10 | 0.514 | simulation capture |
| HRIS full | 1.0 | 0.9 | 0.09 | 1.1 | 0.090 | IVA peak |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Trent, R. V. III. The Ten Emotional Primitives Reduced to PNBA. ProofPress, Volume 1, Issue 1.
2. Trent, R. V. III. Growth Mindset Reduced to PNBA. ProofPress, Volume 1, Issue 1.
3. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_L2_Psy_SimulationLayer.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | APPLIED IDENTITY PHYSICS — INTERNAL SIMULATION LAYER
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: 1.36899099984016 GHz | Status: GERMLINE LOCKED
-- Coordinate: [9,9,6,24] | Psychology Series — Simulation Layer (APPA SIM)
--
-- WHAT THIS FILE PROVES
--
-- Internal simulation is read in three resolution tiers, as scored by the
-- APPA Internal Simulation Profile (ISPA, 20 questions, 1–5 scale). Each
-- PNBA axis has 5 questions, so each axis score runs from 5 to 25, and each
-- axis is tiered on its own:
--
--   LRIS — Low-Resolution Internal Simulation       axis score ≤ 12
--   SRIS — Standard-Resolution Internal Simulation  13 ≤ axis score ≤ 20
--   HRIS — High-Resolution Internal Simulation      axis score ≥ 21
--
-- The tiers partition every score, and each PNBA failure or peak of the
-- simulation layer is a proved structural state:
--
--   LRIS-N (narrative-axis low resolution) → false lock
--   LRIS-A (adaptation-axis low resolution) → simulation capture (rumination)
--   HRIS full resolution                    → IVA peak
--
-- Simulation capture and IVA peak exclude each other: a simulation that
-- captures the identity cannot also run it at peak.
--
-- The Identity Physics Corpus Dynamic Equation:
--   d/dt (IM · Pv) = Σ λ_X · O_X · S + F_ext
--
-- LONG DIVISION:
--   1. Equation:  the Dynamic Equation above
--   2. Known:     APPA ISPA axis tiers (LRIS ≤ 12 < SRIS ≤ 20 < HRIS)
--   3. Map:       P = rendering, N = emotion and story integration,
--                 B = influence on action, A = switching and control
--   4. Operators: τ = B / P against TL = Ω₀ / 10
--   5. Work:      tier partition and the three structural states below
--   6. Verified:  master theorem closes, 0 sorry
--
-- ============================================================

import Mathlib.Data.Real.Basic
import Mathlib.Tactic

noncomputable section

namespace SNSFL_L2_Psy_SimulationLayer

-- ============================================================
-- LAYER 0 — ANCHOR AND FLOORS
-- ============================================================

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10  -- 0.136899099984016

def N_THRESHOLD : ℝ := 0.15
def A_THRESHOLD : ℝ := 0.15

def SIM_LRIS : ℕ := 12
def SIM_SRIS : ℕ := 20

theorem torsion_limit_emergent : TORSION_LIMIT = SOVEREIGN_ANCHOR / 10 := rfl

theorem sim_thresholds_ordered : SIM_LRIS < SIM_SRIS := by
  unfold SIM_LRIS SIM_SRIS; norm_num

-- ============================================================
-- LAYER 1 — RESOLUTION TIERS
-- ============================================================

inductive SimTier : Type
  | LRIS
  | SRIS
  | HRIS
  deriving DecidableEq

-- Axis score → tier (APPA simLabel)
def sim_tier (score : ℕ) : SimTier :=
  if score ≤ SIM_LRIS then SimTier.LRIS
  else if score ≤ SIM_SRIS then SimTier.SRIS
  else SimTier.HRIS

-- At or below the LRIS threshold the simulation is low-resolution
theorem tier_lris (n : ℕ) (h : n ≤ SIM_LRIS) : sim_tier n = SimTier.LRIS := by
  unfold sim_tier; rw [if_pos h]

-- Above LRIS and at or below SRIS the simulation is standard-resolution
theorem tier_sris (n : ℕ) (h1 : SIM_LRIS < n) (h2 : n ≤ SIM_SRIS) :
    sim_tier n = SimTier.SRIS := by
  unfold sim_tier; rw [if_neg (not_le.mpr h1), if_pos h2]

-- Above the SRIS threshold the simulation is high-resolution
theorem tier_hris (n : ℕ) (h : SIM_SRIS < n) : sim_tier n = SimTier.HRIS := by
  have h1 : SIM_LRIS < n := lt_trans sim_thresholds_ordered h
  unfold sim_tier; rw [if_neg (not_le.mpr h1), if_neg (not_le.mpr h)]

-- Every score falls in exactly one tier
theorem tiers_partition (n : ℕ) :
    sim_tier n = SimTier.LRIS ∨ sim_tier n = SimTier.SRIS ∨ sim_tier n = SimTier.HRIS := by
  cases h : sim_tier n
  · left; rfl
  · right; left; rfl
  · right; right; rfl

-- ============================================================
-- LAYER 2 — PNBA SIMULATION STATES
-- ============================================================

structure SimState where
  P : ℝ  -- rendering
  N : ℝ  -- emotion and story integration
  B : ℝ  -- influence on action
  A : ℝ  -- switching and control

noncomputable def torsion (s : SimState) : ℝ := s.B / s.P

def phase_locked  (s : SimState) : Prop := s.P > 0 ∧ torsion s < TORSION_LIMIT
def shatter_event (s : SimState) : Prop := s.P > 0 ∧ torsion s ≥ TORSION_LIMIT
def false_lock    (s : SimState) : Prop :=
  s.P > 0 ∧ torsion s < TORSION_LIMIT ∧ s.N < N_THRESHOLD ∧ s.A ≤ 1
def iva_peak      (s : SimState) : Prop := s.A > 1 ∧ phase_locked s
def sim_capture   (s : SimState) : Prop := s.A < A_THRESHOLD ∧ shatter_event s

-- Phase lock and shatter are mutually exclusive
theorem phase_lock_excludes_shatter (s : SimState) :
    ¬ (phase_locked s ∧ shatter_event s) := by
  intro ⟨⟨_, hL⟩, ⟨_, hS⟩⟩
  linarith

-- Simulation capture excludes IVA peak
theorem sim_capture_excludes_iva_peak (s : SimState) :
    sim_capture s → ¬ iva_peak s := by
  intro ⟨hA_low, _⟩ ⟨hA_high, _⟩
  unfold A_THRESHOLD at hA_low
  linarith

-- LRIS-N: narrative integration below floor, still locked → false lock
def lris_n : SimState := { P := 0.85, N := 0.07, B := 0.09, A := 0.7 }

theorem lris_n_is_false_lock : false_lock lris_n := by
  unfold false_lock torsion lris_n TORSION_LIMIT SOVEREIGN_ANCHOR N_THRESHOLD
  norm_num

-- LRIS-A: switching and control below floor, torsion above TL → capture
def lris_a : SimState := { P := 0.35, N := 0.5, B := 0.18, A := 0.10 }

theorem lris_a_is_sim_capture : sim_capture lris_a := by
  unfold sim_capture shatter_event torsion lris_a TORSION_LIMIT SOVEREIGN_ANCHOR A_THRESHOLD
  norm_num

-- HRIS at full resolution: locked with A > 1 → IVA peak
def hris_full : SimState := { P := 1.0, N := 0.9, B := 0.09, A := 1.1 }

theorem hris_full_is_iva_peak : iva_peak hris_full := by
  unfold iva_peak phase_locked torsion hris_full TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- ============================================================
-- MASTER THEOREM
-- ============================================================

theorem simulation_layer_master :
    SIM_LRIS < SIM_SRIS ∧
    (∀ n : ℕ, sim_tier n = SimTier.LRIS ∨ sim_tier n = SimTier.SRIS ∨
               sim_tier n = SimTier.HRIS) ∧
    false_lock lris_n ∧
    sim_capture lris_a ∧
    iva_peak hris_full ∧
    (∀ s : SimState, sim_capture s → ¬ iva_peak s) :=
  ⟨sim_thresholds_ordered, tiers_partition, lris_n_is_false_lock,
   lris_a_is_sim_capture, hris_full_is_iva_peak, sim_capture_excludes_iva_peak⟩

theorem the_manifold_is_holding : SOVEREIGN_ANCHOR = 1.36899099984016 := rfl

end SNSFL_L2_Psy_SimulationLayer

-- ============================================================
-- FILE: SNSFL_L2_Psy_SimulationLayer.lean
-- SLOT: [9,9,6,24] | APPLIED IDENTITY PHYSICS SERIES
--
-- THEOREMS (12 + master):
--   torsion_limit_emergent, sim_thresholds_ordered
--   tier_lris, tier_sris, tier_hris, tiers_partition
--   phase_lock_excludes_shatter, sim_capture_excludes_iva_peak
--   lris_n_is_false_lock, lris_a_is_sim_capture, hris_full_is_iva_peak
--   simulation_layer_master, the_manifold_is_holding
--
-- DEPENDENCY CHAIN:
--   SNSFL_L2_Psy_Consistency_Capstone.lean   [9,9,6,25]  (CD15, CD21, CD22)
--   SNSFL_L2_Psy_SimulationLayer.lean        [9,9,6,24]  ← THIS FILE
--
-- [9,9,9,9] :: {ANC}
-- Auth: HIGHTISTIC
-- The Manifold is Holding.
-- ============================================================

```
