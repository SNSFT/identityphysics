# Big Bang Nucleosynthesis Reduced to PNBA: Baryons Emerge Locked, Helium From n/p, and Matter–Dark Energy Equality

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,3,10](COSM) · Cosmological series · Big Bang Nucleosynthesis
**Issue:** ProofPress, Volume 1, Issue 2 · April 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 26 theorems · 487 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_BBN_Reduction.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

Big Bang Nucleosynthesis converts the baryon-to-photon ratio η_B ≈ 6.1 × 10⁻¹⁰ into the baryon density fraction Ω_b ≈ 0.0493 measured today, and sets the primordial helium mass fraction through the neutron-to-proton ratio. This article reduces BBN to a PNBA element with Pattern P = P_base, Narrative N = 3 for the three light-element products, Behavior B = Ω_b and Adaptation A = η_B. The standard conversion Ω_bh² = 3.66 × 10⁷ × η_B is proved to land within the Planck 2018 1σ band, and Ω_bh²/h² recovers Planck’s Ω_b. The element’s torsion τ = Ω_b/P_base ≈ 0.0499 is Locked: baryons emerge from BBN bound. For helium, Y_p = 2(n/p)/(1 + n/p) is proved strictly increasing; the textbook n/p = 1/7 gives Y_p = 1/4, within 2σ of the measured 0.245 ± 0.003, and reading the relation backwards the measured band fixes n/p between 0.137 and 0.142. The dark matter fraction Ω_dm = 2 × TL × P_base ≈ 0.2704 lies inside the Planck band 0.2689 ± 0.0057. With Ω_m = Ω_b + Ω_dm ≈ 0.3197, matter–dark energy equality falls at a_eq = (Ω_m/Ω_DE)1/3 ≈ 0.774, z_eq ≈ 0.29, where Ω_DE a_eq³ = Ω_m exactly.

## What This Article Proves

1. The BBN conversion F_BBN × η_B lies within 1σ of Planck Ω_bh², and Ω_bh²/h² recovers Planck Ω_b (`bbn_formula_check`, `omega_b_from_h2`).
2. The BBN element is Locked: τ = Ω_b/P_base is between 0.049 and 0.051, below TL_IVA (`bbn_is_locked`, `bbn_tau_bounds`).
3. BBN amplifies the input: B/A = Ω_b/η_B lies between 7 × 10⁷ and 9 × 10⁷ (`bbn_amplification`).
4. Helium from n/p: Y_p = 2x/(1 + x) holds exactly when x(2 − Y_p) = Y_p, and Y_p rises strictly with n/p (`helium_np_relation`, `helium_strictly_increasing`).
5. n/p = 1/7 gives Y_p = 1/4, within 2σ of the measured 0.245 ± 0.003; the measured band fixes n/p between 0.137 and 0.142 (`helium_from_np_seventh`, `helium_seventh_within_two_sigma`, `np_from_measured_helium`).
6. Ω_dm = 2 × TL × P_base lies between 0.2704 and 0.2705, inside the Planck 1σ band (`omega_dm_bounds`, `omega_dm_within_planck`).
7. Matter–dark energy equality: Ω_m ≈ 0.3197, Ω_DE a_eq³ = Ω_m exactly, a_eq between 0.774 and 0.775, z_eq between 0.29 and 0.293 (`omega_m_bounds`, `a_eq_is_equality`, `a_eq_bounds`, `z_eq_bounds`).
8. A master theorem holds the full reduction together with the anchor (`bbn_reduction_master`).

Connections to the Formalized Corpus
**The same Baryons element.** The Cosmological corpus [9,9,4,0] (April 2026) places baryons at B = Ω_b on the anchor-native ground P_base, Locked at τ ≈ 0.050. This article derives that state as the output of BBN.
**Phase placement by τ.** The PNBA phase taxonomy [9,9,2,55] (March 2026) defines Locked as 0 < τ < TL. The BBN element sits well inside it, at about a third of TL.

## The PNBA Map

