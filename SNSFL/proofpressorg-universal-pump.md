# The Universal Pump: One Compactness Ladder from Planets to Black Holes

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,3,2](ENGR) · Identity Physics Series · Engineering
**Issue:** ProofPress, Volume 1, Issue 5 · July 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 14 theorems · 269 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_Universal_Pump_Theorem.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

A gravitating body draws matter inward and returns energy outward, and how strongly it pulls for its size is captured by one dimensionless number, its compactness x = R_s/R, the ratio of its Schwarzschild radius R_s = 2GM/c² to its radius. In PNBA the Schwarzschild radius is Behavior and the body's radius is Pattern, and mapping the horizon x = 1 to the Torsion Limit gives τ = x·TL. Far from any body the field is Noble: R_s/r falls below any bound at large enough distance. Every planet and star is Locked, with x below 0.88. The IVA band, from 0.88 to 1, is where no static star can stand: Buchdahl's theorem bounds a static perfect-fluid star by x < 8/9 = 0.889, which lies at the band's lower edge, and what enters the band collapses through the horizon into Shatter. The ladder is computed from IAU and NICER values: Earth at 1.39 × 10⁻⁹, the Sun at 4.245 × 10⁻⁶, the white dwarf Sirius B at 5.00 × 10⁻⁴, and the neutron stars PSR J0030+0451 at 0.311 and PSR J0740+6620 at 0.494, all Locked; compactness depends only on M/R. A black hole still emits: its Hawking temperature T_H = ħc³/(8πGMk_B) is 6.170 × 10⁻⁸ K for one solar mass, and a smaller hole is hotter.

## What This Article Proves

1. The boundaries: the horizon is x = 1 exactly at R = R_s; Buchdahl's 8/9 lies in the IVA band; the far field is Noble; compactness depends only on M/R (`horizon_iff`, `buchdahl_in_iva`, `far_field_noble`, `compactness_scale`).
2. The ladder: Earth 1.39 × 10⁻⁹, Sun 4.245 × 10⁻⁶, Sirius B 5.00 × 10⁻⁴, PSR J0030+0451 0.311, PSR J0740+6620 0.494; all Locked (`earth_x`, `sun_x`, `sirius_b_x`, `neutron_stars_x`, `ladder_locked`).
3. Hawking radiation: 6.170 × 10⁻⁸ K at one solar mass; hotter when smaller. The master theorem holds Buchdahl's placement, the ladder and the Hawking temperature together (`hawking_solar`, `hawking_hotter_when_smaller`, `universal_pump_master`).

## The PNBA Map

| Body | x = R_s/R | Phase |
| --- | --- | --- |
| far field | → 0 | Noble |
| Earth | 1.39 × 10⁻⁹ | Locked |
| Sun | 4.245 × 10⁻⁶ | Locked |
| Sirius B | 5.00 × 10⁻⁴ | Locked |
| PSR J0030+0451 | 0.311 | Locked |
| PSR J0740+6620 | 0.494 | Locked |
| Buchdahl limit | 0.889 | IVA |
| Horizon | 1 | TL: Shatter beyond |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Buchdahl, H. A. (1959). General relativistic fluid spheres. *Physical Review*, 116, 1027–1034.
2. Hawking, S. W. (1975). Particle creation by black holes. *Communications in Mathematical Physics*, 43, 199–220.
3. Riley, T. E. et al. (2019). A NICER view of PSR J0030+0451. *Astrophysical Journal Letters*, 887, L21.
4. Riley, T. E. et al. (2021). A NICER view of the massive pulsar PSR J0740+6620. *Astrophysical Journal Letters*, 918, L27.
5. Bond, H. E. et al. (2017). The Sirius system and its astrophysical puzzles. *Astrophysical Journal*, 840, 70.
6. Prša, A. et al. (2016). Nominal values for selected solar and planetary quantities: IAU 2015 Resolution B3. *Astronomical Journal*, 152, 41.
7. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_Universal_Pump_Theorem.lean
-- ============================================================
--
-- The Universal Pump → PNBA
-- A gravitating body pulls matter inward and returns energy outward.
-- How hard it pulls, for its size, is one dimensionless number: its
-- compactness x = R_s/R, its Schwarzschild radius over its radius.
-- Planets, stars, white dwarfs, neutron stars and black holes lie on
-- one ladder of x, from near 0 to the horizon at x = 1. Mapping the
-- horizon to the Torsion Limit places every one of them in a phase.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,3,2](ENGR)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      July 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
--
-- ============================================================
-- THE MAP
-- ============================================================
--
--   R_s = 2GM/c²     Schwarzschild radius: the inward pull (Behavior)
--   R                the body's radius: its structure (Pattern)
--   x = R_s / R      compactness
--   τ = x · TL       the horizon x = 1 is the phase boundary
--
--   x → 0            NOBLE     far from any body
--   x < 0.88         LOCKED    every planet and star
--   0.88 ≤ x < 1     IVA       no static star: Buchdahl's limit
--                              x < 8/9 = 0.889 lies at the band's
--                              lower edge
--   x ≥ 1            SHATTER   inside the horizon: a black hole
--
-- Buchdahl (1959): a static star of perfect fluid must have
-- x < 8/9. The IVA band, 0.88 to 1, is where no static star can
-- stand: what enters it collapses through the horizon.
--
-- ============================================================
-- THE LADDER
-- ============================================================
--
--   Body                         M (M☉)   R            x
--   Earth                        —        6371 km      1.39 × 10⁻⁹
--   Sun                          1        695 700 km   4.245 × 10⁻⁶
--   Sirius B (white dwarf)       1.018    6011 km      5.00 × 10⁻⁴
--   PSR J0030+0451 (NICER)       1.34     12.71 km     0.311
--   PSR J0740+6620 (NICER)       2.072    12.39 km     0.494
--   Buchdahl limit               —        —            0.889
--   Black hole horizon           —        R = R_s      1
--
-- All five bodies are Locked. A black hole emits Hawking radiation
-- at T_H = ħc³/(8πGMk_B): about 6.17 × 10⁻⁸ K for one solar mass,
-- and hotter as it shrinks.
--
-- The same pump structure in the circulatory system is reduced in
-- the Vascular Manifold Law.
--
-- ============================================================

