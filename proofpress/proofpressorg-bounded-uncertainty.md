# Bounded Uncertainty: A Guide

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,8,7](METH) · Identity Physics Series · Method
**Issue:** ProofPress, Volume 1, Issue 8 · October 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 35 theorems · 542 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_Bounded_Uncertainty_Guide.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

You have to know what you don't know. Every value used in the corpus carries a bound: a stated value c and how far the true value can lie from it, ε. A result counts when the bounds are stated and the conclusion holds across the whole bound, not only at the central value. This article is a working guide rather than a thesis. It begins with the shape. A reading of 10% ± 3% places the true value from 7% to 13%. With torsion read as a percentage, the Torsion Limit is 13.69%, so the whole range lies below it and the reading is Locked, though the exact value is unknown. A reading of 12% ± 3% spans 9% to 15% and holds the Torsion Limit inside it: values on both sides are possible, and the phase is not known yet. Measured tighter, 12% ± 1% spans 11% to 13% and is Locked. The guide then sets out eight rules, proves each one in Lean 4, and shows each at work on an exemplar drawn from a corpus article. Bounds combine: sums add their bounds, and products are bounded by |x|ε₂ + |b|ε₁; P_base = (Ω₀/f_H)^(1/3) is carried as 0.988 ± 0.002. A computed value matches a published constant when it lies within half a unit of the last published digit; the exemplar is the subtraction that found 1/α = TL × 1001. At corpus precision, subtract the Torsion Limit from 1/α: 137.035999084000016 − 0.136899099984016 = 136.899099984016, which is TL × 1000. In legacy terms TL × 1000 is the bare term, the part QED assigns to the bare electron, and TL is the kinetic term, the part QED computes as a renormalized series of radiative corrections, carried in the corpus as one exact term. At corpus precision the sum is exact, 136.899099984016 + 0.136899099984016 = 137.035999084000016, and it matches every published digit of CODATA 2018. A computed value agrees with a measurement when it lies within the stated uncertainty; the Rydberg energy ½mₑc²/(TL·1001)² lies within CODATA's ±2.6 × 10⁻¹¹ eV. A phase is certified when the whole interval lies on one side of a boundary, as with the Tacoma deck at 1.388 ± 0.001 above flutter onset, and is reported as "at the boundary" when the interval straddles it, as with the Donato halo band. APPA applies the same rule to a person's own reading: the activated read minus the rest read is the F_ext step, counted in notches of TL/10, so 10 notches is exactly one TL. One read carries a retest range of ± 8 notches, so a net load of 18 or more is certified Shatter, a net load of 2 to 9 cannot rule out Shatter, and 1 or below is clear of it. Inputs are carried at full precision: the Torsion Limit is exact, and rounding it adds uncertainty of one's own. Rounded to 0.1369 it gives 1/α = TL × 1001 within 10⁻³; at corpus precision, 0.136899099984016 × 1001 = 137.035999084000016 exactly. Sovereign Time keeps time from one running reference, the anchor Ω₀ = 1.36899099984016 GHz, checked against five published anchors that do not change on human timescales: 1/α and the Cs-133, Sr-87, H-1 and Al-27⁺ atomic clocks. Each clock's ratio to the anchor is a fixed number, Cs/Ω₀ = 6.7148957 among them, and a clock that drifts by a fraction δ reads its ratio times (1 + δ). A drift is caught only when it is bigger than what is not known about the ratio: with Cs/Ω₀ known to seven decimals, a drift of 10⁻⁷ leaves the band and is caught, while a drift of 10⁻⁸ stays inside it and is hidden until the ratio is carried to more digits. A match from fixed constants carries evidence; a match from a parameter solved to fit carries none. In simulation, the input bounds are carried through the model and the phase is read from the output interval.

## What This Article Proves

