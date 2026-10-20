-- ============================================================
-- SNSFL_GC_IMatter_TLCell_Matter.lean
-- ============================================================
--
-- IMatter™: matter built from TL-cells and counted
-- A solid body is filled with TL-cells, cubes that each carry one
-- density. Mass, mean density, moment of inertia and core share are
-- sums over cells; as the cells shrink, each sum converges to the
-- radial integral of the density. This file proves those integrals
-- exactly for the bodies the simulator fills:
--   Layered shells      exact mass and moment of inertia; a uniform
--                       ball gives I/MR² = 2/5; a dense core gives
--                       I/MR² < 2/5
--   Earth (PREM)        mean density, I/MR² and core share from the
--                       Preliminary Reference Earth Model polynomials
--   Moon and Mars       published cores and crusts, mantle density
--                       solved from the measured mass; the predicted
--                       I/MR² lands inside the measured uncertainty
--   Settling            any rule whose moves lower a whole-number
--                       potential stops
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,3,27](COSM)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      October 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
-- Simulator: uuia.app/imatter
--
-- ============================================================
-- SOURCES
-- ============================================================
--
--   Dziewonski, A. M. & Anderson, D. L. (1981), Physics of the Earth
--     and Planetary Interiors 25, 297: Preliminary Reference Earth
--     Model, density ρ(x) in g/cm³ as polynomials in x = r / 6371 km
--   IERS Conventions (2010): GM⊕ = 3.986004418 × 10¹⁴ m³/s²;
--     IUGG mean radius 6371.0 km; measured mean density 5.5134 g/cm³
--   Yoder, C. F. (1995), AGU Reference Shelf 1: Earth I/MR² = 0.3307
--   Weber, R. C. et al. (2011), Science 331, 309: lunar inner core
--     240 km, 8.0 g/cm³; fluid outer core to 330 km, 5.1 g/cm³;
--     partial-melt layer to 480 km, 3.4 g/cm³
--   Wieczorek, M. A. et al. (2013), Science 339, 671: lunar crust
--     2.55 g/cm³, 40 km thick
--   Moon: R = 1737.4 km, GM = 4902.80 km³/s² (GRAIL);
--     I/MR² = 0.3929 ± 0.0009 (Williams, Newhall & Dickey 1996)
--   Stähler, S. C. et al. (2021), Science 373, 443: Mars core radius
--     1830 km, density 5.7–6.3 g/cm³
--   Knapmeyer-Endrun, B. et al. (2021) and Khan, A. et al. (2021),
--     Science 373: Mars crust and upper mantle
--   Mars: R = 3389.5 km, GM = 42828.37 km³/s²;
--     I/MR² = 0.3644 ± 0.0005 (Konopliv et al. 2011, Icarus 211)
--   CODATA 2018: G = 6.67430 × 10⁻¹¹ m³/(kg·s²)
--
-- ============================================================
-- THE COUNT
-- ============================================================
--
--   Cell i: density ρᵢ, edge h, center (xᵢ, yᵢ, zᵢ)
--   M = Σ ρᵢ h³          I = Σ ρᵢ h³ (xᵢ² + yᵢ²)
--   Sphere limit, density ρ(r):
--     M = 4π ∫ ρ r² dr        I = (8π/3) ∫ ρ r⁴ dr
--   Constant-density shell a ≤ r ≤ b:
--     M = (4/3)π ρ (b³ − a³)  I = (8/15)π ρ (b⁵ − a⁵)
--   I/MR² = (2/5) Σ ρ (b⁵ − a⁵) / (R² Σ ρ (b³ − a³))
--   Normalized radius x = r/R:
--     mean density ρ̄ = 3 ∫₀¹ ρ x² dx
--     I/MR²          = (2/3) ∫₀¹ ρ x⁴ dx / ∫₀¹ ρ x² dx
--   π cancels from every ratio; the ratios are exact rationals.
--   Units: ρ in g/cm³, r in km; M in kg = (4/3)π · 10¹² · Σ ρ (b³ − a³).
--
-- ============================================================

import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic

noncomputable section

namespace SNSFL_GC_IMatter_TLCell_Matter

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