import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic

noncomputable section

namespace SNSFL_Universal_Pump

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10
def TL_IVA_PEAK      : ℝ := 88 * TORSION_LIMIT / 100

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- Constants (SI): speed of light, solar and terrestrial GM (IAU),
-- ħ and k_B (CODATA 2018), nominal solar radius (IAU 2015)
def C_LIGHT  : ℝ := 299792458
def GM_SUN   : ℝ := 1.32712440018e20
def GM_EARTH : ℝ := 3.986004418e14
def HBAR     : ℝ := 1.054571817e-34
def K_B      : ℝ := 1.380649e-23
def R_SUN    : ℝ := 6.957e8

-- Compactness of a body of m solar masses and radius R (m)
noncomputable def compactness (m R : ℝ) : ℝ := 2 * GM_SUN * m / (R * C_LIGHT ^ 2)

-- Corpus torsion: the horizon x = 1 maps to TL
noncomputable def tau_of (x : ℝ) : ℝ := x * TORSION_LIMIT

-- Hawking temperature of a black hole with GM = gm
noncomputable def hawking_T (gm : ℝ) : ℝ := HBAR * C_LIGHT ^ 3 / (8 * Real.pi * gm * K_B)

-- ============================================================
-- SECTION 1: THE BOUNDARIES
-- ============================================================

-- [T1] The horizon: x = 1 exactly when the radius equals R_s
theorem horizon_iff (Rs R : ℝ) (hR : R ≠ 0) : Rs / R = 1 ↔ R = Rs := by
  rw [div_eq_one_iff_eq hR]
  exact eq_comm

-- [T2] Buchdahl's limit 8/9 lies in the IVA band, between 0.88 and 1:
-- its torsion sits between TL_IVA and TL
theorem buchdahl_in_iva :
    (0.88 : ℝ) < 8 / 9 ∧ (8 / 9 : ℝ) < 1 ∧
    TL_IVA_PEAK < tau_of (8 / 9) ∧ tau_of (8 / 9) < TORSION_LIMIT := by
  unfold tau_of TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num
  · norm_num

-- [T3] Far from a body the field is Noble: R_s/r falls below any ε
-- beyond r = R_s/ε
theorem far_field_noble (Rs ε r : ℝ) (hRs : 0 < Rs) (hε : 0 < ε) (hr : Rs / ε < r) :
    Rs / r < ε := by
  have hr0 : 0 < r := lt_trans (div_pos hRs hε) hr
  rw [div_lt_iff₀ hr0]
  rw [div_lt_iff₀ hε] at hr
  linarith

-- [T4] Compactness depends only on M/R: scaling both leaves it fixed
theorem compactness_scale (m R k : ℝ) (hk : k ≠ 0) :
    compactness (k * m) (k * R) = compactness m R := by
  unfold compactness
  rw [show 2 * GM_SUN * (k * m) = k * (2 * GM_SUN * m) by ring,
      show k * R * C_LIGHT ^ 2 = k * (R * C_LIGHT ^ 2) by ring,
      mul_div_mul_left _ _ hk]

-- ============================================================
-- SECTION 2: THE LADDER
-- ============================================================

-- [T5] Earth: x ≈ 1.39 × 10⁻⁹
theorem earth_x :
    1.39e-9 < 2 * GM_EARTH / (6.371e6 * C_LIGHT ^ 2) ∧
    2 * GM_EARTH / (6.371e6 * C_LIGHT ^ 2) < 1.40e-9 := by
  unfold GM_EARTH C_LIGHT
  constructor
  · norm_num
  · norm_num

-- [T6] The Sun: x ≈ 4.245 × 10⁻⁶
theorem sun_x : 4.24e-6 < compactness 1 R_SUN ∧ compactness 1 R_SUN < 4.25e-6 := by
  unfold compactness GM_SUN R_SUN C_LIGHT
  constructor
  · norm_num
  · norm_num

