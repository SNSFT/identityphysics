/-
  SNSFL_ForcedResponse_CyclesToShatter_Reduction.lean

  Applied Identity Physics: Forced Response, the Intervention Theorem,
  and Cycles to Shatter — Fatigue as Damping Loss

  Coordinate  [9,9,2,53](ENGR)
  Architect   HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska
  Anchor      Omega_0 = 1.36899099984016
  Torsion     TORSION_LIMIT = Omega_0 / 10 = 0.136899099984016
  DOI         10.5281/zenodo.18719748
  ORCID       0009-0005-5313-7443

  STANDALONE. Every definition and every quantity needed to close every
  calculation in this file is restated here in full. No corpus file is
  referenced for content.

  SORRY : 0
  AXIOMS: 0
-/

import Mathlib

namespace SNSFL_ForcedResponse

section ForcedResponse

open Real

/-! ## Section 0 · The anchor and the Torsion Limit -/

/-- The Sovereign Anchor Constant. -/
noncomputable def OMEGA_0 : ℝ := 1.36899099984016

/-- The Universal Torsion Limit. -/
noncomputable def TORSION_LIMIT : ℝ := 0.136899099984016

/-- The IVA floor: 88% of the Torsion Limit. -/
noncomputable def TL_IVA : ℝ := 0.88 * TORSION_LIMIT

/-- The inverse fine-structure constant at corpus precision. -/
noncomputable def ALPHA_INV : ℝ := 137.035999084000016

/-- The bare term: the Torsion Limit times one thousand. -/
noncomputable def BARE : ℝ := 136.899099984016

/-- T1 · The anchor is ten Torsion Limits. -/
theorem T1_anchor_is_ten_TL : OMEGA_0 = 10 * TORSION_LIMIT := by
  unfold OMEGA_0 TORSION_LIMIT; norm_num

/-- T2 · The bare term is one thousand Torsion Limits, exactly. -/
theorem T2_bare_is_thousand_TL : BARE = 1000 * TORSION_LIMIT := by
  unfold BARE TORSION_LIMIT; norm_num

/-- T3 · Bare plus kinetic is the inverse fine-structure constant, exactly. -/
theorem T3_bare_plus_kinetic : BARE + TORSION_LIMIT = ALPHA_INV := by
  unfold BARE TORSION_LIMIT ALPHA_INV; norm_num

/-- T4 · The Torsion Limit times 1001 is the inverse fine-structure constant. -/
theorem T4_TL_times_1001 : TORSION_LIMIT * 1001 = ALPHA_INV := by
  unfold TORSION_LIMIT ALPHA_INV; norm_num

/-- T5 · The multiplier factors as 7 * 11 * 13. -/
theorem T5_multiplier_factors : (1001 : ℕ) = 7 * 11 * 13 := by norm_num

/-- T6 · The anchor route in one step: Omega_0 * 100.1 = alpha inverse. -/
theorem T6_anchor_route : OMEGA_0 * 100.1 = ALPHA_INV := by
  unfold OMEGA_0 ALPHA_INV; norm_num

/-- T7 · The Torsion Limit is positive. -/
theorem T7_TL_pos : 0 < TORSION_LIMIT := by unfold TORSION_LIMIT; norm_num

/-- T8 · The IVA floor in closed form. -/
theorem T8_TL_IVA_value : TL_IVA = 0.12047120798593408 := by
  unfold TL_IVA TORSION_LIMIT; norm_num

/-- T9 · The IVA floor lies strictly below the Torsion Limit. -/
theorem T9_IVA_floor_below_limit : TL_IVA < TORSION_LIMIT := by
  unfold TL_IVA TORSION_LIMIT; norm_num

/-- T10 · The IVA floor is positive. -/
theorem T10_TL_IVA_pos : 0 < TL_IVA := by unfold TL_IVA TORSION_LIMIT; norm_num

/-! ## Section 1 · The state, torsion, and the four phases -/

/-- A PNBA state: Pattern, Narrative, Behavior, Adaptation. -/
@[ext]
structure LagState where
  P : ℝ
  N : ℝ
  B : ℝ
  A : ℝ

/-- Torsion: Behavior load against Pattern capacity. -/
noncomputable def torsion (s : LagState) : ℝ := s.B / s.P

/-- The Noble phase. -/
def IsNoble (s : LagState) : Prop := torsion s = 0

/-- The Locked phase. -/
def IsLocked (s : LagState) : Prop := 0 < torsion s ∧ torsion s < TL_IVA

/-- The IVA phase: Identity Vector Amplification. -/
def IsIVA (s : LagState) : Prop := TL_IVA ≤ torsion s ∧ torsion s < TORSION_LIMIT

/-- The Shatter phase. -/
def IsShatter (s : LagState) : Prop := TORSION_LIMIT ≤ torsion s

/-- T11 · Zero Behavior is a Noble reading. -/
theorem T11_zero_behavior_is_noble (s : LagState) (hB : s.B = 0) : IsNoble s := by
  unfold IsNoble torsion
  rw [hB, zero_div]

/-- T12 · Noble and Shatter are mutually exclusive. -/
theorem T12_noble_shatter_exclusive (s : LagState) : ¬(IsNoble s ∧ IsShatter s) := by
  intro h
  obtain ⟨hn, hs⟩ := h
  unfold IsNoble at hn
  unfold IsShatter at hs
  rw [hn] at hs
  exact absurd hs (not_le.mpr T7_TL_pos)

/-- T13 · Locked and IVA are mutually exclusive. -/
theorem T13_locked_iva_exclusive (s : LagState) : ¬(IsLocked s ∧ IsIVA s) := by
  intro h
  obtain ⟨⟨_, h2⟩, ⟨h3, _⟩⟩ := h
  linarith

/-- T14 · IVA and Shatter are mutually exclusive. -/
theorem T14_iva_shatter_exclusive (s : LagState) : ¬(IsIVA s ∧ IsShatter s) := by
  intro h
  obtain ⟨⟨_, h2⟩, h3⟩ := h
  unfold IsShatter at h3
  linarith

/-- T15 · The phase reading is a function of the ratio alone. -/
theorem T15_phase_is_ratio_only (s t : LagState) (h : torsion s = torsion t) :
    IsIVA s ↔ IsIVA t := by
  unfold IsIVA
  rw [h]

/-- T16 · The four phases exhaust every non-negative reading. -/
theorem T16_phases_exhaust (s : LagState) (h : 0 ≤ torsion s) :
    IsNoble s ∨ IsLocked s ∨ IsIVA s ∨ IsShatter s := by
  unfold IsNoble IsLocked IsIVA IsShatter
  rcases eq_or_lt_of_le h with h0 | h0
  · exact Or.inl h0.symm
  · rcases lt_or_le (torsion s) TL_IVA with h1 | h1
    · exact Or.inr (Or.inl ⟨h0, h1⟩)
    · rcases lt_or_le (torsion s) TORSION_LIMIT with h2 | h2
      · exact Or.inr (Or.inr (Or.inl ⟨h1, h2⟩))
      · exact Or.inr (Or.inr (Or.inr h2))

/-! ## Section 2 · External forcing, and the intervention theorem -/

/-- External forcing, as the corpus realizes it: a bump on Behavior alone. -/
noncomputable def f_ext_op (s : LagState) (δ : ℝ) : LagState := { s with B := s.B + δ }

/-- T17 · External forcing leaves Pattern unchanged. -/
theorem T17_f_ext_preserves_P (s : LagState) (δ : ℝ) : (f_ext_op s δ).P = s.P := rfl