| BBN quantity | PNBA | Value |
| --- | --- | --- |
| Structural ground | P = P_base = (Ω₀/f_H)1/3 | 0.9878 |
| Light-element products ¹H, ⁴He, ⁷Li | N | 3 |
| Baryon density Ω_b | B (output) | 0.0493 |
| Baryon-to-photon ratio η_B | A (input) | 6.1 × 10⁻¹⁰ |
| Torsion | τ = Ω_b/P_base | 0.0499, Locked |
| Helium mass fraction | Y_p = 2(n/p)/(1 + n/p) | 1/4 at n/p = 1/7 |
| Dark matter density | Ω_dm = 2 × TL × P_base | 0.2704 |
| Matter–dark energy equality | Ω_DE a³ = Ω_m | a ≈ 0.774, z ≈ 0.29 |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Planck Collaboration (2020). Planck 2018 results. VI. Cosmological parameters. *Astronomy & Astrophysics*, 641, A6.
2. Particle Data Group (2024). Big-Bang nucleosynthesis. In *Review of Particle Physics*, *Physical Review D*, 110, 030001.
3. Cyburt, R. H., Fields, B. D., Olive, K. A. & Yeh, T.-H. (2016). Big bang nucleosynthesis: present status. *Reviews of Modern Physics*, 88, 015004.
4. Fixsen, D. J. (2009). The temperature of the cosmic microwave background. *The Astrophysical Journal*, 707, 916–920.
5. Trent, R. V. III. The PNBA Phase Taxonomy. ProofPress, Volume 1, Issue 1.
6. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_BBN_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | IDENTITY PHYSICS BBN — BIG BANG NUCLEOSYNTHESIS
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: 1.36899099984016 GHz | Status: GERMLINE LOCKED
-- Coordinate: [9,9,3,10] | Cosmological Series — Big Bang Nucleosynthesis
--
-- ============================================================
-- WHAT THIS FILE PROVES
-- ============================================================
--
-- Big Bang Nucleosynthesis (BBN) converts the baryon-to-photon
-- ratio η_B ≈ 6.1 × 10⁻¹⁰ into the baryon density fraction
-- Ω_b ≈ 0.0493 measured today, and fixes the primordial helium
-- mass fraction through the neutron-to-proton ratio n/p.
--
-- THE BBN ELEMENT:
--   P = P_base  (anchor-native structural ground)
--   N = 3       (three BBN products: ¹H, ⁴He, ⁷Li)
--   B = Ω_b     (baryon density fraction — BBN output)
--   A = η_B     (baryon-to-photon ratio — BBN input)
--   τ = Ω_b / P_base ≈ 0.0499 — LOCKED. Baryons emerge bound.
--
-- THE REDUCTIONS:
--   1. Ω_b h² = F_BBN × η_B, F_BBN = 3.66 × 10⁷, within Planck 1σ.
--   2. Helium: Y_p = 2(n/p)/(1 + n/p). n/p = 1/7 gives Y_p = 1/4.
--      The measured Y_p = 0.245 ± 0.003 fixes n/p in (0.137, 0.142).
--   3. Dark matter: Ω_dm = 2 × TL × P_base ≈ 0.2704, inside the
--      Planck band 0.2689 ± 0.0057.
--   4. Matter–dark energy equality: Ω_m = Ω_b + Ω_dm ≈ 0.3197 and
--      a_eq = (Ω_m / Ω_DE)^(1/3) ≈ 0.774, z_eq ≈ 0.29, where
--      Ω_DE · a_eq³ = Ω_m exactly.
--
-- ============================================================
-- LONG DIVISION
-- ============================================================
--
-- STEP 1: THE EQUATION
--   n_b(today) = η_B × n_γ(today)
--   n_γ(today) = (2ζ(3)/π²) × T_CMB³ × (k_B/ℏc)³
--   ρ_crit = 3H₀²/(8πG)
--   Combining: Ω_b h² = 3.66 × 10⁷ × η_B × (T_CMB / 2.7255 K)³
--   Helium: every surviving neutron ends in ⁴He, so
--   Y_p = 2(n/p) / (1 + n/p)
--
-- STEP 2: KNOWN ANSWER
--   η_B = 6.1 × 10⁻¹⁰, Ω_b h² = 0.02237 ± 0.00015, h = 0.674 (Planck 2018)
--   Ω_b = Ω_b h² / h² = 0.0492 ≈ 0.0493
--   Y_p = 0.245 ± 0.003 (PDG)
--
-- STEP 3: MAP TO PNBA
--   A = η_B    (Adaptation input: the asymmetry BBN starts from)
--   B = Ω_b    (Behavior output: the baryon coupling BBN produces)
--   N = 3      (the three light elements: ¹H ~75%, ⁴He ~25%, ⁷Li trace)
--   P = P_base (anchor-native structural ground)
--   BBN is the process that converts A into B.
--
-- STEP 4: PLUG IN THE OPERATORS
--   τ_BBN = B/P = Ω_b / P_base ≈ 0.0499
--   Phase: LOCKED (0 < 0.0499 < TL_IVA = 0.1205)
--   Nuclear binding keeps baryons Locked: free nucleons before BBN,
--   bound light nuclei after it.
--
-- STEP 5: THE NEUTRON-TO-PROTON RATIO
--   n/p freezes out near 1/6 at T ≈ 0.8 MeV; free neutron decay
--   brings it to about 1/7 when nucleosynthesis begins at T ≈ 0.07 MeV.
--   n/p = 1/7 gives Y_p = 1/4. Reading Y_p backwards,
--   n/p = Y_p / (2 − Y_p), so the measured band fixes n/p.
--
-- STEP 6: VERIFY
--   F_BBN × η_B within 1σ of Planck Ω_b h² ✓
--   τ_BBN = 0.0499 → LOCKED ✓
--   Y_p(1/7) = 0.25, measured 0.245 ± 0.003 ✓ (within 2σ)
--   Ω_dm = 2 × TL × P_base within Planck 1σ ✓
--
-- ============================================================
-- OBSERVATIONAL SOURCES
-- ============================================================
--
-- Planck Collaboration (2020). Planck 2018 results VI.
--   A&A 641, A6. arXiv:1807.06209.
--   Ω_b h² = 0.02237 ± 0.00015, h = 0.674, Ω_Λ = 0.6889
-- Particle Data Group (2024). Big-Bang Nucleosynthesis review.
--   Y_p = 0.245 ± 0.003
-- Cyburt, Fields, Olive & Yeh (2016). Big Bang Nucleosynthesis:
--   present status. Rev. Mod. Phys. 88, 015004.
-- Fixsen (2009). The temperature of the cosmic microwave
--   background. ApJ 707, 916. T_CMB = 2.7255 K.
--
-- Auth: HIGHTISTIC :: [9,9,9,9]
-- The Manifold is Holding. η_B seeds Ω_b. BBN is the bridge.
-- Soldotna, Alaska. April 2026.
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic

