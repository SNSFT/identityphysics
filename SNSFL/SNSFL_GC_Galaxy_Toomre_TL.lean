-- ============================================================
-- SNSFL_GC_Galaxy_Toomre_TL.lean
-- ============================================================
--
-- Galaxy™: the disk mathematics of the Galaxy simulator
-- A galactic disk is stable where Toomre's Q exceeds 1 and breaks
-- into clumps where Q falls below 1. Identifying the boundary Q = 1
-- with τ = TL places every ring of the disk on the phase map with
-- τ = TL / Q. Q is a ratio of restoring support to self-gravity, so
-- τ = TL · B / P with P = σ_R κ and B = 3.36 G Σ. This file proves the
-- placement, the GAM Collider 2-beam fusion consequences, the
-- rotation-curve identities behind winding and corotation, and the
-- Milky Way placement at the Sun from cited measurements.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,3,XX](COSM)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      October 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
-- Simulator: uuia.app/galaxy
--
-- ============================================================
-- SOURCES
-- ============================================================
--
--   Toomre, A. (1964), ApJ 139, 1217
--     Q = σ_R κ / (3.36 G Σ); Q = 1 is the stability boundary
--   Bland-Hawthorn, J. & Gerhard, O. (2016), ARA&A 54, 529
--     R₀ = 8.2 kpc · Θ₀ = 238 km/s · disk scale length R_d = 2.6 kpc
--   McKee, C. F., Parravano, A. & Hollenbach, D. J. (2015), ApJ 814, 13
--     Σ(R₀) = 47.1 M☉/pc² (stars 33.4 + gas 13.7)
--   Dehnen, W. & Binney, J. J. (1998), MNRAS 298, 387
--     σ_R(R₀) = 38 km/s, old thin disk
--   G = 4.30091 × 10⁻³ pc (km/s)² / M☉ (Newton's G in astronomical
--     units; carried as G_N in the Gravity Reduction [9,9,10,1])
--   Lin, C. C. & Shu, F. H. (1964), ApJ 140, 646
--     density-wave arms; crest contrast (1 + ε)/(1 − ε)
--   GAM Collider v15 (Geometric Axiomatic Module Collider),
--     8-Beam Fusion Theorem [9,9,2,3.8], 2-beam mode:
--     P = P₁P₂/(P₁+P₂) · N = N₁+N₂ · B = B₁+B₂−2·min(B₁,B₂) · A = max
--
-- ============================================================
-- THE MAP
-- ============================================================
--
--   P (Pattern)   σ_R κ       restoring support: random motion
--                             and epicyclic oscillation
--   B (Behavior)  3.36 G Σ    load of the disk's own gravity
--   Q = P / B                 Toomre stability
--   τ = TL / Q = TL · B / P   boundary identification Q = 1 ↔ τ = TL
--
--   Q > 25/22   Locked       1 < Q ≤ 25/22   IVA Peak
--   Q ≤ 1       Shatter      (25/22 = 1/0.88)
--
-- Rotation curve: v(R) = Θ₀ R / √(R² + R_c²), R_c = 352/135 kpc
--   Ω² = Θ₀² / (R² + R_c²)
--   κ² = Θ₀² (2R² + 4R_c²) / (R² + R_c²)²
--
-- ============================================================

import Mathlib.Tactic

noncomputable section

namespace SNSFL_GC_Galaxy_Toomre_TL

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10
def TL_IVA           : ℝ := 88 * TORSION_LIMIT / 100

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- Measured inputs (units: kpc, km/s, M☉)
def R_SUN       : ℝ := 8.2              -- Bland-Hawthorn & Gerhard 2016
def THETA0      : ℝ := 238              -- Bland-Hawthorn & Gerhard 2016
def R_D         : ℝ := 2.6              -- Bland-Hawthorn & Gerhard 2016
def SIGMA0_KPC2 : ℝ := 47.1e6           -- M☉/kpc², McKee et al. 2015
def SIGMA_R0    : ℝ := 38               -- km/s, Dehnen & Binney 1998
def G_KPC       : ℝ := 4.30091e-6       -- kpc (km/s)² / M☉
def RC_KPC      : ℝ := 352 / 135        -- rotation-curve core radius
def R_CO        : ℝ := 32 / 3           -- corotation radius of the arm pattern

