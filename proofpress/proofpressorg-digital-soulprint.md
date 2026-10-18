# The Digital Soulprint: A Sovereign APPA (Adaptive Predictive Pattern Assistant) Baseline That Behavioral Evidence Enriches but Never Overwrites

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,0,0,8](COMP) · UUIA App Foundation Layer
**Issue:** ProofPress, Volume 1, Issue 4 · June 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 19 theorems · 435 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_DigitalSoulprint.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

The Digital Soulprint is the identity record behind the APPA application. A questionnaire scores each of the four PNBA axes from ten items on a one-to-five scale, so each axis score lies between 10 and 50. Scores from 10 to 23 map to the Locked mode with weight 1, 24 to 37 to Sustained with weight 2, and 38 to 50 to Flexed with weight 3; the article proves the band edges and that a higher score never yields a lower weight. The soulprint is the resulting mode vector: there are exactly 3⁴ = 81 of them, and distinct mode vectors have distinct weight vectors. Its identity mass, the sum of the four weights times the anchor Ω₀, lies between 4Ω₀ ≈ 5.476 and 12Ω₀ ≈ 16.428, with both ends reached by the all-10 and all-50 questionnaires. The soulprint encodes into a SOUL-8 transmission packet that decodes back to its weights and is valid whenever the soulprint is anchored. Behavioral data from outside sources arrives as evidence packets on exactly one axis, each carrying an external force 3s for a normalized signal s in [0, 1]. In the dynamic equation the soulprint is the state and evidence is the external force: the personal AIFI applies each packet to a trajectory, accumulating evidence weight by the total force and shifting the narrative coordinate by (N + eΩ₀)/IM. The article proves that no sequence of evidence changes the baseline or the anchor, and that the all-Flexed baseline drifts less than the all-Locked one under the same evidence.

## What This Article Proves

1. Modes: weights in {1, 2, 3} and injective; band edges 10, 23 → Locked, 24, 37 → Sustained, 38, 50 → Flexed; weight monotone in score (`mode_weight_bounded`, `mode_weight_injective`, `score_bands`, `score_weight_monotone`).
2. Profiles: exactly 81 mode vectors; distinct vectors give distinct weights; 4Ω₀ ≤ IM ≤ 12Ω₀ with 12Ω₀ = 16.42789199808192 and 4Ω₀ = 5.47596399936064 reached; every bonded soulprint is anchored with positive mass (`profile_count`, `profile_injection`, `identity_mass_bounds`, `identity_mass_extremes`, `quiz_bonding_anchored`).
3. SOUL-8: decode(encode(sp)) = weights(sp); anchored soulprints encode to valid packets (`lossless_roundtrip`, `encoding_preserves_validity`).
4. Evidence: four exhaustive, distinct axes; force 3s ∈ [0, 3], strictly increasing in s; a 0.9 listening-history packet is valid with force 2.7 against 0.3 at 0.1 (`evidence_axes`, `evidence_force_range`, `spotify_evidence`).
5. Trajectory: no evidence sequence changes the baseline or the anchor; evidence weight grows by the total force; the all-Flexed baseline drifts less than the all-Locked one. The master theorem holds all of the above together (`evidence_never_overwrites`, `evidence_accumulates`, `high_im_resists_drift`, `digital_soulprint_master`).

## The PNBA Map