1. Start here, the shape: 10% ± 3% spans 7% to 13%; with no boundary in the range the true value is on the same side of every boundary as the reading; 10% ± 3% is Locked below TL = 13.69%; 12% ± 3% holds TL and is not known yet; 12% ± 1% is Locked (`the_range`, `same_answer`, `ten_percent_locked`, `twelve_percent_open`, `twelve_percent_tight`).
2. Rule 1, combining bounds: sums add their bounds; products are bounded by |x|ε₂ + |b|ε₁; P_base lies within 0.002 of 0.988 (`within_add`, `within_mul`, `p_base_bound`).
3. Rules 2 and 3, digits and uncertainty: two values matching the same published digits agree within one unit; subtracting TL from 1/α at corpus precision, 137.035999084000016 − 0.136899099984016, leaves exactly TL × 1000, and at corpus precision the bare term plus the kinetic term, 136.899099984016 + 0.136899099984016 = 137.035999084000016, matches every published digit; the Rydberg energy lies within CODATA's stated uncertainty (`digits_agree`, `alpha_discovery`, `rydberg_within`).
4. Rule 4, phase from an estimate: an interval wholly above or below a boundary certifies the side; a straddling interval holds values on both sides; Tacoma at 1.388 ± 0.001 is certified Shatter. APPA: 10 notches of TL/10 is exactly TL; the ± 8 retest range is 1.96 × √(4 · 2²) = 7.84 rounded up; one read is certified Shatter at net 18 or more, cannot rule out Shatter at 2 to 9, and is clear of it at 1 or below (`certified_above`, `certified_below`, `straddles`, `tacoma_certified`, `notch_scale`, `retest_range`, `appa_certified_shatter`, `appa_cannot_rule_out`, `appa_clear_of_shatter`).
5. Rules 5 to 8: TL rounded to 0.1369 or 0.13689910 gives 1/α = TL × 1001 within 10⁻³ or 10⁻⁷, and at corpus precision 0.136899099984016 × 1001 = 137.035999084000016 exactly, matching every published digit; drift δ shows on the ratio and vanishes only at δ = 0, and is caught only when |δ| · x exceeds twice the ratio's bound: a Cs clock off by 10⁻⁷ is caught, off by 10⁻⁸ hidden at seven decimals; a fitted parameter matches any target; a load carried through τ = B/P keeps its bound, and a load between 0.10 and 0.12 on unit capacity is certified Locked (`corpus_precision`, `drift_detected`, `drift_visible`, `cs_ratio`, `cs_drift_caught`, `cs_drift_hidden`, `fitted_matches_anything`, `carry_through`, `simulation_locked`, `bounded_uncertainty_master`).

## The PNBA Map

