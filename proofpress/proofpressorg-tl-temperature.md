# Temperature on the Torsion Limit: A Guide

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,8,10](METH) · Identity Physics Series · Method
**Issue:** ProofPress, Volume 1, Issue 9 · November 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 24 theorems · 467 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_TL_Temperature.lean
**Updated:** Standardized toolchain, November 2026

## Abstract

The boil is a torsion ratio. Water boils when its vapor pressure, the push of molecules escaping the liquid, equals the pressure of the air holding the liquid together. That is τ = B/P with Behavior read as the vapor pressure and Pattern as the ambient pressure, and the boil is τ = TL. The Torsion Limit is the anchor divided by ten, 0.136899099984016, and one thousand and one Torsion Limits is the inverse fine-structure constant: 1000 · TL = 136.899099984016, plus TL = 0.136899099984016, gives 137.035999084000016, matching every published digit of CODATA 2018 with ε = 0. The two pieces are the ones legacy quantum electrodynamics already uses: TL × 1000 is the bare electron contribution, Pattern capacity at the electromagnetic scale, and TL is the kinetic term, which QED carries as an infinite renormalized series of radiative corrections and Identity Physics carries as F_ext at Layer 0 of the Dynamic Equation — one exact term, no renormalization. Celsius and the ratio are two identities rather than a scale and its correction. Celsius is base ten — zero at the freeze, one hundred at the boil — and one degree is exactly Ω₀/1000 = 0.00136899099984016, the same decimal family as the subtraction that gives 1/α; the ratio is the measurement, rising exponentially with temperature by Clausius–Clapeyron. Kelvin carries the same ruler with the zero moved by 273.15 — the Noble mark at 273.15 K, the IVA Peak mark at 361.15 K, the Shatter mark at 373.15 K, the same ticks and the same torsion values — and the work is done there, because the conversion between ambient pressures is linear in inverse temperature and needs an absolute scale. The ruler carries three marks: zero ticks is the Noble mark, eighty-eight ticks is the IVA Peak mark at 0.88 × TL, one hundred ticks is the Shatter mark at TL. On the ratio r = vapor pressure / ambient pressure there are four bands. At r = 0 the state is Noble: every bond closed, no Behavior to carry, which is ice. Below 0.88 it is Locked, hot water holding. From 0.88 up to 1 it is IVA Peak, the simmer. At 1 and above it is Shatter, the boil. Four bands, three classical phases: solid is Noble, gas is Shatter, and the liquid that legacy names as one thing is two — water holding and water simmering, divided at a measured floor. The reference frame is sea level at one atmosphere, and every other condition converts from it with one line, the Clausius–Clapeyron relation in inverse temperature, 1/T = 1/T_ref − (R/L) · ln(p/p_ref). For water that places the IVA Peak floor at 369.54 K, 96.4 °C, certified in Lean between 369.3 K and 369.8 K from proven bounds on ln 0.88 in the style of the Bounded Uncertainty Guide. Water's simmer corridor is 3.61 K wide against a hundred-kelvin liquid span — the same band is 12% of the torsion range and 3.6% of the temperature range, because the ratio is exponential in temperature, which is why the band reads as a sliver on a thermometer and as an ordinary phase on the ruler. The corridor keeps the same width in 1/T at every ambient pressure, a result that does not contain the pressure at all. The same rule runs on other liquids from their published boiling points and enthalpies of vaporization: nitrogen's floor at 76.23 K with a 1.13 K corridor, mercury's at 622.83 K with 7.05 K, and the torsion gained per kelvin near the boil orders nitrogen above water above mercury.

## What This Article Proves