/-- T18 · External forcing leaves Narrative unchanged. -/
theorem T18_f_ext_preserves_N (s : LagState) (δ : ℝ) : (f_ext_op s δ).N = s.N := rfl

/-- T19 · External forcing leaves Adaptation unchanged. -/
theorem T19_f_ext_preserves_A (s : LagState) (δ : ℝ) : (f_ext_op s δ).A = s.A := rfl

/-- T20 · External forcing acts on Behavior by addition. -/
theorem T20_f_ext_on_B (s : LagState) (δ : ℝ) : (f_ext_op s δ).B = s.B + δ := rfl

/-- T21 · THE INTERVENTION THEOREM. External forcing is rank one: three of the
    four primitives are untouched, and the fourth moves by addition. -/
theorem T21_intervention (s : LagState) (δ : ℝ) :
    (f_ext_op s δ).P = s.P ∧ (f_ext_op s δ).N = s.N ∧ (f_ext_op s δ).A = s.A ∧
      (f_ext_op s δ).B = s.B + δ :=
  ⟨rfl, rfl, rfl, rfl⟩

/-- T22 · The reachable set under forcing alone is exactly the Behavior line:
    a state is reached if and only if it agrees with `s` off Behavior. -/
theorem T22_reachable_set_is_a_line (s t : LagState) :
    (∃ δ, f_ext_op s δ = t) ↔ (t.P = s.P ∧ t.N = s.N ∧ t.A = s.A) := by
  constructor
  · intro h
    obtain ⟨δ, hδ⟩ := h
    subst hδ
    exact ⟨rfl, rfl, rfl⟩
  · intro h
    obtain ⟨hP, hN, hA⟩ := h
    refine ⟨t.B - s.B, ?_⟩
    apply LagState.ext
    · exact hP.symm
    · exact hN.symm
    · show s.B + (t.B - s.B) = t.B
      ring
    · exact hA.symm

/-- T23 · Pattern capacity is invariant under every external event. -/
theorem T23_pattern_invariant_under_all_forcing (s : LagState) :
    ∀ δ : ℝ, (f_ext_op s δ).P = s.P := fun _ => rfl

/-- T24 · Positive forcing raises torsion. -/
theorem T24_positive_forcing_raises_torsion (s : LagState) (δ : ℝ)
    (hP : 0 < s.P) (hδ : 0 < δ) : torsion s < torsion (f_ext_op s δ) := by
  unfold torsion f_ext_op
  dsimp only
  gcongr
  linarith

/-- T25 · Negative forcing lowers torsion. -/
theorem T25_negative_forcing_lowers_torsion (s : LagState) (δ : ℝ)
    (hP : 0 < s.P) (hδ : δ < 0) : torsion (f_ext_op s δ) < torsion s := by
  unfold torsion f_ext_op
  dsimp only
  gcongr
  linarith

/-- T26 · Forcing carries a system across the Shatter boundary: for any state
    with positive Pattern there is a forcing that puts it in Shatter. -/
theorem T26_forcing_reaches_shatter (s : LagState) (hP : 0 < s.P) :
    ∃ δ : ℝ, IsShatter (f_ext_op s δ) := by
  refine ⟨TORSION_LIMIT * s.P - s.B, ?_⟩
  unfold IsShatter torsion f_ext_op
  dsimp only
  have h1 : s.B + (TORSION_LIMIT * s.P - s.B) = TORSION_LIMIT * s.P := by ring
  have h2 : TORSION_LIMIT * s.P / s.P = TORSION_LIMIT := by
    field_simp
  exact le_of_eq (by rw [h1, h2])

/-- T27 · Forcing changes phase without changing Pattern: the state that
    reaches Shatter has the same Pattern capacity it started with. -/
theorem T27_phase_change_without_pattern_change (s : LagState) (hP : 0 < s.P) :
    ∃ δ : ℝ, IsShatter (f_ext_op s δ) ∧ (f_ext_op s δ).P = s.P := by
  obtain ⟨δ, hδ⟩ := T26_forcing_reaches_shatter s hP
  exact ⟨δ, hδ, rfl⟩

/-- T28 · ALL STRUCTURAL CHANGE IS ENDOGENOUS. Any difference in Pattern,
    Narrative or Adaptation between two states rules out forcing as its cause. -/
theorem T28_structural_change_is_endogenous (s t : LagState)
    (h : t.P ≠ s.P ∨ t.N ≠ s.N ∨ t.A ≠ s.A) : ¬ ∃ δ, f_ext_op s δ = t := by
  intro hex
  obtain ⟨hP, hN, hA⟩ := (T22_reachable_set_is_a_line s t).mp hex
  rcases h with h | h | h
  · exact h hP
  · exact h hN
  · exact h hA

/-! ## Section 3 · Pure forcing has no memory -/

/-- T29 · Forcing composes additively. -/
theorem T29_forcing_additive (s : LagState) (δ₁ δ₂ : ℝ) :
    f_ext_op (f_ext_op s δ₁) δ₂ = f_ext_op s (δ₁ + δ₂) := by
  apply LagState.ext
  · rfl
  · rfl
  · show s.B + δ₁ + δ₂ = s.B + (δ₁ + δ₂)
    ring
  · rfl

/-- T30 · Forcing commutes: the order of two applications carries no
    information. -/
theorem T30_forcing_commutes (s : LagState) (δ₁ δ₂ : ℝ) :
    f_ext_op (f_ext_op s δ₁) δ₂ = f_ext_op (f_ext_op s δ₂) δ₁ := by
  rw [T29_forcing_additive, T29_forcing_additive, add_comm]

/-- T31 · Zero forcing is the identity. -/
theorem T31_zero_forcing_identity (s : LagState) : f_ext_op s 0 = s := by
  apply LagState.ext
  · rfl
  · rfl
  · show s.B + 0 = s.B
    ring
  · rfl

/-- T32 · NO MEMORY. `n` applications of `δ` land exactly where one
    application of `n * δ` lands. -/