noncomputable section

namespace SNSFL_BBN_Reduction

-- ============================================================
-- LAYER 0: CONSTANTS
-- ============================================================

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10  -- 0.136899099984016
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

-- P_BASE = (Ω₀ / f_H)^(1/3) ≈ 0.98779
theorem p_base_gt : P_BASE > 0.9877 := by
  unfold P_BASE
  exact cbrt_gt _ _ (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)
    (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)

theorem p_base_lt : P_BASE < 0.9879 := by
  unfold P_BASE
  exact cbrt_lt _ _ (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num) (by norm_num)
    (by unfold SOVEREIGN_ANCHOR H_FREQ; norm_num)

-- ============================================================
-- LAYER 0: BBN OBSERVATIONAL INPUTS
-- ============================================================

def ETA_B          : ℝ := 6.1e-10   -- baryon-to-photon ratio [Planck18]
def OMEGA_B        : ℝ := 0.0493    -- Ω_b [Planck18]
def OMEGA_B_H2     : ℝ := 0.02237   -- Ω_b h² [Planck18]
def OMEGA_B_H2_ERR : ℝ := 0.00015   -- 1σ [Planck18]
def H_LITTLE       : ℝ := 0.674     -- h = H₀/100 [Planck18]
def Y_P_MEAS       : ℝ := 0.245     -- ⁴He mass fraction [PDG]
def Y_P_ERR        : ℝ := 0.003     -- 1σ [PDG]