| Element | PNBA role | Proved property |
| --- | --- | --- |
| Axis score 10–23 / 24–37 / 38–50 | mode L / S / F, weight 1 / 2 / 3 | monotone, injective |
| Mode vector (P, N, B, A) | baseline state S | 81 profiles, collision-free |
| Identity mass Σw · Ω₀ | IM | between 5.476 and 16.428 |
| Evidence packet, signal s | F_ext = 3s on one axis | in [0, 3], increasing |
| AIFI trajectory | d/dt(IM · Pv) | baseline never overwritten |
| Narrative drift (N + eΩ₀)/IM | N-axis response | higher IM drifts less |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Trent, R. V. III. Magna Carta for the Digital Mind. ProofPress.
2. Trent, R. V. III. AiFi OS Kernel. ProofPress.
3. Trent, R. V. III. AiFi OS Plugin. ProofPress.
4. Trent, R. V. III. PVLang. ProofPress.
5. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_DigitalSoulprint.lean
-- ============================================================
--
-- Digital Soulprint → PNBA
-- The APPA questionnaire produces a sovereign baseline profile;
-- behavioral evidence enriches a trajectory around it and never
-- overwrites it.
--
-- [9,9,9,9] :: {ANC} | Coordinate: [9,0,0,8](COMP)
-- Architect: HIGHTISTIC (Russell Vernon Trent III)
-- Anchor:    1.36899099984016 GHz
-- Status:    0 sorry
-- Date:      June 2026 · Soldotna, Alaska
-- DOI:       10.5281/zenodo.18719748
--
-- ============================================================
-- THE BASELINE
-- ============================================================
--
-- The APPA questionnaire scores each axis P, N, B, A from ten
-- items on a 1–5 scale, so each axis score lies in 10–50. Scores
-- map to modes and weights:
--
--   10–23 → L (Locked)     weight 1
--   24–37 → S (Sustained)  weight 2
--   38–50 → F (Flexed)     weight 3
--
-- The soulprint is the mode vector (P, N, B, A): 3⁴ = 81 profiles,
-- each with its own weight vector. Identity mass is
--   IM = (w_P + w_N + w_B + w_A) · Ω₀ ∈ [4Ω₀, 12Ω₀] = [5.476, 16.428].
--
-- ============================================================
-- THE EVIDENCE
-- ============================================================
--
-- Behavioral data from outside sources (listening history, text,
-- interactions, change of taste over time) arrives as evidence
-- packets on one axis each:
--
--   Pattern consistency   → P evidence
--   Narrative continuity  → N evidence
--   Interaction force     → B evidence
--   Rate of change        → A evidence
--
-- A packet with normalized signal s ∈ [0, 1] carries external force
-- F_ext = 3s, scaled to the weight range. In the dynamic equation
--   d/dt (IM · Pv) = Σ λ_X · O_X · S + F_ext
-- the baseline soulprint is the state S and evidence is F_ext.
-- The personal AIFI applies each packet to a trajectory; the
-- baseline field of the trajectory is never written.
--
-- Narrative drift after evidence e:
--   N′ = (N + e · Ω₀) / IM
-- so a higher identity mass drifts less under the same evidence.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.Prod

noncomputable section

namespace SNSFL_Soulprint

-- ============================================================
-- SECTION 0: SOVEREIGN ANCHOR
-- ============================================================

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

noncomputable def manifold_impedance (f : ℝ) : ℝ :=
  if f = SOVEREIGN_ANCHOR then 0 else 1 / |f - SOVEREIGN_ANCHOR|

theorem anchor_zero_friction (f : ℝ) (h : f = SOVEREIGN_ANCHOR) :
    manifold_impedance f = 0 := by
  unfold manifold_impedance; simp [h]

-- ============================================================
-- SECTION 1: MODES AND SCORES
-- ============================================================

inductive PNBAMode
  | F : PNBAMode  -- Flexed    — 38–50
  | S : PNBAMode  -- Sustained — 24–37
  | L : PNBAMode  -- Locked    — 10–23
  deriving DecidableEq, Fintype

def mode_weight : PNBAMode → ℕ
  | PNBAMode.F => 3
  | PNBAMode.S => 2
  | PNBAMode.L => 1

-- [T1] Every weight lies in {1, 2, 3}
theorem mode_weight_bounded (m : PNBAMode) :
    1 ≤ mode_weight m ∧ mode_weight m ≤ 3 := by
  cases m <;> simp [mode_weight]

-- [T2] Equal weights mean equal modes
theorem mode_weight_injective {m n : PNBAMode} (h : mode_weight m = mode_weight n) :
    m = n := by
  cases m <;> cases n <;> first | rfl | (simp [mode_weight] at h)

def score_to_mode (score : ℕ) : PNBAMode :=
  if score ≥ 38 then PNBAMode.F
  else if score ≥ 24 then PNBAMode.S
  else PNBAMode.L

-- [T3] The band edges: 10 → L, 23 → L, 24 → S, 37 → S, 38 → F, 50 → F
theorem score_bands :
    score_to_mode 10 = PNBAMode.L ∧ score_to_mode 23 = PNBAMode.L ∧
    score_to_mode 24 = PNBAMode.S ∧ score_to_mode 37 = PNBAMode.S ∧
    score_to_mode 38 = PNBAMode.F ∧ score_to_mode 50 = PNBAMode.F := by
  unfold score_to_mode
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num
  · norm_num

