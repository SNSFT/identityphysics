-- ============================================================
-- SNSFL_Novikov_Reduction.lean
-- ============================================================
--
-- Novikov Self-Consistency → PNBA
-- Self-consistency is the Noble fixed point of the loop map.
-- Every continuous loop has one; a contracting loop has exactly
-- one and draws every history toward it.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,10,4](GRAV)
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
-- As in [9,9,10,3]: if f carries a state once around a closed
-- timelike curve, the consistency torsion is
--
--   τ(x) = |f(x) − x|
--
--   τ = 0      → NOBLE    self-consistent history
--   τ < TL_IVA → LOCKED   near-consistent
--   τ ≥ TL     → SHATTER  self-contradicting
--
-- ============================================================
-- THE PRINCIPLE
-- ============================================================
--
-- Novikov (1989; Friedman et al., Phys Rev D 42, 1915, 1990):
-- the only histories that occur on a closed timelike curve are
-- the self-consistent ones. Echeverria, Klinkhammer and Thorne
-- (Phys Rev D 44, 1077, 1991) found that billiard-ball initial
-- data designed to produce a paradox still admit self-consistent
-- solutions.
--
-- In PNBA the principle reads: the realized history is Noble.
-- Three results make that a theorem rather than a postulate.
--
--   EXISTENCE. If the states form an interval and the loop map is
--   continuous, a Noble history exists (intermediate value
--   theorem). A paradox needs a discrete state space: the
--   two-state grandfather loop ¬x has none, while its continuous
--   version 1 − p has p = 1/2.
--
--   UNIQUENESS. If the loop contracts, |f(a) − f(b)| ≤ k|a − b|
--   with k < 1, the Noble history is unique.
--
--   ATTRACTION. Under a contracting loop, consistency torsion
--   shrinks at least by k each pass: τ(fⁿ(x)) ≤ kⁿ τ(x). A Shatter
--   history is drawn through the Locked band toward Noble.
--
-- EXAMPLE. The damped grandfather loop f(x) = 3/4 − x/2 flips the
-- bit with damping k = 1/2. Its Noble state is x = 1/2, Deutsch's
-- state. Starting from x = 0, τ = 3/4 (Shatter); after three
-- passes τ = 3/32 (Locked).
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Topology.Order.IntermediateValue

noncomputable section

namespace SNSFL_Novikov_Reduction

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

-- ============================================================
-- SECTION 1: THE MAP
-- ============================================================

noncomputable def cons_tors (f : ℝ → ℝ) (x : ℝ) : ℝ := |f x - x|

def is_noble   (t : ℝ) : Prop := t = 0
def is_locked  (t : ℝ) : Prop := 0 < t ∧ t < TL_IVA_PEAK
def is_shatter (t : ℝ) : Prop := TORSION_LIMIT ≤ t

-- [T1] Noble is exactly self-consistency
theorem noble_iff_consistent (f : ℝ → ℝ) (x : ℝ) :
    is_noble (cons_tors f x) ↔ f x = x := by
  unfold is_noble cons_tors
  rw [abs_eq_zero, sub_eq_zero]

-- ============================================================
-- SECTION 2: EXISTENCE
-- ============================================================

-- [T2] A continuous loop on [0, 1] with f(0) ≥ 0 and f(1) ≤ 1 has a
-- Noble history
theorem novikov_existence (f : ℝ → ℝ) (hf : ContinuousOn f (Set.Icc 0 1))
    (h0 : 0 ≤ f 0) (h1 : f 1 ≤ 1) :
    ∃ x ∈ Set.Icc (0:ℝ) 1, is_noble (cons_tors f x) := by
  have hg : ContinuousOn (fun x => f x - x) (Set.Icc 0 1) := hf.sub continuousOn_id
  have hmem : (0:ℝ) ∈ Set.Icc (f 1 - 1) (f 0 - 0) := ⟨by linarith, by linarith⟩
  obtain ⟨x, hx, hgx⟩ := intermediate_value_Icc' (by norm_num : (0:ℝ) ≤ 1) hg hmem
  refine ⟨x, hx, ?_⟩
  rw [noble_iff_consistent]
  have h : f x - x = 0 := hgx
  linarith

-- [T3] The discrete grandfather loop has no consistent history; its
-- continuous version has the Noble history p = 1/2
theorem paradox_needs_discreteness :
    (∀ x : Bool, (!x) ≠ x) ∧ is_noble (cons_tors (fun p => 1 - p) (1 / 2)) := by
  refine ⟨by decide, ?_⟩
  rw [noble_iff_consistent]
  norm_num

-- ============================================================
-- SECTION 3: UNIQUENESS AND ATTRACTION
-- ============================================================

-- [T4] A contracting loop has at most one Noble history
theorem contraction_unique (f : ℝ → ℝ) (k : ℝ) (hk : k < 1)
    (hcon : ∀ a b, |f a - f b| ≤ k * |a - b|)
    (x y : ℝ) (hx : f x = x) (hy : f y = y) : x = y := by
  have h := hcon x y
  rw [hx, hy] at h
  have hle : |x - y| ≤ 0 := by nlinarith [abs_nonneg (x - y)]
  exact sub_eq_zero.mp (abs_nonpos_iff.mp hle)

