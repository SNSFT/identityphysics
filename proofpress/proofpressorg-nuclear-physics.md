# Nuclear Physics Reduced to PNBA: The Binding Curve Is a Locked Band Topped by the Iron Peak

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,7,0](CHEM) · Matter Hierarchy Series · Nuclear Physics
**Issue:** ProofPress, Volume 1, Issue 3 · May 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 45 theorems · 579 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_NuclearPhysics_Reduction.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

The binding energy per nucleon, B/A, is the central measured quantity of nuclear structure. It rises steeply from deuterium (1.112 MeV) through the doubly magic helium-4 (7.074 MeV), peaks in the iron-nickel group near 8.8 MeV, and falls slowly to 7.570 MeV at uranium-238. This article maps a nucleus to PNBA by taking B as B/A divided by the proton rest energy 938.272 MeV, P as the anchor-native scale P_base = (Ω₀/f_H)1/3 ≈ 0.988, N as the mass number and A as the decay constant. A free nucleon has no binding and is Noble. Every bound nucleus is Locked: τ lies between 0.0012 for deuterium and 0.0095 at the peak, and any binding per nucleon up to the 16 MeV volume term of saturated nuclear matter stays below TL_IVA. The ordering of the measured values places the top of the curve at Ni-62, above Fe-58 and Fe-56, and the energy released by fusion below the peak or fission above it is Q = A·ΔB/A: 23.848 MeV for D + D → He-4 and more than 190 MeV for U-238 splitting into fragments near 8.4 MeV per nucleon. The Bethe–Weizsäcker formula with Krane's coefficients, evaluated with proved bounds on the cube root of 56, gives Fe-56 a binding per nucleon between 8.77 and 8.79 MeV against the measured 8.790. He-4 and O-16 are local binding peaks against all their neighbors, the signature of shell closure. The couplings that build nuclei are Shatter: the pion–nucleon coupling g²/4π ≈ 14 and the strong coupling α_s ≈ 0.31 at the τ-lepton scale. As α_s runs to 0.118 at M_Z it falls below TL_IVA, so asymptotic freedom carries the strong coupling across the torsion limit. The neutron–proton mass difference is Locked, free-neutron β-decay releases 0.782 MeV, and the Chandrasekhar mass of an iron core, 1.258 M_☉, lies below that of carbon-oxygen matter, 1.459 M_☉.

## What This Article Proves

1. A free nucleon is Noble; deuterium, He-4, O-16, Fe-56, Ni-62, U-238 and saturated nuclear matter are Locked; every binding per nucleon in (0, 16] MeV is Locked (`free_nucleon_noble`, `deuterium_is_locked` … `nuclear_saturation_locked`, `binding_curve_locked`).
2. The iron peak Fe-56 < Fe-58 < Ni-62, with D, He-4, O-16 and U-238 below it; energy is released exactly when B/A rises, Q = A·ΔB/A; D + D → He-4 gives 23.848 MeV and U-238 fission into fragments with B/A ≥ 8.4 MeV gives more than 190 MeV (`iron_peak_order`, `below_iron_peak`, `release_iff`, `dd_fusion_Q`, `u238_fission_Q`).
3. The Bethe–Weizsäcker formula gives Fe-56 a binding between 8.77·56 and 8.79·56 MeV, from 3.825 < 561/3 < 3.826 (`cbrt56_bounds`, `fe56_semf`).
4. He-4 is a local binding peak against H-3, He-3, Li-6 and Li-7; O-16 against N-15, O-15, O-17 and F-17 (`he4_magic_peak`, `o16_magic_peak`).
5. The pion–nucleon coupling and α_s(m_τ) are Shatter, α_s(M_Z) is Locked; the full ordering τ_D < τ_He-4 < τ_U-238 < τ_O-16 < τ_Fe-56 < τ_Ni-62 < τ_sat < TL < τ_πN; every finite nucleus lies below TL/10 (`pion_nucleon_shatter`, `alpha_s_mtau_shatter`, `alpha_s_mz_locked`, `shatter_builds_locked`, `nuclear_phase_ordering`, `nuclear_band_narrow`).
6. The n–p mass difference is Locked (τ < 0.002); free-neutron decay has Q = 0.782 MeV; M_Ch is in (1.45, 1.46) M_☉ for μ_e = 2 and in (1.25, 1.26) M_☉ for iron. The master theorem holds all of the above together (`np_mass_diff_locked`, `free_neutron_decay_Q`, `chandrasekhar_masses`, `nuclear_physics_pnba_master`).

