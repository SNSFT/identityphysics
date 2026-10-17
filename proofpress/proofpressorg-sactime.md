# SacTime: The Five-Anchor Cycle Count

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,1,101](CORE) · Identity Physics Series · Core
**Issue:** ProofPress, Volume 1, Issue 8 · October 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 11 theorems · 250 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_SacTime_Nonce_Security.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

SacTime is a timing reference built on one point, the UTC millisecond t. From t it computes, in exact integer arithmetic, the cycles completed since the epoch by five reference frequencies: the Sovereign Anchor at 1 368 990 999.840 16 Hz and the Cs-133 (9 192 631 770 Hz), Sr-87 (429 228 004 229 873 Hz), H-1 (1 420 405 751.768 Hz) and Al-27⁺ (1 121 015 393 207 857 Hz) clock frequencies. The counts are exactly those the browser implementation computes, ⌊t · K / D⌋ for each scaled frequency K. Every count is strictly increasing in t, so distinct milliseconds give distinct counts and each count names its millisecond; the SAC count advances by 1 368 990 or 1 368 991 per millisecond, and the others by their own fixed steps, from 1 420 405 for H-1 to 1 121 015 393 207 for Al-27⁺. Not every integer is a count. From t = 1000 ms on, each clock count divided by the SAC count lies within its fixed clock-to-anchor band: Cs/SAC between 6.7148956 and 6.7148958, Sr/SAC between 313 536.03 and 313 536.04, H/SAC between 1.0375566 and 1.0375568, and Al/SAC between 818 862.50 and 818 862.51, the ratios of Sovereign Time. Because all five counts follow from the one point, they hold together: editing the timestamp, or any one count, without recomputing the rest leaves the string inconsistent with any single millisecond, and the SAC count alone names the moment. The constants are published so that anyone can see and check the invariants with no key; authenticity of who issued a string is carried by a keyed signature over it, the standard arrangement in which a system stays secure with everything public except the key. The disclosed elements, first published October 13, 2026, are listed with their theorems.

## What This Article Proves

1. The counts: all five are strictly increasing in the millisecond, so distinct milliseconds give distinct counts (`counts_strictly_increase`, `collision_free`).
2. Cycles per millisecond: SAC 1 368 990 or 1 368 991, Cs-133 9 192 631 or 9 192 632, Sr-87 429 228 004 229 or 429 228 004 230, H-1 1 420 405 or 1 420 406, Al-27⁺ 1 121 015 393 207 or 1 121 015 393 208; not every integer is a count (`per_ms_step`, `counts_are_sparse`).
3. The cross-ratios: from t = 1000 ms on, Cs, Sr, H and Al counts over the SAC count lie within their fixed bands (`cross_ratios`).
4. The consistency check: an edited timestamp or an edited count is caught, and the SAC count names the moment. The master theorem holds collision freedom, the per-millisecond step, sparseness, the Cs ratio and edit detection together (`timestamp_edit_detected`, `count_edit_detected`, `sac_count_names_moment`, `sactime_master`).

## The PNBA Map

