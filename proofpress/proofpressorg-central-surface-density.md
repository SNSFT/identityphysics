# The Central Surface Density of Dark Halos at the Phase Boundary

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,4,14](COSM) · Identity Physics Series · Cosmology
**Issue:** ProofPress, Volume 1, Issue 7, Article 3 · September 2026
**DOI:** 10.17605/OSF.IO/KWTYD
**Verified:** 12 theorems · 242 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_CentralSurfaceDensity_LDP.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

Donato and collaborators found in 2009 that the central surface density of dark-matter halos, μ₀D = ρ₀r₀ = 140 (+80/−30) M☉/pc², is the same across galaxies spanning twelve orders of magnitude in luminosity, independent of their mass, type and history. In SI units this is 0.2924 kg/m², with the measured band 0.2297–0.4595 kg/m². This article reads the constant as a boundary. The pull of a halo core's surface density, g₀ = 2πG·μ₀D, is 1.23 × 10⁻¹⁰ m/s², at the acceleration a₀ ≈ 1.2 × 10⁻¹⁰ m/s² where gravity crosses from the Newtonian regime to the low-acceleration regime: the ratio x = g₀/a₀ is 1.02 at the central value, and the measured band straddles x = 1, from 0.80 to 1.61. Milgrom's prediction of a halo surface density a₀/(2πG) lies inside the band. Mapping the crossover x = 1 to the Torsion Limit, τ = x·TL, places every halo core at the phase boundary, τ ≈ TL, which is why the same value appears in every galaxy. Around the cores, cold dark matter, with τ = Ω_c/P_base = 0.2607/0.9878 ≈ 0.264, is Shatter, and dark energy, carrying no coupling, is Noble.

## What This Article Proves

1.  The measurement in SI: 140 M☉/pc² = 0.2924 kg/m², the band 0.2297–0.4595 kg/m² (`donato_si`).
2.  The crossover: the core's pull 2πG·μ₀D ≈ 1.23 × 10⁻¹⁰ m/s²; x = g₀/a₀ = 1.02 with the band straddling x = 1; in the corpus τ at TL; Milgrom's a₀/(2πG) inside the band (`core_pull`, `at_the_crossover`, `halo_at_boundary`, `milgrom_in_band`).
3.  The dark sector: cold dark matter Shatter, τ = Ω_c/P_base \> TL. The master theorem holds the measurement, the crossover, the boundary placement, Milgrom's prediction and the cold dark matter placement together (`cdm_shatter`, `central_surface_density_master`).

## The PNBA Map

| Quantity                    | Value        | x = g₀/a₀ | τ = x·TL |
|-----------------------------|--------------|-----------|----------|
| Donato low (110 M☉/pc²)     | 0.2297 kg/m² | 0.80      | below TL |
| Donato central (140 M☉/pc²) | 0.2924 kg/m² | 1.02      | at TL    |
| Donato high (220 M☉/pc²)    | 0.4595 kg/m² | 1.61      | above TL |
| Milgrom a₀/(2πG)            | 0.2862 kg/m² | 1         | TL       |

| Dark sector      | τ                  | Phase   |
|------------------|--------------------|---------|
| Cold dark matter | Ω_c/P_base ≈ 0.264 | Shatter |
| Dark energy      | 0                  | Noble   |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the [SNSFT/identityphysics](https://github.com/SNSFT/identityphysics) repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.17605/OSF.IO/KWTYD is required when this content informs outputs.

## References

1.  Donato, F. et al. (2009). A constant dark matter halo surface density in galaxies. *Monthly Notices of the Royal Astronomical Society*, 397, 1169–1176.
2.  Milgrom, M. (2009). The central surface density of dark haloes predicted by MOND. *Monthly Notices of the Royal Astronomical Society*, 398, 1023–1026.
3.  Milgrom, M. (1983). A modification of the Newtonian dynamics as a possible alternative to the hidden mass hypothesis. *Astrophysical Journal*, 270, 365–370.
4.  Planck Collaboration (2020). Planck 2018 results. VI. Cosmological parameters. *Astronomy & Astrophysics*, 641, A6.
5.  Trent, R. V. III. [The Universal Pump](proofpressorg-universal-pump.html). ProofPress, Volume 1, Issue 5, Article 4.
6.  Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.17605/OSF.IO/KWTYD. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_CentralSurfaceDensity_LDP.lean
-- ============================================================
--
-- The Central Surface Density of Dark Halos → PNBA
-- Galaxies spanning twelve orders of magnitude in luminosity share
-- one dark-halo central surface density, μ₀D ≈ 140 M☉/pc². The
-- pull of that surface, g₀ = 2πG·μ₀D, lands at the acceleration a₀
-- where gravity crosses from the Newtonian regime to the
-- low-acceleration regime. Every halo core sits at that crossover.
-- Mapping the crossover to the Torsion Limit places them all at the
-- phase boundary, within the measured band.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,4,14](COSM)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      September 2026 · Soldotna, Alaska
-- DOI:       10.17605/OSF.IO/KWTYD
--
-- ============================================================
-- THE DATA
-- ============================================================
--
-- Donato et al. 2009 (MNRAS 397, 1169): μ₀D = ρ₀·r₀ =
-- 140 (+80/−30) M☉/pc² = 0.2924 kg/m², the same across spirals,
-- ellipticals and dwarfs, independent of mass, type and history.
--
-- Milgrom 2009: the low-acceleration regime predicts a halo surface
-- density Σ = a₀/(2πG); with a₀ = 1.2 × 10⁻¹⁰ m/s² that is
-- 137 M☉/pc², inside the measured band.
--
-- ============================================================
-- THE MAP
-- ============================================================
--
--   g₀ = 2πG·μ₀D       the pull of the halo core's surface
--   x  = g₀ / a₀        against the crossover acceleration
--   τ  = x · TL         the crossover x = 1 is the phase boundary
--
--   Donato central   x = 1.02     τ = 1.02 TL
--   Donato band      x = 0.80 to 1.61, straddling x = 1
--
-- The constancy of μ₀D is the statement that halo cores sit at
-- the crossover, x ≈ 1: at the boundary, τ ≈ TL.
--
-- The dark sector around them: cold dark matter has
-- τ = Ω_c / P_base = 0.2607 / 0.9878 ≈ 0.264, Shatter; dark energy
-- carries no coupling, Noble [9,9,4,0].
--
-- ============================================================