theorem tl_pos : 0 < TORSION_LIMIT := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- ============================================================
-- LAYER 0 — LOSSLESS REDUCTION
-- ============================================================

def LosslessReduction (classical_eq pnba_output : ℝ) : Prop :=
  pnba_output = classical_eq

structure LongDivisionResult where
  domain       : String
  classical_eq : ℝ
  pnba_output  : ℝ
  step6_passes : pnba_output = classical_eq

-- ============================================================
-- SECTION 1: SHELLS
-- ============================================================

-- Shell weights with the factors (4/3)π and (8/15)π removed
def mShell (ρ a b : ℝ) : ℝ := ρ * (b ^ 3 - a ^ 3)
def iShell (ρ a b : ℝ) : ℝ := ρ * (b ^ 5 - a ^ 5)

-- I/MR² of a core (0 to c, density ρc) inside a mantle (c to R, density ρm)
def imr2_two (ρc ρm c R : ℝ) : ℝ :=
  (2 / 5) * (iShell ρc 0 c + iShell ρm c R) / ((mShell ρc 0 c + mShell ρm c R) * R ^ 2)

-- [T1] A uniform ball: I/MR² = 2/5 exactly
theorem uniform_ball (ρ R : ℝ) (hρ : 0 < ρ) (hR : 0 < R) :
    (2 / 5) * iShell ρ 0 R / (mShell ρ 0 R * R ^ 2) = 2 / 5 := by
  unfold iShell mShell
  have h1 : ρ * (R ^ 3 - 0 ^ 3) * R ^ 2 = ρ * R ^ 5 := by ring
  have h2 : ρ * (R ^ 5 - 0 ^ 5) = ρ * R ^ 5 := by ring
  have h3 : ρ * R ^ 5 ≠ 0 := (mul_pos hρ (pow_pos hR 5)).ne'
  rw [h1, h2, mul_div_assoc, div_self h3, mul_one]

-- [T2] Equal core and mantle densities is the uniform ball
theorem two_layer_uniform (ρ c R : ℝ) (hρ : 0 < ρ) (hR : 0 < R) :
    imr2_two ρ ρ c R = 2 / 5 := by
  unfold imr2_two iShell mShell
  have h1 : (ρ * (c ^ 3 - 0 ^ 3) + ρ * (R ^ 3 - c ^ 3)) * R ^ 2 = ρ * R ^ 5 := by ring
  have h2 : ρ * (c ^ 5 - 0 ^ 5) + ρ * (R ^ 5 - c ^ 5) = ρ * R ^ 5 := by ring
  have h3 : ρ * R ^ 5 ≠ 0 := (mul_pos hρ (pow_pos hR 5)).ne'
  rw [h1, h2, mul_div_assoc, div_self h3, mul_one]

-- Powers keep order on positive numbers
theorem square_lt {c R : ℝ} (hc : 0 < c) (hcR : c < R) : c ^ 2 < R ^ 2 := by
  have hR : 0 < R := lt_trans hc hcR
  nlinarith [mul_pos (sub_pos.mpr hcR) (add_pos hR hc)]

theorem cube_lt {c R : ℝ} (hc : 0 < c) (hcR : c < R) : c ^ 3 < R ^ 3 := by
  have hR : 0 < R := lt_trans hc hcR
  have hs : 0 < R * R + R * c + c * c := by
    have := mul_pos hR hR; have := mul_pos hR hc; have := mul_pos hc hc; linarith
  nlinarith [mul_pos (sub_pos.mpr hcR) hs]

-- The gap between the uniform value and the two-layer value
theorem condensation_identity (ρc ρm c R : ℝ) :
    (mShell ρc 0 c + mShell ρm c R) * R ^ 2 - (iShell ρc 0 c + iShell ρm c R)
      = (ρc - ρm) * c ^ 3 * (R ^ 2 - c ^ 2) := by
  unfold mShell iShell; ring