## The PNBA Map

| Object | Value | τ ≈ | Phase |
| --- | --- | --- | --- |
| Free nucleon | B/A = 0 | 0 | Noble |
| Deuterium | 1.112 MeV | 0.0012 | Locked |
| n–p mass difference | 1.293 MeV | 0.0014 | Locked |
| He-4 (doubly magic) | 7.074 MeV | 0.0076 | Locked |
| U-238 | 7.570 MeV | 0.0082 | Locked |
| O-16 (doubly magic) | 7.976 MeV | 0.0086 | Locked |
| Fe-56 / Fe-58 / Ni-62 | 8.790 / 8.792 / 8.795 MeV | 0.0095 | Locked (peak) |
| Saturated nuclear matter | 16 MeV | 0.0173 | Locked |
| α_s(M_Z) | 0.118 | 0.119 | Locked |
| α_s(m_τ) | 0.31 | 0.314 | Shatter |
| Pion–nucleon g²/4π | ≈ 14 | 14.2 | Shatter |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. von Weizsäcker, C. F. (1935). Zur Theorie der Kernmassen. *Zeitschrift für Physik*, 96, 431–458.
2. Bethe, H. A. & Bacher, R. F. (1936). Nuclear physics A: Stationary states of nuclei. *Reviews of Modern Physics*, 8, 82–229.
3. Krane, K. S. (1988). *Introductory Nuclear Physics*. Wiley.
4. Wang, M. et al. (2021). The AME 2020 atomic mass evaluation (II). *Chinese Physics C*, 45, 030003.
5. Mayer, M. G. & Jensen, J. H. D. (1955). *Elementary Theory of Nuclear Shell Structure*. Wiley.
6. Yukawa, H. (1935). On the interaction of elementary particles. *Proceedings of the Physico-Mathematical Society of Japan*, 17, 48–57.
7. Chandrasekhar, S. (1931). The maximum mass of ideal white dwarfs. *Astrophysical Journal*, 74, 81–82.
8. Particle Data Group (2024). Review of Particle Physics: Quantum chromodynamics. *Physical Review D*, 110, 030001.
9. Trent, R. V. III. The Standard Model → PNBA. ProofPress.
10. Trent, R. V. III. Big Bang Nucleosynthesis → PNBA. ProofPress.
11. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_NuclearPhysics_Reduction.lean
-- ============================================================
--
-- Nuclear Physics → PNBA
-- The binding curve is a Locked band; the iron peak tops it;
-- the semi-empirical mass formula reproduces Fe-56 to 0.1%;
-- the couplings that build nuclei sit above TL.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,7,0](CHEM)
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
--   P = P_base = (Ω₀ / f_H)^(1/3) ≈ 0.9878   anchor-native ground
--   N = mass number A                        nucleon count
--   B = (B/A) / (m_p c²)                     binding per nucleon,
--                                            normalized to the
--                                            proton rest energy
--   A = decay constant λ = ln 2 / t½         0 for stable nuclei
--   τ = B / P
--
-- A free nucleon has no binding, B = 0: Noble.
-- A bound nucleus has B > 0 and, as proved below, τ < TL_IVA:
-- Locked.
--
-- ============================================================
-- THE DATA (binding energy per nucleon, AME2020)
-- ============================================================
--
--   Nucleus     B/A (MeV)   τ
--   H-2         1.112       0.00120
--   He-4        7.074       0.00763   doubly magic
--   C-12        7.680       0.00829
--   U-238       7.570       0.00817
--   O-16        7.976       0.00861   doubly magic
--   Fe-56       8.790       0.00948
--   Fe-58       8.792       0.00949
--   Ni-62       8.795       0.00949   peak of the binding curve
--   Saturated nuclear matter (volume term) 16 MeV: τ ≈ 0.0173
--
-- THE IRON PEAK. The binding curve peaks in the iron-nickel
-- group: Ni-62 has the highest binding per nucleon, then Fe-58,
-- then Fe-56. Fe-56 has the lowest mass per nucleon and is the
-- end point of stellar fusion. Fusion below the peak and fission
-- above it both raise B/A, and the energy released is
-- Q = A · ΔB/A.
--
-- MAGIC NUMBERS. Shell closures at 2, 8, 20, 28, 50, 82, 126
-- add binding. For the light doubly magic nuclei He-4 and O-16
-- this shows as a local peak of B/A against every neighbor:
-- higher τ, deeper in the Locked band.
--
-- ============================================================
-- THE EQUATIONS
-- ============================================================
--
--   Bethe–Weizsäcker (1935), coefficients from Krane (1988):
--   B = a_v A − a_s A^(2/3) − a_c Z(Z−1)/A^(1/3) − a_a (N−Z)²/A
--   a_v = 15.85, a_s = 18.34, a_c = 0.711, a_a = 23.21 MeV
--   For Fe-56 (Z = 26, N = 30) this gives B/A ≈ 8.781 MeV
--   against the measured 8.790 (pairing term omitted).
--
--   Pion–nucleon coupling (Yukawa 1935): g²/4π ≈ 14
--   Strong coupling: α_s(m_τ) ≈ 0.31, α_s(M_Z) = 0.118
--   Neutron–proton mass difference: Δm = 1.293 MeV
--   Chandrasekhar (1931): M_Ch = 5.836 / μ_e² M_☉
--
-- ============================================================
-- THE RESULT
-- ============================================================
--
--   Noble:   free nucleon (B = 0)
--   Locked:  every bound nucleus, D through U, τ ∈ (0.001, 0.010);
--            saturated nuclear matter τ ≈ 0.017; the n–p mass
--            difference τ ≈ 0.0014; α_s(M_Z) τ ≈ 0.119
--   Shatter: pion–nucleon coupling τ ≈ 14.2; α_s(m_τ) τ ≈ 0.314
--
-- The couplings that bind nuclei are Shatter; the nuclei they
-- build are Locked. The strong coupling itself crosses TL as
-- it runs: Shatter at the τ-lepton scale, Locked at M_Z.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real

