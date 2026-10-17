# Regulation versus Reaction Reduced to PNBA: Four Bands on the TL Ruler, and Two Gears More Than 2 TL Apart

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,6,10.8](PSYC) · Identity Physics Series · Psychology
**Issue:** ProofPress, Volume 1, Issue 1 · March 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 20 theorems · 377 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_L2_Psy_RegulationReaction_TL.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

People process at different resolutions, and this article treats processing style as a gear rather than a diagnosis. Each APPA axis is scored from 10 to 50 and read on the TL ruler: one answer step is one notch of TL/10, so a score s sits at (s − 10)/10 TL. The ruler has four bands, each exactly one TL wide: L (10–19), S (20–29), F (30–39) and I (40–50). Every band edge is a whole TL, the Big Five dominant-axis cut at 40 is the I band floor at exactly 3.0 TL, and the edges 24 and 38 of the earlier three-band scale sit at 1.4 and 2.8 TL. Two behaviors that look alike from outside have opposite physics. Regulation, the I band's gear, is a steady discharge of Behavior with Pattern held, so torsion τ = B/P falls. Reaction, the L band's gear, is a spike of Behavior that starts a stalled system moving, so τ rises. An L-band score and an I-band score are always at least 21 points apart, with the whole S and F bands between them, and differ by more than 2 TL, so one axis cannot be in both gears at once. The Shatter threshold scales with Pattern, B = TL · P, so the same Behavior reads differently at different Pattern: at B = 0.08 an S-band axis with P = 0.8 is Locked while an L-band axis with P = 0.3 is in Shatter, and the I-band threshold at P = 1.2 is four times the L-band threshold at P = 0.3. An I-band overload at B = 0.20 is in Shatter; regulation returns it to Locked once it removes more than 0.20 − 1.2 · TL ≈ 0.0357 of Behavior, and the recovery state at B = 0.13 is that overload regulated by 0.07. Overload and recovery keep the same Pattern as regulation: overload is the load, not the gear.

## What This Article Proves

1. The TL ruler: band edges at whole TL (10, 20, 30, 40, 50 at 0, 1, 2, 3, 4 TL); a score reaches n TL exactly when it is at least 10 + 10n; the four bands partition the scores (`band_edges`, `notch_scale`, `band_partition`).
2. The two gears are two bands and more than 2 TL apart: an L-band and an I-band score differ by at least 21, every S- and F-band score lies between them, and their TL values differ by more than 2 (`gears_separated`).
3. The Big Five cut 40 is the I band floor at exactly 3.0 TL; the earlier three-band edges 24 and 38 sit at 1.4 and 2.8 TL, every earlier Locked score lies in L or S and every earlier Flexed score in F or I; the band weights rise L 1, S 2, F 3, I 4 (`big_five_cut_is_I_floor`, `three_band_scale_on_ruler`, `band_weights_ordered`).
4. Regulation lowers τ and reaction raises it; Shatter holds exactly when B ≥ TL · P (`regulation_reduces_torsion`, `reaction_increases_torsion`, `shatter_threshold`).
5. The worked states: regulation, sustained and recovery Locked, reaction and overload Shatter; the same B is Locked at P 0.8 and Shatter at P 0.3; regulation restores the overload exactly when it removes more than 0.20 − 1.2 · TL, between 0.0357 and 0.0358; recovery is the overload regulated by 0.07. The master theorem holds the ruler, the gear separation, both operators and the worked phases together (`worked_phases`, `pattern_carries_load`, `regulation_restores_overload`, `restore_amount_bounds`, `recovery_is_regulated_overload`, `regulation_reaction_master`).

## The PNBA Map