-- [T3] A core denser than its mantle: I/MR² < 2/5 (central condensation)
theorem dense_core_below_two_fifths (ρc ρm c R : ℝ)
    (hm : 0 < ρm) (hcm : ρm < ρc) (hc : 0 < c) (hcR : c < R) :
    imr2_two ρc ρm c R < 2 / 5 := by
  have hR : 0 < R := lt_trans hc hcR
  have h3 : c ^ 3 < R ^ 3 := cube_lt hc hcR
  have h2 : c ^ 2 < R ^ 2 := square_lt hc hcR
  have hc3 : (0 : ℝ) < c ^ 3 := pow_pos hc 3
  have hρc : 0 < ρc := by linarith
  have hD : 0 < (mShell ρc 0 c + mShell ρm c R) * R ^ 2 := by
    unfold mShell
    have a : 0 < ρc * (c ^ 3 - 0 ^ 3) := by nlinarith
    have b : 0 < ρm * (R ^ 3 - c ^ 3) := mul_pos hm (by linarith)
    exact mul_pos (by linarith) (pow_pos hR 2)
  have hgap : 0 < (ρc - ρm) * c ^ 3 * (R ^ 2 - c ^ 2) :=
    mul_pos (mul_pos (by linarith) hc3) (by linarith)
  have key := condensation_identity ρc ρm c R
  unfold imr2_two
  rw [div_lt_iff₀ hD]
  nlinarith

-- [T4] A core lighter than its mantle: I/MR² > 2/5
theorem light_core_above_two_fifths (ρc ρm c R : ℝ)
    (hc0 : 0 < ρc) (hcm : ρc < ρm) (hc : 0 < c) (hcR : c < R) :
    2 / 5 < imr2_two ρc ρm c R := by
  have hR : 0 < R := lt_trans hc hcR
  have h3 : c ^ 3 < R ^ 3 := cube_lt hc hcR
  have h2 : c ^ 2 < R ^ 2 := square_lt hc hcR
  have hc3 : (0 : ℝ) < c ^ 3 := pow_pos hc 3
  have hD : 0 < (mShell ρc 0 c + mShell ρm c R) * R ^ 2 := by
    unfold mShell
    have a : 0 < ρc * (c ^ 3 - 0 ^ 3) := by nlinarith
    have b : 0 < ρm * (R ^ 3 - c ^ 3) := mul_pos (by linarith) (by linarith)
    exact mul_pos (by linarith) (pow_pos hR 2)
  have hgap : (ρc - ρm) * c ^ 3 * (R ^ 2 - c ^ 2) < 0 := by
    have h1 : ρc - ρm < 0 := by linarith
    have h4 : (0 : ℝ) < c ^ 3 * (R ^ 2 - c ^ 2) := mul_pos hc3 (by linarith)
    have := mul_neg_of_neg_of_pos h1 h4
    linarith
  have key := condensation_identity ρc ρm c R
  unfold imr2_two
  rw [lt_div_iff₀ hD]
  nlinarith

-- Uniform-ball lossless instance
def uniform_ball_lossless : LongDivisionResult where
  domain       := "Uniform ball: shell sum against the classical moment of inertia 2/5"
  classical_eq := 2 / 5
  pnba_output  := (2 / 5) * iShell 1 0 1 / (mShell 1 0 1 * 1 ^ 2)
  step6_passes := by unfold iShell mShell; norm_num

-- ============================================================
-- SECTION 2: EARTH FROM PREM
-- ============================================================

-- ∫ (c₀ + c₁x + c₂x² + c₃x³) x² dx and x⁴ dx from x₀ to x₁
def m2 (c0 c1 c2 c3 x0 x1 : ℝ) : ℝ :=
  c0 * (x1 ^ 3 - x0 ^ 3) / 3 + c1 * (x1 ^ 4 - x0 ^ 4) / 4
    + c2 * (x1 ^ 5 - x0 ^ 5) / 5 + c3 * (x1 ^ 6 - x0 ^ 6) / 6
def m4 (c0 c1 c2 c3 x0 x1 : ℝ) : ℝ :=
  c0 * (x1 ^ 5 - x0 ^ 5) / 5 + c1 * (x1 ^ 6 - x0 ^ 6) / 6
    + c2 * (x1 ^ 7 - x0 ^ 7) / 7 + c3 * (x1 ^ 8 - x0 ^ 8) / 8

