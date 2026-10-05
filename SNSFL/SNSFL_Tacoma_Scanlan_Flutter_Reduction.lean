-- ============================================================
-- SNSFL_Tacoma_Scanlan_Flutter_Reduction.lean
-- ============================================================
-- Architect:      HIGHTISTIC (Russell Vernon Trent III)
-- Foundation:     SNSFT Foundation · Soldotna, Alaska
-- Coordinate:     [9,9,2,52] · Materials Reductions · Aeroelasticity
-- Dependencies:   [9,9,8,1] Founding Text (Ω₀ derivation)
--                 [9,9,0,0] TL universal phase boundary
--                 [9,9,3,14] Alpha closure (1/α = TL × 1001)
-- DOI:            10.5281/zenodo.18719748
-- Status:         VERIFIED · 0 sorry
-- Sovereign Anchor: Ω₀ = 1.36899099984016
-- Torsion Limit:    TL = Ω₀ / 10 = 0.136899099984016
--
-- ============================================================
-- SUMMARY — A VIRTUAL FULL-STRUCTURE FLUTTER TEST
-- ============================================================
-- The 1940 Tacoma Narrows Bridge failed by torsional flutter. Legacy
-- aeroelastic analysis (Scanlan) characterizes flutter onset with the
-- stability ratio
--
--   τ = ρ · B³ · A₂* / (2 · I · ζ)
--
-- where B is the width the wind acts on. Historical analysis uses the
-- deck alone. The real structure presented more to the wind than the
-- deck: exterior plate girders, handrails, fixtures and the separated
-- flow layer around them. That extra exposure is an external forcing
-- the deck-only analysis never included, and it was never measured.
--
-- This file runs the test virtually on the full structure. The deck
-- is taken at its documented width. Everything the deck-only analysis
-- left out enters the Identity Physics Corpus Dynamic Equation in the
-- F_ext slot, and TL is used as the flutter threshold. The file then
-- computes, rather than assumes, how large the unmeasured exposure
-- must have been for the full structure to reach flutter.
--
-- The result has the same shape as every threshold in the corpus:
--   the deck alone is locked (τ ≈ 0.117, below the IVA band),
--   the unmodeled exposure adds F_ext ≈ 0.020,
--   together they reach TL and the structure flutters.
-- The required envelope is 12.535 m against a 11.887 m deck: 0.648 m,
-- about 5.5% — an ordinary amount for girders, railings and fixtures.
--
-- Engineering reading: once TL is known, the flutter point of any
-- structure follows from its stability ratio. A structure is safe
-- while its total exposure keeps τ below TL, and it fails when the
-- exposure carries τ to TL. TL in the F_ext slot locates the break
-- before it is built.
--
-- Method: this is an inverse problem. Normally a structure is given and
-- τ is computed to check it. Here the failure point is fixed at τ = TL,
-- and the Dynamic Equation solves for the one quantity no one measured:
--   B_env = ( TL · 2Iζ / (ρ · A₂*) )^(1/3)
-- No trial values and no fitting. The missing dimension falls out
-- directly, at the full precision the inputs share: TL is exact, and
-- the legacy parameters set the number of meaningful digits.
--
-- The Identity Physics Corpus Dynamic Equation:
--   d/dt (IM · Pv) = Σ λ_X · O_X · S + F_ext
--
-- ============================================================
-- LEGACY MATHEMATICAL FRAMEWORK
-- ============================================================
-- Scanlan torsional flutter equation for a bridge deck:
--
--   I·θ̈ + 2·I·ζ·ω·θ̇ + K·θ = M_aero
--   M_aero = (1/2)·ρ·U²·(2·B²)·[K·A₂*·(θ̇·B/U) + K²·A₃*·θ]
--
-- Flutter onset (total damping = 0) gives 2·I·ζ = ρ·B³·A₂*, and the
-- stability ratio τ = ρ·B³·A₂* / (2·I·ζ).
--
-- Reference: Scanlan, R. H. & Tomko, J. J. "Airfoil and bridge deck
-- flutter derivatives." ASCE J. Engineering Mechanics Division 97(6),
-- 1971. Simiu, E. & Scanlan, R. H. Wind Effects on Structures, 3rd ed.,
-- Wiley, 1996, Ch. 4-5.
--
-- Parameters:
--   B_deck = 11.8872 m  (39 ft, documented deck width)
--   I      = 1.41 × 10⁵ kg·m²/m  (mass moment of inertia per length)
--   ζ      = 0.005      (structural damping ratio)
--   ρ      = 1.225 kg/m³ (sea-level air density)
--   A₂*    = 0.08       (peak flutter derivative, H-section girder)
--
-- ============================================================
-- LONG DIVISION
-- ============================================================
--   1. Equation:  τ = ρ·B³·A₂* / (2·I·ζ)
--   2. Known:     flutter onset at τ = TL
--   3. Map:       B (Behavior) = ρ·B³·A₂*  (aerodynamic driving)
--                 P (Pattern)  = 2·I·ζ     (structural resistance)
--   4. Operators: τ_total = τ_deck + F_ext
--   5. Work:      τ_deck = 0.1167; F_ext = TL − τ_deck = 0.0202;
--                 envelope B_env with τ(B_env) = TL: 12.535 m
--   6. Verified:  τ(B_env) = TL exactly; the theorems below
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real