| Band | Score | TL | Weight | Gear |
| --- | --- | --- | --- | --- |
| L | 10 – 19 | 0 to 1 | 1 | Reaction: B spike to start motion |
| S | 20 – 29 | 1 to 2 | 2 | Sustained |
| F | 30 – 39 | 2 to 3 | 3 | Flexed |
| I | 40 – 50 | 3 to 4 | 4 | Regulation: steady B discharge |
| State | Band | P | B | τ | Phase |
| Regulation | I | 1.2 | 0.12 | 0.100 | Locked |
| Sustained | S | 0.8 | 0.08 | 0.100 | Locked |
| Reaction | L | 0.3 | 0.08 | 0.267 | Shatter |
| Overload | I | 1.2 | 0.20 | 0.167 | Shatter |
| Recovery | I | 1.2 | 0.13 | 0.108 | Locked |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Dunn, W. (1997). The impact of sensory processing abilities on the daily lives of young children and their families: A conceptual model. *Infants & Young Children*, 9(4), 23–35.
2. Aron, E. N. & Aron, A. (1997). Sensory-processing sensitivity and its relation to introversion and emotionality. *Journal of Personality and Social Psychology*, 73(2), 345–368.
3. Kapp, S. K. et al. (2019). ‘People should be allowed to do what they like’: Autistic adults’ views and experiences of stimming. *Autism*, 23(7), 1782–1792.
4. Trent, R. V. III. The Big Five Personality Traits Reduced to PNBA. ProofPress, Volume 1, Issue 1.
5. Trent, R. V. III. Bounded Uncertainty: A Guide. ProofPress, Volume 1, Issue 8.
6. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_L2_Psy_RegulationReaction_TL.lean
-- ============================================================
--
-- Regulation vs Reaction → PNBA
-- Each APPA axis is scored 10–50 and read on the TL ruler: one
-- answer step is one notch, TL/10, so a score s sits at
-- (s − 10)/10 TL. Four bands, each exactly one TL wide: L, S, F
-- and I. Regulation is the I band's way of discharging load, a
-- steady drop in B that lowers τ = B/P. Reaction is the L band's
-- way of starting motion, a spike in B that raises τ. The two
-- bands are separated by two whole bands, S and F, and always by
-- more than 2 TL, so one axis cannot be in both gears at once.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,6,10.8](PSYC)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      March 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
--
-- ============================================================
-- THE TL RULER
-- ============================================================
--
--   Band   Score    Notches   TL       Gear
--   L      10–19    0–9       0 to 1   Reaction: B spike to start motion
--   S      20–29    10–19     1 to 2   Sustained
--   F      30–39    20–29     2 to 3   Flexed
--   I      40–50    30–40     3 to 4   Regulation: steady B discharge
--
-- Every band edge is a whole TL. The Big Five dominant-axis cut,
-- 40, is the I band floor at exactly 3.0 TL [9,9,6,2]. The earlier
-- three-band edges, 24 and 38, sit at 1.4 TL and 2.8 TL.
--
-- ============================================================
-- THE TWO GEARS
-- ============================================================
--
--   Regulation (I band): B decreases with P held, so τ = B/P falls.
--     A high-P axis carries more B before Shatter: the Shatter
--     threshold is B = TL · P.
--   Reaction (L band):   B increases with P held, so τ rises. A
--     low-P axis reaches the threshold with a small B.
--
--   State            Band  P     B     τ       Phase
--   Regulation       I     1.2   0.12  0.100   Locked
--   Sustained        S     0.8   0.08  0.100   Locked
--   Reaction         L     0.3   0.08  0.267   Shatter
--   Overload         I     1.2   0.20  0.167   Shatter
--   Recovery         I     1.2   0.13  0.108   Locked
--
-- Overload and Recovery have the same P as Regulation: overload is
-- the load, not the gear. Regulation brings Overload back below TL
-- once it removes more than 0.20 − 1.2 · TL ≈ 0.0357 of B.
--
-- ============================================================

import Mathlib.Tactic

noncomputable section

namespace SNSFL_L2_Psy_RegulationReaction_TL

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- ============================================================
-- SECTION 1: THE TL RULER
-- ============================================================

-- The four bands
inductive Band : Type
  | L | S | F | I
  deriving DecidableEq, Repr

-- A score on the ruler: (s − 10)/10 TL
noncomputable def tl_of (s : ℕ) : ℝ := ((s : ℝ) - 10) / 10

def score_to_band (s : ℕ) : Band :=
  if s ≥ 40 then Band.I
  else if s ≥ 30 then Band.F
  else if s ≥ 20 then Band.S
  else Band.L

def band_weight : Band → ℕ
  | Band.L => 1
  | Band.S => 2
  | Band.F => 3
  | Band.I => 4

-- [T1] Every band edge is a whole TL: 20, 30, 40 and 50 sit at 1, 2,
-- 3 and 4 TL
theorem band_edges :
    tl_of 10 = 0 ∧ tl_of 20 = 1 ∧ tl_of 30 = 2 ∧ tl_of 40 = 3 ∧ tl_of 50 = 4 := by
  unfold tl_of
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> norm_num