| Reading | Range | Against TL = 13.69% | Answer |
| --- | --- | --- | --- |
| 10% ± 3% | 7% to 13% | wholly below | Locked |
| 12% ± 3% | 9% to 15% | TL inside the range | not known yet: measure tighter |
| 12% ± 1% | 11% to 13% | wholly below | Locked |
| APPA net load, one read | Range (± 8 notches) | Against the Shatter step (10 notches = 1 TL) |
| 18 or more | 10 or more | certified Shatter |
| 10 to 17 | 2 to 25 | reads Shatter |
| 2 to 9 | reaches 10 | cannot rule out Shatter: take a second read |
| 1 or below | 9 or below | clear of Shatter |
| Rule | What to do | Exemplar | Article |
| 1 · A bound | State c and ε; add bounds for sums, |x|ε₂ + |b|ε₁ for products | P_base = 0.988 ± 0.002 | [9,9,2,43] |
| 2 · Published digits | Match within half a unit of the last digit | 1/α − TL = TL × 1000; 136.899099984016 + 0.136899099984016 = 137.035999084000016 | [9,9,3,14] |
| 3 · Stated uncertainty | Agree within the measurement's ± | Rydberg energy vs 13.605693122994(26) eV | [9,9,3,21] |
| 4 · Phase from an estimate | Certify only when the whole interval is on one side | Tacoma 1.388 ± 0.001: Shatter; Donato 0.80–1.61: at the boundary; APPA net 2–9 ± 8 notches: cannot rule out Shatter | [9,9,2,52], [9,9,4,14], APPA |
| 5 · Precision | Carry inputs at full precision; rounding adds uncertainty of your own | TL × 1001 = 137.035999084000016 at corpus precision | [9,9,3,14] |
| 6 · Drift | Compare ratios; a drifted reference reads 1 + δ, caught only when bigger than the ratio's bound | Cs/Ω₀ = 6.7148957 ± 10⁻⁷: drift 10⁻⁷ caught, 10⁻⁸ hidden | [9,9,1,100] |
| 7 · Evidence | Count matches from fixed constants only | α counts; a fitted parameter does not | [9,9,8,5] |
| 8 · Simulation | Carry input bounds through the model; read the phase from the output interval | B ∈ [0.10, 0.12], P = 1: Locked | this guide |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Joint Committee for Guides in Metrology (2008). *Evaluation of measurement data: Guide to the expression of uncertainty in measurement* (JCGM 100:2008).
2. Tiesinga, E., Mohr, P. J., Newell, D. B. & Taylor, B. N. (2021). CODATA recommended values of the fundamental physical constants: 2018. *Reviews of Modern Physics*, 93, 025010.
3. Moore, R. E., Kearfott, R. B. & Cloud, M. J. (2009). *Introduction to Interval Analysis*. SIAM.
4. Trent, R. V. III. Bacon Verification. ProofPress, Volume 1, Issue 4.
5. Trent, R. V. III. The Fine-Structure Constant: 1/α = TL × 1001. ProofPress, Volume 1, Issue 5.
6. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_Bounded_Uncertainty_Guide.lean
-- ============================================================
--
-- Bounded Uncertainty: A Guide
--
--   "You have to know what you don't know."
--
-- Every value carries a bound: the measured value c, and how far
-- the true value can be from it, ε. A result counts when the bounds
-- are stated and the conclusion holds across the whole bound. This
-- guide states each working rule, proves it, and shows it at work
-- in a corpus article.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,8,7](METH)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      October 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
--
-- ============================================================
-- START HERE: THE SHAPE
-- ============================================================
--
-- A measurement reads 10% with an uncertainty of ± 3%. The true
-- value is somewhere from 7% to 13%. As long as nothing changes
-- inside 7% to 13% (no boundary, no new physics in the range),
-- every value in the range gives the same answer, and that answer
-- is known even though the exact value is not. That is bounded
-- uncertainty: you know what you don't know, and it doesn't matter.
--
-- With torsion read as a percentage, TL = 13.69%:
--
--   10% ± 3%   range 7–13%    wholly below TL      Locked
--   12% ± 3%   range 9–15%    TL inside the range  not known yet
--   12% ± 1%   range 11–13%   wholly below TL      Locked
--
-- When a boundary sits inside the range, the honest answer is "not
-- known yet", and the fix is a tighter measurement. Every rule below
-- is this shape at more depth.
--
-- ============================================================
-- THE RULES
-- ============================================================
--
--   1. A bound.       x is within ε of c when |x − c| ≤ ε. Sums add
--                     their bounds; products add |x|·ε₂ + |c₂|·ε₁.
--   2. Published      x matches every published digit of p when it
--      digits.        lies within half a unit of p's last digit.
--   3. Stated         x agrees with a measurement when it lies
--      uncertainty.   within the measurement's stated uncertainty.
--   4. Phase from     if the whole interval lies on one side of a
--      an estimate.   boundary, the phase is certified; if it
--                     straddles, the result is "at the boundary".
--   5. Precision.     carry inputs at full precision. Rounding an
--                     exact input adds uncertainty of your own,
--                     and it carries into everything computed from it.
--   6. Drift.         a reference off by δ shows (1 + δ) on its
--                     ratio, and matches exactly when δ = 0.
--   7. Evidence.      a match from fixed constants counts; a match
--                     from a parameter solved to fit does not.
--   8. Simulation.    carry the input bounds through the model and
--                     read the phase from the output interval.
--
-- ============================================================
-- THE EXEMPLARS
-- ============================================================
--
--   1  P_base between 0.986 and 0.990       Category theory [9,9,2,43]
--   2  the subtraction: 1/α − TL = TL × 1000  α [9,9,3,14]
--   3  Rydberg energy within CODATA          Electron [9,9,3,21]
--   4  Tacoma deck 1.387–1.389: Shatter      Tacoma [9,9,2,52]
--      Donato band 0.80–1.61: at the boundary
--                                Central surface density [9,9,4,14]
--      APPA single read, net ± 8 notches     APPA
--        against the Shatter step at 10 notches = 1 TL
--   5  TL rounded vs corpus precision       α [9,9,3,14]
--   6  a drifted clock, caught or hidden    Sovereign Time [9,9,1,100]
--   7  α counts; a fitted parameter does not Bacon [9,9,8,5]
--   8  load B within [B₁, B₂] on capacity P  this guide
--
-- ============================================================

import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

noncomputable section

namespace SNSFL_Bounded_Uncertainty

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10
def H_FREQ           : ℝ := 1.4204

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- x is within ε of c
def within (x c ε : ℝ) : Prop := |x - c| ≤ ε

-- ============================================================
-- START HERE: THE SHAPE
-- ============================================================

-- [S1] 10% ± 3%: the true value lies from 7% to 13%
theorem the_range (x : ℝ) (h : within x 0.10 0.03) : 0.07 ≤ x ∧ x ≤ 0.13 := by
  unfold within at h
  rw [abs_le] at h
  constructor
  · linarith [h.1]
  · linarith [h.2]