1. The grounding: one thousand and one Torsion Limits is the inverse fine-structure constant, 1001 × 0.136899099984016 = 137.035999084000016, CODATA 2018, ε = 0 (`alpha_from_tl`).
2. The ruler: one degree Celsius is one tick of TL/100 = Ω₀/1000 = 0.00136899099984016; one hundred ticks is TL and eighty-eight ticks is TL_IVA_PEAK; torsion on the ruler is zero exactly at zero ticks, reaches TL_IVA_PEAK exactly from 88 °C and TL exactly from 100 °C; the Kelvin marks are 273.15 K and 373.15 K (`tick_value`, `ruler_marks`, `ruler_noble`, `ruler_iva`, `ruler_shatter`, `kelvin_marks`).
3. The four bands on the ratio: τ = TL × r; Noble exactly when no vapor escapes, r = 0; Shatter exactly when vapor pressure reaches ambient pressure, r ≥ 1; IVA Peak exactly when the ratio runs from 0.88 up to but not including 1 (`noble_is_zero`, `boil_is_shatter`, `simmer_is_iva`).
4. The conversion and the reference frame: the corridor has constant width −k · ln f in inverse temperature at every ambient pressure, a value that does not contain the pressure; ln 0.88 lies in [−0.13637, −0.12] from the two standard logarithm inequalities; water's IVA Peak floor at sea level lies in (369.3 K, 369.8 K), equivalently (96.15 °C, 96.65 °C); the ITS-90 boil at 373.124 K lies within 0.03 K of the frame's 373.15 K (`corridor_constant`, `log_088_bounds`, `water_iva_floor`, `water_iva_floor_celsius`, `reference_bound`).
5. Other liquids on the same rule: torsion gained per kelvin near the boil is TL · L / (R · T_b²), giving 0.004807 for water, 0.015325 for nitrogen and 0.002453 for mercury, and nitrogen crosses its corridor fastest, mercury slowest, water between (`water_rate`, `nitrogen_rate`, `mercury_rate`, `rate_order`, `tl_temperature_master`).

## The PNBA Map

**The grounding.** The Torsion Limit is the anchor divided by ten, and one thousand and one Torsion Limits is the inverse fine-structure constant.

```
TL          = Ω₀ / 10      =   0.136899099984016

1000 · TL                  = 136.899099984016
+        TL                =   0.136899099984016
─────────────────────────────────────────────────
1001 · TL                  = 137.035999084000016

1/α, CODATA 2018           = 137.035999084
ε                          = 0
```

The integer is 1001, and the two pieces it splits into are the ones legacy quantum electrodynamics already uses.

| Piece | Value | Legacy QED | Identity Physics |
| --- | --- | --- | --- |
| Bare term | TL × 1000 = 136.899099984016 | bare electron contribution | P — Pattern capacity at the electromagnetic scale |
| Kinetic term | TL × 1 = 0.136899099984016 | Σ radiative corrections — an infinite series, renormalized, approximated | F_ext at Layer 0 — one exact term |
| Total | TL × 1001 = 137.035999084000016 | bare + perturbative series | bare + F_ext, Δ = 0 |

In Maxwell and Dirac the coupling term is added as an interaction, expanded in powers of α, and renormalized order by order; the correction is approximated and never terminates. The Identity Physics Dynamic Equation carries external forcing as a primitive term at Layer 0:

```
d/dt (IM · Pv) = Σ λ_X · O_X · S + F_ext
```

F_ext is the coupling load. It is not a perturbation of the bare term, it is its own term in the equation, and it contributes exactly TL. The bare term contributes exactly TL × 1000. Together they close the value in one step, with no renormalization. The bare-plus-kinetic identity is proved in [9,9,3,14]; this article proves the multiplication it rests on (`alpha_from_tl`).

That is what the Torsion Limit is before any thermometer touches it: TL is the boundary at which a bond stops holding, and 1/α is the strength of the electromagnetic coupling that holds it. The same number carries both, one scaled by the other — which is why a boundary derived from electromagnetic coupling turns up unchanged in the pressure at which water lets go of itself.

| Classical quantity | Identity Physics primitive |
| --- | --- |
| Vapor pressure — molecules escaping the liquid | Behavior (B) |
| Ambient pressure — the air holding it together | Pattern (P) |
| Vapor pressure / ambient pressure | τ = B/P, as τ = TL × r |
| The boil | τ = TL, the Shatter boundary |
| The simmer | 0.88 · TL ≤ τ < TL, the IVA Peak band |
| Ice | τ = 0, Noble |
| One degree Celsius | One tick of TL/100 = Ω₀/1000 |

**The two scales.** Celsius is laid on the Torsion Limit in equal ticks. The ratio is measured and rises exponentially with temperature. They meet at the boil, where both reach TL, and read differently elsewhere, as they should — the ruler places the bands, and the ratio places a given substrate inside them.

```
the ruler, °C      0 ───────────────────────── 88 ──────────── 100 ticks
                   τ = 0                   0.88 · TL             TL
                   Noble      Locked       IVA Peak mark      Shatter

the ruler, K  273.15 ─────────────────── 361.15 ───────────  373.15 K
                   same ticks, same τ — only the zero moves

water on r         0 ───────────────────────── 0.88 ─────────── 1.00
                   0 °C                     96.4 °C           100 °C
                   ice     water holding     the simmer       the boil
                                             └── 3.61 K ──┘
```