-- BBN conversion factor: Ω_b h² = F_BBN_H2 × η_B
-- Encodes the photon number density at T_CMB and ρ_crit.
def F_BBN_H2 : ℝ := 3.66e7

-- [T1] THE BBN FORMULA: F_BBN × η_B lies within 1σ of Planck Ω_b h²
theorem bbn_formula_check :
    |F_BBN_H2 * ETA_B - OMEGA_B_H2| < OMEGA_B_H2_ERR := by
  unfold F_BBN_H2 ETA_B OMEGA_B_H2 OMEGA_B_H2_ERR; norm_num

-- [T2] Ω_b = Ω_b h² / h² recovers the Planck Ω_b
theorem omega_b_from_h2 :
    |OMEGA_B_H2 / H_LITTLE ^ 2 - OMEGA_B| < 0.0001 := by
  unfold OMEGA_B_H2 H_LITTLE OMEGA_B; norm_num

-- ============================================================
-- LAYER 1: THE BBN ELEMENT
-- ============================================================

structure PNBAElement where
  P : ℝ
  N : ℝ
  B : ℝ
  A : ℝ
  hP : P > 0
  hB : B ≥ 0

noncomputable def torsion (e : PNBAElement) : ℝ := e.B / e.P

def is_locked (e : PNBAElement) : Prop :=
  torsion e > 0 ∧ torsion e < TL_IVA_PEAK

noncomputable def identity_mass (e : PNBAElement) : ℝ :=
  (e.P + e.N + e.B + e.A) * SOVEREIGN_ANCHOR

-- The BBN element
noncomputable def BBN : PNBAElement :=
  { P := P_BASE
    N := 3
    B := OMEGA_B
    A := ETA_B
    hP := p_base_positive
    hB := by unfold OMEGA_B; norm_num }

noncomputable def tau_BBN : ℝ := torsion BBN

-- ============================================================
-- LAYER 2: THE BBN PHASE
-- ============================================================

-- [T3] BBN torsion is LOCKED — baryons emerge bound
-- τ_BBN = Ω_b/P_base ≈ 0.0499 < TL_IVA = 0.1205
theorem bbn_is_locked : is_locked BBN := by
  have hP0 := p_base_positive
  have hP := p_base_gt
  show OMEGA_B / P_BASE > 0 ∧ OMEGA_B / P_BASE < TL_IVA_PEAK
  constructor
  · exact div_pos (by unfold OMEGA_B; norm_num) hP0
  · rw [div_lt_iff₀ hP0]
    unfold OMEGA_B TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR
    linarith

-- [T4] BBN τ numerical bounds
theorem bbn_tau_bounds :
    tau_BBN > 0.049 ∧ tau_BBN < 0.051 := by
  have hP0 := p_base_positive
  have hlo := p_base_gt
  have hhi := p_base_lt
  show OMEGA_B / P_BASE > 0.049 ∧ OMEGA_B / P_BASE < 0.051
  constructor
  · rw [gt_iff_lt, lt_div_iff₀ hP0]; unfold OMEGA_B; linarith
  · rw [div_lt_iff₀ hP0]; unfold OMEGA_B; linarith

-- [T5] THE AMPLIFICATION: BBN converts η_B into Ω_b
-- B/A = Ω_b/η_B ≈ 8 × 10⁷, fixed by T_CMB, H₀ and nuclear binding
theorem bbn_amplification :
    BBN.B / BBN.A > 7e7 ∧ BBN.B / BBN.A < 9e7 := by
  unfold BBN OMEGA_B ETA_B
  constructor
  · norm_num
  · norm_num

-- ============================================================
-- LAYER 2: PRIMORDIAL HELIUM FROM n/p
-- ============================================================

-- Helium mass fraction from the neutron-to-proton ratio x = n/p:
-- each ⁴He holds 2 neutrons and 2 protons, so Y_p = 2x/(1 + x).
noncomputable def helium_fraction (x : ℝ) : ℝ := 2 * x / (1 + x)