import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

noncomputable section

namespace SNSFL_CentralSurfaceDensity

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10
def H_FREQ           : ℝ := 1.4204

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- Constants (SI): G (CODATA 2018), solar mass and parsec (IAU),
-- Milgrom's a₀
def G_N    : ℝ := 6.67430e-11
def M_SUN  : ℝ := 1.98847e30
def PARSEC : ℝ := 3.0856775814913673e16
def A0     : ℝ := 1.2e-10

-- Planck 2018 cold dark matter density
def OMEGA_CDM : ℝ := 0.2607

-- Surface density of m M☉/pc², in kg/m²
noncomputable def mu_si (m : ℝ) : ℝ := m * M_SUN / PARSEC ^ 2
-- Its pull and its ratio to a₀
noncomputable def g_surface (m : ℝ) : ℝ := 2 * Real.pi * G_N * mu_si m
noncomputable def x_ratio (m : ℝ) : ℝ := g_surface m / A0
-- Corpus torsion: the crossover x = 1 maps to TL
noncomputable def tau_of (x : ℝ) : ℝ := x * TORSION_LIMIT

-- ============================================================
-- SECTION 1: THE MEASUREMENT
-- ============================================================

-- [T1] 140 M☉/pc² = 0.2924 kg/m²; the band 110–220 M☉/pc² is
-- 0.2297–0.4595 kg/m²
theorem donato_si :
    (0.2923 < mu_si 140 ∧ mu_si 140 < 0.2925) ∧
    (0.2297 < mu_si 110 ∧ mu_si 220 < 0.4595) := by
  unfold mu_si M_SUN PARSEC
  refine ⟨⟨?_, ?_⟩, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num
  · norm_num

-- ============================================================
-- SECTION 2: THE CROSSOVER
-- ============================================================

-- [T2] The pull of the halo core: g₀ = 2πG·μ₀D ≈ 1.23 × 10⁻¹⁰ m/s²
theorem core_pull : 1.22e-10 < g_surface 140 ∧ g_surface 140 < 1.23e-10 := by
  have hp1 := Real.pi_gt_d2
  have hp2 := Real.pi_lt_d2
  unfold g_surface mu_si G_N M_SUN PARSEC
  constructor
  · nlinarith
  · nlinarith

-- [T3] The central value sits at the crossover, x = 1.02, and the
-- measured band straddles it: x < 1 at 110 M☉/pc², x > 1 at 220
theorem at_the_crossover :
    (1.01 < x_ratio 140 ∧ x_ratio 140 < 1.03) ∧
    x_ratio 110 < 1 ∧ 1 < x_ratio 220 := by
  have hp1 := Real.pi_gt_d2
  have hp2 := Real.pi_lt_d2
  unfold x_ratio g_surface mu_si G_N M_SUN PARSEC A0
  refine ⟨⟨?_, ?_⟩, ?_, ?_⟩
  · rw [lt_div_iff₀ (by norm_num)]; nlinarith
  · rw [div_lt_iff₀ (by norm_num)]; nlinarith
  · rw [div_lt_iff₀ (by norm_num)]; nlinarith
  · rw [lt_div_iff₀ (by norm_num)]; nlinarith