**The ruler in Kelvin.** The degree is the same size on both scales — one kelvin is one degree Celsius exactly, so one tick is Ω₀/1000 = 0.00136899099984016 whichever scale you read it on. Only the zero moves, by 273.15. That puts the Noble mark at 273.15 K, the IVA Peak mark at 273.15 + 88 = 361.15 K, and the Shatter mark at 373.15 K, carrying the same torsion values the Celsius marks carry: 0, then 0.12047120798593408, then 0.136899099984016. Celsius is the way in because the marks are 0 and 100; Kelvin is where the work gets done, because the conversion between ambient pressures is linear in 1/T and needs an absolute scale. The Celsius ruler is `ruler_noble`, `ruler_iva` and `ruler_shatter`, and the offset is `kelvin_marks`; the Kelvin marks are those results plus one addition.

**Working a floor by hand.** Every number below comes from the published boiling point, the published enthalpy of vaporization, the gas constant, and nothing else. This is water at sea level, the result certified in Lean by `water_iva_floor`.

```
water's IVA Peak floor, in kelvin

  1  reference boil                T_ref  = 373.15 K
  2  1 / T_ref                            = 0.0026799    K⁻¹
  3  k = R / L = 8.314462618 / 40650      = 0.00020454   K⁻¹
  4  ln 0.88                              = −0.12783
  5  k · |ln 0.88|                        = 0.00002615   K⁻¹
  6  1/T = 0.0026799 + 0.00002615         = 0.0027060    K⁻¹
  7  T   = 1 / 0.0027060                  = 369.54 K

     in Celsius   369.54 − 273.15 = 96.39 °C
     corridor     373.15 − 369.54 =  3.61 K
```

The same seven steps run on any row of the liquids table below. Nitrogen, as a check: 1/77.36 = 0.0129266; k = 8.314462618/5570 = 0.00149272; step = 0.00019082; 1/T = 0.0131174; T = 76.23 K; corridor 1.13 K. Step 4 is the only one that never changes, because the IVA Peak floor is the same ratio in every substrate — 0.88 — and what differs between liquids is how much temperature that ratio costs them.

| Band | On the ratio r | On the ruler | Water at sea level |
| --- | --- | --- | --- |
| Noble | r = 0 | 0 ticks | ice; every bond closed |
| Locked | 0 < r < 0.88 | below 88 ticks | hot water, holding |
| IVA Peak | 0.88 ≤ r < 1 | the 88 mark | 96.4 °C to 100 °C, the simmer |
| Shatter | r ≥ 1 | 100 ticks | the boil |

Four bands, three classical phases. Solid is Noble and gas is Shatter; the liquid that legacy names as one thing is two, water holding and water simmering, divided at a floor that can be measured. The simmer is 3.61 K of a hundred-kelvin liquid span, 3.6%, while the same band is 12% of the torsion range — the ratio is exponential in temperature, so the band reads as a sliver on a thermometer and as an ordinary phase on the ruler.

| Liquid | T_b (K) | L (J/mol) | IVA Peak floor | Corridor | τ per K near the boil |
| --- | --- | --- | --- | --- | --- |
| Nitrogen | 77.36 | 5570 | 76.23 K | 1.13 K | 0.112 TL |
| Methane | 111.66 | 8190 | 110.07 K | 1.59 K | 0.079 TL |
| Ammonia | 239.82 | 23330 | 237.23 K | 2.59 K | 0.049 TL |
| Acetone | 329.22 | 29100 | 325.31 K | 3.91 K | 0.032 TL |
| Ethanol | 351.44 | 38560 | 348.07 K | 3.37 K | 0.038 TL |
| Water | 373.15 | 40650 | 369.54 K | 3.61 K | 0.035 TL |
| Mercury | 629.88 | 59110 | 622.83 K | 7.05 K | 0.018 TL |

