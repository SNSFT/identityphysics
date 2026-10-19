-- ============================================================
-- SNSFL_GC_Accretion_Boundaries_TL.lean
-- ============================================================
--
-- Accretion Simulator™: the boundary mathematics of planet formation
-- Three measured stability boundaries of planetary systems are each
-- identified with the Torsion Limit by the same rule,
-- τ = TL × (critical value ÷ measured value):
--   Hill spacing   Δ = 2√3 mutual Hill radii   ↔ τ = TL   (orbits)
--   Roche limit    d = d_R                     ↔ τ = TL   (tides)
--   Impact speed   v_imp = v_cr                ↔ τ = TL   (collisions)
-- This file proves the placement rule, places the eight planets of
-- the Solar System and Saturn's rings and moons from cited
-- measurements, proves the collision boundary and the isolation mass
-- at 1 AU, and proves the GAM Collider identities behind merging
-- and reorganization.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,9,3,XX](COSM)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      October 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
-- Simulator: uuia.app/accretion
--
-- ============================================================
-- SOURCES
-- ============================================================
--
--   Gladman, B. (1993), Icarus 106, 247
--     two planets on circular orbits can never cross when their
--     separation exceeds 2√3 mutual Hill radii
--   Mutual Hill radius R_H = ((m₁ + m₂)/(3 M☉))^(1/3) (a₁ + a₂)/2
--   Planet masses and semi-major axes: NASA Planetary Fact Sheet
--     (Williams, D. R., NSSDCA); M☉ = 1.98847 × 10³⁰ kg (IAU 2015
--     nominal solar mass parameter with CODATA G)
--   Roche, É. (1849); fluid Roche limit d_R = 2.44 R (ρ_P/ρ_m)^(1/3)
--     (Murray, C. D. & Dermott, S. F. (1999), Solar System Dynamics)
--   Saturn: equatorial radius 60,268 km, mean density 0.687 g/cm³
--     (NASA Saturn Fact Sheet); water ice 0.92 g/cm³; ring and moon
--     distances from the NASA Saturn Fact Sheet and Cassini results
--   Kokubo, E. & Genda, H. (2010), ApJL 714, L21
--     merging criterion v_imp < v_cr,
--     v_cr/v_esc = 2.43Γ²Θ^(5/2) − 0.0408Γ + 1.86Θ^(5/2) + 1.08,
--     Γ = (M₁ − M₂)/(M₁ + M₂), Θ = 1 − sin θ
--   Kokubo, E. & Ida, S. (2002), ApJ 581, 666
--     isolation mass M_iso = √(2/3) (2π a² b̃ Σ)^(3/2) / M☉^(1/2),
--     orbital separation b̃ = 10 Hill radii
--   Weidenschilling, S. J. (1977), Ap&SS 51, 153; Hayashi, C. (1981),
--     PThPS 70, 35: Minimum Mass Solar Nebula, Σ = 7.1 g/cm² of
--     solids at 1 AU
--   GAM Collider v15 (Geometric Axiomatic Module Collider),
--     8-Beam Fusion Theorem [9,9,2,3.8], 2-beam mode:
--     P = P₁P₂/(P₁+P₂) · N = N₁+N₂ · B = B₁+B₂−2·min(B₁,B₂) · A = max
--
-- ============================================================
-- THE MAP
-- ============================================================
--
--   Q = measured ÷ critical      (Q > 1 stable, Q ≤ 1 broken)
--   τ = TL / Q                   boundary identification Q = 1 ↔ TL
--
--   Hill spacing   Q = Δ / 2√3       τ = TL · √3 · μ^(1/3) · (a₁+a₂)/(a₂−a₁)
--                                    μ = (m₁ + m₂)/(3 M☉)
--   Roche limit    Q = d / d_R       τ = TL · d_R / d
--   Impact speed   Q = v_cr / v_imp  τ = TL · v_imp / v_cr
--
--   Q > 25/22   Locked       1 < Q ≤ 25/22   IVA Peak
--   Q ≤ 1       Shatter      (25/22 = 1/0.88)
--
-- ============================================================

import Mathlib.Tactic

noncomputable section

namespace SNSFL_GC_Accretion_Boundaries_TL

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10
def TL_IVA           : ℝ := 88 * TORSION_LIMIT / 100

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction :
    manifold_impedance SOVEREIGN_ANCHOR = 0 := by
  unfold manifold_impedance; simp