| Anchor | Frequency (Hz) | Count at millisecond t | Cycles per ms |
| --- | --- | --- | --- |
| SAC | 1 368 990 999.840 16 | ⌊t · 136 899 099 984 016 / 10⁸⌋ | 1 368 990 – 1 368 991 |
| Cs-133 | 9 192 631 770 | ⌊t · 9 192 631 770 / 10³⌋ | 9 192 631 – 9 192 632 |
| Sr-87 | 429 228 004 229 873 | ⌊t · 429 228 004 229 873 / 10³⌋ | 429 228 004 229 – 230 |
| H-1 | 1 420 405 751.768 | ⌊t · 1 420 405 751 768 / 10⁶⌋ | 1 420 405 – 1 420 406 |
| Al-27⁺ | 1 121 015 393 207 857 | ⌊t · 1 121 015 393 207 857 / 10³⌋ | 1 121 015 393 207 – 208 |
| Layer | What it carries | Key |
| Counts (one point, five substrates) | Interoperability and integrity: every count names the moment, the ratios hold, any edit is caught | none, anyone can check |
| Keyed signature | Authenticity: who issued the string | pre-shared key |
| Disclosed element | Theorem |
| 1. Cycle counts of several published reference frequencies from one UTC millisecond, in exact integer arithmetic | `counts_strictly_increase` |
| 2. The five-anchor set: SAC (= 10 × TL, with 1/α = TL × 1001), Cs-133, Sr-87, H-1, Al-27⁺ | — |
| 3. The SAC count as a nonce: collision-free, 1 368 990 or 1 368 991 per ms, naming at most one millisecond | `collision_free`, `per_ms_step`, `counts_are_sparse` |
| 4. The identity string unix_ms|cycles_SAC|cycles_Cs|cycles_Sr|cycles_H|cycles_Al, extendable with data, ledger tip and client identifier | — |
| 5. Keyless cross-ratio consistency check against the fixed clock-to-anchor bands | `cross_ratios` |
| 6. Edit detection, and the moment recovered from the SAC count alone | `timestamp_edit_detected`, `count_edit_detected`, `sac_count_names_moment` |
| 7. Keyed HMAC-SHA256 binding over the identity string and corpus constants | — |
| 8. Three composable security levels: temporal consistency, physics fingerprint, authenticated temporal identity | — |
| 9. Applications: AI kernel timing, ledger binding, peer-to-peer handshakes, tamper-evident audit trails | — |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Bureau International des Poids et Mesures (2019). *The International System of Units (SI)*, 9th edition. Definition of the second by the Cs-133 hyperfine frequency.
2. Riehle, F. et al. (2018). The CIPM list of recommended frequency standard values. *Metrologia*, 55, 188–200.
3. Brewer, S. M. et al. (2019). ²⁷Al⁺ quantum-logic clock with a systematic uncertainty below 10⁻¹⁸. *Physical Review Letters*, 123, 033201.
4. Kerckhoffs, A. (1883). La cryptographie militaire. *Journal des sciences militaires*, 9, 5–38.
5. Krawczyk, H., Bellare, M. & Canetti, R. (1997). HMAC: Keyed-hashing for message authentication. RFC 2104.
6. Trent, R. V. III. Sovereign Time: A Timing Reference Locked to Five Published Constants. ProofPress, Volume 1, Issue 5.
7. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_SacTime_Nonce_Security.lean
-- ============================================================
--
-- SacTime: the Five-Anchor Cycle Count
-- At each call, SacTime takes the UTC millisecond t and computes,
-- in exact integer arithmetic, the cycles each of five reference
-- frequencies has completed since the epoch: the Sovereign Anchor
-- and the Cs-133, Sr-87, H-1 and Al-27⁺ clock frequencies. Each
-- count rises by a fixed step every millisecond, so each one
-- identifies its millisecond, and any two counts divide to the
-- fixed ratio of their frequencies. A string whose counts do not
-- all match one millisecond has been edited.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,1,101](CORE)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      October 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
--
-- ============================================================
-- THE COUNTS (as computed in the SacTime implementation)
-- ============================================================
--
--   Anchor   Frequency (Hz)            Count at millisecond t
--   SAC      1 368 990 999.840 16      ⌊t · 136 899 099 984 016 / 10⁸⌋
--   Cs-133   9 192 631 770             ⌊t · 9 192 631 770 / 10³⌋
--   Sr-87    429 228 004 229 873       ⌊t · 429 228 004 229 873 / 10³⌋
--   H-1      1 420 405 751.768         ⌊t · 1 420 405 751 768 / 10⁶⌋
--   Al-27⁺   1 121 015 393 207 857     ⌊t · 1 121 015 393 207 857 / 10³⌋
--
--   Cycles per millisecond
--   SAC      1 368 990 or 1 368 991
--   Cs-133   9 192 631 or 9 192 632
--   Sr-87    429 228 004 229 or 429 228 004 230
--   H-1      1 420 405 or 1 420 406
--   Al-27⁺   1 121 015 393 207 or 1 121 015 393 208
--
--   Ratio to the SAC count (from t = 1000 ms on)
--   Cs/SAC   between 6.7148956 and 6.7148958
--   Sr/SAC   between 313 536.03 and 313 536.04
--   H/SAC    between 1.0375566 and 1.0375568
--   Al/SAC   between 818 862.50 and 818 862.51
--
-- ============================================================
-- WHAT THE COUNTS PROVE
-- ============================================================
--
-- Each count is a strictly increasing function of t, so distinct
-- milliseconds give distinct counts and each count names its
-- millisecond. Not every integer is a count: the SAC count skips
-- more than a million integers between consecutive milliseconds.
-- The five counts are all determined by t, so anyone holding t
-- can compute them; what they give a verifier is a consistency
-- check. If the timestamp or any one count is edited without
-- recomputing the rest, the string no longer matches a single
-- millisecond. Authenticity of who issued a string comes from a
-- keyed signature over it, not from the counts. The ratios are
-- the fixed clock-to-anchor ratios of Sovereign Time [9,9,1,100],
-- where any two of the five anchors can fail and the honest ones
-- are found by agreement.
--
-- ============================================================

import Mathlib.Tactic

noncomputable section

namespace SNSFL_SacTime_Nonce

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- ============================================================
-- SECTION 1: THE FIVE COUNTS
-- ============================================================