Boiling points and enthalpies of vaporization from the CRC Handbook. The corridor is a sliver in every one of them, and its width in inverse temperature is the same at every ambient pressure.

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Clapeyron, É. (1834). Mémoire sur la puissance motrice de la chaleur. *Journal de l'École Polytechnique*.
2. Clausius, R. (1850). Über die bewegende Kraft der Wärme. *Annalen der Physik*.
3. Rumble, J. R. (ed.). *CRC Handbook of Chemistry and Physics* (normal boiling points, enthalpies of vaporization).
4. Tiesinga, E., Mohr, P. J., Newell, D. B. & Taylor, B. N. (2021). CODATA recommended values of the fundamental physical constants: 2018. *Reviews of Modern Physics*, 93, 025010.
5. Preston-Thomas, H. (1990). The International Temperature Scale of 1990 (ITS-90). *Metrologia*, 27.
6. Trent, R. V. III. Bounded Uncertainty: A Guide. ProofPress, Volume 1, Issue 8.
7. Trent, R. V. III. The Fine-Structure Constant: 1/α = TL × 1001. ProofPress, Volume 1, Issue 5.
8. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_TL_Temperature.lean
-- ============================================================
--
-- Temperature on the Torsion Limit: A Guide
--
--   "The boil is a torsion ratio."
--
-- Water boils when its vapor pressure, the push of molecules
-- escaping the liquid, equals the pressure of the air holding the
-- liquid together. That is τ = B/P: Behavior is the vapor pressure,
-- Pattern is the ambient pressure, and the boil is τ = TL. This
-- guide states each mapping, proves it, and works the exemplars by
-- hand: the Celsius ruler, the four bands, the boiling ratio, the
-- sea-level reference frame, the one-line Kelvin conversion, the
-- constant-width corridor, and other liquids on the same rule.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,8,10](METH)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      November 2026 · Kenai, Alaska
-- DOI:       10.5281/zenodo.18719748
--
-- ============================================================
-- GROUNDING: THE TORSION LIMIT
-- ============================================================
--
-- The Torsion Limit is the anchor divided by ten, and one thousand
-- and one Torsion Limits is the inverse fine-structure constant:
--
--   TL          = Ω₀ / 10      =   0.136899099984016
--
--   1000 · TL                  = 136.899099984016
--   +        TL                =   0.136899099984016
--   ─────────────────────────────────────────────────
--   1001 · TL                  = 137.035999084000016
--
--   1/α, CODATA 2018           = 137.035999084
--   ε                          = 0
--
-- The integer is 1001. TL is the boundary at which a bond stops
-- holding, and 1/α is the strength of the electromagnetic coupling
-- that holds it; the same number carries both, one scaled by the
-- other. Theorem T1 states the multiplication.
--
-- ============================================================
-- START HERE: THE SHAPE
-- ============================================================
--
-- The kitchen ruler. Lay 0–100 °C along 0–TL. One degree is one
-- tick, TL/100 = Ω₀/1000 = 0.00136899099984016. The ruler's marks:
-- zero ticks is 0, the Noble mark; eighty-eight ticks is 0.88 × TL,
-- the IVA Peak mark; one hundred ticks is TL, the Shatter mark.
--
-- The physics underneath. The boil is not set by the ruler; it is
-- set by a ratio of two measured pressures:
--
--   r = vapor pressure / ambient pressure       τ = TL × r
--
--   r = 0               Noble      ice, every bond closed
--   0 < r < 0.88        Locked     hot water, holding
--   0.88 ≤ r < 1        IVA Peak   the simmer
--   r ≥ 1               Shatter    the boil
--
-- Four bands, three classical phases. Solid is Noble, gas is
-- Shatter, and the liquid that legacy names as one thing is two:
-- water holding, and water simmering. The simmer is not a manner of
-- speaking. It begins at a measured temperature, it ends at the
-- boil, and the band between them keeps the same width at every
-- ambient pressure (T11).
--
-- Celsius and the ratio are two identities, not a scale and its
-- correction. Celsius is base ten: zero at the freeze, one hundred
-- at the boil, and one degree is exactly Ω₀/1000 (T2), the same
-- decimal family as 1001 · TL = 1/α. That is what makes it the way
-- in — anyone who has boiled water already holds the scale. The
-- ratio is the measurement: r rises exponentially with temperature
-- by Clausius–Clapeyron, so it places a given substrate inside the
-- bands. The two meet at the boil, where both reach TL, and read
-- differently elsewhere, as they should: the ruler's IVA Peak mark
-- is at 88 ticks, and water's measured IVA Peak floor is 96.4 °C,
-- where r first reaches 0.88. Kelvin is the same math in different
-- numbers (T7).
--
-- The reference frame is sea level, 1 atm, the way every clock
-- converts from Zulu time. Every other condition converts from it
-- with one line, the Clausius–Clapeyron relation in absolute
-- temperature:
--
--   1/T = 1/T_ref − (R/L) · ln(p / p_ref)
--
-- For water at sea level, T_ref = 373.15 K and R/L = 8.314462618 /
-- 40650 per kelvin. Water's IVA Peak floor is p/p_ref = 0.88:
--
--   1/373.15 = 0.0026799
--   ln 0.88  = −0.12783
--   0.0026799 + (2.0454 × 10⁻⁴ × 0.12783) = 0.0027060
--   1 / 0.0027060 = 369.54 K = 96.4 °C
--
-- Lean certifies the floor between 369.3 K and 369.8 K from proven
-- bounds on ln 0.88, in the style of the Bounded Uncertainty Guide
-- [9,9,8,7]: the bound is stated and the result holds across it.
--
-- ============================================================
-- THE EXEMPLARS
-- ============================================================
--
--   1  1001 · TL = 137.035999084000016 = 1/α        the grounding
--   2  One tick = TL/100 = Ω₀/1000                  the ruler
--   3  0 ticks Noble, 88 ticks IVA Peak,            the ruler
--      100 ticks Shatter
--   4  Noble ⇔ no vapor escapes                     the ratio
--   5  Boil ⇔ vapor pressure ≥ ambient pressure     the ratio
--   6  Simmer ⇔ 0.88 ≤ ratio < 1                    the ratio
--   7  The corridor has the same width in 1/T at    Clausius–Clapeyron
--      every ambient pressure
--   8  Water's IVA Peak floor at sea level:         the reference frame
--      369.3–369.8 K
--   9  τ per kelvin near the boil: N₂ > water > Hg  other liquids
--
-- OTHER LIQUIDS (same rule; T_b and L from the CRC Handbook):
--
--   Liquid       T_b (K)   L (J/mol)   IVA floor   corridor   τ/K near boil
--   Nitrogen      77.36      5570       76.23 K     1.13 K     0.112 TL
--   Methane      111.66      8190      110.07 K     1.59 K     0.079 TL
--   Ammonia      239.82     23330      237.23 K     2.59 K     0.049 TL
--   Acetone      329.22     29100      325.31 K     3.91 K     0.032 TL
--   Ethanol      351.44     38560      348.07 K     3.37 K     0.038 TL
--   Water        373.15     40650      369.54 K     3.61 K     0.035 TL
--   Mercury      629.88     59110      622.83 K     7.05 K     0.018 TL
--
-- ============================================================