theorem tl_pos : 0 < TORSION_LIMIT := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- Measured inputs (kg; NASA Planetary Fact Sheet)
def M_SUN     : ℝ := 1.98847e30
def M_MERCURY : ℝ := 3.301e23
def M_VENUS   : ℝ := 4.867e24
def M_EARTH   : ℝ := 5.972e24
def M_MARS    : ℝ := 6.417e23
def M_JUPITER : ℝ := 1.898e27
def M_SATURN  : ℝ := 5.683e26
def M_URANUS  : ℝ := 8.681e25
def M_NEPTUNE : ℝ := 1.024e26

-- Saturn (km, g/cm³)
def SAT_R    : ℝ := 60268
def SAT_RHO  : ℝ := 0.687
def ICE_RHO  : ℝ := 0.92
def ROCHE_K  : ℝ := 2.44

-- Placement
def tau_of_Q (Q : ℝ) : ℝ := TORSION_LIMIT / Q

-- Hill spacing
def mu (m₁ m₂ : ℝ) : ℝ := (m₁ + m₂) / (3 * M_SUN)
def hill_delta (a₁ a₂ m₁ m₂ : ℝ) : ℝ :=
  (a₂ - a₁) / (mu m₁ m₂ ^ ((1:ℝ)/3) * ((a₁ + a₂) / 2))
def tau_hill (a₁ a₂ m₁ m₂ : ℝ) : ℝ :=
  TORSION_LIMIT * (Real.sqrt 3 * mu m₁ m₂ ^ ((1:ℝ)/3) * ((a₁ + a₂) / (a₂ - a₁)))

-- Roche limit
def roche_dist : ℝ := ROCHE_K * SAT_R * (SAT_RHO / ICE_RHO) ^ ((1:ℝ)/3)
def tau_roche (d : ℝ) : ℝ := TORSION_LIMIT * roche_dist / d

-- Impacts
def vcr_ratio (Γ t : ℝ) : ℝ := 2.43 * Γ ^ 2 * t - 0.0408 * Γ + 1.86 * t + 1.08
def tau_impact (v vcr : ℝ) : ℝ := TORSION_LIMIT * v / vcr

-- Isolation mass (solar masses, AU; squared to avoid the 3/2 power)
def SIGMA1 : ℝ := 7.1 * 1.495978707e13 ^ 2 / 1.98847e33     -- M☉/AU²
def M_EARTH_SUN : ℝ := 5.9722e27 / 1.98847e33                -- M⊕ in M☉
def iso_sq (a sig : ℝ) : ℝ := (2 / 3) * (2 * Real.pi * a ^ 2 * 10 * sig) ^ 3

-- GAM Collider 2-beam fusion
def fuseP (P₁ P₂ : ℝ) : ℝ := P₁ * P₂ / (P₁ + P₂)
def fuseB (B₁ B₂ : ℝ) : ℝ := B₁ + B₂ - 2 * min B₁ B₂

-- ============================================================
-- SECTION 1: PLACEMENT
-- ============================================================

-- [T1] The boundary: Q = 1 places a system exactly at TL
theorem boundary : tau_of_Q 1 = TORSION_LIMIT := by
  unfold tau_of_Q; simp

-- [T2] Stable (Q > 1) sits below TL
theorem stable_below_tl (Q : ℝ) (hQ : 1 < Q) : tau_of_Q Q < TORSION_LIMIT := by
  have hT := tl_pos
  unfold tau_of_Q
  rw [div_lt_iff₀ (by linarith)]
  nlinarith [mul_pos hT (sub_pos.mpr hQ)]

-- [T3] Broken (0 < Q ≤ 1) shatters
theorem unstable_shatters (Q : ℝ) (h0 : 0 < Q) (h1 : Q ≤ 1) :
    TORSION_LIMIT ≤ tau_of_Q Q := by
  have hT := tl_pos
  unfold tau_of_Q
  rw [le_div_iff₀ h0]
  nlinarith [mul_le_mul_of_nonneg_left h1 hT.le]

-- [T4] 1 < Q ≤ 25/22 is the IVA corridor
theorem iva_corridor (Q : ℝ) (h1 : 1 < Q) (h2 : Q ≤ 25 / 22) :
    TL_IVA ≤ tau_of_Q Q ∧ tau_of_Q Q < TORSION_LIMIT := by
  have hT := tl_pos
  refine ⟨?_, stable_below_tl Q h1⟩
  unfold tau_of_Q TL_IVA
  rw [le_div_iff₀ (by linarith)]
  nlinarith [mul_le_mul_of_nonneg_left h2 hT.le]