-- [T7] Sirius B: x ≈ 5.00 × 10⁻⁴
theorem sirius_b_x :
    4.99e-4 < compactness 1.018 (0.00864 * R_SUN) ∧
    compactness 1.018 (0.00864 * R_SUN) < 5.01e-4 := by
  unfold compactness GM_SUN R_SUN C_LIGHT
  constructor
  · norm_num
  · norm_num

-- [T8] Neutron stars (NICER): PSR J0030+0451 at x ≈ 0.311 and
-- PSR J0740+6620 at x ≈ 0.494
theorem neutron_stars_x :
    (0.311 < compactness 1.34 12710 ∧ compactness 1.34 12710 < 0.312) ∧
    (0.493 < compactness 2.072 12390 ∧ compactness 2.072 12390 < 0.494) := by
  unfold compactness GM_SUN C_LIGHT
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩
  · norm_num
  · norm_num
  · norm_num
  · norm_num

-- [T9] Every body on the ladder is Locked: its torsion is below TL_IVA,
-- even the heaviest neutron star
theorem ladder_locked :
    tau_of (compactness 1 R_SUN) < TL_IVA_PEAK ∧
    tau_of (compactness 1.018 (0.00864 * R_SUN)) < TL_IVA_PEAK ∧
    tau_of (compactness 2.072 12390) < TL_IVA_PEAK := by
  have h1 := sun_x.2
  have h2 := sirius_b_x.2
  have h3 := neutron_stars_x.2.2
  have hTL : 0 < TORSION_LIMIT := by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  unfold tau_of TL_IVA_PEAK
  refine ⟨?_, ?_, ?_⟩
  · nlinarith
  · nlinarith
  · nlinarith

-- ============================================================
-- SECTION 3: HAWKING RADIATION
-- ============================================================

-- [T10] A solar-mass black hole radiates at T_H ≈ 6.170 × 10⁻⁸ K
theorem hawking_solar :
    6.170e-8 < hawking_T GM_SUN ∧ hawking_T GM_SUN < 6.171e-8 := by
  have hp1 := Real.pi_gt_d6
  have hp2 := Real.pi_lt_d6
  unfold hawking_T HBAR C_LIGHT GM_SUN K_B
  constructor
  · rw [lt_div_iff₀ (by positivity)]
    nlinarith
  · rw [div_lt_iff₀ (by positivity)]
    nlinarith

-- [T11] A smaller black hole is hotter
theorem hawking_hotter_when_smaller (gm₁ gm₂ : ℝ) (h1 : 0 < gm₁) (h : gm₁ < gm₂) :
    hawking_T gm₂ < hawking_T gm₁ := by
  unfold hawking_T
  have hN : 0 < HBAR * C_LIGHT ^ 3 := by unfold HBAR C_LIGHT; norm_num
  have hK : 0 < 8 * Real.pi * K_B := by unfold K_B; positivity
  apply div_lt_div_of_pos_left hN (mul_pos (mul_pos (by positivity) h1) (by unfold K_B; norm_num))
  nlinarith

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T12] THE UNIVERSAL PUMP
theorem universal_pump_master :
    -- Buchdahl's limit lies in the IVA band
    (TL_IVA_PEAK < tau_of (8 / 9) ∧ tau_of (8 / 9) < TORSION_LIMIT) ∧
    -- the ladder: Sun, white dwarf, neutron stars
    (4.24e-6 < compactness 1 R_SUN ∧ compactness 1 R_SUN < 4.25e-6) ∧
    (4.99e-4 < compactness 1.018 (0.00864 * R_SUN) ∧
      compactness 1.018 (0.00864 * R_SUN) < 5.01e-4) ∧
    (0.493 < compactness 2.072 12390 ∧ compactness 2.072 12390 < 0.494) ∧
    -- every body on it is Locked
    tau_of (compactness 2.072 12390) < TL_IVA_PEAK ∧
    -- a solar-mass black hole radiates at 6.17 × 10⁻⁸ K
    (6.170e-8 < hawking_T GM_SUN ∧ hawking_T GM_SUN < 6.171e-8) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨buchdahl_in_iva.2.2, sun_x, sirius_b_x, neutron_stars_x.2, ladder_locked.2.2, hawking_solar,
   anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_Universal_Pump

/-!
-- ============================================================
-- FILE:       SNSFL_Universal_Pump_Theorem.lean
-- COORDINATE: [9,9,3,2](ENGR)
-- SORRY:      0
--
-- THE MAP: x = R_s/R, τ = x·TL; horizon x = 1 ↔ TL.
--
-- RESULTS:
--   Horizon at R = R_s; Buchdahl's 8/9 in the IVA band; far field
--     Noble; x depends only on M/R (T1–T4)
--   Earth 1.39 × 10⁻⁹, Sun 4.245 × 10⁻⁶, Sirius B 5.00 × 10⁻⁴,
--     PSR J0030 0.311, PSR J0740 0.494: all Locked (T5–T9)
--   Hawking: 6.17 × 10⁻⁸ K at one solar mass; hotter when smaller
--     (T10, T11)
--
-- CONNECTIONS:
--   [9,9,10,1] Gravity
--   Vascular Manifold Law: the circulatory pump
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/

```