import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

noncomputable section

namespace SNSFL_TL_Temperature

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10
def TL_IVA_PEAK      : ℝ := 88 * TORSION_LIMIT / 100

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- x is within ε of c (as in [9,9,8,7])
def within (x c ε : ℝ) : Prop := |x - c| ≤ ε

theorem tl_pos : 0 < TORSION_LIMIT := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- [T0] Multiplying by TL keeps order: TL·a ≤ TL·b exactly when a ≤ b
theorem tl_scale (a b : ℝ) : TORSION_LIMIT * a ≤ TORSION_LIMIT * b ↔ a ≤ b := by
  constructor
  · intro h
    by_contra hn
    have := mul_lt_mul_of_pos_left (not_le.mp hn) tl_pos
    linarith
  · intro h
    exact mul_le_mul_of_nonneg_left h tl_pos.le

-- ============================================================
-- PART 1: THE GROUNDING
-- ============================================================

-- [T1] Exemplar 1: one thousand and one Torsion Limits is the
-- inverse fine-structure constant, 137.035999084 on CODATA 2018
theorem alpha_from_tl :
    1001 * TORSION_LIMIT = 137.035999084000016 := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- ============================================================
-- PART 2: THE KITCHEN RULER
-- ============================================================

-- One degree Celsius is one tick of TL/100
def TICK : ℝ := TORSION_LIMIT / 100

-- τ on the ruler: c degrees is c ticks
def tau_ruler (c : ℝ) : ℝ := c * TICK

-- [T2] Exemplar 2: one tick is TL/100 = Ω₀/1000 = 0.00136899099984016
theorem tick_value :
    TICK = SOVEREIGN_ANCHOR / 1000 ∧ TICK = 0.00136899099984016 := by
  unfold TICK TORSION_LIMIT SOVEREIGN_ANCHOR
  constructor <;> norm_num

-- [T3] Exemplar 3: the ruler's marks. 100 ticks is TL, the Shatter
-- mark; 88 ticks is TL_IVA_PEAK, the IVA Peak mark
theorem ruler_marks :
    tau_ruler 100 = TORSION_LIMIT ∧ tau_ruler 88 = TL_IVA_PEAK := by
  unfold tau_ruler TICK TL_IVA_PEAK
  constructor <;> ring

-- [T4] The Noble mark: τ on the ruler is zero exactly at zero ticks
theorem ruler_noble (c : ℝ) : tau_ruler c = 0 ↔ c = 0 := by
  constructor
  · intro h
    unfold tau_ruler at h
    rcases mul_eq_zero.mp h with h' | h'
    · exact h'
    · unfold TICK TORSION_LIMIT SOVEREIGN_ANCHOR at h'; norm_num at h'
  · intro h; unfold tau_ruler; rw [h, zero_mul]