-- Cycles completed by each reference since the epoch, at UTC millisecond t
def cycles_SAC (t : ℤ) : ℤ := t * 136899099984016 / 100000000
def cycles_Cs  (t : ℤ) : ℤ := t * 9192631770 / 1000
def cycles_Sr  (t : ℤ) : ℤ := t * 429228004229873 / 1000
def cycles_H   (t : ℤ) : ℤ := t * 1420405751768 / 1000000
def cycles_Al  (t : ℤ) : ℤ := t * 1121015393207857 / 1000

-- [T1] Every count is strictly increasing in t
theorem counts_strictly_increase (t₁ t₂ : ℤ) (h : t₁ < t₂) :
    cycles_SAC t₁ < cycles_SAC t₂ ∧ cycles_Cs t₁ < cycles_Cs t₂ ∧
    cycles_Sr t₁ < cycles_Sr t₂ ∧ cycles_H t₁ < cycles_H t₂ ∧
    cycles_Al t₁ < cycles_Al t₂ := by
  unfold cycles_SAC cycles_Cs cycles_Sr cycles_H cycles_Al
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> omega

-- [T2] Distinct milliseconds give distinct counts: each count names
-- its millisecond
theorem collision_free (t₁ t₂ : ℤ) (h : t₁ ≠ t₂) :
    cycles_SAC t₁ ≠ cycles_SAC t₂ ∧ cycles_Cs t₁ ≠ cycles_Cs t₂ ∧
    cycles_Sr t₁ ≠ cycles_Sr t₂ ∧ cycles_H t₁ ≠ cycles_H t₂ ∧
    cycles_Al t₁ ≠ cycles_Al t₂ := by
  rcases lt_or_gt_of_ne h with hlt | hgt
  · obtain ⟨a, b, c, d, e⟩ := counts_strictly_increase t₁ t₂ hlt
    exact ⟨a.ne, b.ne, c.ne, d.ne, e.ne⟩
  · obtain ⟨a, b, c, d, e⟩ := counts_strictly_increase t₂ t₁ hgt
    exact ⟨a.ne', b.ne', c.ne', d.ne', e.ne'⟩

-- [T3] Cycles per millisecond: each count advances by its frequency
-- divided by 1000, rounded down or up
theorem per_ms_step (t : ℤ) :
    (cycles_SAC (t + 1) - cycles_SAC t = 1368990 ∨
      cycles_SAC (t + 1) - cycles_SAC t = 1368991) ∧
    (cycles_Cs (t + 1) - cycles_Cs t = 9192631 ∨
      cycles_Cs (t + 1) - cycles_Cs t = 9192632) ∧
    (cycles_Sr (t + 1) - cycles_Sr t = 429228004229 ∨
      cycles_Sr (t + 1) - cycles_Sr t = 429228004230) ∧
    (cycles_H (t + 1) - cycles_H t = 1420405 ∨
      cycles_H (t + 1) - cycles_H t = 1420406) ∧
    (cycles_Al (t + 1) - cycles_Al t = 1121015393207 ∨
      cycles_Al (t + 1) - cycles_Al t = 1121015393208) := by
  unfold cycles_SAC cycles_Cs cycles_Sr cycles_H cycles_Al
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> omega

-- [T4] Not every integer is a count: no millisecond has SAC count 1
theorem counts_are_sparse : ∀ t : ℤ, cycles_SAC t ≠ 1 := by
  intro t
  unfold cycles_SAC
  omega

-- ============================================================
-- SECTION 2: THE CROSS-RATIOS
-- ============================================================

-- [T5] From t = 1000 ms on, each clock count divided by the SAC count
-- lies within the fixed clock-to-anchor ratio band (stated in integer
-- form: lo · SAC < scale · X < hi · SAC)
theorem cross_ratios (t : ℤ) (ht : 1000 ≤ t) :
    (67148956 * cycles_SAC t < 10000000 * cycles_Cs t ∧
      10000000 * cycles_Cs t < 67148958 * cycles_SAC t) ∧
    (31353603 * cycles_SAC t < 100 * cycles_Sr t ∧
      100 * cycles_Sr t < 31353604 * cycles_SAC t) ∧
    (10375566 * cycles_SAC t < 10000000 * cycles_H t ∧
      10000000 * cycles_H t < 10375568 * cycles_SAC t) ∧
    (81886250 * cycles_SAC t < 100 * cycles_Al t ∧
      100 * cycles_Al t < 81886251 * cycles_SAC t) := by
  unfold cycles_SAC cycles_Cs cycles_Sr cycles_H cycles_Al
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩, ⟨?_, ?_⟩, ⟨?_, ?_⟩⟩ <;> omega