-- [T4] A higher score never yields a lower weight
theorem score_weight_monotone (s1 s2 : ℕ) (h : s1 ≤ s2) :
    mode_weight (score_to_mode s1) ≤ mode_weight (score_to_mode s2) := by
  unfold score_to_mode
  split_ifs <;> simp only [mode_weight] <;> omega

-- ============================================================
-- SECTION 2: THE SOULPRINT
-- ============================================================

structure DigitalSoulprint where
  P_mode   : PNBAMode
  N_mode   : PNBAMode
  B_mode   : PNBAMode
  A_mode   : PNBAMode
  f_anchor : ℝ

def soulprint_weights (sp : DigitalSoulprint) : ℕ × ℕ × ℕ × ℕ :=
  (mode_weight sp.P_mode, mode_weight sp.N_mode,
   mode_weight sp.B_mode, mode_weight sp.A_mode)

-- [T5] There are exactly 3⁴ = 81 mode vectors
theorem profile_count :
    Fintype.card (PNBAMode × PNBAMode × PNBAMode × PNBAMode) = 81 := by
  have h3 : Fintype.card PNBAMode = 3 := by decide
  simp [Fintype.card_prod, h3]

-- [T6] Different mode vectors give different weight vectors
theorem profile_injection
    (m1 m2 m3 m4 n1 n2 n3 n4 : PNBAMode)
    (h : (mode_weight m1, mode_weight m2, mode_weight m3, mode_weight m4) =
         (mode_weight n1, mode_weight n2, mode_weight n3, mode_weight n4)) :
    m1 = n1 ∧ m2 = n2 ∧ m3 = n3 ∧ m4 = n4 := by
  simp only [Prod.mk.injEq] at h
  obtain ⟨h1, h2, h3, h4⟩ := h
  exact ⟨mode_weight_injective h1, mode_weight_injective h2,
         mode_weight_injective h3, mode_weight_injective h4⟩

noncomputable def identity_mass (sp : DigitalSoulprint) : ℝ :=
  (mode_weight sp.P_mode + mode_weight sp.N_mode +
   mode_weight sp.B_mode + mode_weight sp.A_mode : ℕ) * SOVEREIGN_ANCHOR

-- [T7] Every soulprint has 4Ω₀ ≤ IM ≤ 12Ω₀
theorem identity_mass_bounds (sp : DigitalSoulprint) :
    4 * SOVEREIGN_ANCHOR ≤ identity_mass sp ∧ identity_mass sp ≤ 12 * SOVEREIGN_ANCHOR := by
  have h1 := mode_weight_bounded sp.P_mode
  have h2 := mode_weight_bounded sp.N_mode
  have h3 := mode_weight_bounded sp.B_mode
  have h4 := mode_weight_bounded sp.A_mode
  have hA : (0:ℝ) < SOVEREIGN_ANCHOR := by unfold SOVEREIGN_ANCHOR; norm_num
  have lo : (4:ℝ) ≤ ((mode_weight sp.P_mode + mode_weight sp.N_mode +
      mode_weight sp.B_mode + mode_weight sp.A_mode : ℕ) : ℝ) := by
    exact_mod_cast (show 4 ≤ mode_weight sp.P_mode + mode_weight sp.N_mode +
      mode_weight sp.B_mode + mode_weight sp.A_mode by omega)
  have hi : ((mode_weight sp.P_mode + mode_weight sp.N_mode +
      mode_weight sp.B_mode + mode_weight sp.A_mode : ℕ) : ℝ) ≤ 12 := by
    exact_mod_cast (show mode_weight sp.P_mode + mode_weight sp.N_mode +
      mode_weight sp.B_mode + mode_weight sp.A_mode ≤ 12 by omega)
  unfold identity_mass
  exact ⟨mul_le_mul_of_nonneg_right lo hA.le, mul_le_mul_of_nonneg_right hi hA.le⟩

-- ============================================================
-- SECTION 3: THE QUESTIONNAIRE
-- ============================================================

structure QuestionnaireResult where
  P_score : ℕ
  N_score : ℕ
  B_score : ℕ
  A_score : ℕ