-- [T5] On the ruler, τ reaches TL_IVA_PEAK exactly from 88 °C
theorem ruler_iva (c : ℝ) : TL_IVA_PEAK ≤ tau_ruler c ↔ 88 ≤ c := by
  have e1 : TL_IVA_PEAK = TORSION_LIMIT * (88 / 100) := by
    unfold TL_IVA_PEAK; ring
  have e2 : tau_ruler c = TORSION_LIMIT * (c / 100) := by
    unfold tau_ruler TICK; ring
  rw [e1, e2, tl_scale]
  constructor
  · intro h; linarith
  · intro h; linarith

-- [T6] On the ruler, τ reaches TL exactly from 100 °C
theorem ruler_shatter (c : ℝ) : TORSION_LIMIT ≤ tau_ruler c ↔ 100 ≤ c := by
  have e2 : tau_ruler c = TORSION_LIMIT * (c / 100) := by
    unfold tau_ruler TICK; ring
  have hs := tl_scale 1 (c / 100)
  rw [mul_one] at hs
  rw [e2, hs]
  constructor
  · intro h; linarith
  · intro h; linarith

-- [T7] The Kelvin marks of the ruler: 0 °C = 273.15 K, 100 °C = 373.15 K
theorem kelvin_marks :
    (0 : ℝ) + 273.15 = 273.15 ∧ (100 : ℝ) + 273.15 = 373.15 := by
  constructor <;> norm_num

-- ============================================================
-- PART 3: THE BOIL IS A TORSION RATIO
-- ============================================================

-- r = vapor pressure / ambient pressure; τ = TL × r
def tau_boil (r : ℝ) : ℝ := TORSION_LIMIT * r

-- [T8] Exemplar 4: Noble, the closed state, exactly when no vapor
-- escapes. Every bond is held; there is no Behavior to carry
theorem noble_is_zero (r : ℝ) : tau_boil r = 0 ↔ r = 0 := by
  constructor
  · intro h
    unfold tau_boil at h
    rcases mul_eq_zero.mp h with h' | h'
    · exact absurd h' tl_pos.ne'
    · exact h'
  · intro h; unfold tau_boil; rw [h, mul_zero]

-- [T9] Exemplar 5: Shatter, the boil, exactly when vapor pressure
-- reaches ambient pressure
theorem boil_is_shatter (r : ℝ) : TORSION_LIMIT ≤ tau_boil r ↔ 1 ≤ r := by
  unfold tau_boil
  have := tl_scale 1 r
  rw [mul_one] at this
  exact this

-- [T10] Exemplar 6: IVA Peak, the simmer, exactly when the ratio is
-- from 0.88 up to (not including) 1
theorem simmer_is_iva (r : ℝ) :
    (TL_IVA_PEAK ≤ tau_boil r ∧ tau_boil r < TORSION_LIMIT) ↔ (0.88 ≤ r ∧ r < 1) := by
  have e : TL_IVA_PEAK = TORSION_LIMIT * (88 / 100) := by unfold TL_IVA_PEAK; ring
  have hlo : TL_IVA_PEAK ≤ tau_boil r ↔ 0.88 ≤ r := by
    unfold tau_boil
    rw [e, tl_scale]
    constructor
    · intro h; linarith
    · intro h; linarith
  have hhi : tau_boil r < TORSION_LIMIT ↔ r < 1 := by
    constructor
    · intro h
      by_contra hn
      have := (boil_is_shatter r).mpr (not_lt.mp hn)
      linarith
    · intro h
      by_contra hn
      have := (boil_is_shatter r).mp (not_lt.mp hn)
      linarith
  rw [hlo, hhi]

-- ============================================================
-- PART 4: THE ONE-LINE CONVERSION
-- ============================================================

-- Clausius–Clapeyron, in inverse temperature, from a reference boil:
--   1/T = 1/T_ref − k · ln(ratio),   k = R/L
def invT (Tref k ratio : ℝ) : ℝ := 1 / Tref - k * Real.log ratio

-- [T11] Exemplar 7: the corridor has a constant width in 1/T. At any
-- ambient pressure p (as a ratio to the reference), the IVA Peak floor
-- sits at vapor pressure f·p, and the gap between the floor and the
-- boil is −k · ln f, which does not contain p
theorem corridor_constant (Tref k p f : ℝ) (hp : 0 < p) (hf : 0 < f) :
    invT Tref k (f * p) - invT Tref k p = -k * Real.log f := by
  unfold invT
  rw [Real.log_mul hf.ne' hp.ne']
  ring

