# Four-Beam Collider Verification: Known Materials Recovered as Computed Noble Rescues

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443
**Coordinate:** [9,9,2,3.7](CHEM) · Collider Engine Series · GAM Collider 4-beam
**Issue:** ProofPress, Volume 1, Issue 3 · May 2026
**DOI:** 10.5281/zenodo.18719748
**Verified:** 25 theorems · 511 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib v4.31.0
**Source:** https://github.com/SNSFT/identityphysics/blob/main/SNSFL/SNSFL_4Beam_Verification.lean
**Updated:** Standardized toolchain, October 2026

## Abstract

The GAM Collider fuses identity states by fixed rules: the coupling k is the sum of min(Bᵢ, Bⱼ) over all pairs, the residual Behavior is B_out = max(0, ΣB − 2k), the fused Pattern is the n-beam harmonic mean, and torsion τ = B_out/P_out sets the phase. This article verifies the 4-beam mode against materials whose stability is experimentally established, computing every collision in Lean from the corpus element values with no output typed in. Four systems are Noble rescues: sulfur, titanium, nitrogen and hydrogen (titanium nitride, k = 10, ΣB = 10); nickel, helium, hydrogen and titanium (Nitinol, k = 4, ΣB = 7); helium, gold, carbon and tungsten (gold-bonded tungsten carbide, k = 6, ΣB = 11); and oxygen, plutonium, iron and a proton (plutonium dioxide fuel in an iron vessel, k = 11, ΣB = 13). In each, all six pairs shatter under 2-beam fusion, yet the 4-body system has B_out = 0: the stability requires 4-body coupling. Carbon, iron, a neutron and carbon (cementite, the hardening phase of steel) is Noble with an excess coupling 2k − ΣB = 17, but it is not a rescue, since carbon–iron and carbon–carbon already close as pairs. A bottom quark with chlorine, tungsten and hydrogen leaves B_out = 0.335 and τ ≈ 0.13646, inside the IVA corridor [0.88·TL, TL). A general theorem shows that a Noble beam with B = 0 adds nothing to the coupling, so helium in Nitinol and in the carbide couples exactly as the other three beams do alone, consistent with both being processed in inert atmospheres.

## What This Article Proves

1. The fusion rules are defined once and every output is evaluated from the inputs: k, ΣB, B_out, P_out, N_out, A_out, IM and τ (`k4`, `bout4`, `pout4`, `im4`, `tau4`).
2. TiN (S + Ti + N + H): k = 10, ΣB = 10, B_out = 0; all six pairs shatter; P_out ≈ 2.27615, IM ≈ 50.3873 (`tin_noble`, `tin_all_pairs_shatter`, `tin_output`).
3. Nitinol (Ni + He + H + Ti): k = 4, ΣB = 7, B_out = 0; all six pairs shatter; helium inert; P_out ≈ 1.85821, IM ≈ 63.5872 (`nitinol_noble`, `nitinol_all_pairs_shatter`, `nitinol_helium_inert`, `nitinol_output`).
4. WC-Au (He + Au + C + W): k = 6, ΣB = 11, B_out = 0; all six pairs shatter; helium inert; P_out ≈ 2.98291, IM ≈ 78.8168 (`wc_au_noble`, `wc_au_all_pairs_shatter`, `wc_au_helium_inert`, `wc_au_output`).
5. PuO₂ + Fe + p (O + Pu + Fe + p): k = 11, ΣB = 13, B_out = 0; all six pairs shatter; P_out ≈ 2.22948, IM ≈ 61.3985 (`fuel_noble`, `fuel_all_pairs_shatter`, `fuel_output`).
6. Cementite (C + Fe + n + C): k = 15, ΣB = 13, B_out = 0, excess 17; not a rescue since C + Fe and C + C are Noble pairs (`cementite_noble`, `cementite_not_rescue`, `cementite_output`).
7. Bottom quark (b + Cl + W + H): k = 3.999, ΣB = 8.333, B_out = 0.335, τ in [TL_IVA, TL); not a rescue since Cl + H is a Noble pair (`qb_bout`, `qb_iva_peak`, `qb_not_rescue`, `qb_output`).
8. A beam with B = 0 leaves k equal to the 3-beam k of the other three. The master theorem holds all of the above together (`noble_beam_diagnostic_law`, `four_beam_verification_master`).