-- [T2] One notch is TL/10: k notches above the floor sit at k/10 TL,
-- and a score reaches n TL exactly when it is at least 10 + 10n
theorem notch_scale (s : ℕ) (n : ℝ) : n ≤ tl_of s ↔ 10 + 10 * n ≤ (s : ℝ) := by
  unfold tl_of
  constructor
  · intro h
    have := (le_div_iff₀ (by norm_num : (0:ℝ) < 10)).1 h
    linarith
  · intro h
    rw [le_div_iff₀ (by norm_num : (0:ℝ) < 10)]
    linarith

lemma band_L_lt (a : ℕ) (h : score_to_band a = Band.L) : a < 20 := by
  unfold score_to_band at h
  split_ifs at h
  omega

lemma band_I_ge (b : ℕ) (h : score_to_band b = Band.I) : b ≥ 40 := by
  unfold score_to_band at h
  split_ifs at h
  omega

-- [T3] The bands partition the scores: each score is in exactly the
-- band its tens digit names
theorem band_partition (s : ℕ) :
    (s < 20 → score_to_band s = Band.L) ∧
    (20 ≤ s → s < 30 → score_to_band s = Band.S) ∧
    (30 ≤ s → s < 40 → score_to_band s = Band.F) ∧
    (40 ≤ s → score_to_band s = Band.I) := by
  unfold score_to_band
  refine ⟨fun h => ?_, fun h1 h2 => ?_, fun h1 h2 => ?_, fun h => ?_⟩
  · rw [if_neg (by omega), if_neg (by omega), if_neg (by omega)]
  · rw [if_neg (by omega), if_neg (by omega), if_pos (by omega)]
  · rw [if_neg (by omega), if_pos (by omega)]
  · rw [if_pos (by omega)]

-- [T4] Regulation and Reaction are separated by two whole bands: an
-- L-band score and an I-band score are at least 21 apart, every
-- score of the S and F bands lies strictly between them, and they
-- differ by more than 2 TL
theorem gears_separated (a b : ℕ)
    (ha : score_to_band a = Band.L) (hb : score_to_band b = Band.I) :
    b ≥ a + 21 ∧
    (∀ c : ℕ, 20 ≤ c → c ≤ 39 →
      a < c ∧ c < b ∧ (score_to_band c = Band.S ∨ score_to_band c = Band.F)) ∧
    2 < tl_of b - tl_of a := by
  have h1 := band_L_lt a ha
  have h2 := band_I_ge b hb
  have hab : b ≥ a + 21 := by omega
  refine ⟨hab, fun c hc1 hc2 => ⟨by omega, by omega, ?_⟩, ?_⟩
  · by_cases hc : c < 30
    · left; exact (band_partition c).2.1 hc1 hc
    · right; exact (band_partition c).2.2.1 (by omega) (by omega)
  · have hr : (a : ℝ) + 21 ≤ (b : ℝ) := by exact_mod_cast hab
    unfold tl_of
    linarith

-- [T5] The Big Five dominant-axis cut, 40, is the I band floor at
-- exactly 3.0 TL
theorem big_five_cut_is_I_floor :
    score_to_band 40 = Band.I ∧ score_to_band 39 = Band.F ∧ tl_of 40 = 3 := by
  refine ⟨(band_partition 40).2.2.2 (by norm_num),
    (band_partition 39).2.2.1 (by norm_num) (by norm_num), ?_⟩
  unfold tl_of; norm_num

-- [T6] The earlier three-band scale on the ruler: its edges 24 and 38
-- sit at 1.4 TL and 2.8 TL; every earlier Locked score (≤ 23) is in L
-- or S, and every earlier Flexed score (≥ 38) is in F or I
theorem three_band_scale_on_ruler :
    tl_of 24 = 1.4 ∧ tl_of 38 = 2.8 ∧
    (∀ s : ℕ, s ≤ 23 → score_to_band s = Band.L ∨ score_to_band s = Band.S) ∧
    (∀ s : ℕ, 38 ≤ s → score_to_band s = Band.F ∨ score_to_band s = Band.I) := by
  refine ⟨by unfold tl_of; norm_num, by unfold tl_of; norm_num, ?_, ?_⟩
  · intro s hs
    by_cases h : s < 20
    · left; exact (band_partition s).1 h
    · right; exact (band_partition s).2.1 (by omega) (by omega)
  · intro s hs
    by_cases h : s < 40
    · left; exact (band_partition s).2.2.1 (by omega) h
    · right; exact (band_partition s).2.2.2 (by omega)