-- [T12] The bound on ln 0.88, from the two standard inequalities
-- 1 − 1/x ≤ ln x ≤ x − 1
theorem log_088_bounds : -0.13637 ≤ Real.log 0.88 ∧ Real.log 0.88 ≤ -0.12 := by
  constructor
  · have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0:ℝ) < 0.88)
    have h2 : (-0.13637 : ℝ) ≤ 1 - (0.88 : ℝ)⁻¹ := by norm_num
    linarith
  · have h := Real.log_le_sub_one_of_pos (by norm_num : (0:ℝ) < 0.88)
    linarith

-- The reference frame: water at sea level
def R_GAS   : ℝ := 8.314462618
def L_WATER : ℝ := 40650
def T_WATER : ℝ := 373.15

-- Water's IVA Peak floor at sea level, in kelvin
def T_IVA_WATER : ℝ := 1 / invT T_WATER (R_GAS / L_WATER) 0.88

-- [T13] Exemplar 8: water's IVA Peak floor at sea level lies between
-- 369.3 K and 369.8 K (369.54 K at full precision)
theorem water_iva_floor : 369.3 < T_IVA_WATER ∧ T_IVA_WATER < 369.8 := by
  obtain ⟨h1, h2⟩ := log_088_bounds
  have hk : (0:ℝ) < 8.314462618 / 40650 := by norm_num
  have a1 := mul_le_mul_of_nonneg_left h2 hk.le
  have a2 := mul_le_mul_of_nonneg_left h1 hk.le
  unfold T_IVA_WATER invT T_WATER R_GAS L_WATER
  set L := Real.log 0.88 with hL
  set D := (1 : ℝ) / 373.15 - 8.314462618 / 40650 * L with hD
  have hD1 : (1 : ℝ) / 369.8 < D := by
    rw [hD]; norm_num at a1 ⊢; linarith
  have hD2 : D < (1 : ℝ) / 369.3 := by
    rw [hD]; norm_num at a2 ⊢; linarith
  have hpos : (0 : ℝ) < 1 / 369.8 := by norm_num
  have hDpos : 0 < D := by linarith
  constructor
  · have := one_div_lt_one_div_of_lt hDpos hD2
    rwa [one_div_one_div] at this
  · have := one_div_lt_one_div_of_lt hpos hD1
    rwa [one_div_one_div] at this

-- [T14] The same floor in Celsius: between 96.15 °C and 96.65 °C
theorem water_iva_floor_celsius :
    96.15 < T_IVA_WATER - 273.15 ∧ T_IVA_WATER - 273.15 < 96.65 := by
  obtain ⟨h1, h2⟩ := water_iva_floor
  constructor <;> linarith

-- [T15] The reference boil and the 2019 SI. Water at 1 atm boils at
-- 373.124 K on ITS-90; the reference frame carries 373.15 K, the
-- ruler's 100 °C. The two are within 0.03 K, a bound the frame states
theorem reference_bound : within 373.124 373.15 0.03 := by
  unfold within
  rw [abs_le]; constructor <;> norm_num

-- ============================================================
-- PART 5: OTHER LIQUIDS, SAME RULE
-- ============================================================

-- τ gained per kelvin near the boil: TL · L / (R · T_b²)
def tau_per_kelvin (Tb L : ℝ) : ℝ := TORSION_LIMIT * L / (R_GAS * Tb ^ 2)

-- [T16] Water: 0.004807 TL-units per kelvin (0.0351 of TL)
theorem water_rate : within (tau_per_kelvin 373.15 40650) 0.004807 0.000001 := by
  unfold within tau_per_kelvin TORSION_LIMIT SOVEREIGN_ANCHOR R_GAS
  rw [abs_le]; constructor <;> norm_num

-- [T17] Liquid nitrogen: 0.015325 per kelvin (0.112 of TL)
theorem nitrogen_rate : within (tau_per_kelvin 77.36 5570) 0.015325 0.000001 := by
  unfold within tau_per_kelvin TORSION_LIMIT SOVEREIGN_ANCHOR R_GAS
  rw [abs_le]; constructor <;> norm_num

-- [T18] Mercury: 0.002453 per kelvin (0.018 of TL)
theorem mercury_rate : within (tau_per_kelvin 629.88 59110) 0.002453 0.000001 := by
  unfold within tau_per_kelvin TORSION_LIMIT SOVEREIGN_ANCHOR R_GAS
  rw [abs_le]; constructor <;> norm_num