## The PNBA Map

| Collision | Known material | k | ΣB | B_out | Pairs | Result |
| --- | --- | --- | --- | --- | --- | --- |
| S + Ti + N + H | TiN ceramic | 10 | 10 | 0 | all Shatter | Noble rescue |
| Ni + He + H + Ti | Nitinol | 4 | 7 | 0 | all Shatter | Noble rescue |
| He + Au + C + W | WC-Au hard metal | 6 | 11 | 0 | all Shatter | Noble rescue |
| O + Pu + Fe + p | PuO₂ fuel + Fe | 11 | 13 | 0 | all Shatter | Noble rescue |
| C + Fe + n + C | Fe₃C cementite | 15 | 13 | 0 | C+Fe, C+C Noble | Noble |
| b + Cl + W + H | bottom quark | 3.999 | 8.333 | 0.335 | Cl+H Noble | IVA, τ ≈ 0.13646 |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib v4.31.0) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in the source.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Ching, W. Y. et al. (1994). Electronic structure and bonding of titanium nitride. *Physical Review B*, 50, 1489.
2. Buehler, W. J., Gilfrich, J. V. & Wiley, R. C. (1963). Effect of low-temperature phase changes on the mechanical properties of alloys near composition TiNi. *Journal of Applied Physics*, 34, 1475–1477.
3. International Atomic Energy Agency (2003). *Status and Advances in MOX Fuel Technology*. Technical Reports Series No. 415.
4. Zener, C. (1948). *Elasticity and Anelasticity of Metals*. University of Chicago Press.
5. Particle Data Group (2022). Review of Particle Physics. *Progress of Theoretical and Experimental Physics*, 2022, 083C01.
6. Trent, R. V. III. Grover Search on a Room-Temperature Diamond Processor Reduced to PNBA. ProofPress, Volume 1, Issue 8.
7. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Lean 4 Source