-- [T5] Q > 25/22 is Locked
theorem locked_band (Q : ℝ) (hQ : 25 / 22 < Q) :
    0 < tau_of_Q Q ∧ tau_of_Q Q < TL_IVA := by
  have hT := tl_pos
  have hQ0 : 0 < Q := by linarith
  refine ⟨div_pos hT hQ0, ?_⟩
  unfold tau_of_Q TL_IVA
  rw [div_lt_iff₀ hQ0]
  nlinarith [mul_lt_mul_of_pos_left hQ hT]

-- ============================================================
-- SECTION 2: HILL SPACING
-- ============================================================

-- Cube roots: (r^(1/3))³ = r, so cube-root bounds follow from bounds on r.
theorem cube_rpow (r : ℝ) (hr : 0 ≤ r) : (r ^ ((1:ℝ)/3)) ^ 3 = r := by
  rw [← Real.rpow_natCast, ← Real.rpow_mul hr]; norm_num

theorem cbrt_gt (r c : ℝ) (hr : 0 ≤ r) (h : c ^ 3 < r) : c < r ^ ((1:ℝ)/3) := by
  by_contra hle
  have hle' := not_lt.mp hle
  have hy : 0 ≤ r ^ ((1:ℝ)/3) := Real.rpow_nonneg hr _
  have h3 := pow_le_pow_left₀ hy hle' 3
  rw [cube_rpow r hr] at h3
  linarith

theorem cbrt_lt (r c : ℝ) (hr : 0 ≤ r) (hc : 0 ≤ c) (h : r < c ^ 3) :
    r ^ ((1:ℝ)/3) < c := by
  by_contra hle
  have hle' := not_lt.mp hle
  have h3 := pow_le_pow_left₀ hc hle' 3
  rw [cube_rpow r hr] at h3
  linarith

theorem sqrt3_lt : Real.sqrt 3 < 1.7321 := by
  have h := Real.sqrt_lt_sqrt (by norm_num : (0 : ℝ) ≤ 3) (by norm_num : (3 : ℝ) < 1.7321 ^ 2)
  rwa [Real.sqrt_sq (by norm_num : (0 : ℝ) ≤ 1.7321)] at h

theorem sqrt3_gt : 1.7320 < Real.sqrt 3 := by
  have h := Real.sqrt_lt_sqrt (by norm_num : (0 : ℝ) ≤ 1.7320 ^ 2) (by norm_num : (1.7320 : ℝ) ^ 2 < 3)
  rwa [Real.sqrt_sq (by norm_num : (0 : ℝ) ≤ 1.7320)] at h

-- [T6] The Hill boundary: τ_hill = TL · 2√3 / Δ, so Δ = 2√3 ↔ τ = TL
theorem hill_identity (a₁ a₂ m₁ m₂ : ℝ) :
    tau_hill a₁ a₂ m₁ m₂ = TORSION_LIMIT * (2 * Real.sqrt 3) / hill_delta a₁ a₂ m₁ m₂ := by
  unfold tau_hill hill_delta
  rw [div_div_eq_mul_div]
  ring