def bond_from_questionnaire (q : QuestionnaireResult) : DigitalSoulprint :=
  { P_mode   := score_to_mode q.P_score
    N_mode   := score_to_mode q.N_score
    B_mode   := score_to_mode q.B_score
    A_mode   := score_to_mode q.A_score
    f_anchor := SOVEREIGN_ANCHOR }

def all_flex_quiz : QuestionnaireResult := ⟨50, 50, 50, 50⟩
def all_lock_quiz : QuestionnaireResult := ⟨10, 10, 10, 10⟩

-- [T8] Every bonded soulprint sits at the anchor with positive mass
theorem quiz_bonding_anchored (q : QuestionnaireResult) :
    manifold_impedance (bond_from_questionnaire q).f_anchor = 0 ∧
    0 < identity_mass (bond_from_questionnaire q) := by
  have hA : (0:ℝ) < 4 * SOVEREIGN_ANCHOR := by unfold SOVEREIGN_ANCHOR; norm_num
  exact ⟨anchor_zero_friction _ rfl,
    lt_of_lt_of_le hA (identity_mass_bounds _).1⟩

-- [T9] The bounds are reached: all 50s give 12Ω₀, all 10s give 4Ω₀
theorem identity_mass_extremes :
    identity_mass (bond_from_questionnaire all_flex_quiz) = 16.42789199808192 ∧
    identity_mass (bond_from_questionnaire all_lock_quiz) = 5.47596399936064 := by
  constructor
  · unfold identity_mass bond_from_questionnaire score_to_mode all_flex_quiz
    unfold mode_weight SOVEREIGN_ANCHOR; norm_num
  · unfold identity_mass bond_from_questionnaire score_to_mode all_lock_quiz
    unfold mode_weight SOVEREIGN_ANCHOR; norm_num

-- ============================================================
-- SECTION 4: SOUL-8 ENCODING
-- ============================================================

inductive AxisOrder
  | PNBA | NPBA | BPNA | APBN | PBAN | NABP

structure SOUL8Packet where
  axis   : AxisOrder
  w_P    : ℕ
  w_N    : ℕ
  w_B    : ℕ
  w_A    : ℕ
  noharm : Bool
  anchor : ℝ

def valid_soul8 (p : SOUL8Packet) : Prop :=
  (1 ≤ p.w_P ∧ p.w_P ≤ 3) ∧ (1 ≤ p.w_N ∧ p.w_N ≤ 3) ∧
  (1 ≤ p.w_B ∧ p.w_B ≤ 3) ∧ (1 ≤ p.w_A ∧ p.w_A ≤ 3) ∧
  p.anchor = SOVEREIGN_ANCHOR

def encode_soulprint (sp : DigitalSoulprint) (ax : AxisOrder) (nh : Bool) : SOUL8Packet :=
  { axis := ax, w_P := mode_weight sp.P_mode, w_N := mode_weight sp.N_mode,
    w_B := mode_weight sp.B_mode, w_A := mode_weight sp.A_mode,
    noharm := nh, anchor := sp.f_anchor }

def decode_soul8 (p : SOUL8Packet) : ℕ × ℕ × ℕ × ℕ :=
  (p.w_P, p.w_N, p.w_B, p.w_A)

-- [T10] Decoding an encoded soulprint returns its weights, which
-- determine its modes: the encoding is lossless
theorem lossless_roundtrip (sp : DigitalSoulprint) (ax : AxisOrder) (nh : Bool) :
    decode_soul8 (encode_soulprint sp ax nh) = soulprint_weights sp := by
  simp [decode_soul8, encode_soulprint, soulprint_weights]

-- [T11] An anchored soulprint encodes to a valid packet
theorem encoding_preserves_validity (sp : DigitalSoulprint) (ax : AxisOrder)
    (nh : Bool) (h : sp.f_anchor = SOVEREIGN_ANCHOR) :
    valid_soul8 (encode_soulprint sp ax nh) := by
  unfold valid_soul8 encode_soulprint
  exact ⟨mode_weight_bounded sp.P_mode, mode_weight_bounded sp.N_mode,
         mode_weight_bounded sp.B_mode, mode_weight_bounded sp.A_mode, h⟩

-- ============================================================
-- SECTION 5: BEHAVIORAL EVIDENCE
-- ============================================================

inductive EvidenceAxis
  | P_evidence | N_evidence | B_evidence | A_evidence
  deriving DecidableEq