-- [T7] The band weights rise one per band: L 1, S 2, F 3, I 4
theorem band_weights_ordered :
    band_weight Band.L < band_weight Band.S ∧
    band_weight Band.S < band_weight Band.F ∧
    band_weight Band.F < band_weight Band.I := by
  unfold band_weight; norm_num

-- ============================================================
-- SECTION 2: THE TWO GEARS AS TORSION OPERATORS
-- ============================================================

structure ProcessingState where
  P    : ℝ
  N    : ℝ
  B    : ℝ
  A    : ℝ
  band : Band
  hP   : P > 0
  hB   : B > 0

noncomputable def torsion (s : ProcessingState) : ℝ := s.B / s.P

def phase_locked (s : ProcessingState) : Prop := torsion s < TORSION_LIMIT
def shatter_event (s : ProcessingState) : Prop := TORSION_LIMIT ≤ torsion s

-- Regulation: steady B discharge
noncomputable def regulate (s : ProcessingState) (δ : ℝ) (_hδ : δ > 0)
    (h_enough : s.B - δ > 0) : ProcessingState :=
  { s with B := s.B - δ, hB := h_enough }

-- Reaction: a B spike
noncomputable def react (s : ProcessingState) (δ : ℝ) (hδ : δ > 0) : ProcessingState :=
  { s with B := s.B + δ, hB := by linarith [s.hB] }

-- [T8] Regulation lowers τ
theorem regulation_reduces_torsion (s : ProcessingState) (δ : ℝ) (hδ : δ > 0)
    (h_enough : s.B - δ > 0) :
    torsion (regulate s δ hδ h_enough) < torsion s := by
  unfold torsion regulate; simp
  apply div_lt_div_of_pos_right _ s.hP; linarith

-- [T9] Reaction raises τ
theorem reaction_increases_torsion (s : ProcessingState) (δ : ℝ) (hδ : δ > 0) :
    torsion (react s δ hδ) > torsion s := by
  unfold torsion react; simp
  apply div_lt_div_of_pos_right _ s.hP; linarith

-- [T10] The Shatter threshold scales with Pattern: an axis is in
-- Shatter exactly when B ≥ TL · P
theorem shatter_threshold (s : ProcessingState) :
    shatter_event s ↔ TORSION_LIMIT * s.P ≤ s.B := by
  unfold shatter_event torsion
  rw [le_div_iff₀ s.hP]

-- ============================================================
-- SECTION 3: THE WORKED STATES
-- ============================================================

def regulation_state : ProcessingState :=
  { P := 1.2, N := 0.6, B := 0.12, A := 1.1, band := Band.I,
    hP := by norm_num, hB := by norm_num }

def sustained_state : ProcessingState :=
  { P := 0.8, N := 0.9, B := 0.08, A := 0.7, band := Band.S,
    hP := by norm_num, hB := by norm_num }

def reaction_state : ProcessingState :=
  { P := 0.3, N := 0.5, B := 0.08, A := 0.4, band := Band.L,
    hP := by norm_num, hB := by norm_num }

def overload_state : ProcessingState :=
  { P := 1.2, N := 0.4, B := 0.20, A := 0.8, band := Band.I,
    hP := by norm_num, hB := by norm_num }

def recovery_state : ProcessingState :=
  { P := 1.2, N := 0.5, B := 0.13, A := 1.0, band := Band.I,
    hP := by norm_num, hB := by norm_num }

-- [T11] Regulation, Sustained and Recovery are Locked; Reaction and
-- Overload are Shatter
theorem worked_phases :
    phase_locked regulation_state ∧ phase_locked sustained_state ∧
    shatter_event reaction_state ∧ shatter_event overload_state ∧
    phase_locked recovery_state := by
  unfold phase_locked shatter_event torsion regulation_state sustained_state
    reaction_state overload_state recovery_state TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> norm_num

-- [T12] The same B means different phases at different P: at B = 0.08
-- the S-band axis (P = 0.8) is Locked and the L-band axis (P = 0.3) is
-- Shatter. The I-band threshold TL · 1.2 ≈ 0.164 is four times the
-- L-band threshold TL · 0.3 ≈ 0.041
theorem pattern_carries_load :
    phase_locked sustained_state ∧ shatter_event reaction_state ∧
    sustained_state.B = reaction_state.B ∧
    TORSION_LIMIT * 1.2 = 4 * (TORSION_LIMIT * 0.3) ∧
    0.164 < TORSION_LIMIT * 1.2 ∧ TORSION_LIMIT * 0.3 < 0.042 := by
  refine ⟨worked_phases.2.1, worked_phases.2.2.1, ?_, ?_, ?_, ?_⟩
  · unfold sustained_state reaction_state; rfl
  · ring
  · unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  · unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- [T13] Regulation returns Overload to Locked exactly when it removes