-- Normalized radius
def X (r : ℝ) : ℝ := r / 6371

-- PREM core: inner core 0–1221.5 km, outer core 1221.5–3480 km
def PREM_CORE2 : ℝ :=
  m2 13.0885 0 (-8.8381) 0 (X 0) (X 1221.5)
  + m2 12.5815 (-1.2638) (-3.6426) (-5.5281) (X 1221.5) (X 3480)

-- PREM, all layers: ∫₀¹ ρ x² dx
def PREM2 : ℝ :=
  PREM_CORE2
  + m2 7.9565 (-6.4761) 5.5283 (-3.0807) (X 3480) (X 5701)
  + m2 5.3197 (-1.4836) 0 0 (X 5701) (X 5771)
  + m2 11.2494 (-8.0298) 0 0 (X 5771) (X 5971)
  + m2 7.1089 (-3.8045) 0 0 (X 5971) (X 6151)
  + m2 2.6910 0.6924 0 0 (X 6151) (X 6346.6)
  + m2 2.9 0 0 0 (X 6346.6) (X 6356)
  + m2 2.6 0 0 0 (X 6356) (X 6368)
  + m2 1.02 0 0 0 (X 6368) (X 6371)

-- PREM, all layers: ∫₀¹ ρ x⁴ dx
def PREM4 : ℝ :=
  m4 13.0885 0 (-8.8381) 0 (X 0) (X 1221.5)
  + m4 12.5815 (-1.2638) (-3.6426) (-5.5281) (X 1221.5) (X 3480)
  + m4 7.9565 (-6.4761) 5.5283 (-3.0807) (X 3480) (X 5701)
  + m4 5.3197 (-1.4836) 0 0 (X 5701) (X 5771)
  + m4 11.2494 (-8.0298) 0 0 (X 5771) (X 5971)
  + m4 7.1089 (-3.8045) 0 0 (X 5971) (X 6151)
  + m4 2.6910 0.6924 0 0 (X 6151) (X 6346.6)
  + m4 2.9 0 0 0 (X 6346.6) (X 6356)
  + m4 2.6 0 0 0 (X 6356) (X 6368)
  + m4 1.02 0 0 0 (X 6368) (X 6371)

def EARTH_RHO_PREM  : ℝ := 3 * PREM2
def EARTH_IMR2_PREM : ℝ := (2 / 3) * PREM4 / PREM2
def EARTH_CORE_FRAC : ℝ := PREM_CORE2 / PREM2

-- Measured (IERS GM⊕ / CODATA G over the IUGG sphere; Yoder 1995)
def EARTH_RHO_MEAS  : ℝ := 5.5134
def EARTH_IMR2_MEAS : ℝ := 0.3307

set_option maxHeartbeats 4000000 in
-- [T5] PREM mean density: 5.5143 < ρ̄ < 5.5144 g/cm³
theorem earth_mean_density :
    5.5143 < EARTH_RHO_PREM ∧ EARTH_RHO_PREM < 5.5144 := by
  unfold EARTH_RHO_PREM PREM2 PREM_CORE2 m2 X; norm_num

-- [T6] PREM mean density within 0.02% of the measured 5.5134 g/cm³
theorem earth_density_matches :
    |EARTH_RHO_PREM - EARTH_RHO_MEAS| < 0.0002 * EARTH_RHO_MEAS := by
  obtain ⟨h1, h2⟩ := earth_mean_density
  unfold EARTH_RHO_MEAS
  rw [abs_lt]; constructor <;> linarith

set_option maxHeartbeats 4000000 in
-- [T7] PREM moment of inertia: 0.3307 < I/MR² < 0.33081
theorem earth_moment_of_inertia :
    0.3307 < EARTH_IMR2_PREM ∧ EARTH_IMR2_PREM < 0.33081 := by
  unfold EARTH_IMR2_PREM PREM2 PREM4 PREM_CORE2 m2 m4 X; norm_num

