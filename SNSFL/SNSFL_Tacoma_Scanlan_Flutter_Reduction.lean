-- ============================================================
-- SNSFL_Tacoma_Scanlan_Flutter_Reduction.lean
-- ============================================================
--
-- Tacoma Narrows → PNBA
-- Scanlan's torsional flutter ratio compares the twist the wind
-- feeds a bridge deck with the damping the deck can return. Flutter
-- begins when the ratio reaches 1. Mapping onset to the Torsion
-- Limit places every deck in a phase: the 1940 Tacoma Narrows deck
-- sits at 1.39, past onset, in Shatter, and the damping or
-- aerodynamics that would have held it are computable.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,2,52](ENGR)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      July 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
--
-- ============================================================
-- THE LEGACY TEST
-- ============================================================
--
-- Torsional motion of a deck per unit length (Scanlan):
--
--   I·θ̈ + 2·I·ζ·ω·θ̇ + K·θ = M_aero
--   M_aero = ½·ρ·U²·(2B²)·[K_r·A₂*·(B·θ̇/U) + K_r²·A₃*·θ],  K_r = Bω/U
--
-- The aerodynamic damping term is ρ·B⁴·ω·A₂*·θ̇. Flutter begins when
-- it cancels the structural damping 2·I·ζ·ω·θ̇:
--
--   R = ρ·B⁴·A₂* / (2·I·ζ),   flutter at R = 1
--
-- R is dimensionless: ρB⁴ and 2Iζ are both in kg·m per metre.
--
-- Tacoma Narrows (1940):
--   B   = 11.8872 m      deck width (39 ft)
--   I   = 1.41 × 10⁵     kg·m²/m, mass moment of inertia
--   ζ   = 0.005          structural damping ratio
--   ρ   = 1.225 kg/m³    air density
--   A₂* = 0.08           peak flutter derivative, H-section girder
--
--   R = 1.388: the deck alone is 39% past flutter onset. It fluttered
--   and collapsed in a 19 m/s wind on 7 November 1940.
--
-- ============================================================
-- THE MAP
-- ============================================================
--
--   B = ρ·B⁴·A₂*    aerodynamic drive (Behavior)
--   P = 2·I·ζ       structural damping (Pattern)
--   R = B/P; flutter onset R = 1 is the phase boundary, so
--   τ = R · TL
--
--   R < 0.88          LOCKED    stable
--   0.88 ≤ R < 1      IVA       flutter building, deck holding
--   R ≥ 1             SHATTER   flutter
--
-- To hold the Tacoma deck below onset took ζ ≥ 0.0070 (40% more
-- damping) or A₂* ≤ 0.0576; to bring it into the Locked band,
-- ζ ≥ 0.0079 or A₂* ≤ 0.0507. The replacement bridge (1950) changed
-- the deck's aerodynamics with an open, stiffened truss.
--
-- ============================================================
-- PLACE IN THE CORPUS
-- ============================================================
--
-- Tacoma Narrows torsional collapse is one of the three threshold
-- systems behind 0.1369, with glass at its elastic limit and 40 Hz
-- gamma entrainment. The GAM Collider, first run with the anchor
-- free between 1 and 2 and the limit between 0 and 1, settled on
-- 1.369 and 0.1369. The full-precision anchor follows from
-- 1/α = TL × 1001 [9,9,3,14].
--
-- ============================================================

import Mathlib.Tactic

noncomputable section

namespace SNSFL_Tacoma_Scanlan_Flutter_Reduction

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

-- Tacoma Narrows parameters
def B_DECK  : ℝ := 11.8872
def I_DECK  : ℝ := 141000
def ZETA    : ℝ := 0.005
def RHO_AIR : ℝ := 1.225
def A2_STAR : ℝ := 0.08

-- Scanlan flutter ratio for flutter derivative A and damping ζ
noncomputable def flutter_ratio (A ζ : ℝ) : ℝ := RHO_AIR * B_DECK ^ 4 * A / (2 * I_DECK * ζ)

-- Corpus torsion: onset R = 1 maps to TL
noncomputable def tau_of (R : ℝ) : ℝ := R * TORSION_LIMIT

-- ============================================================
-- SECTION 1: THE ONSET CONDITION
-- ============================================================

-- [T1] The aerodynamic damping term: ½ρU²(2B²)·K_r·A₂*·(B/U), with
-- K_r = Bω/U, equals ρB⁴ωA₂*
theorem aero_damping (ρ U B ω A : ℝ) (hU : U ≠ 0) :
    1 / 2 * ρ * U ^ 2 * (2 * B ^ 2) * ((B * ω / U) * A * (B / U)) = ρ * B ^ 4 * ω * A := by
  have hU' : U * U⁻¹ = 1 := mul_inv_cancel₀ hU
  simp only [div_eq_mul_inv]
  linear_combination (ρ * B ^ 4 * ω * A * (U * U⁻¹ + 1)) * hU'