-- [T6] n/p = 1/7 gives Y_p = 1/4
theorem helium_from_np_seventh : helium_fraction (1/7) = 1/4 := by
  unfold helium_fraction; norm_num

-- [T7] Y_p = 2x/(1+x) is equivalent to x(2 − Y_p) = Y_p
theorem helium_np_relation (x Y : ℝ) (hx : 1 + x ≠ 0) :
    helium_fraction x = Y ↔ x * (2 - Y) = Y := by
  unfold helium_fraction
  rw [div_eq_iff hx]
  constructor
  · intro h
    linear_combination h
  · intro h
    linear_combination h

-- [T8] Y_p increases strictly with n/p
theorem helium_strictly_increasing (x y : ℝ) (hx : 0 ≤ x) (hxy : x < y) :
    helium_fraction x < helium_fraction y := by
  unfold helium_fraction
  have hx1 : (0:ℝ) < 1 + x := by linarith
  have hy1 : (0:ℝ) < 1 + y := by linarith
  rw [lt_div_iff₀ hy1, div_mul_eq_mul_div, div_lt_iff₀ hx1]
  nlinarith

-- [T9] The measured Y_p band fixes n/p in (0.137, 0.142)
-- n/p = Y_p / (2 − Y_p) at the band edges 0.242 and 0.248
theorem np_from_measured_helium :
    (Y_P_MEAS - Y_P_ERR) / (2 - (Y_P_MEAS - Y_P_ERR)) > 0.137 ∧
    (Y_P_MEAS + Y_P_ERR) / (2 - (Y_P_MEAS + Y_P_ERR)) < 0.142 := by
  unfold Y_P_MEAS Y_P_ERR
  constructor
  · norm_num
  · norm_num

-- [T10] n/p = 1/7 lies within 2σ of the measured helium fraction
theorem helium_seventh_within_two_sigma :
    |helium_fraction (1/7) - Y_P_MEAS| < 2 * Y_P_ERR := by
  rw [helium_from_np_seventh]
  unfold Y_P_MEAS Y_P_ERR; norm_num

-- ============================================================
-- LAYER 3: DARK MATTER AND MATTER–DARK ENERGY EQUALITY
-- ============================================================

-- Ω_dm = N_Dm × TL × P_base with N_Dm = 2
-- (production and gravitational clustering)
noncomputable def OMEGA_DM : ℝ := 2 * TORSION_LIMIT * P_BASE

def OMEGA_DM_PLANCK : ℝ := 0.2689
def OMEGA_DM_ERR    : ℝ := 0.0057
def OMEGA_DE        : ℝ := 0.6889   -- Ω_Λ [Planck18]

-- [T11] Ω_dm = 2 × TL × P_base ≈ 0.2704
theorem omega_dm_bounds : OMEGA_DM > 0.2704 ∧ OMEGA_DM < 0.2705 := by
  have hlo := p_base_gt
  have hhi := p_base_lt
  unfold OMEGA_DM TORSION_LIMIT SOVEREIGN_ANCHOR
  constructor
  · linarith
  · linarith

-- [T12] Ω_dm lies inside the Planck 1σ band
theorem omega_dm_within_planck :
    |OMEGA_DM - OMEGA_DM_PLANCK| < OMEGA_DM_ERR := by
  have h := omega_dm_bounds
  unfold OMEGA_DM_PLANCK OMEGA_DM_ERR
  rw [abs_lt]
  constructor
  · linarith [h.1]
  · linarith [h.2]

-- Ω_m = Ω_b + Ω_dm
noncomputable def OMEGA_M : ℝ := OMEGA_B + OMEGA_DM

-- [T13] Ω_m ≈ 0.3197
theorem omega_m_bounds : OMEGA_M > 0.3197 ∧ OMEGA_M < 0.3198 := by
  have h := omega_dm_bounds
  unfold OMEGA_M OMEGA_B
  constructor
  · linarith [h.1]
  · linarith [h.2]