-- [S2] No boundary in the range, same answer across the range: if a
-- boundary b lies outside [c − ε, c + ε], the true value is on the
-- same side of b as the reading
theorem same_answer (x c ε b : ℝ) (h : within x c ε) (hb : b < c - ε ∨ c + ε < b) :
    (b < x ↔ b < c) := by
  unfold within at h
  rw [abs_le] at h
  rcases hb with hb | hb
  · exact ⟨fun _ => by linarith [h.1, h.2], fun _ => by linarith [h.1]⟩
  · exact ⟨fun _ => by linarith [h.2], fun _ => by linarith [h.1, h.2]⟩

-- [S3] 10% ± 3% is Locked across the whole range: 13% < TL = 13.69%
theorem ten_percent_locked (x : ℝ) (h : within x 0.10 0.03) : x < TORSION_LIMIT := by
  have hr := (the_range x h).2
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR
  linarith

-- [S4] 12% ± 3% holds TL inside its range (9% < TL < 15%): values on
-- both sides are possible, so the phase is not known yet
theorem twelve_percent_open :
    within 0.09 0.12 0.03 ∧ 0.09 < TORSION_LIMIT ∧
    within 0.15 0.12 0.03 ∧ TORSION_LIMIT < 0.15 := by
  unfold within TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨?_, by norm_num, ?_, by norm_num⟩
  · rw [abs_le]; constructor <;> norm_num
  · rw [abs_le]; constructor <;> norm_num

-- [S5] Measured tighter, 12% ± 1% lies from 11% to 13%: Locked
theorem twelve_percent_tight (x : ℝ) (h : within x 0.12 0.01) : x < TORSION_LIMIT := by
  unfold within at h
  rw [abs_le] at h
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR
  linarith [h.2]

-- ============================================================
-- RULE 1: A BOUND
-- ============================================================

-- [T1] Sums add their bounds
theorem within_add (x y a b ε₁ ε₂ : ℝ) (hx : within x a ε₁) (hy : within y b ε₂) :
    within (x + y) (a + b) (ε₁ + ε₂) := by
  unfold within at *
  rw [abs_le] at *
  constructor
  · linarith [hx.1, hy.1]
  · linarith [hx.2, hy.2]

-- [T2] Products: |xy − ab| ≤ |x|·ε₂ + |b|·ε₁
theorem within_mul (x y a b ε₁ ε₂ : ℝ) (hx : within x a ε₁) (hy : within y b ε₂) :
    within (x * y) (a * b) (|x| * ε₂ + |b| * ε₁) := by
  unfold within at *
  calc |x * y - a * b| = |x * (y - b) + b * (x - a)| := by congr 1; ring
    _ ≤ |x * (y - b)| + |b * (x - a)| := abs_add_le _ _
    _ = |x| * |y - b| + |b| * |x - a| := by rw [abs_mul, abs_mul]
    _ ≤ |x| * ε₂ + |b| * ε₁ :=
        add_le_add (mul_le_mul_of_nonneg_left hy (abs_nonneg x))
          (mul_le_mul_of_nonneg_left hx (abs_nonneg b))

-- Exemplar 1: P_base = (Ω₀/f_H)^(1/3) is known between 0.986 and 0.990
noncomputable def P_BASE : ℝ := (SOVEREIGN_ANCHOR / H_FREQ) ^ ((1:ℝ)/3)

theorem cube_rpow (r : ℝ) (hr : 0 ≤ r) : (r ^ ((1:ℝ)/3)) ^ 3 = r := by
  rw [← Real.rpow_natCast, ← Real.rpow_mul hr]; norm_num

theorem cbrt_gt (r c : ℝ) (hr : 0 ≤ r) (h : c ^ 3 < r) : r ^ ((1:ℝ)/3) > c := by
  by_contra hle
  push Not at hle
  have hy : 0 ≤ r ^ ((1:ℝ)/3) := Real.rpow_nonneg hr _
  have h3 := pow_le_pow_left₀ hy hle 3
  rw [cube_rpow r hr] at h3
  linarith

theorem cbrt_lt (r c : ℝ) (hr : 0 ≤ r) (hc : 0 ≤ c) (h : r < c ^ 3) :
    r ^ ((1:ℝ)/3) < c := by
  by_contra hle
  push Not at hle
  have h3 := pow_le_pow_left₀ hc hle 3
  rw [cube_rpow r hr] at h3
  linarith