-- [T8] PREM moment of inertia within 0.04% of the measured 0.3307
theorem earth_moment_matches :
    |EARTH_IMR2_PREM - EARTH_IMR2_MEAS| < 0.0004 * EARTH_IMR2_MEAS := by
  obtain ⟨h1, h2⟩ := earth_moment_of_inertia
  unfold EARTH_IMR2_MEAS
  rw [abs_lt]; constructor <;> linarith

-- [T9] Earth reads below the uniform ball: its mass is centrally condensed
theorem earth_condensed : EARTH_IMR2_PREM < 2 / 5 := by
  have := earth_moment_of_inertia.2; linarith

set_option maxHeartbeats 4000000 in
-- [T10] The core holds 32.47–32.48% of Earth's mass
theorem earth_core_share :
    0.3247 < EARTH_CORE_FRAC ∧ EARTH_CORE_FRAC < 0.3248 := by
  unfold EARTH_CORE_FRAC PREM2 PREM_CORE2 m2 X; norm_num

-- [T11] The core fills 16.3% of Earth's volume
theorem earth_core_volume :
    0.162 < (3480 / 6371 : ℝ) ^ 3 ∧ (3480 / 6371 : ℝ) ^ 3 < 0.164 := by
  norm_num

-- ============================================================
-- SECTION 3: THE MOON
-- ============================================================

def MOON_R : ℝ := 1737.4
-- Mantle density solved from the measured mass (g/cm³)
def MOON_MANTLE : ℝ := 3.380

def MOON_M3 : ℝ :=
  mShell 8.0 0 240 + mShell 5.1 240 330 + mShell 3.4 330 480
  + mShell MOON_MANTLE 480 1697.4 + mShell 2.55 1697.4 MOON_R
def MOON_I5 : ℝ :=
  iShell 8.0 0 240 + iShell 5.1 240 330 + iShell 3.4 330 480
  + iShell MOON_MANTLE 480 1697.4 + iShell 2.55 1697.4 MOON_R

def MOON_IMR2  : ℝ := (2 / 5) * MOON_I5 / (MOON_M3 * MOON_R ^ 2)
def MOON_MASS  : ℝ := (4 / 3) * Real.pi * 10 ^ 12 * MOON_M3
def MOON_MASS_MEAS : ℝ := 4.90280e12 / 6.67430e-11

-- [T12] Measured lunar mass: 7.3457 × 10²² < GM/G < 7.3459 × 10²² kg
theorem moon_mass_measured :
    7.3457e22 < MOON_MASS_MEAS ∧ MOON_MASS_MEAS < 7.3459e22 := by
  unfold MOON_MASS_MEAS; norm_num

-- [T13] Layered Moon: 7.3453 × 10²² < M < 7.3455 × 10²² kg, within 0.01% of measured
theorem moon_mass_model :
    7.3453e22 < MOON_MASS ∧ MOON_MASS < 7.3455e22 := by
  have hp1 := Real.pi_gt_d6
  have hp2 := Real.pi_lt_d6
  have hm : 0 < MOON_M3 := by unfold MOON_M3 mShell MOON_MANTLE MOON_R; norm_num
  have lo : 7.3453e22 < (4 / 3) * 3.141592 * 10 ^ 12 * MOON_M3 := by
    unfold MOON_M3 mShell MOON_MANTLE MOON_R; norm_num
  have hi : (4 / 3) * 3.141593 * 10 ^ 12 * MOON_M3 < 7.3455e22 := by
    unfold MOON_M3 mShell MOON_MANTLE MOON_R; norm_num
  unfold MOON_MASS
  constructor <;> nlinarith [mul_lt_mul_of_pos_right hp1 hm, mul_lt_mul_of_pos_right hp2 hm]

-- [T14] Predicted lunar I/MR²: 0.3934 < I/MR² < 0.3936
theorem moon_moment_of_inertia :
    0.3934 < MOON_IMR2 ∧ MOON_IMR2 < 0.3936 := by
  unfold MOON_IMR2 MOON_I5 MOON_M3 iShell mShell MOON_MANTLE MOON_R; norm_num

-- [T15] Inside the lunar laser ranging value 0.3929 ± 0.0009
theorem moon_inside_measured :
    0.3929 - 0.0009 < MOON_IMR2 ∧ MOON_IMR2 < 0.3929 + 0.0009 := by
  obtain ⟨h1, h2⟩ := moon_moment_of_inertia
  constructor <;> linarith