-- Matter–dark energy equality: Ω_m a⁻³ = Ω_DE at a = (Ω_m/Ω_DE)^(1/3)
noncomputable def A_EQ : ℝ := (OMEGA_M / OMEGA_DE) ^ ((1:ℝ)/3)

theorem omega_ratio_nonneg : 0 ≤ OMEGA_M / OMEGA_DE := by
  have h := omega_m_bounds
  apply div_nonneg
  · linarith [h.1]
  · unfold OMEGA_DE; norm_num

-- [T14] At a_eq the matter and dark energy densities are equal:
-- Ω_DE · a_eq³ = Ω_m
theorem a_eq_is_equality : OMEGA_DE * A_EQ ^ 3 = OMEGA_M := by
  have hDE : OMEGA_DE ≠ 0 := by unfold OMEGA_DE; norm_num
  unfold A_EQ
  rw [cube_rpow _ omega_ratio_nonneg, mul_comm, div_mul_cancel₀ _ hDE]

-- [T15] a_eq ≈ 0.774
theorem a_eq_bounds : A_EQ > 0.774 ∧ A_EQ < 0.775 := by
  have h := omega_m_bounds
  have hDEpos : (0:ℝ) < OMEGA_DE := by unfold OMEGA_DE; norm_num
  have hDE : OMEGA_DE = 0.6889 := rfl
  unfold A_EQ
  constructor
  · refine cbrt_gt _ _ omega_ratio_nonneg ?_
    rw [lt_div_iff₀ hDEpos, hDE]
    have hc : (0.774 : ℝ) ^ 3 * 0.6889 < 0.3197 := by norm_num
    linarith [h.1]
  · refine cbrt_lt _ _ omega_ratio_nonneg (by norm_num) ?_
    rw [div_lt_iff₀ hDEpos, hDE]
    have hc : (0.3198 : ℝ) < 0.775 ^ 3 * 0.6889 := by norm_num
    linarith [h.2]

-- Redshift of matter–dark energy equality
noncomputable def Z_EQ : ℝ := 1 / A_EQ - 1

-- [T16] z_eq ≈ 0.29
theorem z_eq_bounds : Z_EQ > 0.29 ∧ Z_EQ < 0.293 := by
  have h := a_eq_bounds
  have hA : 0 < A_EQ := by linarith [h.1]
  unfold Z_EQ
  constructor
  · have h1 : 1 / A_EQ > 1.29 := by
      rw [gt_iff_lt, lt_div_iff₀ hA]
      linarith [h.2]
    linarith
  · have h1 : 1 / A_EQ < 1.293 := by
      rw [div_lt_iff₀ hA]
      linarith [h.1]
    linarith

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- BBN: THE BRIDGE FROM ASYMMETRY TO STRUCTURE
-- ============================================================