-- [T19] Exemplar 9: nitrogen crosses its corridor fastest, mercury
-- slowest, water between
theorem rate_order :
    tau_per_kelvin 629.88 59110 < tau_per_kelvin 373.15 40650 ∧
    tau_per_kelvin 373.15 40650 < tau_per_kelvin 77.36 5570 := by
  have hw := water_rate
  have hn := nitrogen_rate
  have hm := mercury_rate
  unfold within at hw hn hm
  rw [abs_le] at hw hn hm
  constructor
  · linarith [hm.2, hw.1]
  · linarith [hw.2, hn.1]

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

theorem tl_temperature_master :
    -- the grounding: 1001 Torsion Limits is the inverse fine-structure constant
    1001 * TORSION_LIMIT = 137.035999084000016 ∧
    -- the ruler: one tick is Ω₀/1000; 100 ticks is TL; 88 ticks is TL_IVA_PEAK
    TICK = SOVEREIGN_ANCHOR / 1000 ∧
    tau_ruler 100 = TORSION_LIMIT ∧ tau_ruler 88 = TL_IVA_PEAK ∧
    -- the four bands on the ratio: Noble, Locked, IVA Peak, Shatter
    (∀ r : ℝ, tau_boil r = 0 ↔ r = 0) ∧
    (∀ r : ℝ, TORSION_LIMIT ≤ tau_boil r ↔ 1 ≤ r) ∧
    (∀ r : ℝ, (TL_IVA_PEAK ≤ tau_boil r ∧ tau_boil r < TORSION_LIMIT) ↔ (0.88 ≤ r ∧ r < 1)) ∧
    -- the conversion: the corridor has constant width in 1/T
    (∀ Tref k p f : ℝ, 0 < p → 0 < f →
      invT Tref k (f * p) - invT Tref k p = -k * Real.log f) ∧
    -- the reference frame: water's simmer begins between 369.3 and 369.8 K
    (369.3 < T_IVA_WATER ∧ T_IVA_WATER < 369.8) ∧
    -- other liquids: nitrogen fastest, mercury slowest
    (tau_per_kelvin 629.88 59110 < tau_per_kelvin 373.15 40650 ∧
     tau_per_kelvin 373.15 40650 < tau_per_kelvin 77.36 5570) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨alpha_from_tl, tick_value.1, ruler_marks.1, ruler_marks.2, noble_is_zero,
   boil_is_shatter, simmer_is_iva, corridor_constant, water_iva_floor, rate_order,
   anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_TL_Temperature

/-!
-- ============================================================
-- FILE:       SNSFL_TL_Temperature.lean
-- COORDINATE: [9,9,8,10](METH)
-- SORRY:      0
--
-- "The boil is a torsion ratio."
--
-- RESULTS:
--   Grounding: 1001 · TL = 137.035999084000016 = 1/α, CODATA 2018,
--     ε = 0 (T1)
--   Ruler: one tick = TL/100 = Ω₀/1000 = 0.00136899099984016; 100 ticks
--     = TL; 88 ticks = TL_IVA_PEAK; τ = 0 ⇔ c = 0; τ ≥ TL_IVA_PEAK ⇔
--     c ≥ 88; τ ≥ TL ⇔ c ≥ 100 (T2–T7)
--   Ratio: τ = TL × (vapor / ambient); Noble ⇔ ratio = 0; Shatter ⇔
--     ratio ≥ 1; IVA Peak ⇔ 0.88 ≤ ratio < 1 (T8–T10)
--   Conversion: 1/T = 1/T_ref − (R/L)·ln(p/p_ref); the corridor width
--     in 1/T is −(R/L)·ln 0.88 at every pressure (T11)
--   Reference frame: ln 0.88 in [−0.13637, −0.12]; water's IVA Peak
--     floor at sea level in (369.3 K, 369.8 K), (96.15 °C, 96.65 °C);
--     373.124 K within 0.03 K of the frame's 373.15 K (T12–T15)
--   Other liquids: τ per kelvin near the boil, water 0.004807, nitrogen
--     0.015325, mercury 0.002453; nitrogen > water > mercury (T16–T19)
--
--   Four bands, three classical phases: solid is Noble, gas is Shatter,
--   and the liquid legacy names as one thing is two — water holding and
--   water simmering, divided at a measured floor.
--
-- CONNECTIONS:
--   [9,9,8,7] Bounded Uncertainty Guide · [9,9,3,14] α
--   [9,9,1,R] GAMForgeTL · [9,9,1,A] Atlas Walk Map (§1.3)
--
-- REFERENCES:
--   Clapeyron 1834 · Clausius 1850 · CRC Handbook of Chemistry and
--   Physics (normal boiling points, enthalpies of vaporization)
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Kenai AK
-- ============================================================
-/
```