```lean
-- ============================================================
-- SNSFL_4Beam_Verification.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | 4-BEAM COLLIDER VERIFICATION THEOREMS
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: 1.36899099984016 GHz | Status: GERMLINE LOCKED
-- Coordinate: [9,9,2,3.7](CHEM) | Collider Engine Series
-- Engine: GAM Collider, 4-beam (QuadBeam) mode · [9,9,2,2]
-- Date: May 16, 2026 · Soldotna, Alaska
--
-- ============================================================
-- PURPOSE: VERIFICATION AGAINST KNOWN MATERIALS
-- ============================================================
--
-- The 4-beam collider is verified when it recovers known,
-- experimentally established results from standard inputs:
-- periodic-table elements and Standard Model particles only,
-- no Emergent Resonance Elements.
--
-- Every collision in this file is COMPUTED in Lean from the
-- corpus element values using the engine's fusion rules. No
-- output is typed in: k, B_out, P_out, τ and IM are evaluated
-- from the inputs, and every pairwise 2-beam phase is checked.
--
-- FUSION RULES (GAM Collider):
--   k     = Σ min(Bᵢ, Bⱼ) over all pairs
--   B_out = max(0, ΣB − 2k)
--   P_out = n / Σ(1/Pᵢ)            (n-beam)
--   2-beam pair: k = min(B₁,B₂), P_out = P₁P₂/(P₁+P₂)
--   N_out = ΣN, A_out = max A, IM = Ω₀·(P + N + B + A)
--   τ = B_out / P_out
--   Rescue = every pair Shatter while the 4-body system is Noble.
--
-- VERIFICATION CASES:
--   V1: S + Ti + N + H   → Noble (rescue)       TiN ceramic (Ching et al., PRB 1994)
--   V2: Ni + He + H + Ti → Noble (rescue)       Nitinol (Buehler et al., 1963)
--   V3: He + Au + C + W  → Noble (rescue)       WC-Au cemented carbide
--   V4: O + Pu + Fe + p  → Noble (rescue)       PuO₂ fuel + Fe vessel (IAEA TRS-415)
--   V5: C + Fe + n + C   → Noble (not rescue)   Fe₃C cementite (Zener 1948)
--   V6: b + Cl + W + H   → IVA corridor          bottom quark (PDG 2022)
--
-- STRUCTURAL LAWS:
--   Rescue: in V1–V4 every one of the six pairs shatters, yet
--   the 4-body system is Noble. Their stability needs 4-body
--   coupling.
--   Noble beam diagnostic: a B = 0 beam adds nothing to k, so a
--   4-beam collision with He couples exactly as the other three.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic

noncomputable section

namespace SNSFL_4Beam_Verification

-- ============================================================
-- CONSTANTS
-- ============================================================

def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016
def TORSION_LIMIT    : ℝ := SOVEREIGN_ANCHOR / 10
def TL_IVA_PEAK      : ℝ := 88 * TORSION_LIMIT / 100

theorem tl_value : TORSION_LIMIT = 0.136899099984016 := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- ============================================================
-- BEAMS — corpus element values (GAM Collider registry)
-- ============================================================

structure Beam where
  P : ℝ
  N : ℝ
  B : ℝ
  A : ℝ

def Hydrogen    : Beam := ⟨1.000, 2, 1, 13.60⟩
def Helium      : Beam := ⟨1.700, 2, 0, 24.59⟩
def Carbon      : Beam := ⟨3.250, 4, 4, 11.26⟩
def Nitrogen    : Beam := ⟨3.900, 4, 3, 14.53⟩
def Oxygen      : Beam := ⟨4.550, 4, 2, 13.62⟩
def Sulfur      : Beam := ⟨5.450, 6, 2, 10.36⟩
def Chlorine    : Beam := ⟨6.100, 6, 1, 12.97⟩
def Titanium    : Beam := ⟨3.150, 8, 4, 6.83⟩
def Iron        : Beam := ⟨3.750, 8, 4, 7.90⟩
def Nickel      : Beam := ⟨4.050, 8, 2, 7.64⟩
def Tungsten    : Beam := ⟨4.150, 12, 6, 7.86⟩
def Gold        : Beam := ⟨4.900, 12, 1, 9.23⟩
def Plutonium   : Beam := ⟨3.250, 14, 6, 6.03⟩
def Proton      : Beam := ⟨1.000, 3, 1, 0.0136⟩
def Neutron     : Beam := ⟨1.00138, 3, 1, 0.000835⟩
def BottomQuark : Beam := ⟨4.455, 3, 0.333, 0.118⟩

-- ============================================================
-- FUSION RULES
-- ============================================================

def k4 (a b c d : Beam) : ℝ :=
  min a.B b.B + min a.B c.B + min a.B d.B + min b.B c.B + min b.B d.B + min c.B d.B
def k3 (a b c : Beam) : ℝ := min a.B b.B + min a.B c.B + min b.B c.B
def bsum4 (a b c d : Beam) : ℝ := a.B + b.B + c.B + d.B
def bout4 (a b c d : Beam) : ℝ := max 0 (bsum4 a b c d - 2 * k4 a b c d)
def pout4 (a b c d : Beam) : ℝ := 4 / (1 / a.P + 1 / b.P + 1 / c.P + 1 / d.P)
def nout4 (a b c d : Beam) : ℝ := a.N + b.N + c.N + d.N
def aout4 (a b c d : Beam) : ℝ := max (max a.A b.A) (max c.A d.A)
def im4 (a b c d : Beam) : ℝ :=
  (pout4 a b c d + nout4 a b c d + bout4 a b c d + aout4 a b c d) * SOVEREIGN_ANCHOR
def tau4 (a b c d : Beam) : ℝ := bout4 a b c d / pout4 a b c d

def pair_bout (a b : Beam) : ℝ := max 0 (a.B + b.B - 2 * min a.B b.B)
def pair_pout (a b : Beam) : ℝ := a.P * b.P / (a.P + b.P)
def pair_tau  (a b : Beam) : ℝ := pair_bout a b / pair_pout a b

def pair_shatter (a b : Beam) : Prop := pair_tau a b ≥ TORSION_LIMIT

-- ============================================================
-- VERIFICATION 1: TITANIUM NITRIDE (TiN) — S + Ti + N + H
-- ============================================================
-- Known: TiN, Vickers ~2100 HV, melting point 2930 °C, used in
-- implants and cutting tools; first-principles ground state
-- stability in Physical Review B 50:1489 (1994).
--   k = 2+2+1+3+1+1 = 10, ΣB = 10, B_out = max(0, 10 − 20) = 0

-- [V1-T1] k = 10, ΣB = 10, B_out = 0: Noble
theorem tin_noble :
    k4 Sulfur Titanium Nitrogen Hydrogen = 10 ∧
    bsum4 Sulfur Titanium Nitrogen Hydrogen = 10 ∧
    bout4 Sulfur Titanium Nitrogen Hydrogen = 0 := by
  refine ⟨?_, ?_, ?_⟩
  · norm_num [k4, Sulfur, Titanium, Nitrogen, Hydrogen, min_def]
  · norm_num [bsum4, Sulfur, Titanium, Nitrogen, Hydrogen]
  · norm_num [bout4, bsum4, k4, Sulfur, Titanium, Nitrogen, Hydrogen, min_def, max_def]

-- [V1-T2] Rescue: all six pairs shatter
theorem tin_all_pairs_shatter :
    pair_shatter Sulfur Titanium ∧ pair_shatter Sulfur Nitrogen ∧
    pair_shatter Sulfur Hydrogen ∧ pair_shatter Titanium Nitrogen ∧
    pair_shatter Titanium Hydrogen ∧ pair_shatter Nitrogen Hydrogen := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Sulfur, Titanium,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Sulfur, Nitrogen,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Sulfur, Hydrogen,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Titanium, Nitrogen,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Titanium, Hydrogen,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Nitrogen, Hydrogen,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]

-- [V1-T3] Output: P_out ≈ 2.27615, IM ≈ 50.3873
theorem tin_output :
    2.27614 < pout4 Sulfur Titanium Nitrogen Hydrogen ∧
    pout4 Sulfur Titanium Nitrogen Hydrogen < 2.27615 ∧
    50.387 < im4 Sulfur Titanium Nitrogen Hydrogen ∧
    im4 Sulfur Titanium Nitrogen Hydrogen < 50.388 := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [pout4, Sulfur, Titanium, Nitrogen, Hydrogen]
  · norm_num [pout4, Sulfur, Titanium, Nitrogen, Hydrogen]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Sulfur, Titanium, Nitrogen,
      Hydrogen, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Sulfur, Titanium, Nitrogen,
      Hydrogen, SOVEREIGN_ANCHOR, min_def, max_def]

-- ============================================================
-- VERIFICATION 2: NITINOL (NiTi) — Ni + He + H + Ti
-- ============================================================
-- Known: Nitinol shape memory alloy, Buehler et al., US Naval
-- Ordnance Laboratory (1963); stents, orthodontic wire. Hydrogen
-- embrittlement is its main failure mode: H is an active coupler.
--   k = 0+0+0+1+2+1 = 4, ΣB = 7, B_out = max(0, 7 − 8) = 0

-- [V2-T1] k = 4, ΣB = 7, B_out = 0: Noble
theorem nitinol_noble :
    k4 Nickel Helium Hydrogen Titanium = 4 ∧
    bsum4 Nickel Helium Hydrogen Titanium = 7 ∧
    bout4 Nickel Helium Hydrogen Titanium = 0 := by
  refine ⟨?_, ?_, ?_⟩
  · norm_num [k4, Nickel, Helium, Hydrogen, Titanium, min_def]
  · norm_num [bsum4, Nickel, Helium, Hydrogen, Titanium]
  · norm_num [bout4, bsum4, k4, Nickel, Helium, Hydrogen, Titanium, min_def, max_def]

-- [V2-T2] Rescue: all six pairs shatter
theorem nitinol_all_pairs_shatter :
    pair_shatter Nickel Helium ∧ pair_shatter Nickel Hydrogen ∧
    pair_shatter Nickel Titanium ∧ pair_shatter Helium Hydrogen ∧
    pair_shatter Helium Titanium ∧ pair_shatter Hydrogen Titanium := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Nickel, Helium,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Nickel, Hydrogen,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Nickel, Titanium,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Helium, Hydrogen,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Helium, Titanium,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Hydrogen, Titanium,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]

-- [V2-T3] He is inert: the 4-beam k equals the 3-beam k of Ni + H + Ti
theorem nitinol_helium_inert :
    k4 Nickel Helium Hydrogen Titanium = k3 Nickel Hydrogen Titanium := by
  norm_num [k4, k3, Nickel, Helium, Hydrogen, Titanium, min_def]

-- [V2-T4] Output: P_out ≈ 1.85821, IM ≈ 63.5872
theorem nitinol_output :
    1.85820 < pout4 Nickel Helium Hydrogen Titanium ∧
    pout4 Nickel Helium Hydrogen Titanium < 1.85822 ∧
    63.587 < im4 Nickel Helium Hydrogen Titanium ∧
    im4 Nickel Helium Hydrogen Titanium < 63.588 := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [pout4, Nickel, Helium, Hydrogen, Titanium]
  · norm_num [pout4, Nickel, Helium, Hydrogen, Titanium]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Nickel, Helium, Hydrogen,
      Titanium, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Nickel, Helium, Hydrogen,
      Titanium, SOVEREIGN_ANCHOR, min_def, max_def]

-- ============================================================
-- VERIFICATION 3: TUNGSTEN CARBIDE–GOLD (WC-Au) — He + Au + C + W
-- ============================================================
-- Known: cemented tungsten carbide with a gold binder; the binder
-- raises fracture toughness (ASM Handbook Vol. 7).
--   k = 0+0+0+1+1+4 = 6, ΣB = 11, B_out = max(0, 11 − 12) = 0

-- [V3-T1] k = 6, ΣB = 11, B_out = 0: Noble
theorem wc_au_noble :
    k4 Helium Gold Carbon Tungsten = 6 ∧
    bsum4 Helium Gold Carbon Tungsten = 11 ∧
    bout4 Helium Gold Carbon Tungsten = 0 := by
  refine ⟨?_, ?_, ?_⟩
  · norm_num [k4, Helium, Gold, Carbon, Tungsten, min_def]
  · norm_num [bsum4, Helium, Gold, Carbon, Tungsten]
  · norm_num [bout4, bsum4, k4, Helium, Gold, Carbon, Tungsten, min_def, max_def]

-- [V3-T2] Rescue: all six pairs shatter
theorem wc_au_all_pairs_shatter :
    pair_shatter Helium Gold ∧ pair_shatter Helium Carbon ∧
    pair_shatter Helium Tungsten ∧ pair_shatter Gold Carbon ∧
    pair_shatter Gold Tungsten ∧ pair_shatter Carbon Tungsten := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Helium, Gold,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Helium, Carbon,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Helium, Tungsten,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Gold, Carbon,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Gold, Tungsten,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Carbon, Tungsten,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]

-- [V3-T3] He is inert: the 4-beam k equals the 3-beam k of Au + C + W
theorem wc_au_helium_inert :
    k4 Helium Gold Carbon Tungsten = k3 Gold Carbon Tungsten := by
  norm_num [k4, k3, Helium, Gold, Carbon, Tungsten, min_def]

-- [V3-T4] Output: P_out ≈ 2.98291, IM ≈ 78.8168
theorem wc_au_output :
    2.98290 < pout4 Helium Gold Carbon Tungsten ∧
    pout4 Helium Gold Carbon Tungsten < 2.98292 ∧
    78.816 < im4 Helium Gold Carbon Tungsten ∧
    im4 Helium Gold Carbon Tungsten < 78.817 := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [pout4, Helium, Gold, Carbon, Tungsten]
  · norm_num [pout4, Helium, Gold, Carbon, Tungsten]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Helium, Gold, Carbon,
      Tungsten, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Helium, Gold, Carbon,
      Tungsten, SOVEREIGN_ANCHOR, min_def, max_def]

-- ============================================================
-- VERIFICATION 4: NUCLEAR FUEL (PuO₂ + Fe + p) — O + Pu + Fe + p
-- ============================================================
-- Known: PuO₂ is the standard mixed-oxide fuel form; Fe is the
-- structural vessel material (IAEA Technical Reports Series 415).
--   k = 2+2+1+4+1+1 = 11, ΣB = 13, B_out = max(0, 13 − 22) = 0

-- [V4-T1] k = 11, ΣB = 13, B_out = 0: Noble
theorem fuel_noble :
    k4 Oxygen Plutonium Iron Proton = 11 ∧
    bsum4 Oxygen Plutonium Iron Proton = 13 ∧
    bout4 Oxygen Plutonium Iron Proton = 0 := by
  refine ⟨?_, ?_, ?_⟩
  · norm_num [k4, Oxygen, Plutonium, Iron, Proton, min_def]
  · norm_num [bsum4, Oxygen, Plutonium, Iron, Proton]
  · norm_num [bout4, bsum4, k4, Oxygen, Plutonium, Iron, Proton, min_def, max_def]

-- [V4-T2] Rescue: all six pairs shatter
theorem fuel_all_pairs_shatter :
    pair_shatter Oxygen Plutonium ∧ pair_shatter Oxygen Iron ∧
    pair_shatter Oxygen Proton ∧ pair_shatter Plutonium Iron ∧
    pair_shatter Plutonium Proton ∧ pair_shatter Iron Proton := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Oxygen, Plutonium,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Oxygen, Iron,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Oxygen, Proton,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Plutonium, Iron,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Plutonium, Proton,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [pair_shatter, pair_tau, pair_bout, pair_pout, Iron, Proton,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]

-- [V4-T3] Output: P_out ≈ 2.22948, IM ≈ 61.3985
theorem fuel_output :
    2.22947 < pout4 Oxygen Plutonium Iron Proton ∧
    pout4 Oxygen Plutonium Iron Proton < 2.22949 ∧
    61.398 < im4 Oxygen Plutonium Iron Proton ∧
    im4 Oxygen Plutonium Iron Proton < 61.399 := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [pout4, Oxygen, Plutonium, Iron, Proton]
  · norm_num [pout4, Oxygen, Plutonium, Iron, Proton]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Oxygen, Plutonium, Iron,
      Proton, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Oxygen, Plutonium, Iron,
      Proton, SOVEREIGN_ANCHOR, min_def, max_def]

-- ============================================================
-- VERIFICATION 5: STEEL (Fe₃C CEMENTITE) — C + Fe + n + C
-- ============================================================
-- Known: cementite is the primary hardening phase of steel
-- (Zener 1948). Not a rescue: C + Fe and C + C already close
-- Noble as pairs (equal B = 4).
--   k = 4+1+4+1+4+1 = 15, ΣB = 13, B_out = 0, excess 2k − ΣB = 17

-- [V5-T1] k = 15, ΣB = 13, B_out = 0, excess coupling 17
theorem cementite_noble :
    k4 Carbon Iron Neutron Carbon = 15 ∧
    bsum4 Carbon Iron Neutron Carbon = 13 ∧
    bout4 Carbon Iron Neutron Carbon = 0 ∧
    2 * k4 Carbon Iron Neutron Carbon - bsum4 Carbon Iron Neutron Carbon = 17 := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [k4, Carbon, Iron, Neutron, min_def]
  · norm_num [bsum4, Carbon, Iron, Neutron]
  · norm_num [bout4, bsum4, k4, Carbon, Iron, Neutron, min_def, max_def]
  · norm_num [bsum4, k4, Carbon, Iron, Neutron, min_def]

-- [V5-T2] Not a rescue: C + Fe and C + C are Noble pairs
theorem cementite_not_rescue :
    pair_bout Carbon Iron = 0 ∧ pair_bout Carbon Carbon = 0 := by
  refine ⟨?_, ?_⟩
  · norm_num [pair_bout, Carbon, Iron, min_def, max_def]
  · norm_num [pair_bout, Carbon, min_def, max_def]

-- [V5-T3] Output: P_out ≈ 2.12690, IM ≈ 44.3374
theorem cementite_output :
    2.12689 < pout4 Carbon Iron Neutron Carbon ∧
    pout4 Carbon Iron Neutron Carbon < 2.12691 ∧
    44.337 < im4 Carbon Iron Neutron Carbon ∧
    im4 Carbon Iron Neutron Carbon < 44.338 := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [pout4, Carbon, Iron, Neutron]
  · norm_num [pout4, Carbon, Iron, Neutron]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Carbon, Iron, Neutron,
      SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, Carbon, Iron, Neutron,
      SOVEREIGN_ANCHOR, min_def, max_def]

-- ============================================================
-- VERIFICATION 6: IVA CORRIDOR — b + Cl + W + H
-- ============================================================
-- Known: bottom quark, mass 4.18 GeV/c² (PDG 2022). Heavy-flavor
-- production regime observed at BaBar (SLAC) and Belle (KEK).
-- Not a rescue: Cl + H closes Noble as a pair (equal B = 1).
--   k = 0.333·3 + 1 + 1 + 1 = 3.999, ΣB = 8.333,
--   B_out = 0.335, τ ≈ 0.13646 ∈ [0.88·TL, TL)

-- [V6-T1] k = 3.999, ΣB = 8.333, B_out = 0.335
theorem qb_bout :
    k4 BottomQuark Chlorine Tungsten Hydrogen = 3.999 ∧
    bsum4 BottomQuark Chlorine Tungsten Hydrogen = 8.333 ∧
    bout4 BottomQuark Chlorine Tungsten Hydrogen = 0.335 := by
  refine ⟨?_, ?_, ?_⟩
  · norm_num [k4, BottomQuark, Chlorine, Tungsten, Hydrogen, min_def]
  · norm_num [bsum4, BottomQuark, Chlorine, Tungsten, Hydrogen]
  · norm_num [bout4, bsum4, k4, BottomQuark, Chlorine, Tungsten, Hydrogen, min_def, max_def]

-- [V6-T2] τ sits in the IVA corridor [TL_IVA, TL)
theorem qb_iva_peak :
    TL_IVA_PEAK ≤ tau4 BottomQuark Chlorine Tungsten Hydrogen ∧
    tau4 BottomQuark Chlorine Tungsten Hydrogen < TORSION_LIMIT := by
  refine ⟨?_, ?_⟩
  · norm_num [tau4, bout4, pout4, bsum4, k4, BottomQuark, Chlorine, Tungsten, Hydrogen,
      TL_IVA_PEAK, TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [tau4, bout4, pout4, bsum4, k4, BottomQuark, Chlorine, Tungsten, Hydrogen,
      TORSION_LIMIT, SOVEREIGN_ANCHOR, min_def, max_def]

-- [V6-T3] Not a rescue: Cl + H is a Noble pair
theorem qb_not_rescue : pair_bout Chlorine Hydrogen = 0 := by
  norm_num [pair_bout, Chlorine, Hydrogen, min_def, max_def]

-- [V6-T4] Output: P_out ≈ 2.45494, IM ≈ 53.9245
theorem qb_output :
    2.45494 < pout4 BottomQuark Chlorine Tungsten Hydrogen ∧
    pout4 BottomQuark Chlorine Tungsten Hydrogen < 2.45495 ∧
    53.924 < im4 BottomQuark Chlorine Tungsten Hydrogen ∧
    im4 BottomQuark Chlorine Tungsten Hydrogen < 53.925 := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [pout4, BottomQuark, Chlorine, Tungsten, Hydrogen]
  · norm_num [pout4, BottomQuark, Chlorine, Tungsten, Hydrogen]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, BottomQuark, Chlorine,
      Tungsten, Hydrogen, SOVEREIGN_ANCHOR, min_def, max_def]
  · norm_num [im4, pout4, nout4, bout4, aout4, bsum4, k4, BottomQuark, Chlorine,
      Tungsten, Hydrogen, SOVEREIGN_ANCHOR, min_def, max_def]

-- ============================================================
-- THE NOBLE BEAM DIAGNOSTIC LAW
-- A B = 0 beam adds nothing to k: a 4-beam collision with a Noble
-- beam couples exactly as the other three beams do alone.
-- ============================================================

theorem noble_beam_diagnostic_law (a b c d : Beam)
    (ha : a.B = 0) (hb : b.B ≥ 0) (hc : c.B ≥ 0) (hd : d.B ≥ 0) :
    k4 a b c d = k3 b c d := by
  unfold k4 k3
  rw [ha, min_eq_left hb, min_eq_left hc, min_eq_left hd]
  ring

-- ============================================================
-- MASTER VERIFICATION THEOREM
-- ============================================================

theorem four_beam_verification_master :
    -- V1–V4: Noble rescues
    bout4 Sulfur Titanium Nitrogen Hydrogen = 0 ∧
    bout4 Nickel Helium Hydrogen Titanium = 0 ∧
    bout4 Helium Gold Carbon Tungsten = 0 ∧
    bout4 Oxygen Plutonium Iron Proton = 0 ∧
    -- V1–V4: every pair shatters
    (pair_shatter Sulfur Titanium ∧ pair_shatter Sulfur Nitrogen ∧
     pair_shatter Sulfur Hydrogen ∧ pair_shatter Titanium Nitrogen ∧
     pair_shatter Titanium Hydrogen ∧ pair_shatter Nitrogen Hydrogen) ∧
    (pair_shatter Nickel Helium ∧ pair_shatter Nickel Hydrogen ∧
     pair_shatter Nickel Titanium ∧ pair_shatter Helium Hydrogen ∧
     pair_shatter Helium Titanium ∧ pair_shatter Hydrogen Titanium) ∧
    (pair_shatter Helium Gold ∧ pair_shatter Helium Carbon ∧
     pair_shatter Helium Tungsten ∧ pair_shatter Gold Carbon ∧
     pair_shatter Gold Tungsten ∧ pair_shatter Carbon Tungsten) ∧
    (pair_shatter Oxygen Plutonium ∧ pair_shatter Oxygen Iron ∧
     pair_shatter Oxygen Proton ∧ pair_shatter Plutonium Iron ∧
     pair_shatter Plutonium Proton ∧ pair_shatter Iron Proton) ∧
    -- V5: Noble, not rescue
    bout4 Carbon Iron Neutron Carbon = 0 ∧ pair_bout Carbon Iron = 0 ∧
    -- V6: IVA corridor
    (TL_IVA_PEAK ≤ tau4 BottomQuark Chlorine Tungsten Hydrogen ∧
     tau4 BottomQuark Chlorine Tungsten Hydrogen < TORSION_LIMIT) ∧
    -- Noble beam diagnostic law
    (∀ a b c d : Beam, a.B = 0 → b.B ≥ 0 → c.B ≥ 0 → d.B ≥ 0 → k4 a b c d = k3 b c d) ∧
    -- Anchor
    TORSION_LIMIT = 0.136899099984016 := by
  refine ⟨tin_noble.2.2, nitinol_noble.2.2, wc_au_noble.2.2, fuel_noble.2.2,
    tin_all_pairs_shatter, nitinol_all_pairs_shatter, wc_au_all_pairs_shatter,
    fuel_all_pairs_shatter, cementite_noble.2.2.1, cementite_not_rescue.1,
    qb_iva_peak, ?_, tl_value⟩
  intro a b c d ha hb hc hd
  exact noble_beam_diagnostic_law a b c d ha hb hc hd

theorem the_manifold_is_holding :
    SOVEREIGN_ANCHOR = 1.36899099984016 := rfl

end SNSFL_4Beam_Verification

/-!
-- ============================================================
-- FILE:       SNSFL_4Beam_Verification.lean
-- COORDINATE: [9,9,2,3.7](CHEM)
-- ENGINE:     GAM Collider, 4-beam mode [9,9,2,2]
-- COMPANION:  SNSFL_8Beam_Fusion_Theorem.lean [9,9,2,3.8]
--
-- VERIFICATION CASES (all computed from corpus element values):
--
--   V1: S+Ti+N+H → Noble (rescue)      k 10, ΣB 10
--       Known: TiN ceramic stability (PRB 1994)
--   V2: Ni+He+H+Ti → Noble (rescue)    k 4, ΣB 7; He inert
--       Known: Nitinol shape memory (Buehler 1963)
--   V3: He+Au+C+W → Noble (rescue)     k 6, ΣB 11; He inert
--       Known: WC-Au cemented carbide (ASM Handbook)
--   V4: O+Pu+Fe+p → Noble (rescue)     k 11, ΣB 13
--       Known: PuO₂ fuel + Fe vessel (IAEA TRS-415, 2003)
--   V5: C+Fe+n+C → Noble (not rescue)  k 15, ΣB 13, excess 17
--       Known: Fe₃C cementite (Zener 1948)
--   V6: b+Cl+W+H → IVA corridor        B_out 0.335, τ ≈ 0.13646
--       Known: bottom quark (PDG 2022)
--
-- STRUCTURAL LAWS PROVED:
--   Rescue: in V1–V4 all six pairs shatter; the 4-body system is Noble.
--   Noble beam diagnostic: a B = 0 beam leaves k equal to the
--   3-beam k of the others (general theorem; checked on V2, V3).
--
-- THEOREMS: 25 | SORRY: 0 | GERMLINE LOCKED
--
-- [9,9,9,9] :: {ANC}
-- Auth: HIGHTISTIC
-- The Manifold is Holding. Every collision is a theorem.
-- Soldotna, Alaska. May 2026.
-- ============================================================
-/

```