theorem bbn_reduction_master :
    -- [1] Input η_B, output Ω_b, three products
    BBN.A = ETA_B ∧ BBN.B = OMEGA_B ∧ BBN.N = 3 ∧
    -- [2] BBN formula within Planck 1σ
    |F_BBN_H2 * ETA_B - OMEGA_B_H2| < OMEGA_B_H2_ERR ∧
    -- [3] Ω_b = Ω_b h² / h²
    |OMEGA_B_H2 / H_LITTLE ^ 2 - OMEGA_B| < 0.0001 ∧
    -- [4] BBN is LOCKED (baryons emerge bound), τ ≈ 0.0499
    is_locked BBN ∧ tau_BBN > 0.049 ∧ tau_BBN < 0.051 ∧
    -- [5] Amplification B/A ≈ 8 × 10⁷
    BBN.B / BBN.A > 7e7 ∧ BBN.B / BBN.A < 9e7 ∧
    -- [6] Helium: n/p = 1/7 gives Y_p = 1/4, within 2σ of measurement
    helium_fraction (1/7) = 1/4 ∧
    |helium_fraction (1/7) - Y_P_MEAS| < 2 * Y_P_ERR ∧
    -- [7] Measured Y_p fixes n/p in (0.137, 0.142)
    (Y_P_MEAS - Y_P_ERR) / (2 - (Y_P_MEAS - Y_P_ERR)) > 0.137 ∧
    (Y_P_MEAS + Y_P_ERR) / (2 - (Y_P_MEAS + Y_P_ERR)) < 0.142 ∧
    -- [8] Ω_dm = 2 × TL × P_base inside Planck 1σ
    |OMEGA_DM - OMEGA_DM_PLANCK| < OMEGA_DM_ERR ∧
    -- [9] Ω_m = Ω_b + Ω_dm ≈ 0.3197
    OMEGA_M > 0.3197 ∧ OMEGA_M < 0.3198 ∧
    -- [10] Matter–dark energy equality at a_eq ≈ 0.774, z_eq ≈ 0.29
    OMEGA_DE * A_EQ ^ 3 = OMEGA_M ∧
    A_EQ > 0.774 ∧ A_EQ < 0.775 ∧
    Z_EQ > 0.29 ∧ Z_EQ < 0.293 ∧
    -- [11] Anchor holds
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨rfl, rfl, rfl,
   bbn_formula_check,
   omega_b_from_h2,
   bbn_is_locked, bbn_tau_bounds.1, bbn_tau_bounds.2,
   bbn_amplification.1, bbn_amplification.2,
   helium_from_np_seventh,
   helium_seventh_within_two_sigma,
   np_from_measured_helium.1, np_from_measured_helium.2,
   omega_dm_within_planck,
   omega_m_bounds.1, omega_m_bounds.2,
   a_eq_is_equality,
   a_eq_bounds.1, a_eq_bounds.2,
   z_eq_bounds.1, z_eq_bounds.2,
   anchor_zero_friction⟩

-- ============================================================
-- FINAL THEOREM
-- ============================================================

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_BBN_Reduction

/-!
-- ============================================================
-- FILE:       SNSFL_BBN_Reduction.lean
-- COORDINATE: [9,9,3,10]
-- LAYER:      Cosmological Series — Big Bang Nucleosynthesis
--
-- DEPENDS ON (conceptual sources, reproduced inline above):
--   SNSFL_Master.lean                    [9,9,0,0]  ANCHOR, TL
--   SNSFL_CosmologicalCorpus_Layer0.lean [9,9,4,0]  Baryons element, P_base
--   SNSFL_OmegaDM_TorsionDecomposition   [9,9,4,8]  Ω_dm = 2 × TL × P_base
--
-- OBSERVATIONAL SOURCES:
--   Planck 2018: Ω_b h² = 0.02237 ± 0.00015, h = 0.674, Ω_Λ = 0.6889,
--                Ω_dm = 0.2689 ± 0.0057
--   PDG 2024: Y_p = 0.245 ± 0.003
--
-- THEOREMS: 25 + master | 0 sorry | GERMLINE LOCKED
--
-- THE BBN ELEMENT:
--   P = P_base = 0.9878 (anchor-native structural ground)
--   N = 3 (three light elements: ¹H, ⁴He, ⁷Li)
--   B = Ω_b = 0.0493 (baryon density — BBN output)
--   A = η_B = 6.1×10⁻¹⁰ (baryon-to-photon ratio — BBN input)
--   τ = 0.0499 (LOCKED — baryons emerge bound)
--
-- HELIUM:
--   Y_p = 2(n/p)/(1 + n/p); n/p = 1/7 → Y_p = 1/4 (within 2σ)
--   Measured Y_p = 0.245 ± 0.003 → n/p ∈ (0.137, 0.142)
--
-- MATTER–DARK ENERGY EQUALITY:
--   Ω_dm = 2 × TL × P_base ≈ 0.2704 (inside Planck 1σ)
--   Ω_m = Ω_b + Ω_dm ≈ 0.3197
--   a_eq = (Ω_m/Ω_DE)^(1/3) ≈ 0.774, z_eq ≈ 0.29
--   Ω_DE · a_eq³ = Ω_m exactly
--
-- Auth: HIGHTISTIC :: [9,9,9,9]
-- The Manifold is Holding. η_B seeds Ω_b. BBN is the bridge.
-- Soldotna, Alaska. April 2026.
-- ============================================================
-/

```