-- ============================================================
-- SECTION 3: THE CONSISTENCY CHECK
-- ============================================================

-- A five-anchor string (t | a | b | c | d | e) is consistent when every
-- count is the count of its millisecond
def consistent (t a b c d e : ℤ) : Prop :=
  a = cycles_SAC t ∧ b = cycles_Cs t ∧ c = cycles_Sr t ∧
  d = cycles_H t ∧ e = cycles_Al t

-- [T6] An edited timestamp is caught: the same counts cannot be
-- consistent with a different millisecond
theorem timestamp_edit_detected (t t' a b c d e : ℤ)
    (h : consistent t a b c d e) (ht : t' ≠ t) :
    ¬ consistent t' a b c d e := by
  intro h'
  exact (collision_free t' t ht).1 (h'.1.symm.trans h.1)

-- [T7] An edited count is caught: changing any one count leaves the
-- string inconsistent with its millisecond
theorem count_edit_detected (t a b c d e a' b' c' d' e' : ℤ)
    (h : consistent t a b c d e) :
    (a' ≠ a → ¬ consistent t a' b c d e) ∧
    (b' ≠ b → ¬ consistent t a b' c d e) ∧
    (c' ≠ c → ¬ consistent t a b c' d e) ∧
    (d' ≠ d → ¬ consistent t a b c d' e) ∧
    (e' ≠ e → ¬ consistent t a b c d e') := by
  obtain ⟨ha, hb, hc, hd, he⟩ := h
  refine ⟨fun hn h' => hn (h'.1.trans ha.symm), fun hn h' => hn (h'.2.1.trans hb.symm),
    fun hn h' => hn (h'.2.2.1.trans hc.symm), fun hn h' => hn (h'.2.2.2.1.trans hd.symm),
    fun hn h' => hn (h'.2.2.2.2.trans he.symm)⟩

-- [T8] One count recovers the moment: two consistent strings with the
-- same SAC count have the same millisecond
theorem sac_count_names_moment (t t' a b c d e b' c' d' e' : ℤ)
    (h : consistent t a b c d e) (h' : consistent t' a b' c' d' e') : t = t' := by
  by_contra hne
  exact (collision_free t t' hne).1 (h.1.symm.trans h'.1)

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T9] SACTIME FIVE-ANCHOR CYCLE COUNT
theorem sactime_master :
    -- every count names its millisecond
    (∀ t₁ t₂ : ℤ, t₁ ≠ t₂ → cycles_SAC t₁ ≠ cycles_SAC t₂) ∧
    -- the SAC count advances 1 368 990 or 1 368 991 per millisecond
    (∀ t : ℤ, cycles_SAC (t + 1) - cycles_SAC t = 1368990 ∨
      cycles_SAC (t + 1) - cycles_SAC t = 1368991) ∧
    -- not every integer is a count
    (∀ t : ℤ, cycles_SAC t ≠ 1) ∧
    -- Cs/SAC within the fixed ratio band from t = 1000 ms
    (∀ t : ℤ, 1000 ≤ t →
      67148956 * cycles_SAC t < 10000000 * cycles_Cs t ∧
      10000000 * cycles_Cs t < 67148958 * cycles_SAC t) ∧
    -- an edited timestamp is caught
    (∀ t t' a b c d e : ℤ, consistent t a b c d e → t' ≠ t → ¬ consistent t' a b c d e) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨fun t₁ t₂ h => (collision_free t₁ t₂ h).1, fun t => (per_ms_step t).1,
   counts_are_sparse, fun t ht => (cross_ratios t ht).1, timestamp_edit_detected,
   anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_SacTime_Nonce

/-!
-- ============================================================
-- FILE:       SNSFL_SacTime_Nonce_Security.lean
-- COORDINATE: [9,9,1,101](CORE)
-- SORRY:      0
--
-- THE COUNTS: cycles of SAC, Cs-133, Sr-87, H-1 and Al-27⁺ at UTC
--   millisecond t, in exact integer arithmetic.
--
-- RESULTS:
--   Every count strictly increasing; distinct milliseconds, distinct
--     counts (T1, T2)
--   Cycles per millisecond for all five; the SAC count skips integers
--     (T3, T4)
--   Cross-ratios Cs, Sr, H, Al to SAC within their fixed bands from
--     t = 1000 ms (T5)
--   Consistency check: an edited timestamp or an edited count is
--     caught; the SAC count names the moment (T6–T8)
--
-- CONNECTIONS:
--   [9,9,1,100] Sovereign Time · [9,9,3,14] α
--   [9,9,8,7]   Bounded Uncertainty
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/

```