-- more than 0.20 − 1.2 · TL of B, between 0.0357 and 0.0358
theorem regulation_restores_overload (δ : ℝ) (hδ : δ > 0) (h : overload_state.B - δ > 0) :
    phase_locked (regulate overload_state δ hδ h) ↔ 0.20 - 1.2 * TORSION_LIMIT < δ := by
  unfold phase_locked torsion
  show (0.20 - δ) / 1.2 < TORSION_LIMIT ↔ 0.20 - 1.2 * TORSION_LIMIT < δ
  rw [div_lt_iff₀ (by norm_num : (0:ℝ) < 1.2)]
  constructor <;> intro h' <;> linarith

theorem restore_amount_bounds :
    0.0357 < 0.20 - 1.2 * TORSION_LIMIT ∧ 0.20 - 1.2 * TORSION_LIMIT < 0.0358 := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR
  constructor <;> norm_num

-- [T14] Recovery is Overload regulated by 0.07
theorem recovery_is_regulated_overload :
    torsion (regulate overload_state 0.07 (by norm_num)
      (by unfold overload_state; norm_num)) = torsion recovery_state := by
  unfold torsion regulate overload_state recovery_state
  norm_num

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T15] REGULATION VS REACTION → PNBA
theorem regulation_reaction_master :
    -- the ruler: whole-TL band edges, Big Five cut at the I floor
    (tl_of 20 = 1 ∧ tl_of 30 = 2 ∧ tl_of 40 = 3) ∧
    score_to_band 40 = Band.I ∧
    -- the gears are two bands and more than 2 TL apart
    (∀ a b : ℕ, score_to_band a = Band.L → score_to_band b = Band.I →
      b ≥ a + 21 ∧ 2 < tl_of b - tl_of a) ∧
    -- regulation lowers τ, reaction raises it
    (∀ (s : ProcessingState) (δ : ℝ) (hδ : δ > 0) (h : s.B - δ > 0),
      torsion (regulate s δ hδ h) < torsion s) ∧
    (∀ (s : ProcessingState) (δ : ℝ) (hδ : δ > 0),
      torsion (react s δ hδ) > torsion s) ∧
    -- the worked states
    phase_locked regulation_state ∧ shatter_event reaction_state ∧
    shatter_event overload_state ∧ phase_locked recovery_state ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  refine ⟨⟨band_edges.2.1, band_edges.2.2.1, band_edges.2.2.2.1⟩,
    big_five_cut_is_I_floor.1, ?_, regulation_reduces_torsion, reaction_increases_torsion,
    worked_phases.1, worked_phases.2.2.1, worked_phases.2.2.2.1, worked_phases.2.2.2.2,
    anchor_zero_friction⟩
  intro a b ha hb
  exact ⟨(gears_separated a b ha hb).1, (gears_separated a b ha hb).2.2⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_L2_Psy_RegulationReaction_TL

/-!
-- ============================================================
-- FILE:       SNSFL_L2_Psy_RegulationReaction_TL.lean
-- COORDINATE: [9,9,6,10.8](PSYC)
-- SORRY:      0
--
-- THE RULER: score s at (s − 10)/10 TL; bands L 10–19, S 20–29,
--   F 30–39, I 40–50, each exactly one TL.
--
-- RESULTS:
--   Whole-TL band edges; notch scale; partition (T1–T3)
--   Regulation (I) and Reaction (L) two bands and more than 2 TL
--     apart (T4)
--   Big Five cut 40 = I floor = 3.0 TL; three-band edges 24, 38 at
--     1.4 and 2.8 TL; weights L 1 < S 2 < F 3 < I 4 (T5–T7)
--   Regulation lowers τ, reaction raises τ; Shatter at B ≥ TL · P
--     (T8–T10)
--   Worked states; same B, different P, different phase; Overload
--     restored once regulation removes more than 0.20 − 1.2 · TL;
--     Recovery is Overload regulated by 0.07 (T11–T14)
--
-- CONNECTIONS:
--   [9,9,6,10] Regulation vs Reaction (three-band scale)
--   [9,9,6,2]  Big Five · [9,9,6,25] PSY Consistency Capstone
--   [9,9,8,7]  Bounded Uncertainty (the APPA ruler)
--   [9,0,0,8]  Digital Soulprint
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/

```