-- Placement by Toomre Q
def tau_of_Q (Q : ℝ) : ℝ := TORSION_LIMIT / Q
def toomreQ (sig kap g surf : ℝ) : ℝ := sig * kap / (3.36 * g * surf)

-- Rotation curve
def omega_sq (R : ℝ) : ℝ := THETA0 ^ 2 / (R ^ 2 + RC_KPC ^ 2)
def kappa_sq (R : ℝ) : ℝ := THETA0 ^ 2 * (2 * R ^ 2 + 4 * RC_KPC ^ 2) / (R ^ 2 + RC_KPC ^ 2) ^ 2

-- Exponential disk profiles
def sigma_R (R : ℝ) : ℝ := SIGMA_R0 * Real.exp (-(R - R_SUN) / (2 * R_D))
def surf (R : ℝ) : ℝ := SIGMA0_KPC2 * Real.exp (-(R - R_SUN) / R_D)
def toomreQ_at (R : ℝ) : ℝ :=
  sigma_R R * Real.sqrt (kappa_sq R) / (3.36 * G_KPC * surf R)

-- GAM Collider 2-beam fusion
def fuseP (P₁ P₂ : ℝ) : ℝ := P₁ * P₂ / (P₁ + P₂)
def fuseB (B₁ B₂ : ℝ) : ℝ := B₁ + B₂ - 2 * min B₁ B₂

theorem tl_pos : 0 < TORSION_LIMIT := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- ============================================================
-- SECTION 1: PLACEMENT BY TOOMRE Q
-- ============================================================

-- [T1] The boundary: Q = 1 places a ring exactly at TL
theorem boundary : tau_of_Q 1 = TORSION_LIMIT := by
  unfold tau_of_Q; simp

-- [T2] A stable ring (Q > 1) sits below TL
theorem stable_below_tl (Q : ℝ) (hQ : 1 < Q) : tau_of_Q Q < TORSION_LIMIT := by
  have hT := tl_pos
  unfold tau_of_Q
  rw [div_lt_iff₀ (by linarith)]
  nlinarith [mul_pos hT (sub_pos.mpr hQ)]

-- [T3] An unstable ring (0 < Q ≤ 1) shatters
theorem unstable_shatters (Q : ℝ) (h0 : 0 < Q) (h1 : Q ≤ 1) :
    TORSION_LIMIT ≤ tau_of_Q Q := by
  have hT := tl_pos
  unfold tau_of_Q
  rw [le_div_iff₀ h0]
  nlinarith [mul_le_mul_of_nonneg_left h1 hT.le]

-- [T4] 1 < Q ≤ 25/22 places a ring in the IVA corridor
theorem iva_corridor (Q : ℝ) (h1 : 1 < Q) (h2 : Q ≤ 25 / 22) :
    TL_IVA ≤ tau_of_Q Q ∧ tau_of_Q Q < TORSION_LIMIT := by
  have hT := tl_pos
  refine ⟨?_, stable_below_tl Q h1⟩
  unfold tau_of_Q TL_IVA
  rw [le_div_iff₀ (by linarith)]
  nlinarith [mul_le_mul_of_nonneg_left h2 hT.le]

-- [T5] Q > 25/22 places a ring in Locked
theorem locked_band (Q : ℝ) (hQ : 25 / 22 < Q) :
    0 < tau_of_Q Q ∧ tau_of_Q Q < TL_IVA := by
  have hT := tl_pos
  have hQ0 : 0 < Q := by linarith
  refine ⟨div_pos hT hQ0, ?_⟩
  unfold tau_of_Q TL_IVA
  rw [div_lt_iff₀ hQ0]
  nlinarith [mul_lt_mul_of_pos_left hQ hT]