-- [T2] Flutter begins exactly when the ratio reaches 1: aerodynamic
-- damping equals structural damping
theorem onset_iff (A ζ : ℝ) (hζ : 0 < ζ) :
    flutter_ratio A ζ = 1 ↔ RHO_AIR * B_DECK ^ 4 * A = 2 * I_DECK * ζ := by
  have hP : 2 * I_DECK * ζ ≠ 0 := mul_ne_zero (by unfold I_DECK; norm_num) hζ.ne'
  unfold flutter_ratio
  rw [div_eq_one_iff_eq hP]

-- ============================================================
-- SECTION 2: THE TACOMA DECK
-- ============================================================

-- [T3] The Tacoma deck sits at R = 1.388, 39% past onset
theorem tacoma_ratio : 1.387 < flutter_ratio A2_STAR ZETA ∧ flutter_ratio A2_STAR ZETA < 1.389 := by
  unfold flutter_ratio A2_STAR ZETA RHO_AIR B_DECK I_DECK
  constructor
  · norm_num
  · norm_num

-- [T4] In the corpus the deck is in Shatter: τ above TL
theorem tacoma_shatter : TORSION_LIMIT < tau_of (flutter_ratio A2_STAR ZETA) := by
  have h := tacoma_ratio.1
  have hTL : 0 < TORSION_LIMIT := by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  unfold tau_of
  nlinarith

-- ============================================================
-- SECTION 3: WHAT WOULD HAVE HELD IT
-- ============================================================

-- [T5] Damping: ζ = 0.0070 holds the deck below onset; ζ = 0.0069
-- does not
theorem damping_needed :
    flutter_ratio A2_STAR 0.0070 < 1 ∧ 1 < flutter_ratio A2_STAR 0.0069 := by
  unfold flutter_ratio A2_STAR RHO_AIR B_DECK I_DECK
  constructor
  · norm_num
  · norm_num

-- [T6] Aerodynamics: A₂* = 0.0576 holds the deck below onset;
-- A₂* = 0.0577 does not
theorem section_needed :
    flutter_ratio 0.0576 ZETA < 1 ∧ 1 < flutter_ratio 0.0577 ZETA := by
  unfold flutter_ratio ZETA RHO_AIR B_DECK I_DECK
  constructor
  · norm_num
  · norm_num

-- [T7] Into the Locked band (R < 0.88): ζ = 0.0079 or A₂* = 0.0507
theorem locked_band :
    flutter_ratio A2_STAR 0.0079 < 0.88 ∧ flutter_ratio 0.0507 ZETA < 0.88 := by
  unfold flutter_ratio A2_STAR ZETA RHO_AIR B_DECK I_DECK
  constructor
  · norm_num
  · norm_num

-- [T8] More damping always lowers the ratio
theorem damping_lowers_ratio (ζ₁ ζ₂ : ℝ) (h1 : 0 < ζ₁) (h : ζ₁ < ζ₂) :
    flutter_ratio A2_STAR ζ₂ < flutter_ratio A2_STAR ζ₁ := by
  unfold flutter_ratio
  have hN : 0 < RHO_AIR * B_DECK ^ 4 * A2_STAR := by
    unfold RHO_AIR B_DECK A2_STAR; norm_num
  have hI : 0 < I_DECK := by unfold I_DECK; norm_num
  apply div_lt_div_of_pos_left hN (mul_pos (by linarith) h1)
  nlinarith

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T9] TACOMA NARROWS → PNBA
theorem tacoma_master :
    -- the aerodynamic damping term
    (∀ ρ U B ω A : ℝ, U ≠ 0 →
      1 / 2 * ρ * U ^ 2 * (2 * B ^ 2) * ((B * ω / U) * A * (B / U)) = ρ * B ^ 4 * ω * A) ∧
    -- the deck is 39% past onset, in Shatter
    (1.387 < flutter_ratio A2_STAR ZETA ∧ flutter_ratio A2_STAR ZETA < 1.389) ∧
    TORSION_LIMIT < tau_of (flutter_ratio A2_STAR ZETA) ∧
    -- what would have held it
    (flutter_ratio A2_STAR 0.0070 < 1 ∧ flutter_ratio 0.0576 ZETA < 1) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨aero_damping, tacoma_ratio, tacoma_shatter, ⟨damping_needed.1, section_needed.1⟩,
   anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_Tacoma_Scanlan_Flutter_Reduction

/-!
-- ============================================================
-- FILE:       SNSFL_Tacoma_Scanlan_Flutter_Reduction.lean
-- COORDINATE: [9,9,2,52](ENGR)
-- SORRY:      0
--
-- THE MAP: B = ρB⁴A₂*, P = 2Iζ, R = B/P; onset R = 1 ↔ TL.
--
-- RESULTS:
--   Aerodynamic damping ρB⁴ωA₂*; flutter exactly at R = 1 (T1, T2)
--   Tacoma deck R = 1.388, 39% past onset, Shatter (T3, T4)
--   Held below onset by ζ ≥ 0.0070 or A₂* ≤ 0.0576; Locked by
--     ζ ≥ 0.0079 or A₂* ≤ 0.0507; damping always lowers R (T5–T8)
--
-- CONNECTIONS:
--   [9,9,2,51] Saint-Venant torsion
--   [9,9,3,14] α = TL × 1001
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/