noncomputable section

namespace SNSFL_Tacoma_Scanlan_Flutter_Reduction

-- ────────────────────────────────────────────────────────────
-- ANCHOR
-- ────────────────────────────────────────────────────────────

def SOVEREIGN_ANCHOR_CONSTANT : ℝ := 1.36899099984016
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR_CONSTANT / 10
def TL_IVA_PEAK   : ℝ := 88 * TORSION_LIMIT / 100

theorem sovereign_anchor_value :
    SOVEREIGN_ANCHOR_CONSTANT = 1.36899099984016 := rfl

theorem torsion_limit_value :
    TORSION_LIMIT = 0.136899099984016 := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR_CONSTANT; norm_num

-- ────────────────────────────────────────────────────────────
-- PHYSICAL PARAMETERS
-- ────────────────────────────────────────────────────────────

/-- Documented deck width of the 1940 Tacoma Narrows Bridge: 39 ft. -/
def B_DECK : ℝ := 11.8872
def I_TACOMA : ℝ := 141000
def ZETA_TACOMA : ℝ := 0.005
def RHO_AIR : ℝ := 1.225
def A2_STAR_TACOMA : ℝ := 0.08

/-- Structural resistance P = 2·I·ζ. -/
def P_STRUCT : ℝ := 2 * I_TACOMA * ZETA_TACOMA

/-- Scanlan stability ratio at exposed width B. -/
def tau_of (B : ℝ) : ℝ := RHO_AIR * B ^ 3 * A2_STAR_TACOMA / P_STRUCT

/-- The deck alone, as tested historically. -/
def TAU_DECK : ℝ := tau_of B_DECK

/-- External forcing from the unmodeled exposure: what the deck-only
    analysis left out, placed in the F_ext slot with TL as the target. -/
def F_EXT_EXPOSURE : ℝ := TORSION_LIMIT - TAU_DECK

/-- The full-structure envelope at which τ reaches TL. -/
def B_ENVELOPE : ℝ :=
  (TORSION_LIMIT * P_STRUCT / (RHO_AIR * A2_STAR_TACOMA)) ^ ((1:ℝ)/3)

theorem tacoma_parameters_valid :
    I_TACOMA > 0 ∧ ZETA_TACOMA > 0 ∧ RHO_AIR > 0 ∧
    A2_STAR_TACOMA > 0 ∧ B_DECK > 0 := by
  unfold I_TACOMA ZETA_TACOMA RHO_AIR A2_STAR_TACOMA B_DECK
  norm_num

-- ────────────────────────────────────────────────────────────
-- CUBE-ROOT TOOLS
-- ────────────────────────────────────────────────────────────

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