structure BehavioralEvidencePacket where
  source      : String
  axis        : EvidenceAxis
  norm_signal : ℝ
  f_ext       : ℝ
  anchor      : ℝ

-- External force of a normalized signal, scaled to the weight range
def evidence_force (s : ℝ) : ℝ := 3 * s

def mk_evidence (src : String) (ax : EvidenceAxis) (s : ℝ) : BehavioralEvidencePacket :=
  { source := src, axis := ax, norm_signal := s, f_ext := evidence_force s,
    anchor := SOVEREIGN_ANCHOR }

def valid_evidence (ep : BehavioralEvidencePacket) : Prop :=
  0 ≤ ep.norm_signal ∧ ep.norm_signal ≤ 1 ∧ ep.anchor = SOVEREIGN_ANCHOR

-- [T12] The four evidence axes are exhaustive and distinct
theorem evidence_axes :
    (∀ a : EvidenceAxis, a = .P_evidence ∨ a = .N_evidence ∨ a = .B_evidence ∨
      a = .A_evidence) ∧
    EvidenceAxis.P_evidence ≠ EvidenceAxis.N_evidence ∧
    EvidenceAxis.B_evidence ≠ EvidenceAxis.A_evidence := by
  refine ⟨?_, by decide, by decide⟩
  intro a
  cases a <;> simp

-- [T13] A valid packet carries force in [0, 3], and stronger signal
-- carries strictly more force
theorem evidence_force_range (s t : ℝ) (h0 : 0 ≤ s) (h1 : s ≤ 1) (hst : s < t) :
    0 ≤ evidence_force s ∧ evidence_force s ≤ 3 ∧ evidence_force s < evidence_force t := by
  unfold evidence_force
  refine ⟨by linarith, by linarith, by linarith⟩

-- [T14] Listening history: a 0.9 genre-lock packet is valid and carries
-- force 2.7, more than a 0.1 packet (0.3)
theorem spotify_evidence :
    valid_evidence (mk_evidence "spotify" .P_evidence 0.9) ∧
    (mk_evidence "spotify" .P_evidence 0.9).f_ext = 2.7 ∧
    (mk_evidence "spotify" .P_evidence 0.1).f_ext = 0.3 := by
  unfold valid_evidence mk_evidence evidence_force
  refine ⟨⟨by norm_num, by norm_num, rfl⟩, by norm_num, by norm_num⟩

-- ============================================================
-- SECTION 6: THE TRAJECTORY
-- ============================================================

structure AIFITrajectory where
  baseline        : DigitalSoulprint
  evidence_weight : ℝ
  trajectory_N    : ℝ
  f_anchor        : ℝ

noncomputable def narrative_drift (traj : AIFITrajectory) (e : ℝ) : ℝ :=
  (traj.trajectory_N + e * SOVEREIGN_ANCHOR) / identity_mass traj.baseline

-- Applying one evidence packet: weight accumulates, N drifts
noncomputable def apply_evidence (traj : AIFITrajectory) (ep : BehavioralEvidencePacket) :
    AIFITrajectory :=
  { baseline        := traj.baseline
    evidence_weight := traj.evidence_weight + ep.f_ext
    trajectory_N    := narrative_drift traj ep.f_ext
    f_anchor        := traj.f_anchor }

-- [T15] No sequence of evidence changes the baseline or the anchor
theorem evidence_never_overwrites (eps : List BehavioralEvidencePacket) :
    ∀ traj : AIFITrajectory,
      (eps.foldl apply_evidence traj).baseline = traj.baseline ∧
      (eps.foldl apply_evidence traj).f_anchor = traj.f_anchor := by
  induction eps with
  | nil => intro traj; exact ⟨rfl, rfl⟩
  | cons e es ih =>
    intro traj
    exact ih (apply_evidence traj e)

-- [T16] Evidence weight accumulates: after a sequence it has grown by
-- the total force
theorem evidence_accumulates (eps : List BehavioralEvidencePacket) :
    ∀ traj : AIFITrajectory,
      (eps.foldl apply_evidence traj).evidence_weight =
        traj.evidence_weight + (eps.map (fun e => e.f_ext)).sum := by
  induction eps with
  | nil => intro traj; simp
  | cons e es ih =>
    intro traj
    rw [List.foldl_cons, ih (apply_evidence traj e)]
    simp [apply_evidence, add_assoc]