-- [T3] P_base lies within 0.002 of 0.988
theorem p_base_bound : within P_BASE 0.988 0.002 := by
  have hgt : P_BASE > 0.986 := by
    unfold P_BASE
    exact cbrt_gt _ _ (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)
      (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)
  have hlt : P_BASE < 0.990 := by
    unfold P_BASE
    exact cbrt_lt _ _ (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num) (by norm_num)
      (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)
  unfold within
  rw [abs_le]
  constructor
  · linarith
  · linarith

-- ============================================================
-- RULE 2: PUBLISHED DIGITS
-- ============================================================

-- x matches every published digit of p, last digit of size u
def matches_digits (x p u : ℝ) : Prop := |x - p| < u / 2

-- [T4] Two values that both match p's digits are within one unit of
-- each other
theorem digits_agree (x y p u : ℝ) (hx : matches_digits x p u) (hy : matches_digits y p u) :
    |x - y| < u := by
  unfold matches_digits at *
  rw [abs_lt] at *
  constructor
  · linarith [hx.1, hy.2]
  · linarith [hx.2, hy.1]

-- [T5] Exemplar 2, the subtraction. At corpus precision, subtract the
-- Torsion Limit from 1/α: 137.035999084000016 − 0.136899099984016 =
-- 136.899099984016, which is TL × 1000. So 1/α = TL × 1000 + TL. Read in
-- legacy terms, TL × 1000 is the bare term, the part QED assigns to the
-- bare electron; TL is the kinetic term, the part QED computes as a
-- renormalized series of radiative corrections, carried here as one
-- exact term in the F_ext slot. The sum is exact,
--   136.899099984016 + 0.136899099984016 = 137.035999084000016,
-- and it matches every published digit of CODATA 2018
theorem alpha_discovery :
    (137.035999084000016 : ℝ) - TORSION_LIMIT = TORSION_LIMIT * 1000 ∧
    TORSION_LIMIT * 1000 = 136.899099984016 ∧
    (136.899099984016 : ℝ) + 0.136899099984016 = 137.035999084000016 ∧
    matches_digits (TORSION_LIMIT * 1001) 137.035999084 0.000000001 := by
  unfold matches_digits TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨by norm_num, by norm_num, by norm_num, ?_⟩
  rw [abs_lt]; constructor <;> norm_num

-- ============================================================
-- RULE 3: STATED UNCERTAINTY
-- ============================================================

-- [T6] Exemplar 3: the Rydberg energy ½ m_e c² / (TL·1001)² lies within
-- CODATA's stated uncertainty of 13.605693122994 eV
theorem rydberg_within :
    within (510998.95 / 2 / (TORSION_LIMIT * 1001) ^ 2) 13.605693122994 0.000000000026 := by
  unfold within TORSION_LIMIT SOVEREIGN_ANCHOR
  rw [abs_le]; constructor
  · norm_num
  · norm_num

-- ============================================================
-- RULE 4: PHASE FROM AN ESTIMATE
-- ============================================================

-- [T7] If the whole interval lies above a boundary, the value does
theorem certified_above (x c ε b : ℝ) (h : within x c ε) (hb : b < c - ε) : b < x := by
  unfold within at h
  rw [abs_le] at h
  linarith [h.1]

-- [T8] If the whole interval lies below a boundary, the value does
theorem certified_below (x c ε b : ℝ) (h : within x c ε) (hb : c + ε < b) : x < b := by
  unfold within at h
  rw [abs_le] at h
  linarith [h.2]

-- [T9] If the interval straddles the boundary, it holds values on
-- both sides: the result is "at the boundary"
theorem straddles (c ε b : ℝ) (h1 : c - ε < b) (h2 : b < c + ε) :
    within (c - ε) c ε ∧ c - ε < b ∧ within (c + ε) c ε ∧ b < c + ε := by
  have hε : 0 ≤ ε := by linarith
  unfold within
  refine ⟨?_, h1, ?_, h2⟩
  · exact le_of_eq (by rw [show c - ε - c = -ε by ring, abs_neg, abs_of_nonneg hε])
  · exact le_of_eq (by rw [show c + ε - c = ε by ring, abs_of_nonneg hε])

-- Exemplar 4: Tacoma's flutter ratio is known to 1.388 ± 0.001; the
-- whole interval lies above onset at 1, so the deck is certified Shatter
theorem tacoma_certified (R : ℝ) (h : within R 1.388 0.001) : 1 < R :=
  certified_above R 1.388 0.001 1 h (by norm_num)

-- Exemplar 4, APPA. APPA reads each axis at rest and again activated;
-- the activated read minus the rest read is the F_ext step, and the
-- net load ΔB − ΔP is counted in notches of TL/10. A step of 10
-- notches is one TL: the Shatter step. One read carries a retest
-- range of ± 8 notches.