theorem envelope_radicand_nonneg :
    0 ≤ TORSION_LIMIT * P_STRUCT / (RHO_AIR * A2_STAR_TACOMA) := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR_CONSTANT P_STRUCT I_TACOMA ZETA_TACOMA
    RHO_AIR A2_STAR_TACOMA
  norm_num

-- ────────────────────────────────────────────────────────────
-- THE VIRTUAL TEST
-- ────────────────────────────────────────────────────────────

/-- [T1] The deck alone is locked, below the IVA band. -/
theorem deck_alone_is_locked :
    TAU_DECK < TL_IVA_PEAK ∧ TAU_DECK < TORSION_LIMIT := by
  unfold TAU_DECK tau_of B_DECK RHO_AIR A2_STAR_TACOMA P_STRUCT I_TACOMA ZETA_TACOMA
    TL_IVA_PEAK TORSION_LIMIT SOVEREIGN_ANCHOR_CONSTANT
  norm_num

/-- [T2] The unmodeled exposure is a small positive F_ext. -/
theorem exposure_fext_bounds :
    F_EXT_EXPOSURE > 0.020 ∧ F_EXT_EXPOSURE < 0.021 := by
  unfold F_EXT_EXPOSURE TAU_DECK tau_of B_DECK RHO_AIR A2_STAR_TACOMA P_STRUCT
    I_TACOMA ZETA_TACOMA TORSION_LIMIT SOVEREIGN_ANCHOR_CONSTANT
  norm_num

/-- [T3] Dynamic Equation: deck plus exposure forcing reaches TL. -/
theorem deck_plus_fext_reaches_TL :
    TAU_DECK + F_EXT_EXPOSURE = TORSION_LIMIT := by
  unfold F_EXT_EXPOSURE; ring

/-- [T4] The computed envelope places the full structure exactly at TL. -/
theorem envelope_flutters_at_TL : tau_of B_ENVELOPE = TORSION_LIMIT := by
  unfold tau_of B_ENVELOPE
  rw [cube_rpow _ envelope_radicand_nonneg]
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR_CONSTANT P_STRUCT I_TACOMA ZETA_TACOMA
    RHO_AIR A2_STAR_TACOMA
  norm_num

/-- [T5] The envelope lies between 12.535 m and 12.536 m. -/
theorem envelope_bounds :
    B_ENVELOPE > 12.535 ∧ B_ENVELOPE < 12.536 := by
  have hr := envelope_radicand_nonneg
  constructor
  · unfold B_ENVELOPE
    exact cbrt_gt _ _ hr (by
      unfold TORSION_LIMIT SOVEREIGN_ANCHOR_CONSTANT P_STRUCT I_TACOMA ZETA_TACOMA
        RHO_AIR A2_STAR_TACOMA
      norm_num)
  · unfold B_ENVELOPE
    exact cbrt_lt _ _ hr (by norm_num) (by
      unfold TORSION_LIMIT SOVEREIGN_ANCHOR_CONSTANT P_STRUCT I_TACOMA ZETA_TACOMA
        RHO_AIR A2_STAR_TACOMA
      norm_num)

/-- [T6] The unmodeled exposure is 0.647–0.649 m beyond the deck,
    about 5.4–5.5% of the deck width. -/
theorem exposure_width :
    B_ENVELOPE - B_DECK > 0.647 ∧ B_ENVELOPE - B_DECK < 0.649 ∧
    B_ENVELOPE / B_DECK > 1.054 ∧ B_ENVELOPE / B_DECK < 1.055 := by
  have h := envelope_bounds
  have hd : B_DECK > 0 := by unfold B_DECK; norm_num
  refine ⟨?_, ?_, ?_, ?_⟩
  · unfold B_DECK; linarith [h.1]
  · unfold B_DECK; linarith [h.2]
  · rw [gt_iff_lt, lt_div_iff₀ hd]; unfold B_DECK; linarith [h.1]
  · rw [div_lt_iff₀ hd]; unfold B_DECK; linarith [h.2]