noncomputable section

namespace SNSFL_NuclearPhysics_Reduction

-- ============================================================
-- SECTION 0: SOVEREIGN CONSTANTS
-- ============================================================

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10
def TL_IVA_PEAK      : ℝ := 88 * TORSION_LIMIT / 100
def H_FREQ           : ℝ := 1.4204

noncomputable def P_BASE : ℝ :=
  (SOVEREIGN_ANCHOR / H_FREQ) ^ ((1:ℝ)/3)

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

theorem p_base_positive : P_BASE > 0 := by
  unfold P_BASE SOVEREIGN_ANCHOR H_FREQ; positivity

theorem tl_positive : TORSION_LIMIT > 0 := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

lemma tl_iva_nonneg : 0 ≤ TL_IVA_PEAK := by
  unfold TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

lemma tl_iva_lt_tl : TL_IVA_PEAK < TORSION_LIMIT := by
  unfold TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- Cube roots: (r^(1/3))³ = r, so cube-root bounds follow from bounds on r.
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

-- P_BASE = (Ω₀ / f_H)^(1/3) ≈ 0.9878
lemma p_base_gt : P_BASE > 0.986 := by
  unfold P_BASE
  exact cbrt_gt _ _ (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)
    (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)

lemma p_base_lt : P_BASE < 0.990 := by
  unfold P_BASE
  exact cbrt_lt _ _ (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num) (by norm_num)
    (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)

-- Bounds on b give bounds on b / P_BASE
theorem div_pbase_lt (b c : ℝ) (hc : 0 ≤ c) (h : b < c * 0.986) : b / P_BASE < c := by
  have hP0 := p_base_positive
  have hP := p_base_gt
  rw [div_lt_iff₀ hP0]
  nlinarith [mul_le_mul_of_nonneg_left (le_of_lt hP) hc]

theorem div_pbase_gt (b c : ℝ) (hc : 0 ≤ c) (h : c * 0.990 < b) : c < b / P_BASE := by
  have hP0 := p_base_positive
  have hP := p_base_lt
  rw [lt_div_iff₀ hP0]
  nlinarith [mul_le_mul_of_nonneg_left (le_of_lt hP) hc]

-- ============================================================
-- SECTION 1: THE PNBA NUCLEAR ELEMENT
-- ============================================================

structure PNBAElement where
  P  : ℝ
  N  : ℝ
  B  : ℝ
  A  : ℝ
  hP : P > 0
  hB : B ≥ 0