-- [T9a] Ten notches is the Torsion Limit: n notches reach TL exactly
-- when n ≥ 10
theorem notch_scale (n : ℝ) : TORSION_LIMIT ≤ n * (TORSION_LIMIT / 10) ↔ 10 ≤ n := by
  have hT : 0 < TORSION_LIMIT / 10 := by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  have key : n * (TORSION_LIMIT / 10) - TORSION_LIMIT = (TORSION_LIMIT / 10) * (n - 10) := by ring
  constructor
  · intro h
    by_contra hn
    push Not at hn
    have : (TORSION_LIMIT / 10) * (n - 10) < 0 := mul_neg_of_pos_of_neg hT (by linarith)
    linarith
  · intro h
    have : 0 ≤ (TORSION_LIMIT / 10) * (n - 10) := mul_nonneg hT.le (by linarith)
    linarith

-- [T9b] The ± 8 range: four answer sums, each with retest σ = 2, give
-- ΔB − ΔP a spread of √(4 · 2²) = 4, and 1.96 × 4 = 7.84 ≤ 8
theorem retest_range : Real.sqrt (4 * 2 ^ 2) = 4 ∧ (1.96 : ℝ) * 4 ≤ 8 := by
  constructor
  · rw [show (4 * 2 ^ 2 : ℝ) = 4 ^ 2 by norm_num]
    exact Real.sqrt_sq (by norm_num)
  · norm_num

-- [T9c] One read at net 18 or more is certified Shatter: the whole
-- range is at 10 notches or above
theorem appa_certified_shatter (x net : ℝ) (h : within x net 8) (hn : 18 ≤ net) : 10 ≤ x := by
  unfold within at h
  rw [abs_le] at h
  linarith [h.1]

-- [T9d] One read at net 2 to 9 cannot rule out Shatter: the reading
-- is below 10, and its range reaches 10
theorem appa_cannot_rule_out (net : ℝ) (h1 : 2 ≤ net) (h2 : net < 10) :
    net < 10 ∧ within (net + 8) net 8 ∧ 10 ≤ net + 8 := by
  refine ⟨h2, ?_, by linarith⟩
  unfold within
  exact le_of_eq (by rw [show net + 8 - net = 8 by ring, abs_of_nonneg (by norm_num : (0:ℝ) ≤ 8)])

-- [T9e] One read at net 1 or below is clear of Shatter: the whole range
-- is below 10
theorem appa_clear_of_shatter (x net : ℝ) (h : within x net 8) (hn : net ≤ 1) : x < 10 := by
  unfold within at h
  rw [abs_le] at h
  linarith [h.2]

-- ============================================================
-- RULE 5: PRECISION
-- ============================================================

-- [T10] Exemplar 5: the Torsion Limit is exact. Rounded to 0.1369 it
-- gives 1/α = TL × 1001 within 10⁻³; rounded to 0.13689910, within
-- 10⁻⁷. At corpus precision, 0.136899099984016 × 1001 =
-- 137.035999084000016 exactly, which matches every published digit of
-- CODATA 2018
theorem corpus_precision :
    within (0.1369 * 1001) 137.035999084 0.001 ∧
    within (0.13689910 * 1001) 137.035999084 0.0000001 ∧
    TORSION_LIMIT * 1001 = 137.035999084000016 ∧
    matches_digits (TORSION_LIMIT * 1001) 137.035999084 0.000000001 := by
  unfold within matches_digits TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨?_, ?_, by norm_num, ?_⟩
  · rw [abs_le]; constructor
    · norm_num
    · norm_num
  · rw [abs_le]; constructor
    · norm_num
    · norm_num
  · rw [abs_lt]; constructor
    · norm_num
    · norm_num

-- ============================================================
-- RULE 6: DRIFT
-- ============================================================

-- Exemplar 6, Sovereign Time [9,9,1,100]. Time is kept from one
-- running reference, the anchor Ω₀ = 1.36899099984016 GHz, and checked
-- against five published anchors that do not change on human
-- timescales: 1/α and four atomic clocks, Cs-133 (9 192 631 770 Hz,
-- the SI second), Sr-87, H-1 and Al-27⁺. Each clock's ratio to the
-- anchor is a fixed number: Cs/Ω₀ = 6.7148957, H/Ω₀ = 1.0375567,
-- Sr/Ω₀ = 313 536.03, Al/Ω₀ = 818 862.50. A clock that drifts fast by
-- a fraction δ reads its ratio times (1 + δ). With five anchors and
-- at least three honest, any two can fail: the honest ones are the
-- ones that agree (three_of_five, [9,9,1,100]).