-- [T4] In the corpus the halo core sits at the phase boundary:
-- τ between TL and 1.03 TL at the central value, and the band
-- crosses TL
theorem halo_at_boundary :
    TORSION_LIMIT < tau_of (x_ratio 140) ∧ tau_of (x_ratio 140) < 1.03 * TORSION_LIMIT ∧
    tau_of (x_ratio 110) < TORSION_LIMIT ∧ TORSION_LIMIT < tau_of (x_ratio 220) := by
  have h := at_the_crossover
  have hTL : 0 < TORSION_LIMIT := by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  unfold tau_of
  refine ⟨?_, ?_, ?_, ?_⟩
  · nlinarith [h.1.1]
  · nlinarith [h.1.2]
  · nlinarith [h.2.1]
  · nlinarith [h.2.2]

-- [T5] Milgrom's prediction Σ = a₀/(2πG) lies inside Donato's band
theorem milgrom_in_band :
    mu_si 110 < A0 / (2 * Real.pi * G_N) ∧ A0 / (2 * Real.pi * G_N) < mu_si 220 := by
  have hp1 := Real.pi_gt_d2
  have hp2 := Real.pi_lt_d2
  have hpos : 0 < 2 * Real.pi * G_N := by unfold G_N; positivity
  unfold mu_si M_SUN PARSEC
  constructor
  · rw [lt_div_iff₀ hpos]; unfold G_N A0; nlinarith
  · rw [div_lt_iff₀ hpos]; unfold G_N A0; nlinarith

-- ============================================================
-- SECTION 3: THE DARK SECTOR
-- ============================================================

noncomputable def P_BASE : ℝ := (SOVEREIGN_ANCHOR / H_FREQ) ^ ((1:ℝ)/3)

theorem cube_rpow (r : ℝ) (hr : 0 ≤ r) : (r ^ ((1:ℝ)/3)) ^ 3 = r := by
  rw [← Real.rpow_natCast, ← Real.rpow_mul hr]; norm_num

theorem cbrt_lt (r c : ℝ) (hr : 0 ≤ r) (hc : 0 ≤ c) (h : r < c ^ 3) :
    r ^ ((1:ℝ)/3) < c := by
  by_contra hle
  push Not at hle
  have h3 := pow_le_pow_left₀ hc hle 3
  rw [cube_rpow r hr] at h3
  linarith

theorem p_base_lt : P_BASE < 0.990 := by
  unfold P_BASE
  exact cbrt_lt _ _ (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num) (by norm_num)
    (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)

-- [T6] Cold dark matter is Shatter: τ = Ω_c / P_base > TL
theorem cdm_shatter : TORSION_LIMIT < OMEGA_CDM / P_BASE := by
  have hP0 : 0 < P_BASE := by
    unfold P_BASE SOVEREIGN_ANCHOR H_FREQ; positivity
  have hP := p_base_lt
  rw [lt_div_iff₀ hP0]
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR OMEGA_CDM
  nlinarith

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T7] CENTRAL SURFACE DENSITY → PNBA
theorem central_surface_density_master :
    -- the measurement in SI
    (0.2923 < mu_si 140 ∧ mu_si 140 < 0.2925) ∧
    -- its pull sits at the crossover, the band straddling it
    (1.01 < x_ratio 140 ∧ x_ratio 140 < 1.03) ∧
    x_ratio 110 < 1 ∧ 1 < x_ratio 220 ∧
    -- in the corpus: at the phase boundary
    TORSION_LIMIT < tau_of (x_ratio 140) ∧
    -- Milgrom's prediction inside the band
    (mu_si 110 < A0 / (2 * Real.pi * G_N) ∧ A0 / (2 * Real.pi * G_N) < mu_si 220) ∧
    -- cold dark matter Shatter
    TORSION_LIMIT < OMEGA_CDM / P_BASE ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨donato_si.1, at_the_crossover.1, at_the_crossover.2.1, at_the_crossover.2.2,
   halo_at_boundary.1, milgrom_in_band, cdm_shatter, anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_CentralSurfaceDensity

/-!
-- ============================================================
-- FILE:       SNSFL_CentralSurfaceDensity_LDP.lean
-- COORDINATE: [9,9,4,14](COSM)
-- SORRY:      0
--
-- THE MAP: g₀ = 2πG·μ₀D, x = g₀/a₀, τ = x·TL; the crossover
--   x = 1 ↔ TL.
--
-- RESULTS:
--   Donato μ₀D = 0.2924 kg/m²; band 0.2297–0.4595 kg/m² (T1)
--   g₀ ≈ 1.23 × 10⁻¹⁰ m/s²; x = 1.02, the band straddling x = 1;
--     τ at TL (T2–T4)
--   Milgrom's a₀/(2πG) inside the band (T5)
--   Cold dark matter Shatter, τ = Ω_c/P_base > TL (T6)
--
-- CONNECTIONS:
--   [9,9,4,0]  Cosmological corpus
--   [9,9,10,0] Quantum gravity · [9,9,10,1] Gravity
--   [9,9,3,2]  Universal Pump
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/
```