-- [T6] Pattern dominance: τ = TL / Q = TL · (3.36 G Σ) / (σ_R κ),
-- a B / P ratio with B = 3.36 G Σ and P = σ_R κ
theorem pattern_dominance (sig kap g surf : ℝ) :
    tau_of_Q (toomreQ sig kap g surf) = TORSION_LIMIT * (3.36 * g * surf) / (sig * kap) := by
  unfold tau_of_Q toomreQ
  rw [div_div_eq_mul_div]

-- ============================================================
-- SECTION 2: GAM COLLIDER 2-BEAM FUSION
-- ============================================================

-- [T7] Same-B Necessity: the fused Behavior is |B₁ − B₂|
theorem same_b (B₁ B₂ : ℝ) : fuseB B₁ B₂ = |B₁ - B₂| := by
  unfold fuseB
  rcases le_total B₁ B₂ with h | h
  · rw [min_eq_left h, abs_of_nonpos (by linarith)]; ring
  · rw [min_eq_right h, abs_of_nonneg (by linarith)]; ring

-- [T8] Two stars of equal Behavior fuse to Noble
theorem equal_b_noble (B : ℝ) : fuseB B B = 0 := by
  unfold fuseB; rw [min_self]; ring

-- [T9] A fused body has less Pattern than either parent
theorem fused_pattern_shrinks (P₁ P₂ : ℝ) (h₁ : 0 < P₁) (h₂ : 0 < P₂) :
    fuseP P₁ P₂ < P₁ ∧ fuseP P₁ P₂ < P₂ := by
  unfold fuseP
  constructor
  · rw [div_lt_iff₀ (by linarith)]; nlinarith [mul_pos h₁ h₁]
  · rw [div_lt_iff₀ (by linarith)]; nlinarith [mul_pos h₂ h₂]

-- [T10] Fragile clumps: for the same Behavior d > 0, the fused body
-- carries more torsion than a parent of Pattern P₁
theorem fused_torsion_rises (P₁ P₂ d : ℝ) (h₁ : 0 < P₁) (h₂ : 0 < P₂) (hd : 0 < d) :
    d / P₁ < d / fuseP P₁ P₂ := by
  have hf : 0 < fuseP P₁ P₂ := by
    unfold fuseP; exact div_pos (mul_pos h₁ h₂) (add_pos h₁ h₂)
  rw [div_lt_div_iff₀ h₁ hf]
  exact mul_lt_mul_of_pos_left (fused_pattern_shrinks P₁ P₂ h₁ h₂).1 hd

-- ============================================================
-- SECTION 3: THE ROTATION CURVE
-- ============================================================

theorem theta_sq_pos : 0 < THETA0 ^ 2 := by unfold THETA0; norm_num
theorem rc_sq_pos : 0 < RC_KPC ^ 2 := by unfold RC_KPC; norm_num

-- [T11] Ω falls with radius: inner stars lap outer ones, so radial
-- features wind into trailing spirals
theorem omega_decreasing (R₁ R₂ : ℝ) (h0 : 0 ≤ R₁) (h : R₁ < R₂) :
    omega_sq R₂ < omega_sq R₁ := by
  have hc := rc_sq_pos
  have hT := theta_sq_pos
  have hp1 : 0 < R₁ ^ 2 + RC_KPC ^ 2 := by nlinarith [sq_nonneg R₁]
  have hp2 : 0 < R₂ ^ 2 + RC_KPC ^ 2 := by nlinarith [sq_nonneg R₂]
  unfold omega_sq
  rw [div_lt_div_iff₀ hp2 hp1]
  exact mul_lt_mul_of_pos_left (by nlinarith) hT