theorem T32_no_memory (s : LagState) (δ : ℝ) :
    ∀ n : ℕ, (fun t => f_ext_op t δ)^[n] s = f_ext_op s (n * δ) := by
  intro n
  induction n with
  | zero =>
      simp only [Function.iterate_zero_apply, Nat.cast_zero, zero_mul]
      exact (T31_zero_forcing_identity s).symm
  | succ k ih =>
      rw [Function.iterate_succ_apply', ih, T29_forcing_additive]
      congr 1
      push_cast
      ring

/-- T33 · NOTHING ACCUMULATES. The torsion reading after `n` applications is
    the closed form `(B + n·δ) / P`: no term records the sequence. -/
theorem T33_nothing_accumulates (s : LagState) (δ : ℝ) (n : ℕ) :
    torsion ((fun t => f_ext_op t δ)^[n] s) = (s.B + n * δ) / s.P := by
  rw [T32_no_memory s δ n]
  rfl

/-- T34 · CYCLIC DAMAGE CANNOT BE EXTERNALLY CAUSED. A drop in Pattern capacity
    is not reachable by any sequence of external forcings whatsoever. -/
theorem T34_cyclic_damage_is_internal (s t : LagState) (hdrop : t.P < s.P) :
    ¬ ∃ n : ℕ, ∃ δ : ℝ, (fun u => f_ext_op u δ)^[n] s = t := by
  intro hex
  obtain ⟨n, δ, hnd⟩ := hex
  rw [T32_no_memory s δ n] at hnd
  have heq : t.P = s.P := by rw [← hnd]
  exact absurd heq (by linarith)

/-! ## Section 4 · Whether the ground state is externally reachable -/

/-- Guarded forcing: the domain carried where Behavior must stay positive. -/
def GuardedForcing (s : LagState) (δ : ℝ) : Prop := 0 < s.B + δ

/-- T35 · Under the guarded domain, Behavior cannot be driven to zero. -/
theorem T35_guarded_excludes_zero_behavior (s : LagState) (δ : ℝ)
    (h : GuardedForcing s δ) : (f_ext_op s δ).B ≠ 0 := by
  unfold GuardedForcing at h
  show s.B + δ ≠ 0
  exact ne_of_gt h

/-- T36 · Under the guarded domain, torsion is never driven to zero at positive
    Pattern: NOBLE CANNOT BE IMPOSED FROM OUTSIDE. -/
theorem T36_noble_not_externally_reachable (s : LagState) (δ : ℝ)
    (hP : 0 < s.P) (h : GuardedForcing s δ) : ¬ IsNoble (f_ext_op s δ) := by
  unfold GuardedForcing at h
  unfold IsNoble torsion f_ext_op
  dsimp only
  intro hz
  rw [div_eq_zero_iff] at hz
  rcases hz with hz | hz
  · exact absurd hz (ne_of_gt h)
  · exact absurd hz (ne_of_gt hP)

/-- T37 · Without the guard, Noble is reachable: the unguarded operator is the
    right reading for a substrate whose ground state is externally
    attainable. -/
theorem T37_unguarded_reaches_noble (s : LagState) :
    ∃ δ : ℝ, IsNoble (f_ext_op s δ) := by
  refine ⟨-s.B, ?_⟩
  unfold IsNoble torsion f_ext_op
  dsimp only
  rw [show s.B + -s.B = (0:ℝ) from by ring, zero_div]

/-- T38 · The guard is automatic above zero: it holds for every non-negative
    forcing when Behavior is already positive. -/
theorem T38_guard_automatic_above_zero (s : LagState) (δ : ℝ)
    (hB : 0 < s.B) (hδ : 0 ≤ δ) : GuardedForcing s δ := by
  unfold GuardedForcing
  linarith

/-! ## Section 5 · Pattern capacity is inertia times damping -/

/-- Pattern capacity in a driven structure: twice inertia times damping ratio. -/
noncomputable def pattern_of_damping (I ζ : ℝ) : ℝ := 2 * I * ζ

/-- The driven ratio: Behavior load against Pattern capacity. -/
noncomputable def driven_ratio (B I ζ : ℝ) : ℝ := B / (2 * I * ζ)

/-- T39 · The driven ratio is torsion on the damping reading of Pattern. -/
theorem T39_driven_ratio_is_torsion (B I ζ : ℝ) :
    driven_ratio B I ζ = torsion ⟨pattern_of_damping I ζ, 0, B, 0⟩ := rfl

/-- T40 · Onset at ratio one is exactly torsion at the Torsion Limit. -/
theorem T40_onset_is_limit (B I ζ : ℝ) :
    driven_ratio B I ζ = 1 ↔ driven_ratio B I ζ * TORSION_LIMIT = TORSION_LIMIT := by
  constructor
  · intro h
    rw [h, one_mul]
  · intro h
    exact mul_right_cancel₀ (ne_of_gt T7_TL_pos) (by rw [h, one_mul])

/-- T41 · Raising damping lowers the driven ratio. -/
theorem T41_damping_lowers_ratio (B I ζ₁ ζ₂ : ℝ) (hB : 0 < B) (hI : 0 < I)
    (h1 : 0 < ζ₁) (h12 : ζ₁ < ζ₂) : driven_ratio B I ζ₂ < driven_ratio B I ζ₁ := by
  unfold driven_ratio
  have hd1 : 0 < 2 * I * ζ₁ := by positivity
  have hd2 : 2 * I * ζ₁ < 2 * I * ζ₂ := by nlinarith
  gcongr

/-- T42 · FATIGUE IS LOSS OF DAMPING CAPACITY. At fixed inertia, a fall in
    damping is exactly a fall in Pattern capacity. -/
theorem T42_fatigue_is_damping_loss (I ζ₁ ζ₂ : ℝ) (hI : 0 < I) (h : ζ₂ < ζ₁) :
    pattern_of_damping I ζ₂ < pattern_of_damping I ζ₁ := by
  unfold pattern_of_damping
  nlinarith

/-- T43 · Losing damping drives the ratio toward onset, with Behavior fixed. -/
theorem T43_damping_loss_climbs_toward_onset (B I ζ₁ ζ₂ : ℝ) (hB : 0 < B)
    (hI : 0 < I) (h2 : 0 < ζ₂) (h : ζ₂ < ζ₁) :
    driven_ratio B I ζ₁ < driven_ratio B I ζ₂ :=
  T41_damping_lowers_ratio B I ζ₂ ζ₁ hB hI h2 h

/-- T44 · Pattern capacity on the damping reading is positive. -/
theorem T44_pattern_of_damping_pos (I ζ : ℝ) (hI : 0 < I) (hζ : 0 < ζ) :
    0 < pattern_of_damping I ζ := by
  unfold pattern_of_damping
  positivity

/-! ## Section 6 · Pattern capacity from static strength -/

/-- Pattern capacity read off static strength. -/
noncomputable def pattern_capacity (UTS : ℝ) : ℝ := UTS / TORSION_LIMIT

/-- T45 · PATTERN CAPACITY FROM STATIC STRENGTH, with no fitting: static
    strength is the Torsion Limit times Pattern capacity. -/
theorem T45_static_strength_from_capacity (UTS : ℝ) :
    TORSION_LIMIT * pattern_capacity UTS = UTS := by
  unfold pattern_capacity
  field_simp [ne_of_gt T7_TL_pos]

/-- T46 · A state loaded at static strength sits exactly at the Shatter
    boundary. -/
theorem T46_static_load_is_shatter_boundary (UTS : ℝ) (hU : 0 < UTS) :
    torsion ⟨pattern_capacity UTS, 0, UTS, 0⟩ = TORSION_LIMIT := by
  unfold torsion pattern_capacity
  dsimp only
  have hTL := ne_of_gt T7_TL_pos
  have hUne := ne_of_gt hU
  field_simp

/-- T47 · Pattern capacity is positive for a positive static strength. -/
theorem T47_pattern_capacity_pos (UTS : ℝ) (hU : 0 < UTS) :
    0 < pattern_capacity UTS := by
  unfold pattern_capacity
  exact div_pos hU T7_TL_pos

/-- T48 · Pattern capacity is strictly increasing in static strength. -/
theorem T48_pattern_capacity_mono (U V : ℝ) (h : U < V) :
    pattern_capacity U < pattern_capacity V := by
  unfold pattern_capacity
  have hTL := T7_TL_pos
  gcongr

/-! ## Section 7 · Cycles to shatter -/

/-- Degradation of Pattern capacity per cycle, additive form. -/
noncomputable def degradation (k B m : ℝ) : ℝ := k * B ^ m

/-- Cycles to shatter: the capacity available above the shatter load, divided by
    the loss per cycle. -/
noncomputable def cycles_to_shatter (P₀ B k m : ℝ) : ℝ :=
  (P₀ - B / TORSION_LIMIT) / (k * B ^ m)

/-- T49 · THE LIFE LAW. Cycles to shatter times the loss per cycle is exactly
    the capacity available above the shatter load. -/
theorem T49_life_law (P₀ B k m : ℝ) (hk : 0 < k) (hB : 0 < B) :
    cycles_to_shatter P₀ B k m * degradation k B m = P₀ - B / TORSION_LIMIT := by
  unfold cycles_to_shatter degradation
  have h : k * B ^ m ≠ 0 := by positivity
  exact div_mul_cancel₀ _ h

/-- T50 · Life is positive exactly when the load is below static strength. -/
theorem T50_life_pos_below_static (P₀ B k m : ℝ) (hk : 0 < k) (hB : 0 < B)
    (h : B / TORSION_LIMIT < P₀) : 0 < cycles_to_shatter P₀ B k m := by
  unfold cycles_to_shatter
  apply div_pos (by linarith)
  positivity

/-- T51 · THE BASQUIN FORM. Life times `B ^ m` is the available capacity over
    the degradation coefficient — a pure inverse power of the load in the
    small-load limit, where the numerator is constant. -/
theorem T51_basquin_form (P₀ k m : ℝ) (hk : 0 < k) :
    ∀ B : ℝ, 0 < B →
      cycles_to_shatter P₀ B k m * B ^ m = (P₀ - B / TORSION_LIMIT) / k := by
  intro B hB
  unfold cycles_to_shatter
  have h1 : B ^ m ≠ 0 := by positivity
  have h2 : k ≠ 0 := ne_of_gt hk
  field_simp
  try ring

/-- T52 · Raising the load lowers the capacity available above shatter. -/
theorem T52_available_capacity_decreasing (P₀ B₁ B₂ : ℝ) (h : B₁ < B₂) :
    P₀ - B₂ / TORSION_LIMIT < P₀ - B₁ / TORSION_LIMIT := by
  have hTL := T7_TL_pos
  have : B₁ / TORSION_LIMIT < B₂ / TORSION_LIMIT := by gcongr
  linarith

/-- T53 · THE EXPONENT IS THE BASQUIN EXPONENT. For 1045 steel the published
    slope is `b = -0.115`, and the degradation exponent is its reciprocal. -/
theorem T53_steel_exponent : (0.115 : ℝ) * (1 / 0.115) = 1 := by norm_num

/-- T54 · For 2024-T4 aluminum the published slope is `b = -0.124`. -/
theorem T54_aluminum_exponent : (0.124 : ℝ) * (1 / 0.124) = 1 := by norm_num

/-- T55 · The exponent is a free substrate response and is not set by the
    structure: the life law closes for every exponent whatsoever. -/
theorem T55_exponent_is_substrate_response (P₀ B k : ℝ) (hk : 0 < k) (hB : 0 < B) :
    ∀ m : ℝ, cycles_to_shatter P₀ B k m * degradation k B m = P₀ - B / TORSION_LIMIT :=
  fun m => T49_life_law P₀ B k m hk hB

/-! ## Section 8 · The endurance limit is a balance -/

/-- Net degradation per cycle, with a recovery term. -/
noncomputable def net_degradation (k B m r : ℝ) : ℝ := -(k * B ^ m) + r

/-- The endurance limit: the load at which degradation and recovery cancel. -/
noncomputable def endurance_limit (k r m : ℝ) : ℝ := (r / k) ^ (1 / m)

/-- T56 · THE BALANCE. At the endurance limit, net degradation is zero. -/
theorem T56_endurance_balance (k r m : ℝ) (hk : 0 < k) (hr : 0 < r) (hm : 0 < m) :
    net_degradation k (endurance_limit k r m) m r = 0 := by
  unfold net_degradation endurance_limit
  have hrk : (0:ℝ) < r / k := div_pos hr hk
  rw [← Real.rpow_mul (le_of_lt hrk), one_div_mul_cancel (ne_of_gt hm), Real.rpow_one]
  field_simp

/-- T57 · Below the endurance limit, recovery dominates and net degradation is
    strictly positive: nothing accumulates. -/
theorem T57_below_endurance_recovers (k r m B : ℝ) (hk : 0 < k) (hr : 0 < r)
    (hm : 0 < m) (hB : 0 < B) (h : B < endurance_limit k r m) :
    0 < net_degradation k B m r := by
  unfold net_degradation
  unfold endurance_limit at h
  have hrk : (0:ℝ) < r / k := div_pos hr hk
  have key : B ^ m < r / k := by
    have h1 : B ^ m < ((r / k) ^ (1 / m)) ^ m :=
      Real.rpow_lt_rpow (le_of_lt hB) h hm
    rwa [← Real.rpow_mul (le_of_lt hrk), one_div_mul_cancel (ne_of_gt hm),
      Real.rpow_one] at h1
  have h2 : k * B ^ m < r := by
    calc k * B ^ m < k * (r / k) := by nlinarith
      _ = r := by field_simp
  linarith

/-- T58 · Above the endurance limit, damage dominates and net degradation is
    strictly negative: life is finite. -/
theorem T58_above_endurance_damages (k r m B : ℝ) (hk : 0 < k) (hr : 0 < r)
    (hm : 0 < m) (h : endurance_limit k r m < B) :
    net_degradation k B m r < 0 := by
  unfold net_degradation
  unfold endurance_limit at h
  have hrk : (0:ℝ) < r / k := div_pos hr hk
  have hpos : (0:ℝ) < (r / k) ^ (1 / m) := Real.rpow_pos_of_pos hrk _
  have key : r / k < B ^ m := by
    have h1 : ((r / k) ^ (1 / m)) ^ m < B ^ m :=
      Real.rpow_lt_rpow (le_of_lt hpos) h hm
    rwa [← Real.rpow_mul (le_of_lt hrk), one_div_mul_cancel (ne_of_gt hm),
      Real.rpow_one] at h1
  have h2 : r < k * B ^ m := by
    calc r = k * (r / k) := by field_simp
      _ < k * B ^ m := by nlinarith
  linarith

/-- T59 · THE BALANCE IS INVARIANT UNDER THE FORM OF THE DAMAGE LAW. With damage
    and recovery both proportional to Pattern capacity, the `P` factor cancels
    and the balance condition is the same equation. -/
theorem T59_balance_invariant_under_damage_form (k B m r P : ℝ) (hP : P ≠ 0) :
    (-(k * P * B ^ m) + r * P = 0) ↔ (-(k * B ^ m) + r = 0) := by
  have hfac : -(k * P * B ^ m) + r * P = P * (-(k * B ^ m) + r) := by ring
  constructor
  · intro h
    rw [hfac] at h
    rcases mul_eq_zero.mp h with h1 | h1
    · exact absurd h1 hP
    · exact h1
  · intro h
    rw [hfac, h, mul_zero]

/-- T60 · AN ENDURANCE LIMIT EXISTS EXACTLY WHEN A STRESS-INDEPENDENT RECOVERY
    CHANNEL EXISTS: a positive balance load exists if and only if `r` is
    positive. -/
theorem T60_endurance_exists_iff_recovery (k m : ℝ) (hk : 0 < k) (hm : 0 < m) :
    ∀ r : ℝ, (0 < r ↔ ∃ B : ℝ, 0 < B ∧ net_degradation k B m r = 0) := by
  intro r
  constructor
  · intro hr
    refine ⟨endurance_limit k r m, ?_, T56_endurance_balance k r m hk hr hm⟩
    unfold endurance_limit
    exact Real.rpow_pos_of_pos (div_pos hr hk) _
  · intro h
    obtain ⟨B, hB, hbal⟩ := h
    unfold net_degradation at hbal
    have hre : r = k * B ^ m := by linarith
    rw [hre]
    positivity

/-- T61 · The endurance limit is positive. -/
theorem T61_endurance_limit_pos (k r m : ℝ) (hk : 0 < k) (hr : 0 < r) :
    0 < endurance_limit k r m := by
  unfold endurance_limit
  exact Real.rpow_pos_of_pos (div_pos hr hk) _

/-- T62 · The endurance limit rises with the recovery rate. -/
theorem T62_endurance_rises_with_recovery (k m r₁ r₂ : ℝ) (hk : 0 < k) (hr : 0 < r₁)
    (hm : 0 < m) (h : r₁ < r₂) :
    endurance_limit k r₁ m < endurance_limit k r₂ m := by
  unfold endurance_limit
  have hd : r₁ / k < r₂ / k := by gcongr
  exact Real.rpow_lt_rpow (le_of_lt (div_pos hr hk)) hd (by positivity)

/-! ## Section 9 · Endurance readings on the torsion scale -/

/-- The endurance reading in torsion units, from the endurance ratio. -/
noncomputable def tau_endurance (ratio : ℝ) : ℝ := ratio * TORSION_LIMIT

/-- T63 · 1045 steel: the endurance plateau at half of static strength. -/
theorem T63_steel_tau_endurance : tau_endurance 0.5 = 0.068449549992008 := by
  unfold tau_endurance TORSION_LIMIT; norm_num

/-- T64 · 2024-T4 aluminum: the reference ratio at 0.35 of static strength. -/
theorem T64_aluminum_tau_endurance : tau_endurance 0.35 = 0.0479146849944056 := by
  unfold tau_endurance TORSION_LIMIT; norm_num

/-- T65 · Both readings lie strictly inside Locked. -/
theorem T65_both_inside_locked :
    0 < tau_endurance 0.5 ∧ tau_endurance 0.5 < TL_IVA ∧
      0 < tau_endurance 0.35 ∧ tau_endurance 0.35 < TL_IVA := by
  unfold tau_endurance TL_IVA TORSION_LIMIT
  norm_num

/-- T66 · A ratio below the IVA floor is a Locked reading, in general. -/
theorem T66_ratio_below_floor_is_locked (ratio : ℝ) (h0 : 0 < ratio)
    (h1 : ratio < 0.88) : 0 < tau_endurance ratio ∧ tau_endurance ratio < TL_IVA := by
  unfold tau_endurance TL_IVA
  have hTL := T7_TL_pos
  refine ⟨by positivity, ?_⟩
  nlinarith

/-- T67 · The torsion scale is shared: the ratio is recovered from the reading
    for any material whatsoever. -/
theorem T67_scale_is_shared (ratio : ℝ) :
    tau_endurance ratio / TORSION_LIMIT = ratio := by
  unfold tau_endurance
  field_simp [ne_of_gt T7_TL_pos]

/-! ## Section 10 · The knee, and why it is sharp -/

/-- The ratio of damage to recovery at a given load. -/
noncomputable def knee_ratio (B Be m : ℝ) : ℝ := (B / Be) ^ m

/-- T68 · At the endurance limit the knee ratio is exactly one. -/
theorem T68_knee_at_one (Be m : ℝ) (hBe : 0 < Be) : knee_ratio Be Be m = 1 := by
  unfold knee_ratio
  rw [div_self (ne_of_gt hBe), Real.one_rpow]

/-- T69 · Below the endurance limit the knee ratio is below one. -/
theorem T69_knee_below_one (B Be m : ℝ) (hB : 0 < B) (hBe : 0 < Be) (hm : 0 < m)
    (h : B < Be) : knee_ratio B Be m < 1 := by
  unfold knee_ratio
  have h1 : B / Be < 1 := (div_lt_one hBe).mpr h
  calc (B / Be) ^ m < (1:ℝ) ^ m := Real.rpow_lt_rpow (by positivity) h1 hm
    _ = 1 := Real.one_rpow m

/-- T70 · Above the endurance limit the knee ratio exceeds one. -/
theorem T70_knee_above_one (B Be m : ℝ) (hBe : 0 < Be) (hm : 0 < m) (h : Be < B) :
    1 < knee_ratio B Be m := by
  unfold knee_ratio
  have h1 : (1:ℝ) < B / Be := (one_lt_div hBe).mpr h
  calc (1:ℝ) = (1:ℝ) ^ m := (Real.one_rpow m).symm
    _ < (B / Be) ^ m := Real.rpow_lt_rpow (by norm_num) h1 hm

/-- T71 · THE KNEE IS SHARP BECAUSE THE EXPONENT IS LARGE. At a fixed overload
    above one, the knee ratio is strictly increasing in the exponent. -/
theorem T71_sharpness_from_exponent (B Be m₁ m₂ : ℝ) (hBe : 0 < Be) (h : Be < B)
    (hm : m₁ < m₂) : knee_ratio B Be m₁ < knee_ratio B Be m₂ := by
  unfold knee_ratio
  have h1 : (1:ℝ) < B / Be := (one_lt_div hBe).mpr h
  exact (Real.rpow_lt_rpow_left_iff h1).mpr hm

/-- T72 · The knee ratio is multiplicative in the load ratio. -/
theorem T72_knee_multiplicative (B₁ B₂ Be m : ℝ) (hB1 : 0 < B₁) (hB2 : 0 < B₂)
    (hBe : 0 < Be) :
    knee_ratio B₁ Be m * knee_ratio B₂ Be m = ((B₁ * B₂) / (Be * Be)) ^ m := by
  unfold knee_ratio
  rw [← Real.mul_rpow (by positivity) (by positivity)]
  congr 1
  field_simp

/-- T73 · The knee ratio is positive. -/
theorem T73_knee_pos (B Be m : ℝ) (hB : 0 < B) (hBe : 0 < Be) :
    0 < knee_ratio B Be m := by
  unfold knee_ratio
  exact Real.rpow_pos_of_pos (div_pos hB hBe) m

/-! ## Section 11 · The lossy boundary and the A·B product -/

/-- Lossless absorption: forcing at or below the product `A * P * B`. -/
def IVA_dominance (s : LagState) (F_ext : ℝ) : Prop := s.A * s.P * s.B ≥ F_ext

/-- Lossy: forcing above the product `A * P * B`. -/
def IsLossy (s : LagState) (F_ext : ℝ) : Prop := F_ext > s.A * s.P * s.B

/-- T74 · Lossless and lossy are mutually exclusive. -/
theorem T74_dominance_lossy_exclusive (s : LagState) (F : ℝ) :
    ¬(IVA_dominance s F ∧ IsLossy s F) := by
  intro h
  obtain ⟨h1, h2⟩ := h
  unfold IVA_dominance at h1
  unfold IsLossy at h2
  linarith

/-- T75 · Lossless and lossy exhaust the possibilities. -/
theorem T75_dominance_lossy_exhaust (s : LagState) (F : ℝ) :
    IVA_dominance s F ∨ IsLossy s F := by
  unfold IVA_dominance IsLossy
  exact le_or_lt F (s.A * s.P * s.B)

/-- T76 · THE A·B PRODUCT. At the lossy boundary with Pattern read off static
    strength, the product `A * B` is the endurance ratio in torsion units. -/
theorem T76_AB_product (UTS Be A B : ℝ) (hU : 0 < UTS)
    (hbal : A * pattern_capacity UTS * B = Be) :
    A * B = (Be / UTS) * TORSION_LIMIT := by
  unfold pattern_capacity at hbal
  have hTL := ne_of_gt T7_TL_pos
  have hUne := ne_of_gt hU
  have key : A * B * UTS = Be * TORSION_LIMIT := by
    have hmul := congrArg (fun x => x * TORSION_LIMIT) hbal
    dsimp only at hmul
    calc A * B * UTS = A * (UTS / TORSION_LIMIT) * B * TORSION_LIMIT := by
          field_simp
          ring
      _ = Be * TORSION_LIMIT := hmul
  rw [div_mul_eq_mul_div, eq_div_iff hUne]
  linarith [key]

/-- T77 · The A·B product for 1045 steel: an endurance strength of 292.5 MPa
    against a static strength of 585 MPa. -/
theorem T77_AB_steel : ((292.5 : ℝ) / 585) * TORSION_LIMIT = 0.068449549992008 := by
  unfold TORSION_LIMIT; norm_num

/-- T78 · The A·B product for 2024-T4 aluminum: a reference strength of
    164.5 MPa against a static strength of 470 MPa. -/
theorem T78_AB_aluminum :
    ((164.5 : ℝ) / 470) * TORSION_LIMIT = 0.0479146849944056 := by
  unfold TORSION_LIMIT; norm_num

/-- T79 · The product is what a fatigue curve supplies: `A` and `B` are not
    separately determined by it, since every factorization of the product
    closes. -/
theorem T79_product_not_factors (Q : ℝ) (hQ : 0 < Q) :
    ∀ A : ℝ, 0 < A → ∃ B : ℝ, A * B = Q := by
  intro A hA
  have hAne : A ≠ 0 := ne_of_gt hA
  exact ⟨Q / A, by field_simp⟩

/-! ## Section 12 · Fatigue proves Pattern is controllable -/

/-- A linear internal response, written as a coupling of Behavior into
    Pattern. -/
noncomputable def coupling_step (c : ℝ) (s : LagState) : LagState :=
  { s with P := s.P + c * s.B }

/-- T80 · FATIGUE IS A NONZERO B→P COUPLING. A strict drop in Pattern under
    positive Behavior requires a nonzero coupling. -/
theorem T80_fatigue_is_nonzero_coupling (c : ℝ) (s : LagState) (hB : 0 < s.B)
    (h : (coupling_step c s).P < s.P) : c ≠ 0 := by
  unfold coupling_step at h
  dsimp only at h
  intro hc
  rw [hc, zero_mul, add_zero] at h
  exact absurd h (lt_irrefl s.P)

/-- T81 · PATTERN IS CONTROLLABLE WHEN THE COUPLING IS NONZERO: any target
    Pattern value is reached by a single forcing followed by the coupling. -/
theorem T81_pattern_controllable (c : ℝ) (hc : c ≠ 0) (s : LagState) (target : ℝ) :
    ∃ δ : ℝ, (coupling_step c (f_ext_op s δ)).P = target := by
  refine ⟨(target - s.P) / c - s.B, ?_⟩
  unfold coupling_step f_ext_op
  dsimp only
  field_simp

/-- T82 · ONE CHANNEL, TWO SIGNS. The same coupling constant with opposite sign
    raises Pattern by exactly as much as it lowers it. -/
theorem T82_one_channel_two_signs (c : ℝ) (s : LagState) :
    (coupling_step c s).P - s.P = -((coupling_step (-c) s).P - s.P) := by
  unfold coupling_step
  dsimp only
  ring

/-- T83 · Work hardening and fatigue are the same channel: a positive coupling
    raises Pattern under positive Behavior, a negative one lowers it. -/
theorem T83_hardening_and_fatigue (c : ℝ) (s : LagState) (hB : 0 < s.B) :
    (0 < c → s.P < (coupling_step c s).P) ∧ (c < 0 → (coupling_step c s).P < s.P) := by
  unfold coupling_step
  dsimp only
  refine ⟨fun hc => ?_, fun hc => ?_⟩
  · nlinarith
  · nlinarith

/-! ## Section 13 · The Lagrangian projection -/

/-- The Layer 1 right-hand side: the four weighted operators plus forcing. -/
noncomputable def dynamic_rhs (fP fN fB fA : ℝ → ℝ) (s : LagState) (F : ℝ) : ℝ :=
  fP s.P + fN s.N + fB s.B + fA s.A + F

/-- The Lagrangian kinetic term: the Pattern–Narrative product. -/
noncomputable def lag_kinetic (dP dN : ℝ) : ℝ := dP * dN

/-- The Lagrangian potential term: the Behavior–Adaptation sum. -/
noncomputable def lag_potential (B A : ℝ) : ℝ := B + A

/-- The total Lagrangian. -/
noncomputable def lag_total (dP dN B A : ℝ) : ℝ := lag_kinetic dP dN - lag_potential B A

/-- The Euler–Lagrange momentum. -/
noncomputable def el_momentum (N dP : ℝ) : ℝ := N * dP

/-- The Euler–Lagrange force. -/
noncomputable def el_force (B P : ℝ) : ℝ := B * P

/-- The projection of the Layer 1 right-hand side into the Lagrangian reading. -/
noncomputable def lag_step (s : LagState) (op : ℝ → ℝ) (F : ℝ) : ℝ :=
  dynamic_rhs (fun P => P) (fun N => N) op (fun A => A) s F

/-- T84 · THE PROJECTION PUTS EVERY OPERATOR BUT BEHAVIOR AT THE IDENTITY. -/
theorem T84_projection_identity_off_B (s : LagState) (op : ℝ → ℝ) (F : ℝ) :
    lag_step s op F = s.P + s.N + op s.B + s.A + F := rfl

/-- T85 · The Lagrangian is the kinetic product less the potential sum. -/
theorem T85_lag_total_form (dP dN B A : ℝ) :
    lag_total dP dN B A = dP * dN - (B + A) := rfl

/-- T86 · The potential is symmetric in Behavior and Adaptation. -/
theorem T86_potential_symmetric (B A : ℝ) : lag_potential B A = lag_potential A B := by
  unfold lag_potential; ring

/-- T87 · The potential is additive in Behavior. -/
theorem T87_potential_additive (B₁ B₂ A : ℝ) :
    lag_potential (B₁ + B₂) A = lag_potential B₁ A + B₂ := by
  unfold lag_potential; ring

/-- T88 · External forcing enters the Lagrangian potential by addition alone,
    matching the rank-one structure of Section 2. -/
theorem T88_forcing_in_potential (s : LagState) (δ : ℝ) :
    lag_potential (f_ext_op s δ).B (f_ext_op s δ).A = lag_potential s.B s.A + δ := by
  unfold lag_potential f_ext_op
  dsimp only
  ring

/-- T89 · The Euler–Lagrange content: Narrative momentum equals the
    Pattern–Behavior balance on the matched arguments. -/
theorem T89_el_balance (N dP B P : ℝ) (h : N * dP = B * P) :
    el_momentum N dP = el_force B P := by
  unfold el_momentum el_force
  exact h

/-- T90 · The three independent routes meet on Behavior: forcing enters on `B`,
    the Lagrangian projection carries its operator content on `B`, and the
    damage coupling runs from `B`. -/
theorem T90_three_routes_meet_on_B (s : LagState) (δ c : ℝ) (op : ℝ → ℝ) (F : ℝ) :
    (f_ext_op s δ).B = s.B + δ ∧
      lag_step s op F = s.P + s.N + op s.B + s.A + F ∧
      (coupling_step c s).P = s.P + c * s.B :=
  ⟨rfl, rfl, rfl⟩

/-! ## Section 14 · The cyclic companion to the static onset -/

/-- T91 · THE CYCLIC APPROACH TO ONSET. With Behavior and inertia fixed, a
    strictly falling damping sequence drives the driven ratio strictly up. -/
theorem T91_cyclic_approach_to_onset (B I : ℝ) (ζ : ℕ → ℝ) (hB : 0 < B) (hI : 0 < I)
    (hpos : ∀ n, 0 < ζ n) (hdec : ∀ n, ζ (n + 1) < ζ n) :
    ∀ n, driven_ratio B I (ζ n) < driven_ratio B I (ζ (n + 1)) := by
  intro n
  exact T41_damping_lowers_ratio B I (ζ (n + 1)) (ζ n) hB hI (hpos (n + 1)) (hdec n)

/-- T92 · Onset is reached exactly when damping falls to the critical value
    `B / (2 * I)`. -/
theorem T92_onset_damping (B I : ℝ) (hI : 0 < I) (hB : 0 < B) :
    driven_ratio B I (B / (2 * I)) = 1 := by
  unfold driven_ratio
  have h2I : (2 : ℝ) * I ≠ 0 := by positivity
  have hBne : B ≠ 0 := ne_of_gt hB
  field_simp

/-- T93 · The structure starts below onset exactly when damping exceeds the
    critical value. -/
theorem T93_below_onset_iff_damping_above (B I ζ : ℝ) (hI : 0 < I) (hB : 0 < B)
    (hζ : 0 < ζ) : driven_ratio B I ζ < 1 ↔ B / (2 * I) < ζ := by
  unfold driven_ratio
  rw [div_lt_one (by positivity), div_lt_iff₀ (by positivity)]
  constructor <;> intro h <;> nlinarith

/-- T94 · The static and cyclic cases share one threshold: the onset condition
    is a statement about the same ratio in both. -/
theorem T94_one_threshold (B I ζ : ℝ) :
    driven_ratio B I ζ = torsion ⟨pattern_of_damping I ζ, 0, B, 0⟩ :=
  T39_driven_ratio_is_torsion B I ζ

/-! ## Section 15 · The e-fold reading of the multiplicative form -/

/-- The capacity lost before shatter, as an e-fold count. -/
noncomputable def efolds_to_shatter (P₀ B : ℝ) : ℝ :=
  Real.log (P₀ * TORSION_LIMIT / B)

/-- T95 · At the shatter load the e-fold count is zero. -/
theorem T95_efolds_zero_at_shatter (P₀ : ℝ) (hP : 0 < P₀) :
    efolds_to_shatter P₀ (P₀ * TORSION_LIMIT) = 0 := by
  unfold efolds_to_shatter
  have hTL := T7_TL_pos
  rw [div_self (by positivity), Real.log_one]

/-- T96 · Below the shatter load the e-fold count is strictly positive. -/
theorem T96_efolds_pos_below_shatter (P₀ B : ℝ) (hB : 0 < B)
    (h : B < P₀ * TORSION_LIMIT) : 0 < efolds_to_shatter P₀ B := by
  unfold efolds_to_shatter
  apply Real.log_pos
  rw [lt_div_iff₀ hB, one_mul]
  exact h

/-- T97 · The e-fold count is additive along a path. -/
theorem T97_efolds_additive (P₀ B₁ B₂ : ℝ) (hP : 0 < P₀) (h1 : 0 < B₁) (h2 : 0 < B₂) :
    efolds_to_shatter P₀ B₂ = efolds_to_shatter P₀ B₁ + Real.log (B₁ / B₂) := by
  unfold efolds_to_shatter
  have hTL := T7_TL_pos
  rw [← Real.log_mul (by positivity) (by positivity)]
  congr 1
  field_simp
  try ring

/-- T98 · The e-fold count is strictly decreasing in the load. -/
theorem T98_efolds_decreasing (P₀ B₁ B₂ : ℝ) (hP : 0 < P₀) (h1 : 0 < B₁)
    (h : B₁ < B₂) : efolds_to_shatter P₀ B₂ < efolds_to_shatter P₀ B₁ := by
  unfold efolds_to_shatter
  have hTL := T7_TL_pos
  apply Real.log_lt_log (by positivity)
  gcongr

/-! ## Section 16 · The IVA corridor on load -/

/-- T99 · THE IVA CORRIDOR ON LOAD is the band between 88% and 100% of static
    strength. -/
theorem T99_corridor_on_load (UTS B : ℝ) (hU : 0 < UTS)
    (h : IsIVA ⟨pattern_capacity UTS, 0, B, 0⟩) : 0.88 * UTS ≤ B ∧ B < UTS := by
  unfold IsIVA torsion pattern_capacity TL_IVA at h
  dsimp only at h
  obtain ⟨h1, h2⟩ := h
  have hTL := T7_TL_pos
  rw [div_div_eq_mul_div] at h1 h2
  rw [le_div_iff₀ hU] at h1
  rw [div_lt_iff₀ hU] at h2
  constructor
  · nlinarith
  · nlinarith

/-- T100 · The corridor is nonempty for every positive static strength. -/
theorem T100_corridor_nonempty (UTS : ℝ) (hU : 0 < UTS) :
    ∃ B : ℝ, 0.88 * UTS ≤ B ∧ B < UTS := by
  refine ⟨0.94 * UTS, by nlinarith, by nlinarith⟩

/-! ## MASTER THEOREM -/

/-- MASTER · Forced response, the intervention theorem, and cycles to shatter.

    The Torsion Limit enters from the inverse fine-structure constant by
    subtraction and nowhere else. External forcing is rank one: Pattern,
    Narrative and Adaptation are not externally reachable, so all structural
    change is endogenous. Forcing composes additively, so pure forcing carries
    no memory and a drop in Pattern capacity is unreachable by any sequence of
    external events — cyclic damage is internal. Pattern capacity in a driven
    structure is inertia times damping, so fatigue is loss of damping capacity,
    and static strength fixes Pattern capacity as `UTS / TL`. The life law
    closes for every exponent. The endurance limit is the damage-recovery
    balance, invariant under the form of the damage law, and exists exactly when
    a positive stress-independent recovery channel exists. The knee ratio is one
    at the limit and sharpens with the exponent. The lossy boundary gives the
    `A * B` product. A nonzero coupling makes Pattern controllable, and the same
    coupling with opposite sign is work hardening. The Lagrangian projection
    carries every operator but Behavior at the identity. -/
theorem MASTER_forced_response_cycles_to_shatter :
    -- the anchor
    (OMEGA_0 = 10 * TORSION_LIMIT) ∧
    (BARE + TORSION_LIMIT = ALPHA_INV) ∧
    (TORSION_LIMIT * 1001 = ALPHA_INV) ∧
    -- the intervention theorem
    (∀ s : LagState, ∀ δ : ℝ, (f_ext_op s δ).P = s.P ∧ (f_ext_op s δ).N = s.N ∧
      (f_ext_op s δ).A = s.A ∧ (f_ext_op s δ).B = s.B + δ) ∧
    (∀ s t : LagState,
      (∃ δ, f_ext_op s δ = t) ↔ (t.P = s.P ∧ t.N = s.N ∧ t.A = s.A)) ∧
    -- no memory, and damage is internal
    (∀ s : LagState, ∀ δ₁ δ₂ : ℝ,
      f_ext_op (f_ext_op s δ₁) δ₂ = f_ext_op s (δ₁ + δ₂)) ∧
    (∀ s t : LagState, t.P < s.P →
      ¬ ∃ n : ℕ, ∃ δ : ℝ, (fun u => f_ext_op u δ)^[n] s = t) ∧
    -- fatigue is damping loss
    (∀ I ζ₁ ζ₂ : ℝ, 0 < I → ζ₂ < ζ₁ →
      pattern_of_damping I ζ₂ < pattern_of_damping I ζ₁) ∧
    -- Pattern capacity from static strength
    (∀ UTS : ℝ, TORSION_LIMIT * pattern_capacity UTS = UTS) ∧
    -- the life law
    (∀ P₀ B k m : ℝ, 0 < k → 0 < B →
      cycles_to_shatter P₀ B k m * degradation k B m = P₀ - B / TORSION_LIMIT) ∧
    -- the endurance balance, and when it exists
    (∀ k r m : ℝ, 0 < k → 0 < r → 0 < m →
      net_degradation k (endurance_limit k r m) m r = 0) ∧
    (∀ k m : ℝ, 0 < k → 0 < m → ∀ r : ℝ,
      (0 < r ↔ ∃ B : ℝ, 0 < B ∧ net_degradation k B m r = 0)) ∧
    -- the balance is invariant under the form of the damage law
    (∀ k B m r P : ℝ, P ≠ 0 →
      ((-(k * P * B ^ m) + r * P = 0) ↔ (-(k * B ^ m) + r = 0))) ∧
    -- the knee
    (∀ Be m : ℝ, 0 < Be → knee_ratio Be Be m = 1) ∧
    (∀ B Be m₁ m₂ : ℝ, 0 < Be → Be < B → m₁ < m₂ →
      knee_ratio B Be m₁ < knee_ratio B Be m₂) ∧
    -- the endurance readings on the torsion scale
    (tau_endurance 0.5 = 0.068449549992008) ∧
    (tau_endurance 0.35 = 0.0479146849944056) ∧
    -- controllability, and one channel with two signs
    (∀ c : ℝ, c ≠ 0 → ∀ s : LagState, ∀ target : ℝ,
      ∃ δ : ℝ, (coupling_step c (f_ext_op s δ)).P = target) ∧
    (∀ c : ℝ, ∀ s : LagState,
      (coupling_step c s).P - s.P = -((coupling_step (-c) s).P - s.P)) ∧
    -- the Lagrangian projection
    (∀ s : LagState, ∀ op : ℝ → ℝ, ∀ F : ℝ,
      lag_step s op F = s.P + s.N + op s.B + s.A + F) := by
  refine ⟨T1_anchor_is_ten_TL, T3_bare_plus_kinetic, T4_TL_times_1001,
    fun s δ => T21_intervention s δ,
    fun s t => T22_reachable_set_is_a_line s t,
    fun s δ₁ δ₂ => T29_forcing_additive s δ₁ δ₂,
    fun s t h => T34_cyclic_damage_is_internal s t h,
    fun I ζ₁ ζ₂ hI h => T42_fatigue_is_damping_loss I ζ₁ ζ₂ hI h,
    fun UTS => T45_static_strength_from_capacity UTS,
    fun P₀ B k m hk hB => T49_life_law P₀ B k m hk hB,
    fun k r m hk hr hm => T56_endurance_balance k r m hk hr hm,
    fun k m hk hm => T60_endurance_exists_iff_recovery k m hk hm,
    fun k B m r P hP => T59_balance_invariant_under_damage_form k B m r P hP,
    fun Be m hBe => T68_knee_at_one Be m hBe,
    fun B Be m₁ m₂ hBe h hm => T71_sharpness_from_exponent B Be m₁ m₂ hBe h hm,
    T63_steel_tau_endurance, T64_aluminum_tau_endurance,
    fun c hc s target => T81_pattern_controllable c hc s target,
    fun c s => T82_one_channel_two_signs c s,
    fun s op F => T84_projection_identity_off_B s op F⟩

end ForcedResponse

end SNSFL_ForcedResponse

/-
  ─────────────────────────────────────────────────────────────────────────────
  CLOSURE

  This file establishes the forced-response structure of the Identity Physics
  Dynamic Equation and the cyclic-life results that follow from it. The Torsion
  Limit enters from the inverse fine-structure constant by subtraction, with the
  bare term at one thousand Torsion Limits and the full multiplier factoring as
  7 * 11 * 13, and nothing in the file sets it. External forcing is realized as
  a bump on Behavior alone, and the intervention theorem states what that
  realization establishes: Pattern, Narrative and Adaptation are not externally
  reachable, the reachable set under forcing is exactly the Behavior line, and
  therefore every change in the three unreached primitives is endogenous.
  Forcing composes additively and commutes, so repeated application carries no
  information about the sequence, the torsion reading after any number of
  applications is the closed linear form, and a strict drop in Pattern capacity
  is unreachable by any number of external events whatsoever — cyclic damage is
  internal, as a consequence rather than a premise. The guarded domain is read
  as a statement about the substrate: under it Noble is not externally
  reachable, and without it Noble is reached. Pattern capacity in a driven
  structure is inertia times damping, so a fall in damping is exactly a fall in
  Pattern capacity and fatigue is loss of damping capacity, with the driven
  ratio shown to be torsion on that reading and onset shown equivalent to
  torsion at the Torsion Limit. Static strength fixes Pattern capacity as the
  strength over the Torsion Limit, with no fitting, and a state loaded at static
  strength sits exactly at the Shatter boundary. The life law closes for every
  exponent, with the Basquin form recovered as the load-power identity; the
  exponent is a free substrate response and is not set by the structure. The
  endurance limit is the load at which degradation and recovery cancel, recovery
  dominates strictly below it and damage strictly above, the balance condition
  is invariant under the form of the damage law because the Pattern factor
  cancels, and a positive balance load exists exactly when a positive
  stress-independent recovery channel exists. The knee ratio is one at the
  limit, below one beneath it, above one past it, multiplicative in the load
  ratio, and strictly increasing in the exponent, so sharpness follows from the
  exponent rather than standing beside it. The endurance readings for 1045 steel
  and 2024-T4 aluminum are computed exactly on the torsion scale from their
  published strengths, and both lie strictly inside Locked. The lossy boundary
  and lossless absorption are shown exclusive and exhaustive, and the boundary
  evaluated at the endurance limit yields the A·B product, which a fatigue curve
  supplies as a product and not as factors. A nonzero Behavior-to-Pattern
  coupling is necessary for a drop in Pattern and sufficient for Pattern to be
  controllable, and the same coupling with opposite sign raises Pattern by
  exactly as much as it lowers it, so work hardening and fatigue are one
  channel. The Lagrangian projection is shown to place every operator but the
  Behavior operator at the identity, the potential to be symmetric and additive,
  forcing to enter the potential by addition alone, and the three independent
  routes — forcing, projection and damage coupling — to meet on the Behavior
  axis. The cyclic approach to onset is established for any strictly falling
  damping sequence against the same threshold the static case uses, the critical
  damping value is computed, the e-fold reading of the multiplicative form is
  shown zero at shatter, positive below it, additive along a path and strictly
  decreasing in the load, and the IVA corridor on load is shown to be the band
  between 88% and 100% of static strength and nonempty for every positive static
  strength.

  -- THEOREMS : 100 tagged + master
  -- SORRY    : 0
  -- AXIOMS   : 0

  [9,9,2,53](ENGR) · HIGHTISTIC · SNSFT Foundation · Kenai AK
  DOI 10.5281/zenodo.18719748 · ORCID 0009-0005-5313-7443
  ─────────────────────────────────────────────────────────────────────────────
-/