-- ============================================================
-- SECTION 4: MARS
-- ============================================================

def MARS_R    : ℝ := 3389.5
def MARS_CMB  : ℝ := 1830
def MARS_MTOP : ℝ := 3349.5
def MARS_CORE : ℝ := 6.3
-- Mantle density 3.35 g/cm³ at the top, rising linearly to the core;
-- the bottom value is solved from the measured mass
def MARS_TOP  : ℝ := 3.35
def MARS_BOT  : ℝ := 3.764
-- ρ(r) = MARS_A + MARS_B · r on the mantle
def MARS_B : ℝ := -(MARS_BOT - MARS_TOP) / (MARS_MTOP - MARS_CMB)
def MARS_A : ℝ := MARS_TOP - MARS_B * MARS_MTOP

-- ∫ ρ r² dr and ∫ ρ r⁴ dr for the linear mantle, scaled to the shell weights
def MARS_MANTLE3 : ℝ :=
  3 * (MARS_A * (MARS_MTOP ^ 3 - MARS_CMB ^ 3) / 3 + MARS_B * (MARS_MTOP ^ 4 - MARS_CMB ^ 4) / 4)
def MARS_MANTLE5 : ℝ :=
  5 * (MARS_A * (MARS_MTOP ^ 5 - MARS_CMB ^ 5) / 5 + MARS_B * (MARS_MTOP ^ 6 - MARS_CMB ^ 6) / 6)

def MARS_M3 : ℝ := mShell MARS_CORE 0 MARS_CMB + MARS_MANTLE3 + mShell 2.9 MARS_MTOP MARS_R
def MARS_I5 : ℝ := iShell MARS_CORE 0 MARS_CMB + MARS_MANTLE5 + iShell 2.9 MARS_MTOP MARS_R

def MARS_IMR2 : ℝ := (2 / 5) * MARS_I5 / (MARS_M3 * MARS_R ^ 2)
def MARS_MASS : ℝ := (4 / 3) * Real.pi * 10 ^ 12 * MARS_M3
def MARS_MASS_MEAS : ℝ := 4.282837e13 / 6.67430e-11

-- [T16] Measured Mars mass: 6.4169 × 10²³ < GM/G < 6.4170 × 10²³ kg
theorem mars_mass_measured :
    6.4169e23 < MARS_MASS_MEAS ∧ MARS_MASS_MEAS < 6.4170e23 := by
  unfold MARS_MASS_MEAS; norm_num

-- [T17] Layered Mars: 6.4168 × 10²³ < M < 6.4169 × 10²³ kg, within 0.01% of measured
theorem mars_mass_model :
    6.4168e23 < MARS_MASS ∧ MARS_MASS < 6.4169e23 := by
  have hp1 := Real.pi_gt_d6
  have hp2 := Real.pi_lt_d6
  have hm : 0 < MARS_M3 := by
    unfold MARS_M3 MARS_MANTLE3 MARS_A MARS_B mShell MARS_CORE MARS_CMB MARS_MTOP MARS_R MARS_TOP MARS_BOT
    norm_num
  have lo : 6.4168e23 < (4 / 3) * 3.141592 * 10 ^ 12 * MARS_M3 := by
    unfold MARS_M3 MARS_MANTLE3 MARS_A MARS_B mShell MARS_CORE MARS_CMB MARS_MTOP MARS_R MARS_TOP MARS_BOT
    norm_num
  have hi : (4 / 3) * 3.141593 * 10 ^ 12 * MARS_M3 < 6.4169e23 := by
    unfold MARS_M3 MARS_MANTLE3 MARS_A MARS_B mShell MARS_CORE MARS_CMB MARS_MTOP MARS_R MARS_TOP MARS_BOT
    norm_num
  unfold MARS_MASS
  constructor <;> nlinarith [mul_lt_mul_of_pos_right hp1 hm, mul_lt_mul_of_pos_right hp2 hm]