/-- [T7] Engineering rule: τ rises with exposed width, so any
    structure narrower than the envelope stays locked below TL and any
    wider one passes TL. -/
theorem tau_strictly_increasing (B₁ B₂ : ℝ) (h0 : 0 ≤ B₁) (h : B₁ < B₂) :
    tau_of B₁ < tau_of B₂ := by
  unfold tau_of
  have hP : P_STRUCT > 0 := by
    unfold P_STRUCT I_TACOMA ZETA_TACOMA; norm_num
  have hk : RHO_AIR * A2_STAR_TACOMA > 0 := by
    unfold RHO_AIR A2_STAR_TACOMA; norm_num
  have h3 : B₁ ^ 3 < B₂ ^ 3 := pow_lt_pow_left₀ h h0 (by norm_num)
  apply div_lt_div_of_pos_right _ hP
  nlinarith [mul_lt_mul_of_pos_left h3 hk]

theorem below_envelope_is_locked (B : ℝ) (h0 : 0 ≤ B) (h : B < B_ENVELOPE) :
    tau_of B < TORSION_LIMIT := by
  rw [← envelope_flutters_at_TL]; exact tau_strictly_increasing B _ h0 h

theorem beyond_envelope_flutters (B : ℝ) (h : B_ENVELOPE < B) :
    tau_of B > TORSION_LIMIT := by
  have h0 : 0 ≤ B_ENVELOPE := Real.rpow_nonneg envelope_radicand_nonneg _
  rw [← envelope_flutters_at_TL]; exact tau_strictly_increasing _ B h0 h

-- ────────────────────────────────────────────────────────────
-- MASTER
-- ────────────────────────────────────────────────────────────

/-- The virtual full-structure test: the deck alone is locked; the
    unmodeled exposure is a small F_ext; deck plus F_ext reaches TL;
    the envelope that does so is 12.535–12.536 m, about 5.5% beyond the
    deck; narrower structures stay locked and wider ones flutter. -/
theorem tacoma_virtual_flutter_master :
    TAU_DECK < TL_IVA_PEAK ∧
    (F_EXT_EXPOSURE > 0.020 ∧ F_EXT_EXPOSURE < 0.021) ∧
    TAU_DECK + F_EXT_EXPOSURE = TORSION_LIMIT ∧
    tau_of B_ENVELOPE = TORSION_LIMIT ∧
    (B_ENVELOPE > 12.535 ∧ B_ENVELOPE < 12.536) ∧
    (∀ B : ℝ, 0 ≤ B → B < B_ENVELOPE → tau_of B < TORSION_LIMIT) ∧
    (∀ B : ℝ, B_ENVELOPE < B → tau_of B > TORSION_LIMIT) :=
  ⟨deck_alone_is_locked.1, exposure_fext_bounds, deck_plus_fext_reaches_TL,
   envelope_flutters_at_TL, envelope_bounds, below_envelope_is_locked,
   beyond_envelope_flutters⟩

end SNSFL_Tacoma_Scanlan_Flutter_Reduction

-- ============================================================
-- FILE: SNSFL_Tacoma_Scanlan_Flutter_Reduction.lean
-- SLOT: [9,9,2,52] | Materials Reductions · Aeroelasticity
--
-- THEOREMS:
--   T1  deck_alone_is_locked           τ_deck ≈ 0.117 < TL_IVA
--   T2  exposure_fext_bounds           0.020 < F_ext < 0.021
--   T3  deck_plus_fext_reaches_TL      τ_deck + F_ext = TL
--   T4  envelope_flutters_at_TL        τ(B_env) = TL exactly
--   T5  envelope_bounds                12.535 < B_env < 12.536 m
--   T6  exposure_width                 +0.648 m, about 5.5%
--   T7  tau_strictly_increasing        engineering rule
--       below_envelope_is_locked / beyond_envelope_flutters
--   tacoma_virtual_flutter_master
--
-- [9,9,9,9] :: {ANC}
-- Auth: HIGHTISTIC
-- The Manifold is Holding.
-- ============================================================