-- [T7] Upper and lower bounds on τ_hill from cube bounds on μ
theorem hill_upper (a₁ a₂ m₁ m₂ c : ℝ) (h12 : a₁ < a₂) (h1 : 0 < a₁)
    (hm : 0 ≤ mu m₁ m₂) (hc : 0 ≤ c) (h : mu m₁ m₂ < c ^ 3) :
    tau_hill a₁ a₂ m₁ m₂ < TORSION_LIMIT * (1.7321 * c * ((a₁ + a₂) / (a₂ - a₁))) := by
  have hq := cbrt_lt _ _ hm hc h
  have hq0 : 0 ≤ mu m₁ m₂ ^ ((1:ℝ)/3) := Real.rpow_nonneg hm _
  have hk : 0 < (a₁ + a₂) / (a₂ - a₁) := div_pos (by linarith) (by linarith)
  have h1' : Real.sqrt 3 * mu m₁ m₂ ^ ((1:ℝ)/3) < 1.7321 * c :=
    mul_lt_mul'' sqrt3_lt hq (Real.sqrt_nonneg 3) hq0
  unfold tau_hill
  exact mul_lt_mul_of_pos_left (mul_lt_mul_of_pos_right h1' hk) tl_pos

theorem hill_lower (a₁ a₂ m₁ m₂ c : ℝ) (h12 : a₁ < a₂) (h1 : 0 < a₁)
    (hm : 0 ≤ mu m₁ m₂) (hc : 0 ≤ c) (h : c ^ 3 < mu m₁ m₂) :
    TORSION_LIMIT * (1.7320 * c * ((a₁ + a₂) / (a₂ - a₁))) < tau_hill a₁ a₂ m₁ m₂ := by
  have hq := cbrt_gt _ _ hm h
  have hk : 0 < (a₁ + a₂) / (a₂ - a₁) := div_pos (by linarith) (by linarith)
  have h1' : 1.7320 * c < Real.sqrt 3 * mu m₁ m₂ ^ ((1:ℝ)/3) :=
    mul_lt_mul'' sqrt3_gt hq (by norm_num) hc
  unfold tau_hill
  exact mul_lt_mul_of_pos_left (mul_lt_mul_of_pos_right h1' hk) tl_pos

-- ============================================================
-- SECTION 3: THE SOLAR SYSTEM
-- ============================================================

-- [T8] Every neighbouring pair of planets is Locked; every pair except
-- Jupiter–Saturn sits below TL/4
theorem mercury_venus : tau_hill 0.387 0.723 M_MERCURY M_VENUS < TORSION_LIMIT / 4 :=
  lt_trans (hill_upper _ _ _ _ 0.00956 (by norm_num) (by norm_num)
    (by unfold mu M_MERCURY M_VENUS M_SUN; positivity) (by norm_num)
    (by unfold mu M_MERCURY M_VENUS M_SUN; norm_num))
    (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem venus_earth : tau_hill 0.723 1.000 M_VENUS M_EARTH < TORSION_LIMIT / 4 :=
  lt_trans (hill_upper _ _ _ _ 0.01221 (by norm_num) (by norm_num)
    (by unfold mu M_VENUS M_EARTH M_SUN; positivity) (by norm_num)
    (by unfold mu M_VENUS M_EARTH M_SUN; norm_num))
    (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem earth_mars : tau_hill 1.000 1.524 M_EARTH M_MARS < TORSION_LIMIT / 4 :=
  lt_trans (hill_upper _ _ _ _ 0.01035 (by norm_num) (by norm_num)
    (by unfold mu M_EARTH M_MARS M_SUN; positivity) (by norm_num)
    (by unfold mu M_EARTH M_MARS M_SUN; norm_num))
    (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem mars_jupiter : tau_hill 1.524 5.203 M_MARS M_JUPITER < TORSION_LIMIT / 4 :=
  lt_trans (hill_upper _ _ _ _ 0.06828 (by norm_num) (by norm_num)
    (by unfold mu M_MARS M_JUPITER M_SUN; positivity) (by norm_num)
    (by unfold mu M_MARS M_JUPITER M_SUN; norm_num))
    (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem saturn_uranus : tau_hill 9.537 19.19 M_SATURN M_URANUS < TORSION_LIMIT / 4 :=
  lt_trans (hill_upper _ _ _ _ 0.04789 (by norm_num) (by norm_num)
    (by unfold mu M_SATURN M_URANUS M_SUN; positivity) (by norm_num)
    (by unfold mu M_SATURN M_URANUS M_SUN; norm_num))
    (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

theorem uranus_neptune : tau_hill 19.19 30.07 M_URANUS M_NEPTUNE < TORSION_LIMIT / 4 :=
  lt_trans (hill_upper _ _ _ _ 0.03166 (by norm_num) (by norm_num)
    (by unfold mu M_URANUS M_NEPTUNE M_SUN; positivity) (by norm_num)
    (by unfold mu M_URANUS M_NEPTUNE M_SUN; norm_num))
    (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

-- [T9] Jupiter–Saturn, the tightest pair: 0.43 TL < τ < 0.44 TL, Locked
theorem jupiter_saturn :
    43 * TORSION_LIMIT / 100 < tau_hill 5.203 9.537 M_JUPITER M_SATURN ∧
    tau_hill 5.203 9.537 M_JUPITER M_SATURN < 44 * TORSION_LIMIT / 100 := by
  have hm : 0 ≤ mu M_JUPITER M_SATURN := by unfold mu M_JUPITER M_SATURN M_SUN; positivity
  constructor
  · exact lt_trans (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)
      (hill_lower _ _ _ _ 0.07449 (by norm_num) (by norm_num) hm (by norm_num)
        (by unfold mu M_JUPITER M_SATURN M_SUN; norm_num))
  · exact lt_trans (hill_upper _ _ _ _ 0.0745 (by norm_num) (by norm_num) hm (by norm_num)
        (by unfold mu M_JUPITER M_SATURN M_SUN; norm_num))
      (by unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num)

-- [T10] The Solar System is Locked: every pair sits below TL_IVA
theorem solar_system_locked :
    tau_hill 0.387 0.723 M_MERCURY M_VENUS < TL_IVA ∧
    tau_hill 0.723 1.000 M_VENUS M_EARTH < TL_IVA ∧
    tau_hill 1.000 1.524 M_EARTH M_MARS < TL_IVA ∧
    tau_hill 1.524 5.203 M_MARS M_JUPITER < TL_IVA ∧
    tau_hill 5.203 9.537 M_JUPITER M_SATURN < TL_IVA ∧
    tau_hill 9.537 19.19 M_SATURN M_URANUS < TL_IVA ∧
    tau_hill 19.19 30.07 M_URANUS M_NEPTUNE < TL_IVA := by
  have hq : TORSION_LIMIT / 4 < TL_IVA := by
    unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  have hj : 44 * TORSION_LIMIT / 100 < TL_IVA := by
    unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num
  exact ⟨lt_trans mercury_venus hq, lt_trans venus_earth hq, lt_trans earth_mars hq,
    lt_trans mars_jupiter hq, lt_trans jupiter_saturn.2 hj, lt_trans saturn_uranus hq,
    lt_trans uranus_neptune hq⟩

-- ============================================================
-- SECTION 4: SATURN AND THE ROCHE LIMIT
-- ============================================================

-- [T11] The fluid Roche limit for ice at Saturn: 133,393 < d_R < 133,422 km
theorem roche_bounds : 133393 < roche_dist ∧ roche_dist < 133422 := by
  have hr : (0 : ℝ) ≤ SAT_RHO / ICE_RHO := by unfold SAT_RHO ICE_RHO; norm_num
  have h1 := cbrt_gt _ 0.90711 hr (by unfold SAT_RHO ICE_RHO; norm_num)
  have h2 := cbrt_lt _ 0.90725 hr (by norm_num) (by unfold SAT_RHO ICE_RHO; norm_num)
  unfold roche_dist ROCHE_K SAT_R
  constructor <;> nlinarith

-- [T12] Inside d_R: Shatter
theorem roche_shatter (d : ℝ) (hd : 0 < d) (h : d ≤ 133393) : TORSION_LIMIT ≤ tau_roche d := by
  have hle : d ≤ roche_dist := by linarith [roche_bounds.1]
  unfold tau_roche
  rw [le_div_iff₀ hd]
  exact mul_le_mul_of_nonneg_left hle tl_pos.le

-- [T13] Between d_R and d_R / 0.88: the IVA corridor
theorem roche_iva (d : ℝ) (h1 : 133422 < d) (h2 : 88 * d / 100 ≤ 133393) :
    TL_IVA ≤ tau_roche d ∧ tau_roche d < TORSION_LIMIT := by
  have hd : 0 < d := by linarith
  have hT := tl_pos
  have hlo : 88 * d / 100 ≤ roche_dist := by linarith [roche_bounds.1]
  have hhi : roche_dist < d := by linarith [roche_bounds.2]
  unfold tau_roche
  constructor
  · unfold TL_IVA
    rw [le_div_iff₀ hd]
    nlinarith [mul_le_mul_of_nonneg_left hlo hT.le]
  · rw [div_lt_iff₀ hd]
    exact mul_lt_mul_of_pos_left hhi hT

-- [T14] Beyond d_R / 0.88: Locked
theorem roche_locked (d : ℝ) (h : 133422 < 88 * d / 100) : tau_roche d < TL_IVA := by
  have hd : 0 < d := by linarith
  have hT := tl_pos
  have hhi : roche_dist < 88 * d / 100 := by linarith [roche_bounds.2]
  unfold tau_roche TL_IVA
  rw [div_lt_iff₀ hd]
  nlinarith [mul_lt_mul_of_pos_left hhi hT]

-- [T15] Saturn's rings and moons on the phase map (distances in km)
--   C, B and inner A ring: Shatter
--   Pan, Daphnis, outer A ring, Atlas, Prometheus, F ring, Pandora,
--   Epimetheus, Janus: IVA corridor
--   Mimas, Enceladus, Titan: Locked
theorem saturn_rings_shatter :
    TORSION_LIMIT ≤ tau_roche 66900 ∧ TORSION_LIMIT ≤ tau_roche 74658 ∧
    TORSION_LIMIT ≤ tau_roche 92000 ∧ TORSION_LIMIT ≤ tau_roche 117580 ∧
    TORSION_LIMIT ≤ tau_roche 122170 :=
  ⟨roche_shatter _ (by norm_num) (by norm_num), roche_shatter _ (by norm_num) (by norm_num),
   roche_shatter _ (by norm_num) (by norm_num), roche_shatter _ (by norm_num) (by norm_num),
   roche_shatter _ (by norm_num) (by norm_num)⟩

theorem saturn_ring_moons_iva :
    (TL_IVA ≤ tau_roche 133584 ∧ tau_roche 133584 < TORSION_LIMIT) ∧   -- Pan
    (TL_IVA ≤ tau_roche 136505 ∧ tau_roche 136505 < TORSION_LIMIT) ∧   -- Daphnis
    (TL_IVA ≤ tau_roche 136775 ∧ tau_roche 136775 < TORSION_LIMIT) ∧   -- A ring outer edge
    (TL_IVA ≤ tau_roche 137670 ∧ tau_roche 137670 < TORSION_LIMIT) ∧   -- Atlas
    (TL_IVA ≤ tau_roche 139380 ∧ tau_roche 139380 < TORSION_LIMIT) ∧   -- Prometheus
    (TL_IVA ≤ tau_roche 140180 ∧ tau_roche 140180 < TORSION_LIMIT) ∧   -- F ring
    (TL_IVA ≤ tau_roche 141720 ∧ tau_roche 141720 < TORSION_LIMIT) ∧   -- Pandora
    (TL_IVA ≤ tau_roche 151410 ∧ tau_roche 151410 < TORSION_LIMIT) ∧   -- Epimetheus
    (TL_IVA ≤ tau_roche 151460 ∧ tau_roche 151460 < TORSION_LIMIT) :=  -- Janus
  ⟨roche_iva _ (by norm_num) (by norm_num), roche_iva _ (by norm_num) (by norm_num),
   roche_iva _ (by norm_num) (by norm_num), roche_iva _ (by norm_num) (by norm_num),
   roche_iva _ (by norm_num) (by norm_num), roche_iva _ (by norm_num) (by norm_num),
   roche_iva _ (by norm_num) (by norm_num), roche_iva _ (by norm_num) (by norm_num),
   roche_iva _ (by norm_num) (by norm_num)⟩

theorem saturn_moons_locked :
    tau_roche 185539 < TL_IVA ∧ tau_roche 238042 < TL_IVA ∧ tau_roche 1221870 < TL_IVA :=
  ⟨roche_locked _ (by norm_num), roche_locked _ (by norm_num), roche_locked _ (by norm_num)⟩

-- ============================================================
-- SECTION 5: COLLISIONS
-- ============================================================

-- [T16] Kokubo & Genda endpoints: head-on equal masses v_cr = 2.94 v_esc,
-- grazing equal masses v_cr = 1.08 v_esc
theorem vcr_head_on : vcr_ratio 0 1 = 2.94 := by unfold vcr_ratio; norm_num
theorem vcr_grazing : vcr_ratio 0 0 = 1.08 := by unfold vcr_ratio; norm_num

-- [T17] For any mass ratio and angle, v_cr exceeds the escape speed
theorem vcr_above_escape (Γ t : ℝ) (hΓ0 : 0 ≤ Γ) (hΓ1 : Γ ≤ 1) (ht0 : 0 ≤ t) :
    1 < vcr_ratio Γ t := by
  unfold vcr_ratio
  nlinarith [mul_nonneg (mul_nonneg (by norm_num : (0:ℝ) ≤ 2.43) (sq_nonneg Γ)) ht0]

-- [T18] The collision boundary: below v_cr merges (τ < TL), at or above
-- it hits and runs (τ ≥ TL)
theorem impact_merges (v vcr : ℝ) (hc : 0 < vcr) (h : v < vcr) :
    tau_impact v vcr < TORSION_LIMIT := by
  unfold tau_impact
  rw [div_lt_iff₀ hc]
  exact mul_lt_mul_of_pos_left h tl_pos

theorem impact_hit_and_run (v vcr : ℝ) (hc : 0 < vcr) (h : vcr ≤ v) :
    TORSION_LIMIT ≤ tau_impact v vcr := by
  unfold tau_impact
  rw [le_div_iff₀ hc]
  exact mul_le_mul_of_nonneg_left h tl_pos.le

-- [T19] Impact speed is never below the escape speed:
-- v_imp = √(v∞² + v_esc²) ≥ v_esc
theorem impact_at_least_escape (vinf vesc : ℝ) (h : 0 ≤ vesc) :
    vesc ≤ Real.sqrt (vinf ^ 2 + vesc ^ 2) := by
  have hs := Real.sqrt_le_sqrt (by nlinarith [sq_nonneg vinf] : vesc ^ 2 ≤ vinf ^ 2 + vesc ^ 2)
  rwa [Real.sqrt_sq h] at hs

-- [T20] A body falling together from rest (v_imp = v_esc) always merges
theorem gentle_impact_merges (Γ t vesc : ℝ) (hΓ0 : 0 ≤ Γ) (hΓ1 : Γ ≤ 1) (ht0 : 0 ≤ t)
    (hv : 0 < vesc) :
    tau_impact vesc (vcr_ratio Γ t * vesc) < TORSION_LIMIT := by
  have h1 := vcr_above_escape Γ t hΓ0 hΓ1 ht0
  exact impact_merges _ _ (mul_pos (by linarith) hv) (by nlinarith [mul_pos (sub_pos.mpr h1) hv])

-- ============================================================
-- SECTION 6: THE ISOLATION MASS AT 1 AU
-- ============================================================

-- [T21] Minimum Mass Solar Nebula, b̃ = 10: 0.096 M⊕ < M_iso(1 AU) < 0.0975 M⊕
theorem isolation_mass_1au :
    (0.096 * M_EARTH_SUN) ^ 2 < iso_sq 1 SIGMA1 ∧ iso_sq 1 SIGMA1 < (0.0975 * M_EARTH_SUN) ^ 2 := by
  have hp1 := Real.pi_gt_d6
  have hp2 := Real.pi_lt_d6
  have hs : 0 < SIGMA1 := by unfold SIGMA1; positivity
  have hX1 : 2 * 3.141592 * 1 ^ 2 * 10 * SIGMA1 ≤ 2 * Real.pi * 1 ^ 2 * 10 * SIGMA1 := by
    nlinarith [mul_lt_mul_of_pos_right hp1 hs]
  have hX2 : 2 * Real.pi * 1 ^ 2 * 10 * SIGMA1 ≤ 2 * 3.141593 * 1 ^ 2 * 10 * SIGMA1 := by
    nlinarith [mul_lt_mul_of_pos_right hp2 hs]
  have c1 := pow_le_pow_left₀ (by nlinarith [hs]) hX1 3
  have c2 := pow_le_pow_left₀ (by nlinarith [mul_pos Real.pi_pos hs]) hX2 3
  have n1 : (0.096 * M_EARTH_SUN) ^ 2 < (2 / 3) * (2 * 3.141592 * 1 ^ 2 * 10 * SIGMA1) ^ 3 := by
    unfold M_EARTH_SUN SIGMA1; norm_num
  have n2 : (2 / 3) * (2 * 3.141593 * 1 ^ 2 * 10 * SIGMA1) ^ 3 < (0.0975 * M_EARTH_SUN) ^ 2 := by
    unfold M_EARTH_SUN SIGMA1; norm_num
  unfold iso_sq
  constructor <;> nlinarith

-- ============================================================
-- SECTION 7: GAM COLLIDER MERGING AND REORGANIZATION
-- ============================================================

-- [T22] Same-B Necessity: the merged Behavior is |B₁ − B₂|
theorem same_b (B₁ B₂ : ℝ) : fuseB B₁ B₂ = |B₁ - B₂| := by
  unfold fuseB
  rcases le_total B₁ B₂ with h | h
  · rw [min_eq_left h, abs_of_nonpos (by linarith)]; ring
  · rw [min_eq_right h, abs_of_nonneg (by linarith)]; ring

-- [T23] Reorganization: splitting a body into halves of Pattern 2P with
-- the same Behavior halves its torsion
theorem split_halves_tau (P B : ℝ) : B / (2 * P) = (B / P) / 2 := by
  rw [div_div, mul_comm P 2]

-- [T24] A body below 2·TL reorganizes into halves below TL in one split
theorem split_below_tl (P B : ℝ) (h : B / P < 2 * TORSION_LIMIT) :
    B / (2 * P) < TORSION_LIMIT := by
  rw [split_halves_tau P B]; linarith

-- [T25] Sibling halves that meet again merge to Noble with the parent's Pattern
theorem sibling_remerge (P B : ℝ) (hP : 0 < P) :
    fuseP (2 * P) (2 * P) = P ∧ fuseB B B = 0 := by
  constructor
  · unfold fuseP
    rw [div_eq_iff (ne_of_gt (by linarith))]
    ring
  · unfold fuseB; rw [min_self]; ring

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T26] PLANET FORMATION ON THE PHASE MAP
theorem accretion_master :
    -- one boundary rule
    tau_of_Q 1 = TORSION_LIMIT ∧
    -- the Solar System is Locked; Jupiter–Saturn is the tightest pair
    tau_hill 5.203 9.537 M_JUPITER M_SATURN < TL_IVA ∧
    (43 * TORSION_LIMIT / 100 < tau_hill 5.203 9.537 M_JUPITER M_SATURN) ∧
    -- Saturn: the B ring shatters, Janus sits in the IVA corridor, Mimas is Locked
    TORSION_LIMIT ≤ tau_roche 92000 ∧
    (TL_IVA ≤ tau_roche 151460 ∧ tau_roche 151460 < TORSION_LIMIT) ∧
    tau_roche 185539 < TL_IVA ∧
    -- collisions: v_cr exceeds escape speed, so gentle impacts merge
    (∀ Γ t vesc : ℝ, 0 ≤ Γ → Γ ≤ 1 → 0 ≤ t → 0 < vesc →
      tau_impact vesc (vcr_ratio Γ t * vesc) < TORSION_LIMIT) ∧
    -- the isolation mass at 1 AU
    ((0.096 * M_EARTH_SUN) ^ 2 < iso_sq 1 SIGMA1 ∧ iso_sq 1 SIGMA1 < (0.0975 * M_EARTH_SUN) ^ 2) ∧
    -- anchor
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  ⟨boundary, solar_system_locked.2.2.2.2.1, jupiter_saturn.1, saturn_rings_shatter.2.2.1,
   saturn_ring_moons_iva.2.2.2.2.2.2.2.2, saturn_moons_locked.1, gentle_impact_merges,
   isolation_mass_1au, anchor_zero_friction⟩

theorem the_manifold_is_holding :
    manifold_impedance SOVEREIGN_ANCHOR = 0 :=
  anchor_zero_friction

end SNSFL_GC_Accretion_Boundaries_TL

/-!
-- ============================================================
-- FILE:       SNSFL_GC_Accretion_Boundaries_TL.lean
-- COORDINATE: [9,9,3,XX](COSM)
-- SORRY:      0
--
-- τ = TL × (critical ÷ measured) · Hill 2√3 · Roche d_R · v_cr
--
-- RESULTS:
--   Placement: boundary, stable below TL, broken shatters, IVA
--     corridor 1 < Q ≤ 25/22, Locked Q > 25/22 (T1–T5)
--   Hill spacing: τ = TL · 2√3 / Δ; cube-root bounds (T6–T7)
--   Solar System: every neighbouring pair Locked; Jupiter–Saturn
--     0.43–0.44 TL, every other pair below TL/4 (T8–T10)
--   Saturn: Roche limit 133,393–133,422 km; C, B and inner A rings
--     Shatter; ring moons, outer A ring and F ring IVA; Mimas,
--     Enceladus and Titan Locked (T11–T15)
--   Collisions: Kokubo–Genda endpoints 2.94 and 1.08; v_cr above
--     escape speed; merge below TL, hit-and-run at TL; impacts at
--     least escape speed; gentle impacts merge (T16–T20)
--   Isolation mass at 1 AU, MMSN, b̃ = 10: 0.096–0.0975 M⊕ (T21)
--   GAM Collider: B = |B₁ − B₂|; splitting halves τ; sibling
--     halves remerge to Noble with the parent's Pattern (T22–T25)
--
-- CONNECTIONS:
--   [9,9,2,3.8] 8-Beam Fusion Theorem (2-beam mode)
--   [9,9,10,1] Gravity Reduction · [9,9,0,4.7] QM Reduction
--   [9,9,3,XX] Galaxy Toomre TL · [9,9,3,21] Electron Geometry
--   [9,9,3,22] String-Breaking
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/