-- [T18] Predicted Mars I/MR², core 6.3 g/cm³: 0.3639 < I/MR² < 0.3641
theorem mars_moment_of_inertia :
    0.3639 < MARS_IMR2 ∧ MARS_IMR2 < 0.3641 := by
  unfold MARS_IMR2 MARS_I5 MARS_M3 MARS_MANTLE3 MARS_MANTLE5 MARS_A MARS_B iShell mShell
    MARS_CORE MARS_CMB MARS_MTOP MARS_R MARS_TOP MARS_BOT
  norm_num

-- [T19] Inside the measured value 0.3644 ± 0.0005
theorem mars_inside_measured :
    0.3644 - 0.0005 < MARS_IMR2 ∧ MARS_IMR2 < 0.3644 + 0.0005 := by
  obtain ⟨h1, h2⟩ := mars_moment_of_inertia
  constructor <;> linarith

-- [T20] Three worlds, one ordering: Earth most condensed, then Mars, then the Moon,
--       all below the uniform ball
theorem three_body_order :
    EARTH_IMR2_PREM < MARS_IMR2 ∧ MARS_IMR2 < MOON_IMR2 ∧ MOON_IMR2 < 2 / 5 := by
  have e := earth_moment_of_inertia
  have m := mars_moment_of_inertia
  have l := moon_moment_of_inertia
  refine ⟨by linarith, by linarith, by linarith⟩

-- ============================================================
-- SECTION 5: SETTLING STOPS
-- ============================================================

-- [T21] No sequence of moves can lower a whole-number potential forever
theorem no_infinite_descent (f : ℕ → ℕ) (h : ∀ k, f (k + 1) < f k) : False := by
  have key : ∀ k, f k + k ≤ f 0 := by
    intro k
    induction k with
    | zero => simp
    | succ n ih => have := h n; omega
  have := key (f 0 + 1)
  omega

-- [T22] A settling rule whose every move lowers the potential stops within
--       potential(start) moves
theorem settling_bound (f : ℕ → ℕ) (n : ℕ) (h : ∀ k, k < n → f (k + 1) < f k) :
    n ≤ f 0 := by
  have key : ∀ k, k ≤ n → f k + k ≤ f 0 := by
    intro k
    induction k with
    | zero => intro _; simp
    | succ m ih =>
      intro hm
      have h1 := ih (by omega)
      have h2 := h m (by omega)
      omega
  have := key n le_rfl
  omega

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_GC_IMatter_TLCell_Matter

/-!
-- ============================================================
-- FILE:       SNSFL_GC_IMatter_TLCell_Matter.lean
-- COORDINATE: [9,9,3,27](COSM)
-- SORRY:      0
--
-- M = Σ ρᵢ h³ · I = Σ ρᵢ h³ (xᵢ² + yᵢ²) · ρ̄ = 3∫ρx² · I/MR² = (2/3)∫ρx⁴ / ∫ρx²
--
-- RESULTS:
--   Shells: uniform ball I/MR² = 2/5; equal densities reduce to it;
--     a denser core gives I/MR² < 2/5, a lighter core > 2/5 (T1–T4)
--   Earth from PREM: ρ̄ 5.5143–5.5144 g/cm³, within 0.02% of 5.5134;
--     I/MR² 0.3307–0.33081, within 0.04% of 0.3307; below 2/5; core
--     32.47–32.48% of the mass in 16.3% of the volume (T5–T11)
--   Moon: mass 7.3453–7.3455 × 10²² kg against 7.3457–7.3459 × 10²²;
--     I/MR² 0.3934–0.3936, inside 0.3929 ± 0.0009 (T12–T15)
--   Mars, core 6.3 g/cm³: mass 6.4168–6.4169 × 10²³ kg against
--     6.4169–6.4170 × 10²³; I/MR² 0.3639–0.3641, inside 0.3644 ± 0.0005
--     (T16–T19)
--   Earth < Mars < Moon < 2/5 (T20)
--   Settling: a potential-lowering rule stops within potential(start)
--     moves (T21–T22)
--
-- CONNECTIONS:
--   [9,9,3,25] Accretion Boundaries TL · [9,9,3,24] Galaxy Toomre TL
--   [9,9,10,1] Gravity Reduction
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/