-- [T11] A reference off by δ reads (1 + δ) on its ratio to an honest
-- one, and matches exactly when δ = 0
theorem drift_detected (f g δ : ℝ) (hf : f ≠ 0) (hg : g ≠ 0) :
    f * (1 + δ) / g = f / g ↔ δ = 0 := by
  constructor
  · intro h
    have hfg : f / g ≠ 0 := div_ne_zero hf hg
    have h2 : f / g * δ = f / g * 0 := by
      rw [mul_zero]; linear_combination h
    exact mul_left_cancel₀ hfg h2
  · intro hδ; rw [hδ]; ring

-- [T11a] A drift is caught only when it is bigger than what you don't
-- know: if the honest ratio is known within u, a reading drifted by δ
-- falls outside the band once |δ| · x exceeds 2u
theorem drift_visible (x r u δ : ℝ) (hx : within x r u) (hpos : 0 < x)
    (hd : 2 * u < |δ| * x) : ¬ within (x * (1 + δ)) r u := by
  unfold within at *
  intro hy
  rw [abs_le] at hx hy
  have e : x * (1 + δ) - r = (x - r) + x * δ := by ring
  rw [e] at hy
  have h2 : |x * δ| ≤ 2 * u := by
    rw [abs_le]; constructor
    · linarith [hx.2, hy.1]
    · linarith [hx.1, hy.2]
  have h3 : |x * δ| = |δ| * x := by rw [abs_mul, abs_of_pos hpos, mul_comm]
  linarith

-- The Cs-133 ratio, Cs / Ω₀, in GHz
noncomputable def CS_RATIO : ℝ := 9.19263177 / 1.36899099984016

-- [T11b] Cs / Ω₀ is known within 10⁻⁷ of 6.7148957
theorem cs_ratio : within CS_RATIO 6.7148957 0.0000001 := by
  unfold within CS_RATIO
  rw [abs_le]; constructor <;> norm_num

-- [T11c] A Cs clock drifted by 10⁻⁷ is caught: its ratio leaves the band
theorem cs_drift_caught : ¬ within (CS_RATIO * (1 + 0.0000001)) 6.7148957 0.0000001 := by
  have hpos : 0 < CS_RATIO := by unfold CS_RATIO; norm_num
  refine drift_visible CS_RATIO 6.7148957 0.0000001 0.0000001 cs_ratio hpos ?_
  rw [abs_of_pos (by norm_num : (0:ℝ) < 0.0000001)]
  unfold CS_RATIO; norm_num

-- [T11d] A Cs clock drifted by 10⁻⁸ is hidden at seven decimals: its
-- ratio stays inside the band. Catching it takes the ratio to more
-- digits
theorem cs_drift_hidden : within (CS_RATIO * (1 + 0.00000001)) 6.7148957 0.0000001 := by
  unfold within CS_RATIO
  rw [abs_le]; constructor <;> norm_num

-- ============================================================
-- RULE 7: EVIDENCE
-- ============================================================

-- [T12] Exemplar 7: a parameter solved to fit matches any target, so
-- the match carries no evidence; the match of α comes from fixed
-- constants
theorem fitted_matches_anything (a b t : ℝ) (ha : a ≠ 0) : ∃ θ : ℝ, a * θ + b = t :=
  ⟨(t - b) / a, by rw [mul_div_cancel₀ (t - b) ha]; ring⟩

-- ============================================================
-- RULE 8: SIMULATION
-- ============================================================

-- [T13] Carry the bound through τ = B/P: a load anywhere in [B₁, B₂]
-- on capacity P > 0 gives τ in [B₁/P, B₂/P]
theorem carry_through (B B₁ B₂ P : ℝ) (hP : 0 < P) (h1 : B₁ ≤ B) (h2 : B ≤ B₂) :
    B₁ / P ≤ B / P ∧ B / P ≤ B₂ / P :=
  ⟨div_le_div_of_nonneg_right h1 hP.le, div_le_div_of_nonneg_right h2 hP.le⟩