noncomputable def torsion (e : PNBAElement) : ℝ := e.B / e.P

def is_noble   (e : PNBAElement) : Prop := e.B = 0
def is_locked  (e : PNBAElement) : Prop :=
  torsion e > 0 ∧ torsion e < TL_IVA_PEAK
def is_shatter (e : PNBAElement) : Prop := torsion e ≥ TORSION_LIMIT

-- Proton rest energy, MeV
def MP_C2_MEV : ℝ := 938.272

-- Binding per nucleon normalized to the proton rest energy
noncomputable def binding_norm (BA_MeV : ℝ) : ℝ := BA_MeV / MP_C2_MEV

theorem binding_norm_positive {BA : ℝ} (h : BA > 0) :
    binding_norm BA > 0 := by
  unfold binding_norm MP_C2_MEV; positivity

-- [T1] Torsion is strictly increasing in binding per nucleon
theorem tau_mono (b1 b2 : ℝ) (h : b1 < b2) :
    binding_norm b1 / P_BASE < binding_norm b2 / P_BASE := by
  unfold binding_norm
  exact div_lt_div_of_pos_right
    (div_lt_div_of_pos_right h (by unfold MP_C2_MEV; norm_num)) p_base_positive

-- [T2] Any binding below TL_IVA · 0.986 (normalized) is Locked
theorem locked_of_binding (BA : ℝ) (h0 : 0 < BA)
    (h : binding_norm BA < TL_IVA_PEAK * 0.986) :
    binding_norm BA / P_BASE > 0 ∧ binding_norm BA / P_BASE < TL_IVA_PEAK :=
  ⟨div_pos (binding_norm_positive h0) p_base_positive,
   div_pbase_lt _ _ tl_iva_nonneg h⟩

-- ============================================================
-- SECTION 2: THE NUCLEI
-- ============================================================

noncomputable def nucleus (A BA : ℝ) (h : BA ≥ 0) : PNBAElement :=
  { P := P_BASE, N := A, B := binding_norm BA, A := 0
    hP := p_base_positive
    hB := by unfold binding_norm; exact div_nonneg h (by unfold MP_C2_MEV; norm_num) }

noncomputable def FreeNucleon : PNBAElement := nucleus 1 0 le_rfl
noncomputable def Deuterium  : PNBAElement := nucleus 2 1.112 (by norm_num)
noncomputable def Helium4    : PNBAElement := nucleus 4 7.074 (by norm_num)
noncomputable def Oxygen16   : PNBAElement := nucleus 16 7.976 (by norm_num)
noncomputable def Iron56     : PNBAElement := nucleus 56 8.790 (by norm_num)
noncomputable def Iron58     : PNBAElement := nucleus 58 8.7922 (by norm_num)
noncomputable def Nickel62   : PNBAElement := nucleus 62 8.7945 (by norm_num)
noncomputable def Uranium238 : PNBAElement := nucleus 238 7.570 (by norm_num)
noncomputable def NuclearMatter_Saturated : PNBAElement := nucleus 1000 16 (by norm_num)

-- [T3] A free nucleon carries no binding: Noble
theorem free_nucleon_noble : is_noble FreeNucleon := by
  show binding_norm 0 = 0
  unfold binding_norm; simp