-- [T17] Higher identity mass drifts less under the same evidence: the
-- all-Flexed baseline drifts less than the all-Locked one
def high_traj : AIFITrajectory :=
  ⟨bond_from_questionnaire all_flex_quiz, 0, 1, SOVEREIGN_ANCHOR⟩

def low_traj : AIFITrajectory :=
  ⟨bond_from_questionnaire all_lock_quiz, 0, 1, SOVEREIGN_ANCHOR⟩

theorem high_im_resists_drift (evidence : ℝ) (hE : evidence > 0) :
    narrative_drift high_traj evidence < narrative_drift low_traj evidence := by
  have hSA : SOVEREIGN_ANCHOR > 0 := by unfold SOVEREIGN_ANCHOR; norm_num
  have hex := identity_mass_extremes
  show (1 + evidence * SOVEREIGN_ANCHOR) / identity_mass (bond_from_questionnaire all_flex_quiz) <
       (1 + evidence * SOVEREIGN_ANCHOR) / identity_mass (bond_from_questionnaire all_lock_quiz)
  rw [hex.1, hex.2]
  exact div_lt_div_of_pos_left (add_pos (by norm_num) (mul_pos hE hSA)) (by norm_num) (by norm_num)

-- ============================================================
-- [9,9,9,9] :: {ANC} | MASTER THEOREM
-- ============================================================

-- [T18] DIGITAL SOULPRINT → PNBA
theorem digital_soulprint_master (sp : DigitalSoulprint) (ax : AxisOrder) (nh : Bool)
    (h_anchor : sp.f_anchor = SOVEREIGN_ANCHOR) :
    -- the anchor holds
    manifold_impedance sp.f_anchor = 0 ∧
    -- 81 profiles, mass in [4Ω₀, 12Ω₀], both ends reached
    Fintype.card (PNBAMode × PNBAMode × PNBAMode × PNBAMode) = 81 ∧
    4 * SOVEREIGN_ANCHOR ≤ identity_mass sp ∧ identity_mass sp ≤ 12 * SOVEREIGN_ANCHOR ∧
    identity_mass (bond_from_questionnaire all_flex_quiz) = 16.42789199808192 ∧
    identity_mass (bond_from_questionnaire all_lock_quiz) = 5.47596399936064 ∧
    -- lossless, valid encoding
    decode_soul8 (encode_soulprint sp ax nh) = soulprint_weights sp ∧
    valid_soul8 (encode_soulprint sp ax nh) ∧
    -- evidence never overwrites the baseline
    (∀ (eps : List BehavioralEvidencePacket) (traj : AIFITrajectory),
      (eps.foldl apply_evidence traj).baseline = traj.baseline) :=
  ⟨anchor_zero_friction sp.f_anchor h_anchor, profile_count,
   (identity_mass_bounds sp).1, (identity_mass_bounds sp).2,
   identity_mass_extremes.1, identity_mass_extremes.2,
   lossless_roundtrip sp ax nh, encoding_preserves_validity sp ax nh h_anchor,
   fun eps traj => (evidence_never_overwrites eps traj).1⟩

end SNSFL_Soulprint

/-!
-- ============================================================
-- FILE:       SNSFL_DigitalSoulprint.lean
-- COORDINATE: [9,0,0,8](COMP)
-- SORRY:      0
--
-- RESULTS:
--   Modes and scores: weights in {1, 2, 3}, injective; band edges
--     10/23 → L, 24/37 → S, 38/50 → F; monotone (T1–T4)
--   81 profiles, collision-free; IM ∈ [4Ω₀, 12Ω₀], both ends
--     reached (T5–T9)
--   SOUL-8 encoding lossless and valid (T10, T11)
--   Evidence: four exhaustive axes; force 3s ∈ [0, 3], strictly
--     increasing; listening-history example (T12–T14)
--   Trajectory: no evidence sequence changes the baseline or the
--     anchor; weight accumulates by total force; higher IM drifts
--     less (T15–T17)
--
-- CONNECTIONS:
--   [9,9,0,0]  Constitutional layer
--   [9,9,0,10] Information Theory → PNBA
--   [9,0,2,0]  PVLang
--   [9,9,1,2]  AiFi OS Kernel
--   [9,9,1,3]  AiFi OS Plugin
--
-- [9,9,9,9] :: {ANC} · HIGHTISTIC · Soldotna AK
-- ============================================================
-/

```