-- [T12] Corotation: inside R_CO stars outrun the arm pattern,
-- outside it the pattern overtakes the stars
theorem corotation_flip (R : ℝ) (h0 : 0 ≤ R) :
    (R < R_CO → omega_sq R_CO < omega_sq R) ∧
    (R_CO < R → omega_sq R < omega_sq R_CO) := by
  have hco : (0 : ℝ) ≤ R_CO := by unfold R_CO; norm_num
  exact ⟨fun h => omega_decreasing R R_CO h0 h, fun h => omega_decreasing R_CO R hco h⟩

-- [T13] The epicyclic frequency lies between √2 Ω (flat curve) and
-- 2 Ω (solid-body rotation): 2Ω² < κ² < 4Ω²
theorem kappa_bounds (R : ℝ) (hR : 0 < R) :
    2 * omega_sq R < kappa_sq R ∧ kappa_sq R < 4 * omega_sq R := by
  have hc := rc_sq_pos
  have hT := theta_sq_pos
  have hD : 0 < R ^ 2 + RC_KPC ^ 2 := by nlinarith [sq_nonneg R]
  have hD2 : 0 < (R ^ 2 + RC_KPC ^ 2) ^ 2 := pow_pos hD 2
  unfold omega_sq kappa_sq
  constructor
  · rw [mul_div_assoc', div_lt_div_iff₀ hD hD2]
    nlinarith [mul_pos (mul_pos hT hc) hD]
  · rw [mul_div_assoc', div_lt_div_iff₀ hD2 hD]
    nlinarith [mul_pos (mul_pos hT (pow_pos hR 2)) hD]

-- [T14] Density-wave crest contrast at crest slowdown ε = 0.6
theorem arm_contrast : (1 + (0.6 : ℝ)) / (1 - 0.6) = 4 := by norm_num

-- ============================================================
-- SECTION 4: THE MILKY WAY AT THE SUN
-- ============================================================

-- [T15] At R₀ the exponential profiles return the measured values
theorem profiles_at_sun : sigma_R R_SUN = SIGMA_R0 ∧ surf R_SUN = SIGMA0_KPC2 := by
  unfold sigma_R surf; simp

-- [T16] Q(R₀) from the cited inputs: 2.27 < Q < 2.29
theorem q_at_sun : 2.27 < toomreQ_at R_SUN ∧ toomreQ_at R_SUN < 2.29 := by
  have hk1 : (40.8 : ℝ) ^ 2 < kappa_sq R_SUN := by
    unfold kappa_sq THETA0 RC_KPC R_SUN; norm_num
  have hk2 : kappa_sq R_SUN < (40.9 : ℝ) ^ 2 := by
    unfold kappa_sq THETA0 RC_KPC R_SUN; norm_num
  have hs1 : (40.8 : ℝ) < Real.sqrt (kappa_sq R_SUN) := by
    have h := Real.sqrt_lt_sqrt (by norm_num : (0 : ℝ) ≤ 40.8 ^ 2) hk1
    rwa [Real.sqrt_sq (by norm_num : (0 : ℝ) ≤ 40.8)] at h
  have hs2 : Real.sqrt (kappa_sq R_SUN) < (40.9 : ℝ) := by
    have h := Real.sqrt_lt_sqrt (by unfold kappa_sq THETA0 RC_KPC R_SUN; positivity) hk2
    rwa [Real.sqrt_sq (by norm_num : (0 : ℝ) ≤ 40.9)] at h
  have hden : (0 : ℝ) < 3.36 * G_KPC * SIGMA0_KPC2 := by
    unfold G_KPC SIGMA0_KPC2; norm_num
  unfold toomreQ_at
  rw [profiles_at_sun.1, profiles_at_sun.2]
  constructor
  · rw [lt_div_iff₀ hden]; unfold SIGMA_R0 G_KPC SIGMA0_KPC2; nlinarith [hs1]
  · rw [div_lt_iff₀ hden]; unfold SIGMA_R0 G_KPC SIGMA0_KPC2; nlinarith [hs2]

-- [T17] The Milky Way disk at the Sun is stable and Locked
theorem milky_way_locked_at_sun :
    1 < toomreQ_at R_SUN ∧
    0 < tau_of_Q (toomreQ_at R_SUN) ∧ tau_of_Q (toomreQ_at R_SUN) < TL_IVA :=
  ⟨by linarith [q_at_sun.1], locked_band _ (by linarith [q_at_sun.1])⟩

-- ============================================================
-- SECTION 5: THE INTEGER N-BOTTLENECK
-- ============================================================

-- [T18] With whole-number P and B = 1: P ≤ 7 shatters (1/7 ≥ TL),
-- P = 8 is the only IVA value (TL_IVA ≤ 1/8 < TL), P ≥ 9 is Locked
theorem integer_bottleneck :
    TORSION_LIMIT ≤ 1 / 7 ∧ TL_IVA ≤ 1 / 8 ∧ (1 : ℝ) / 8 < TORSION_LIMIT ∧
    (1 : ℝ) / 9 < TL_IVA := by
  unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  refine ⟨?_, ?_, ?_, ?_⟩ <;> norm_num

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T19] THE GALAXY DISK ON THE PHASE MAP
theorem galaxy_master :
    -- the boundary Q = 1 ↔ τ = TL
    tau_of_Q 1 = TORSION_LIMIT ∧
    -- Same-B Necessity and the Noble twin
    (∀ B₁ B₂ : ℝ, fuseB B₁ B₂ = |B₁ - B₂|) ∧ (∀ B : ℝ, fuseB B B = 0) ∧
    -- fused bodies lose Pattern
    (∀ P₁ P₂ : ℝ, 0 < P₁ → 0 < P₂ → fuseP P₁ P₂ < P₁ ∧ fuseP P₁ P₂ < P₂) ∧
    -- differential rotation
    (∀ R₁ R₂ : ℝ, 0 ≤ R₁ → R₁ < R₂ → omega_sq R₂ < omega_sq R₁) ∧
    -- density-wave contrast
    (1 + (0.6 : ℝ)) / (1 - 0.6) = 4 ∧
    -- the Milky Way at the Sun: 2.27 < Q < 2.29, Locked
    (2.27 < toomreQ_at R_SUN ∧ toomreQ_at R_SUN < 2.29) ∧
    (0 < tau_of_Q (toomreQ_at R_SUN) ∧ tau_of_Q (toomreQ_at R_SUN) < TL_IVA) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨boundary, same_b, equal_b_noble, fused_pattern_shrinks, omega_decreasing,
   arm_contrast, q_at_sun, milky_way_locked_at_sun.2, anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_GC_Galaxy_Toomre_TL

/-!
-- ============================================================
-- FILE:       SNSFL_GC_Galaxy_Toomre_TL.lean
-- COORDINATE: [9,9,3,XX](COSM)
-- SORRY:      0
--
-- τ = TL / Q · Q = 1 ↔ τ = TL
--
-- RESULTS:
--   Placement by Toomre Q: boundary, stable below TL, unstable
--     shatters, IVA corridor 1 < Q ≤ 25/22, Locked Q > 25/22 (T1–T5)
--   Pattern dominance: τ = TL · (3.36 G Σ)/(σ_R κ), a B/P ratio (T6)
--   GAM Collider 2-beam fusion: B = |B₁ − B₂|, equal B → Noble, fused
--     Pattern below both parents, fused torsion rises (T7–T10)
--   Rotation curve: Ω falls with radius, corotation flip,
--     2Ω² < κ² < 4Ω², density-wave contrast 4 (T11–T14)
--   Milky Way at R₀ from cited inputs: 2.27 < Q < 2.29, Locked (T15–T17)
--   Integer N-bottleneck: B = 1 needs P ≥ 8; 1/8 is the only IVA
--     value (T18)
--
-- CONNECTIONS:
--   [9,9,2,3.8] 8-Beam Fusion Theorem (2-beam mode)
--   [9,9,10,1] Gravity Reduction · [9,9,0,4.7] QM Reduction
--   [9,9,3,21] Electron Geometry · [9,9,3,22] String-Breaking
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/