-- [T5] One pass of a contracting loop shrinks consistency torsion by k
theorem one_pass (f : ℝ → ℝ) (k : ℝ) (hcon : ∀ a b, |f a - f b| ≤ k * |a - b|) (x : ℝ) :
    cons_tors f (f x) ≤ k * cons_tors f x := by
  unfold cons_tors
  exact hcon (f x) x

-- [T6] After n passes, τ(fⁿ(x)) ≤ kⁿ · τ(x)
theorem n_passes (f : ℝ → ℝ) (k : ℝ) (hk0 : 0 ≤ k)
    (hcon : ∀ a b, |f a - f b| ≤ k * |a - b|) (x : ℝ) :
    ∀ n : ℕ, cons_tors f (f^[n] x) ≤ k ^ n * cons_tors f x := by
  intro n
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Function.iterate_succ_apply']
    calc cons_tors f (f (f^[n] x)) ≤ k * cons_tors f (f^[n] x) := one_pass f k hcon _
      _ ≤ k * (k ^ n * cons_tors f x) := mul_le_mul_of_nonneg_left ih hk0
      _ = k ^ (n + 1) * cons_tors f x := by ring

-- ============================================================
-- SECTION 4: THE DAMPED GRANDFATHER LOOP
-- ============================================================

def dampF (x : ℝ) : ℝ := 3 / 4 - x / 2

-- [T7] The damped loop contracts with k = 1/2
theorem damp_contraction (a b : ℝ) : |dampF a - dampF b| = 1 / 2 * |a - b| := by
  have h : dampF a - dampF b = 1 / 2 * (b - a) := by unfold dampF; ring
  rw [h, abs_mul, abs_of_pos (by norm_num : (0:ℝ) < 1 / 2), abs_sub_comm]

-- [T8] Its unique Noble history is x = 1/2, Deutsch's state
theorem damp_noble : dampF (1 / 2) = 1 / 2 ∧ ∀ y, dampF y = y → y = 1 / 2 := by
  refine ⟨by unfold dampF; norm_num, ?_⟩
  intro y hy
  exact contraction_unique dampF (1 / 2) (by norm_num)
    (fun a b => le_of_eq (damp_contraction a b)) y (1 / 2) hy (by unfold dampF; norm_num)

-- [T9] From x = 0 the history starts Shatter (τ = 3/4) and is Locked
-- after three passes (τ = 3/32)
theorem damp_relaxes :
    cons_tors dampF 0 = 3 / 4 ∧ is_shatter (cons_tors dampF 0) ∧
    cons_tors dampF (dampF (dampF (dampF 0))) = 3 / 32 ∧
    is_locked (cons_tors dampF (dampF (dampF (dampF 0)))) := by
  have h0 : cons_tors dampF 0 = 3 / 4 := by
    unfold cons_tors dampF
    rw [abs_of_pos (by norm_num)]
    norm_num
  have h3 : cons_tors dampF (dampF (dampF (dampF 0))) = 3 / 32 := by
    unfold cons_tors dampF
    rw [abs_of_neg (by norm_num)]
    norm_num
  refine ⟨h0, ?_, h3, ?_⟩
  · rw [h0]; unfold is_shatter TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  · rw [h3]; unfold is_locked TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR
    constructor
    · norm_num
    · norm_num

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T10] NOVIKOV SELF-CONSISTENCY → PNBA
theorem novikov_master :
    -- the map: Noble is self-consistency
    (∀ (f : ℝ → ℝ) (x : ℝ), is_noble (cons_tors f x) ↔ f x = x) ∧
    -- existence for continuous loops on [0, 1]
    (∀ f : ℝ → ℝ, ContinuousOn f (Set.Icc 0 1) → 0 ≤ f 0 → f 1 ≤ 1 →
      ∃ x ∈ Set.Icc (0:ℝ) 1, is_noble (cons_tors f x)) ∧
    -- attraction under contraction
    (∀ (f : ℝ → ℝ) (k : ℝ), 0 ≤ k → (∀ a b, |f a - f b| ≤ k * |a - b|) →
      ∀ (x : ℝ) (n : ℕ), cons_tors f (f^[n] x) ≤ k ^ n * cons_tors f x) ∧
    -- the damped grandfather loop: Noble at 1/2, Shatter → Locked from 0
    dampF (1 / 2) = 1 / 2 ∧
    is_shatter (cons_tors dampF 0) ∧
    is_locked (cons_tors dampF (dampF (dampF (dampF 0)))) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨noble_iff_consistent, novikov_existence,
   fun f k hk0 hcon x n => n_passes f k hk0 hcon x n,
   damp_noble.1, damp_relaxes.2.1, damp_relaxes.2.2.2, anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_Novikov_Reduction

/-!
-- ============================================================
-- FILE:       SNSFL_Novikov_Reduction.lean
-- COORDINATE: [9,9,10,4](GRAV)
-- SORRY:      0
--
-- THE MAP: τ(x) = |f(x) − x|; Noble = self-consistent (T1).
--
-- RESULTS:
--   Existence: every continuous loop on [0, 1] has a Noble history
--     (T2); paradox requires a discrete state space (T3)
--   Uniqueness under contraction (T4)
--   Attraction: τ(fⁿ(x)) ≤ kⁿ τ(x) (T5, T6)
--   Damped grandfather loop: k = 1/2, Noble at 1/2, Shatter (3/4)
--     to Locked (3/32) in three passes (T7–T9)
--
-- CONNECTIONS:
--   [9,9,10,3] Closed timelike curves: the same map; Deutsch's
--              p = 1/2 is the Noble state here
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/