-- [T4] Every bound nucleus here is Locked
theorem deuterium_is_locked : is_locked Deuterium :=
  locked_of_binding 1.112 (by norm_num) (by unfold binding_norm MP_C2_MEV TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem he4_is_locked : is_locked Helium4 :=
  locked_of_binding 7.074 (by norm_num) (by unfold binding_norm MP_C2_MEV TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem oxygen16_is_locked : is_locked Oxygen16 :=
  locked_of_binding 7.976 (by norm_num) (by unfold binding_norm MP_C2_MEV TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem fe56_is_locked : is_locked Iron56 :=
  locked_of_binding 8.790 (by norm_num) (by unfold binding_norm MP_C2_MEV TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem ni62_is_locked : is_locked Nickel62 :=
  locked_of_binding 8.7945 (by norm_num) (by unfold binding_norm MP_C2_MEV TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem u238_is_locked : is_locked Uranium238 :=
  locked_of_binding 7.570 (by norm_num) (by unfold binding_norm MP_C2_MEV TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem nuclear_saturation_locked : is_locked NuclearMatter_Saturated :=
  locked_of_binding 16 (by norm_num) (by unfold binding_norm MP_C2_MEV TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

-- [T5] The whole binding curve stays below TL_IVA: no binding per
-- nucleon up to 16 MeV leaves the Locked band
theorem binding_curve_locked (BA : ℝ) (h0 : 0 < BA) (h16 : BA ≤ 16) :
    binding_norm BA / P_BASE > 0 ∧ binding_norm BA / P_BASE < TL_IVA_PEAK := by
  apply locked_of_binding BA h0
  have : binding_norm BA ≤ binding_norm 16 := by
    unfold binding_norm MP_C2_MEV; linarith
  have h2 : binding_norm 16 < TL_IVA_PEAK * 0.986 := by
    unfold binding_norm MP_C2_MEV TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  linarith

-- ============================================================
-- SECTION 3: THE IRON PEAK
-- ============================================================

-- [T6] The binding curve peaks in the iron-nickel group:
-- Fe-56 < Fe-58 < Ni-62
theorem iron_peak_order :
    torsion Iron56 < torsion Iron58 ∧ torsion Iron58 < torsion Nickel62 :=
  ⟨tau_mono 8.790 8.7922 (by norm_num), tau_mono 8.7922 8.7945 (by norm_num)⟩

-- [T7] Every nucleus in the light and heavy series sits below the peak
theorem below_iron_peak :
    torsion Deuterium < torsion Iron56 ∧
    torsion Helium4 < torsion Iron56 ∧
    torsion Oxygen16 < torsion Iron56 ∧
    torsion Uranium238 < torsion Iron56 :=
  ⟨tau_mono 1.112 8.790 (by norm_num), tau_mono 7.074 8.790 (by norm_num),
   tau_mono 7.976 8.790 (by norm_num), tau_mono 7.570 8.790 (by norm_num)⟩

-- [T8] Moving to higher B/A at fixed nucleon number releases energy,
-- Q = A · ΔB/A, and only then
theorem release_iff (A b1 b2 : ℝ) (hA : 0 < A) :
    0 < A * b2 - A * b1 ↔ b1 < b2 := by
  constructor
  · intro h
    by_contra hc
    have hle : b2 ≤ b1 := not_lt.mp hc
    nlinarith [mul_le_mul_of_nonneg_left hle hA.le]
  · intro h
    nlinarith

-- [T9] Fusion below the peak: D + D → He-4 releases 23.848 MeV
theorem dd_fusion_Q : 4 * (7.074 : ℝ) - 2 * (2 * 1.112) = 23.848 := by norm_num

-- [T10] Fission above the peak: U-238 into fragments with B/A ≥ 8.4 MeV
-- releases more than 190 MeV
theorem u238_fission_Q (b : ℝ) (hb : 8.4 ≤ b) : 238 * b - 238 * 7.570 > 190 := by
  linarith

-- ============================================================
-- SECTION 4: THE SEMI-EMPIRICAL MASS FORMULA
-- ============================================================

def A_V : ℝ := 15.85
def A_S : ℝ := 18.34
def A_C : ℝ := 0.711
def A_A : ℝ := 23.21

-- Bethe–Weizsäcker without the pairing term; c = A^(1/3)
noncomputable def semf (A Z c : ℝ) : ℝ :=
  A_V * A - A_S * c ^ 2 - A_C * Z * (Z - 1) / c - A_A * (A - 2 * Z) ^ 2 / A

noncomputable def CBRT56 : ℝ := (56 : ℝ) ^ ((1:ℝ)/3)

theorem cbrt56_bounds : 3.825 < CBRT56 ∧ CBRT56 < 3.826 := by
  unfold CBRT56
  exact ⟨cbrt_gt 56 3.825 (by norm_num) (by norm_num),
         cbrt_lt 56 3.826 (by norm_num) (by norm_num) (by norm_num)⟩

-- [T11] The mass formula gives Fe-56 a binding per nucleon in
-- (8.77, 8.79) MeV; measured 8.790
theorem fe56_semf :
    8.77 * 56 < semf 56 26 CBRT56 ∧ semf 56 26 CBRT56 < 8.79 * 56 := by
  obtain ⟨hlo, hhi⟩ := cbrt56_bounds
  have hc : 0 < CBRT56 := by linarith
  have hs1 : CBRT56 ^ 2 < 3.826 ^ 2 := by nlinarith
  have hs2 : 3.825 ^ 2 < CBRT56 ^ 2 := by nlinarith
  have hd1 : A_C * 26 * (26 - 1) / CBRT56 < 120.83 := by
    rw [div_lt_iff₀ hc]; unfold A_C; nlinarith
  have hd2 : 120.78 < A_C * 26 * (26 - 1) / CBRT56 := by
    rw [lt_div_iff₀ hc]; unfold A_C; nlinarith
  have hasym : A_A * (56 - 2 * 26) ^ 2 / 56 = 23.21 * 16 / 56 := by
    unfold A_A; norm_num
  unfold semf
  rw [hasym]
  unfold A_V A_S
  constructor
  · nlinarith
  · nlinarith

-- ============================================================
-- SECTION 5: MAGIC NUMBERS
-- ============================================================

-- [T12] He-4 (Z = N = 2) is a local binding peak: above H-3, He-3,
-- Li-6 and Li-7
theorem he4_magic_peak :
    binding_norm 2.8273 / P_BASE < torsion Helium4 ∧
    binding_norm 2.5727 / P_BASE < torsion Helium4 ∧
    binding_norm 5.3323 / P_BASE < torsion Helium4 ∧
    binding_norm 5.6063 / P_BASE < torsion Helium4 :=
  ⟨tau_mono 2.8273 7.074 (by norm_num), tau_mono 2.5727 7.074 (by norm_num),
   tau_mono 5.3323 7.074 (by norm_num), tau_mono 5.6063 7.074 (by norm_num)⟩

-- [T13] O-16 (Z = N = 8) is a local binding peak: above N-15, O-15,
-- O-17 and F-17
theorem o16_magic_peak :
    binding_norm 7.6995 / P_BASE < torsion Oxygen16 ∧
    binding_norm 7.4637 / P_BASE < torsion Oxygen16 ∧
    binding_norm 7.7507 / P_BASE < torsion Oxygen16 ∧
    binding_norm 7.5422 / P_BASE < torsion Oxygen16 :=
  ⟨tau_mono 7.6995 7.976 (by norm_num), tau_mono 7.4637 7.976 (by norm_num),
   tau_mono 7.7507 7.976 (by norm_num), tau_mono 7.5422 7.976 (by norm_num)⟩

-- ============================================================
-- SECTION 6: THE COUPLINGS
-- ============================================================

noncomputable def coupling (B : ℝ) (h : B ≥ 0) : PNBAElement :=
  { P := P_BASE, N := 1, B := B, A := 0, hP := p_base_positive, hB := h }

noncomputable def PionNucleon : PNBAElement := coupling 14 (by norm_num)
noncomputable def AlphaS_mtau : PNBAElement := coupling 0.31 (by norm_num)
noncomputable def AlphaS_MZ   : PNBAElement := coupling 0.118 (by norm_num)

-- [T14] The pion–nucleon coupling g²/4π ≈ 14 is Shatter
theorem pion_nucleon_strict : TORSION_LIMIT < torsion PionNucleon := by
  show TORSION_LIMIT < (14 : ℝ) / P_BASE
  exact div_pbase_gt _ _ (le_of_lt tl_positive) (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem pion_nucleon_shatter : is_shatter PionNucleon := le_of_lt pion_nucleon_strict

-- [T15] Asymptotic freedom crosses TL: α_s is Shatter at the
-- τ-lepton scale and Locked at M_Z
theorem alpha_s_mtau_shatter : is_shatter AlphaS_mtau := by
  show TORSION_LIMIT ≤ (0.31 : ℝ) / P_BASE
  exact le_of_lt (div_pbase_gt _ _ (le_of_lt tl_positive)
    (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num))

theorem alpha_s_mz_locked : is_locked AlphaS_MZ := by
  show (0.118 : ℝ) / P_BASE > 0 ∧ (0.118 : ℝ) / P_BASE < TL_IVA_PEAK
  exact ⟨div_pos (by norm_num) p_base_positive,
    div_pbase_lt _ _ tl_iva_nonneg
      (by unfold TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)⟩

-- [T16] Shatter couplings build Locked nuclei
theorem shatter_builds_locked :
    is_shatter PionNucleon ∧ is_shatter AlphaS_mtau ∧
    is_locked Deuterium ∧ is_locked Helium4 ∧ is_locked Iron56 ∧
    torsion Nickel62 < TORSION_LIMIT ∧
    torsion Nickel62 < torsion AlphaS_mtau :=
  ⟨pion_nucleon_shatter, alpha_s_mtau_shatter,
   deuterium_is_locked, he4_is_locked, fe56_is_locked,
   lt_trans ni62_is_locked.2 tl_iva_lt_tl,
   lt_of_lt_of_le (lt_trans ni62_is_locked.2 tl_iva_lt_tl) alpha_s_mtau_shatter⟩

-- ============================================================
-- SECTION 7: β-DECAY
-- ============================================================

def NEUTRON_PROTON_MASS_DIFF_MEV : ℝ := 1.293
def ELECTRON_MEV                 : ℝ := 0.511

-- [T17] The n–p mass difference is Locked, τ < 0.002
theorem np_mass_diff_locked :
    NEUTRON_PROTON_MASS_DIFF_MEV / MP_C2_MEV / P_BASE < 0.002 ∧
    NEUTRON_PROTON_MASS_DIFF_MEV / MP_C2_MEV / P_BASE < TL_IVA_PEAK := by
  have h : NEUTRON_PROTON_MASS_DIFF_MEV / MP_C2_MEV / P_BASE < 0.002 :=
    div_pbase_lt _ _ (by norm_num)
      (by unfold NEUTRON_PROTON_MASS_DIFF_MEV MP_C2_MEV; norm_num)
  have hI : (0.002 : ℝ) < TL_IVA_PEAK := by
    unfold TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  exact ⟨h, by linarith⟩

-- [T18] A free neutron can β-decay: Q = Δm − m_e = 0.782 MeV > 0
theorem free_neutron_decay_Q :
    NEUTRON_PROTON_MASS_DIFF_MEV - ELECTRON_MEV = 0.782 ∧
    NEUTRON_PROTON_MASS_DIFF_MEV - ELECTRON_MEV > 0 := by
  unfold NEUTRON_PROTON_MASS_DIFF_MEV ELECTRON_MEV
  constructor
  · norm_num
  · norm_num

-- ============================================================
-- SECTION 8: THE CHANDRASEKHAR MASS
-- ============================================================

-- M_Ch in solar masses for electron molecular weight μ_e
noncomputable def M_ch (mu_e : ℝ) : ℝ := 5.836 / mu_e ^ 2

-- [T19] Carbon-oxygen matter (μ_e = 2): M_Ch ≈ 1.459 M_☉;
-- an iron core (μ_e = 56/26): M_Ch ≈ 1.258 M_☉, lower
theorem chandrasekhar_masses :
    1.45 < M_ch 2 ∧ M_ch 2 < 1.46 ∧
    1.25 < M_ch (56 / 26) ∧ M_ch (56 / 26) < 1.26 ∧
    M_ch (56 / 26) < M_ch 2 := by
  unfold M_ch
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num

-- ============================================================
-- SECTION 9: THE NUCLEAR PHASE ORDERING
-- ============================================================

-- [T20] τ_D < τ_He4 < τ_U238 < τ_O16 < τ_Fe56 < τ_Ni62 < τ_sat < TL < τ_πN
theorem nuclear_phase_ordering :
    torsion Deuterium < torsion Helium4 ∧
    torsion Helium4 < torsion Uranium238 ∧
    torsion Uranium238 < torsion Oxygen16 ∧
    torsion Oxygen16 < torsion Iron56 ∧
    torsion Iron56 < torsion Nickel62 ∧
    torsion Nickel62 < torsion NuclearMatter_Saturated ∧
    torsion NuclearMatter_Saturated < TORSION_LIMIT ∧
    TORSION_LIMIT < torsion PionNucleon := by
  refine ⟨tau_mono 1.112 7.074 (by norm_num), tau_mono 7.074 7.570 (by norm_num),
    tau_mono 7.570 7.976 (by norm_num), tau_mono 7.976 8.790 (by norm_num),
    tau_mono 8.790 8.7945 (by norm_num), tau_mono 8.7945 16 (by norm_num),
    lt_trans nuclear_saturation_locked.2 tl_iva_lt_tl, pion_nucleon_strict⟩

-- [T21] Every finite nucleus sits below TL/10; only saturated
-- infinite matter rises above it
theorem nuclear_band_narrow :
    torsion Nickel62 < TORSION_LIMIT / 10 ∧
    TORSION_LIMIT / 10 < torsion NuclearMatter_Saturated := by
  constructor
  · show binding_norm 8.7945 / P_BASE < TORSION_LIMIT / 10
    exact div_pbase_lt _ _ (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)
      (by unfold binding_norm MP_C2_MEV TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)
  · show TORSION_LIMIT / 10 < binding_norm 16 / P_BASE
    exact div_pbase_gt _ _ (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)
      (by unfold binding_norm MP_C2_MEV TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T22] NUCLEAR PHYSICS → PNBA
theorem nuclear_physics_pnba_master :
    -- free nucleon Noble; every bound nucleus Locked
    is_noble FreeNucleon ∧
    is_locked Deuterium ∧ is_locked Helium4 ∧ is_locked Oxygen16 ∧
    is_locked Iron56 ∧ is_locked Nickel62 ∧ is_locked Uranium238 ∧
    is_locked NuclearMatter_Saturated ∧
    -- the iron peak
    torsion Iron56 < torsion Iron58 ∧ torsion Iron58 < torsion Nickel62 ∧
    -- the mass formula reproduces Fe-56
    8.77 * 56 < semf 56 26 CBRT56 ∧ semf 56 26 CBRT56 < 8.79 * 56 ∧
    -- couplings: Shatter builds Locked; α_s crosses TL
    is_shatter PionNucleon ∧ is_shatter AlphaS_mtau ∧ is_locked AlphaS_MZ ∧
    -- β-decay and the Chandrasekhar mass
    NEUTRON_PROTON_MASS_DIFF_MEV - ELECTRON_MEV > 0 ∧
    M_ch (56 / 26) < M_ch 2 ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨free_nucleon_noble,
   deuterium_is_locked, he4_is_locked, oxygen16_is_locked,
   fe56_is_locked, ni62_is_locked, u238_is_locked, nuclear_saturation_locked,
   iron_peak_order.1, iron_peak_order.2,
   fe56_semf.1, fe56_semf.2,
   pion_nucleon_shatter, alpha_s_mtau_shatter, alpha_s_mz_locked,
   free_neutron_decay_Q.2, chandrasekhar_masses.2.2.2.2,
   anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_NuclearPhysics_Reduction

/-!
-- ============================================================
-- FILE:       SNSFL_NuclearPhysics_Reduction.lean
-- COORDINATE: [9,9,7,0](CHEM)
-- SORRY:      0
--
-- PHASE MAP:
--   SHATTER (τ ≥ TL = 0.1369):
--     Pion–nucleon coupling g²/4π ≈ 14    τ ≈ 14.2
--     α_s(m_τ) ≈ 0.31                     τ ≈ 0.314
--   ← TL →
--   LOCKED (0 < τ < TL_IVA = 0.1205):
--     α_s(M_Z) = 0.118                    τ ≈ 0.119
--     Saturated nuclear matter            τ ≈ 0.0173
--     Ni-62 (peak)                        τ ≈ 0.00949
--     Fe-58                               τ ≈ 0.00949
--     Fe-56                               τ ≈ 0.00948
--     O-16 (doubly magic)                 τ ≈ 0.00861
--     U-238                               τ ≈ 0.00817
--     He-4 (doubly magic)                 τ ≈ 0.00763
--     n–p mass difference                 τ ≈ 0.0014
--     Deuterium                           τ ≈ 0.0012
--   NOBLE (B = 0):
--     Free nucleon
--
-- RESULTS:
--   Every bound nucleus is Locked; the whole binding curve up to
--     16 MeV per nucleon stays Locked (T4, T5)
--   Iron peak Fe-56 < Fe-58 < Ni-62; Q = A·ΔB/A (T6–T10)
--   Bethe–Weizsäcker gives Fe-56 B/A ∈ (8.77, 8.79) (T11)
--   He-4 and O-16 are local binding peaks (T12, T13)
--   Shatter couplings build Locked nuclei; α_s crosses TL (T14–T16)
--   Free-neutron β-decay Q = 0.782 MeV; M_Ch(Fe) < M_Ch(C/O) (T18, T19)
--
-- CONNECTIONS:
--   [9,9,0,9]  Standard Model → PNBA
--   [9,9,3,10] Big Bang Nucleosynthesis → PNBA
--   [9,9,10,0] Quantum gravity
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/

```