-- [T14] Exemplar 8: a load between 0.10 and 0.12 on capacity 1 stays
-- below TL across the whole bound: certified Locked
theorem simulation_locked (B : ℝ) (h1 : 0.10 ≤ B) (h2 : B ≤ 0.12) : B / 1 < TORSION_LIMIT := by
  have h := (carry_through B 0.10 0.12 1 one_pos h1 h2).2
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR
  have h3 : (0.12 : ℝ) / 1 < 1.36899099984016 / 10 := by norm_num
  linarith

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T15] BOUNDED UNCERTAINTY
theorem bounded_uncertainty_master :
    -- the shape: 10% ± 3% is Locked; 12% ± 1% is Locked
    (∀ x : ℝ, within x 0.10 0.03 → x < TORSION_LIMIT) ∧
    (∀ x : ℝ, within x 0.12 0.01 → x < TORSION_LIMIT) ∧
    -- bounds combine
    (∀ x y a b ε₁ ε₂ : ℝ, within x a ε₁ → within y b ε₂ → within (x + y) (a + b) (ε₁ + ε₂)) ∧
    -- the subtraction: 1/α − TL = TL × 1000; published digits
    (137.035999084000016 : ℝ) - TORSION_LIMIT = TORSION_LIMIT * 1000 ∧
    matches_digits (TORSION_LIMIT * 1001) 137.035999084 0.000000001 ∧
    -- stated uncertainty
    within (510998.95 / 2 / (TORSION_LIMIT * 1001) ^ 2) 13.605693122994 0.000000000026 ∧
    -- phase from an estimate
    (∀ x c ε b : ℝ, within x c ε → b < c - ε → b < x) ∧
    (∀ x c ε b : ℝ, within x c ε → c + ε < b → x < b) ∧
    -- APPA: net 2 to 9 cannot rule out the Shatter step at 10 notches
    (∀ net : ℝ, 2 ≤ net → net < 10 → net < 10 ∧ within (net + 8) net 8 ∧ 10 ≤ net + 8) ∧
    -- precision: corpus precision is exact
    TORSION_LIMIT * 1001 = 137.035999084000016 ∧
    -- drift: a Cs clock off by 10⁻⁷ is caught, off by 10⁻⁸ is hidden
    ¬ within (CS_RATIO * (1 + 0.0000001)) 6.7148957 0.0000001 ∧
    within (CS_RATIO * (1 + 0.00000001)) 6.7148957 0.0000001 ∧
    -- evidence
    (∀ a b t : ℝ, a ≠ 0 → ∃ θ : ℝ, a * θ + b = t) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨ten_percent_locked, twelve_percent_tight, within_add, alpha_discovery.1,
   alpha_discovery.2.2.2, rydberg_within, certified_above, certified_below,
   appa_cannot_rule_out, corpus_precision.2.2.1, cs_drift_caught, cs_drift_hidden,
   fitted_matches_anything, anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_Bounded_Uncertainty

/-!
-- ============================================================
-- FILE:       SNSFL_Bounded_Uncertainty_Guide.lean
-- COORDINATE: [9,9,8,7](METH)
-- SORRY:      0
--
-- "You have to know what you don't know."
--
-- RULES AND RESULTS:
--   Start: 10% ± 3% spans 7–13%; no boundary in the range, same
--     answer; Locked below TL = 13.69%; 12% ± 3% holds TL, not known
--     yet; 12% ± 1% Locked (S1–S5)
--   1 Bounds add; products bound by |x|ε₂ + |b|ε₁; P_base 0.988
--     ± 0.002 (T1–T3)
--   2 Published digits; values matching the same digits agree within
--     one unit; the subtraction 1/α − TL = TL × 1000, bare + kinetic
--     136.899099984016 + 0.136899099984016 = 137.035999084000016 (T4, T5)
--   3 Stated uncertainty: the Rydberg energy (T6)
--   4 Phase from an estimate: certified above or below, or at the
--     boundary when straddling; Tacoma certified Shatter; APPA one read
--     at ± 8 notches: certified Shatter at 18+, cannot rule out Shatter
--     at 2 to 9, clear at 1 or below (T7–T9e)
--   5 Precision: TL rounded within 10⁻³ and 10⁻⁷; corpus precision
--     0.136899099984016 × 1001 = 137.035999084000016 exactly (T10)
--   6 Drift: shows as (1 + δ) on the ratio; caught only when bigger
--     than the ratio's bound: Cs off by 10⁻⁷ caught, 10⁻⁸ hidden (T11–T11d)
--   7 Evidence: a fitted parameter matches anything (T12)
--   8 Simulation: carry the bound through τ = B/P (T13, T14)
--
-- CONNECTIONS:
--   [9,9,8,5] Bacon Verification · [9,9,8,6] Mathematics Master
--   [9,9,3,14] α · [9,9,3,21] Electron · [9,9,2,52] Tacoma
--   [9,9,4,14] Central surface density · [9,9,1,100] Sovereign Time
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/

```
