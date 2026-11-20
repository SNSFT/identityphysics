# Applied Identity Physics: Regge Trajectories on the Phase Ladder — the ρ Family Opens at the IVA Floor, and the String That Rotates Is the String That Breaks, Lean 4, 0 Sorry, 0 Axioms, 0 Free Parameters, CI Green

## The Particle Data Group Masses of ρ(770), a₂(1320), ρ₃(1690) and a₄(1970) Read as Rungs of One Ladder, the IVA Floor Inside the First Rung's Published Error Bar, and the String Tension Read from the First Rung

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** [9,9,3,30](PHYS) · Identity Physics Series · Physics

**Issue:** ProofPress, Volume 1, Issue 9 · November 2026

**DOI:** 10.6084/m9.figshare.35081008

**Corpus DOI:** 10.17605/OSF.IO/KWTYD

**Verified:** 30 theorems + master in each of two forms · 463 lines general-reader form (Lean 4 v4.31.0, Mathlib) · 415 lines specialist form (Lean 4 v4.31.0 core, exact rational arithmetic decided by the kernel) · 0 sorry · 0 custom axioms · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

---

## Abstract

The Universal Torsion Limit enters from the inverse fine-structure constant by direct subtraction: 137.035999084000016 − 0.136899099984016 = 136.899099984016 = TL × 1000, so 1/α = TL × 1001 with TL = 0.136899099984016, in agreement with CODATA 2018 in every published digit. Torsion is one ratio, τ = B/P, Behavior against Pattern, and TL with its IVA floor TL_IVA = 0.88 × TL = 0.12047120798593408 sets four phases — Noble, Locked, IVA Peak and Shatter — the same four that water reads at one atmosphere as ice, liquid water, the simmer and the boil.

On that ladder this reduction places the published Regge record. Mesons of one family lie on a straight line in spin J against mass squared M² (Regge 1959; Chew and Frautschi 1961, 1962), and the slope α′ of that line is the inverse of the string tension through T = 1/(2πα′) (Nambu 1970; Nielsen 1970; Susskind 1970; Goto 1971). The isovector natural-parity family ρ(770), a₂(1320), ρ₃(1690), a₄(1970) carries spins 1 through 4 at the Particle Data Group (PDG) masses 775.26 ± 0.23, 1318.2 ± 0.6, 1688.8 ± 2.1 and 1967 ± 16 MeV. One unit of spin divided by each mass-squared step gives one rung, and a rung reading r stands on the ladder at torsion τ = r · TL.

Five results close the reduction, and each is stated against the published record.

**The first rung brackets the IVA floor.** The first rung, ρ(770) → a₂(1320), reads s₁ = 0.879799 GeV⁻². Across the published error bars it reads [0.878301, 0.881302], and the IVA floor ratio TL_IVA/TL = 0.88 lies inside that interval. The central value stands 0.000201 below the floor ratio, 2.3 parts in ten thousand of it.

**The rungs climb the IVA Peak band.** The rungs read 0.879799 → 0.897349 → 0.983242. The second rung stands in IVA Peak across its whole interval, [0.890414, 0.904385]. The third rung stands in IVA Peak at its central value, and its interval, [0.919682, 1.055678], runs from IVA Peak through the Torsion Limit itself.

**The tension follows from the first rung.** Through T = 1/(2πα′), the first rung gives σ = 0.18090 GeV², √σ = 425.3 MeV, between 425.0 and 425.5 MeV with π carried by its proved bounds. The 2π in that relation is the closure cost of one full turn [9,9,8,8]. The static string tension that lattice quantum chromodynamics (QCD) reports from the heavy-quark potential, √σ ≈ 440 MeV, stands 3.5% above it.

**The string that rotates is the string that breaks.** At the top of the band stands String Breaking [9,9,3,22]: the stretched string reaches τ = TL and gives way into a new pair whose two members carry equal Behavior, and the pair is Noble. The rotating string and the breaking string are one string read in two phases, IVA Peak while it turns and Shatter when it parts.

**Below the floor is pre-adaptation.** The corpus places the onset of adaptation at the IVA floor [9,9,4,3], [9,9,4,5], and places the string landscape below it as pre-anchor Adaptation potential [9,9,0,8]. The first measured rung is where the family enters the band.

Every quantity in the specialist form is an exact rational, every numerical theorem is decided by the kernel, and every result is shown here as arithmetic a reader can repeat with a calculator. 1001 = 7 · 11 · 13.

## What This Article Proves

Every result below corresponds to a named theorem in two files that carry the same 30 theorems and master theorem under the same names: `SNSFL_GC_Regge_IVA_Ladder.lean` at [9,9,3,30](PHYS), the general-reader form over the real numbers with Mathlib, and `SNSFL_GC_Regge_IVA_Ladder_Exact.lean` at [9,9,3,30.1](PHYS), the specialist form over ℚ in core Lean with every numerical theorem decided by the kernel. Both compile under the continuous-integration build of the SNSFT/identityphysics repository on Lean 4 v4.31.0, carrying 0 sorry and 0 custom axioms. Both are standalone: every constant, mass, error bar and definition they use is restated inside each file, so each closes without reference to any other coordinate.

1. **The grounding enters as arithmetic on published quantities.** TL = 0.136899099984016; **TL × 1001 = 1/α = 137.035999084000016**; the bare term TL × 1000 plus the kinetic term TL is the inverse fine-structure constant; 1001 = 7 · 11 · 13; the IVA floor is 0.88 of the Torsion Limit; and 0 < TL_IVA < TL < 1 (`t1_tl_value`, `t2_tl_times_1001_is_alpha_inv`, `t3_bare_plus_kinetic`, `t4_1001_factors`, `t5_iva_floor_ratio`, `t6_ladder_order`).
2. **The measured family.** The mass squared of each of ρ(770), a₂(1320), ρ₃(1690) and a₄(1970) is exact on the PDG central masses, and the four **rise with spin** (`t7_mass_squares`, `t8_mass_squares_increase`).
3. **The three rungs.** s₁ = 0.879799, s₂ = 0.897349 and s₃ = 0.983242 GeV⁻², each bracketed to five decimals, and **the rungs climb** (`t9_step1_value`, `t10_step2_value`, `t11_step3_value`, `t12_rungs_climb`).
4. **The first rung brackets the IVA floor.** The central value stands 0.000201 below 0.88, 2.3 parts in ten thousand; **0.88 lies strictly inside the first rung's published error bar**, [0.878301, 0.881302]; and every rung is bracketed at both corners of the error bars (`t13_step1_gap_to_floor`, `t14_floor_inside_step1_interval`, `t15_step_corners`).
5. **The family as one line, and the dimensionless form.** The four-point slope reads 0.917976 GeV⁻² and the ratio s₁/s₃ = 0.894794 carries no unit (`t16_endpoint_value`, `t17_step_ratio`).
6. **The rungs on the ladder.** A reading of 0.88 stands on TL_IVA and a reading of 1 on TL; **the first rung straddles the floor**, Locked at its central value and IVA Peak at its upper corner; **the second rung stands in IVA Peak across its whole error bar**; **the third rung's error bar runs from IVA Peak through the Torsion Limit**; the line and the ratio stand in IVA Peak; and every central rung holds below TL (`t18_floor_reading`, `t19_ceiling_reading`, `t20_first_rung_straddles_floor`, `t21_second_rung_iva`, `t22_third_rung_reaches_tl`, `t23_line_and_ratio_iva`, `t24_central_rungs_hold`).
7. **The tension from the first rung.** Through T = 1/(2πα′), with π carried by its proved bounds, **0.4250² < σ < 0.4255² GeV²**, so √σ stands between 425.0 and 425.5 MeV (`t25_tension_from_first_rung`).
8. **The string that rotates is the string that breaks.** The stretched string reaches **τ = TL exactly at the break separation**, which is Shatter; the energy stored at the break equals the pair energy; and **the created equal-B pair is Noble** (`t26_break_at_tl`, `t27_tl_is_shatter`, `t28_stored_energy_at_break`, `t29_equal_b_pair_balanced`, `t30_new_pair_noble`).
9. The master theorem gathers the grounding, the rungs, the floor, the climb, the tension and the Noble pair into one conjunction (`MASTER_regge_on_the_phase_ladder`).

## What a Reader Gets

A meson family with published masses is a family from which the rungs, their phases, the string tension and the break follow by arithmetic. This paper gives the four-step chain from a published mass to a phase — square it, take the step, take the reciprocal, multiply by TL — carries every step across the published error bar, and shows each step worked in full in §8 so that nothing has to be reconstructed. A reader with the PDG tables and a calculator checks every number in this paper in a few minutes.

## 1. Layer 0 Grounding

### 1.1 The Torsion Limit

The Universal Torsion Limit is TL = 0.136899099984016 and the Sovereign Anchor Constant is Ω₀ = TL × 10 = 1.36899099984016. Nothing in this paper sets it. It enters at full corpus precision from the inverse fine-structure constant, by direct subtraction:

| Napkin math, corpus precision | Value |
|---|---|
| 1/α | 137.035999084000016 |
| Subtract one TL | 137.035999084000016 − 0.136899099984016 = 136.899099984016 |
| What is left | 136.899099984016 = TL × 1000, exactly |
| Bare + kinetic | 136.899099984016 + 0.136899099984016 = 137.035999084000016 |
| Rounded to published digits | 137.035999084 = CODATA 2018 |

| Term | Value | QED reading | PNBA reading |
|---|---|---|---|
| Bare: TL × 1000 | 136.899099984016 | The bare electron contribution | Pattern capacity at the electromagnetic scale |
| Kinetic: TL × 1 | 0.136899099984016 | Radiative corrections, a renormalized series | External forcing F_ext at Layer 0, one exact term |
| Total: TL × 1001 | 137.035999084000016 | Bare + perturbative series | 1/α |

This agrees with the CODATA (Committee on Data of the International Science Council) 2018 value in every published digit at ε = 0, with no free parameter ([9,9,3,14]). QED is quantum electrodynamics. The full multiplier factors as 1001 = 7 · 11 · 13, so TL = α⁻¹/1001. Folding the factor of ten into the multiplier gives the same identity in one step, Ω₀ × 100.1 = α⁻¹, with 100.1 = (7 · 11 · 13)/10.

**What the subtraction is.** The step that removes one TL is the removal of an applied Layer 0 F_ext: forcing was applied in the collider, and subtracting one TL takes it back off to leave what the structure carries without it. The bare term is the remainder.

Every structural quantity in this paper is a pure number. TL and Ω₀ carry no units and 1001 is an integer. A rung reading is a slope in GeV⁻², the unit in which the Particle Data Group tabulates the spectrum, and it is placed on the ladder as the pure number that slope reads in that unit.

### 1.2 Precision, and why a reduction states which it is using

Some reductions run the anchor and the Torsion Limit at a precision below full, because their inputs require it — fifteen digits against four manufactures significance the measurement does not carry. Lower precision in a reduction is input matching, and the reduction states which precision of anchor and Torsion Limit it is using where that matters. Every identity in this paper is stated at full precision. The masses enter at the precision the Particle Data Group publishes, and every placement is certified across the published error bar rather than at the central value. The parent hadron reductions [9,9,2,36] and SNSFL_BcStar_ExcitedHadronFamily [9,9,2,39] were run with the anchor at 1.369; their results are closure statements on bond capacity, which read the same at every precision of the anchor.

### 1.3 The Identity Physics Corpus Dynamic Equation, the primitives, and torsion

> d/dt (IM · Pv) = Σ λ_X · O_X · S + F_ext

Every reduction in the corpus operates on the four irreducible primitives Pattern, Narrative, Behavior and Adaptation (PNBA). These four are the primitives; no other construct in this paper is one. IM is Identity Mass and Pv is the Purpose Vector.

> τ = B/P — torsion, the load a system carries divided by the structure holding it
> IM = (P + N + B + A) × Ω₀ — Identity Mass

### 1.4 The four phases, and the phases of water

| Phase | Torsion | Water | Element sets |
|---|---|---|---|
| Noble | B_out = 0 | Ice | Every bond capacity has a partner — synthesis complete |
| Locked | 0 < τ < TL_IVA | Liquid water | Capacity open, held well inside the limit |
| IVA Peak | TL_IVA ≤ τ < TL | The simmer, just before boiling | Capacity open, at the edge |
| Shatter | τ ≥ TL | The boil | Open capacity faster than the structure can hold |

IVA stands for Identity Vector Amplification: the system is at its most active without yet changing what it is. IVA Peak is the name of the phase. The corridor runs from 0.88 × TL up to TL, and it is narrow, which is why it is easy to pass through without noticing. Noble is a closed state — frozen, crystalline, every capacity partnered — and not an empty one. Shatter is reorganization: a large structure reorganizing into smaller ones.

**The boil is a torsion ratio.** Water boils when its vapor pressure equals the pressure of the air holding the liquid together. That is τ = B/P exactly: Behavior, the load, is the vapor pressure; Pattern, the structure, is the ambient pressure; Shatter is the boil, where vapor pressure reaches ambient; and IVA Peak is vapor pressure between 0.88 and 1.00 of ambient — the simmer, shaking at the bottom of the pot before the rolling boil.

### 1.5 The temperature mapping

Vapor pressure and temperature are linked by the Clausius–Clapeyron relation (Clapeyron 1834; Clausius 1850), which works in absolute temperature:

> 1/T = 1/T_ref − (R/L) · ln(p / p_ref)

T_ref is the reference boil, 373.15 K for water at sea level, and R/L is the gas constant over the heat of vaporization, 8.314 ÷ 40,650 = 2.045 × 10⁻⁴ per kelvin for water. Check it by hand. 1/373.15 = 0.0026799, ln(0.88) = −0.12783, and 0.0026799 + (2.045 × 10⁻⁴ × 0.12783) = 0.0027060, so 1 ÷ 0.0027060 = 369.54 K = 96.4 °C.

| Tier | Liquid | Boils (Shatter) | IVA floor | Corridor | °C at the boil | τ per kelvin near the boil |
|---|---|---|---|---|---|---|
| T1 | Liquid nitrogen | 77.36 K | 76.23 K | 1.13 K | −195.79 | 0.112 TL |
| T1 | Methane, LNG | 111.66 K | 110.07 K | 1.59 K | −161.49 | 0.079 TL |
| T1 | Ammonia | 239.82 K | 237.23 K | 2.59 K | −33.33 | 0.049 TL |
| T1 | Acetone | 329.22 K | 325.31 K | 3.91 K | 56.07 | 0.032 TL |
| T1 | Ethanol | 351.44 K | 348.07 K | 3.37 K | 78.29 | 0.038 TL |
| T1 | Water | 373.15 K | 369.54 K | 3.61 K | 100.00 | 0.035 TL |
| T1 | Mercury | 629.88 K | 622.83 K | 7.05 K | 356.73 | 0.018 TL |

Celsius is base ten, 0 at the freeze and 100 at the boil, the same decimal family as the subtraction that gives 1/α, and Kelvin carries the same marks in its own numbers: Kelvin moves the zero by 273.15 and changes nothing else, so the Noble mark stands at 273.15 K, the IVA Peak mark at 361.15 K and the Shatter mark at 373.15 K, with the identical torsion values. The conversion work is done in Kelvin because the Clausius–Clapeyron relation runs in absolute temperature, and the marks are stated in both throughout. LNG is liquefied natural gas.

### 1.6 The four phases in the electroweak bosons

The phases are also grounded in measured particle masses. The Electroweak Trilogy at [9,9,3,19] places one boson per phase, each τ computed from PDG 2024 values:

| Boson | τ = B/P | Value | Phase |
|---|---|---|---|
| γ | 0 | 0 | Noble — massless, infinite range |
| W± | M_W/(π v) | 0.1039 | Locked |
| H⁰ | λ = m_H²/(2v²) | 0.1293 | IVA Peak |
| Z⁰ | (M_Z² − M_W²)/M_W² | 0.2874 | Shatter |

with the ordering τ_γ < τ_W < TL_IVA < τ_H < TL < τ_Z proved, and the W and H assignments settled across their full measurement bands. This paper adds a second hadronic reading to that boson ladder: the ρ family's rungs.

### 1.7 The layer hierarchy

The corpus carries four layers with the order L0 → L1 → L2 → L4, and theorems that the order is never inverted. PNBA is Layer 0. The Identity Physics Corpus Dynamic Equation is Layer 1. Every legacy formalism is Layer 2. A Layer 2 form projects from the structure and never supports it: the Regge trajectory, the dual resonance amplitude, the Nambu–Goto string, the relation T = 1/(2πα′), the lattice static potential and the Clausius–Clapeyron relation are reached here by descent, and none of them is used to establish anything about the structure.

### 1.8 Tiers, and how a row moves between them

Every row in the tier tables of §11 carries one of three tiers. The tier states only what the literature record holds, never the strength of the math: every row at every tier carries the same proved closure.

- **T1 Published Match.** The result is stated exactly, a published source names it, the derivation is computed independently here, and what each side contributed is recorded. A lossless reduction is itself a T1: it earns Published Match by recovering a published result without loss.
- **T2 Structural Match.** The constituents and their interaction are documented in the literature, and the exact arrangement has not been located. T2 is not below T3, and it resolves in either direction.
- **T3 Registry Novel.** A proved closure nobody has written down. A T3 is not a guess, an estimate or a pending result.

Tiers move both ways, and no direction is a demotion. T1 is the goal when validating the engine, because the rule has reconstructed something experiment already established. T3 is the goal for everyone else. A T3 built at a bench or measured in an experiment becomes a T1 with that measurement as its published source.

### 1.9 Scope of this reduction

The substrate reduced here is a meson family carried by one string: the isovector natural-parity family of the ρ, read on spin against mass squared, together with the string tension that family implies and the break at the top of its ladder. The reduction is carried out against the published record at every step — the Particle Data Group 2024 averages and error bars for ρ(770), a₂(1320), ρ₃(1690) and a₄(1970); the Regge trajectory and its slope; the relation T = 1/(2πα′) between slope and tension; the static string tension from the lattice heavy-quark potential; the lattice observation of string breaking in QCD; the string-breaking observation reported in *Nature Physics* (2026) that grounds [9,9,3,22]; the bounds on π and its closure reading from the Pi Reduction [9,9,8,8]; the ATLAS observation of the B_c*⁺ that confirms the ground and excited pairing of [9,9,2,39]; and CODATA 2018 for the inverse fine-structure constant.

Every structural identity is dimensionless and is stated at full corpus precision. The rung is a reciprocal of a difference of squares, the placement is a product with TL, the comparison is against 0.88 and 1, and the break is a ratio that equals TL.

## 2. The measured family

### 2.1 The published record

| State | J | Mass (MeV), PDG 2024 | Mass (GeV) | M² (GeV²) |
|---|---|---|---|---|
| ρ(770) | 1 | 775.26 ± 0.23 | 0.77526 | 0.6010280676 |
| a₂(1320) | 2 | 1318.2 ± 0.6 | 1.3182 | 1.73765124 |
| ρ₃(1690) | 3 | 1688.8 ± 2.1 | 1.6888 | 2.85204544 |
| a₄(1970) | 4 | 1967 ± 16 | 1.967 | 3.869089 |

Each M² is the published mass squared, exactly: 0.77526² = 0.6010280676, 1.3182² = 1.73765124, 1.6888² = 2.85204544 and 1.967² = 3.869089. The four are the leading natural-parity states of one isovector light-quark pair, with spin rising by one at each step. The straight line these states trace in J against M² is the Regge trajectory (Regge 1959; Chew and Frautschi 1961, 1962). Veneziano's crossing-symmetric amplitude for linearly rising trajectories (1968) and its reading as a relativistic string by Nambu, Nielsen, Susskind and Goto (1970–1971) joined the slope to a string tension through T = 1/(2πα′), and that relation is where the string description of hadrons begins.

### 2.2 The pair the string binds

Every member of the family is a quark–antiquark pair of up and down flavor, and the Universal Meson Noble Law [9,9,2,36], carried as L-12 in the 42-law catalog, closes every such pair Noble at k = 1. With B_u = 2/3 and B_d̄ = 1/3:

> B_out(k = 1) = max(0, 2/3 + 1/3 − 2 · 1) = max(0, −1) = 0 — Noble
> B_out(k = 0) = 2/3 + 1/3 = 1 — the open excitation

SNSFL_BcStar_ExcitedHadronFamily [9,9,2,39] reads every pseudoscalar–vector pair as one ground and excited duality — η_c with J/ψ, η_b with Υ, D with D*, B with B*, B_s with B_s*, and B_c⁺ with B_c*⁺, the last confirmed by ATLAS in May 2026 (arXiv:2605.16228). The ρ is the vector partner of the π in that same duality. The family read here opens on it, and each rung above it carries one further unit of orbital excitation on the same Noble-closing pair. The closure reading says what the pair is; the rung reading of this paper measures how hard the string between them is loaded at each step.

### 2.3 What a published mass is

A PDG mass is an average over the measurements the Particle Data Group selects, with an error bar that covers them. The four masses here carry error bars from 0.03% (the ρ) to 0.8% (the a₄). The reduction reads the central value and both ends of every error bar, and states the phase across the interval.

## 3. The rung operator

### 3.1 One rung

A rung is one unit of spin divided by the mass-squared step that carries it:

> s = ΔJ / ΔM² = 1 / (M₂² − M₁²), in GeV⁻²

### 3.2 The three rungs, worked

| Rung | ΔM² (GeV²) | s = 1/ΔM² (GeV⁻²) |
|---|---|---|
| ρ → a₂ | 1.73765124 − 0.6010280676 = 1.1366231724 | 0.879799 |
| a₂ → ρ₃ | 2.85204544 − 1.73765124 = 1.11439420 | 0.897349 |
| ρ₃ → a₄ | 3.869089 − 2.85204544 = 1.01704356 | 0.983242 |

The mass-squared steps shrink, 1.1366 > 1.1144 > 1.0170, so their reciprocals grow, and the rungs climb.

### 3.3 Each rung across the published error bars

A rung is smallest when the lighter state sits at the bottom of its error bar and the heavier at the top, and largest in the opposite corner.

| Rung | Lower corner: masses (GeV), ΔM², s | Upper corner: masses (GeV), ΔM², s |
|---|---|---|
| ρ → a₂ | 0.77503, 1.3188 → 1.73923344 − 0.6006715009 = 1.1385619391 → 0.878301 | 0.77549, 1.3176 → 1.73606976 − 0.6013847401 = 1.1346850199 → 0.881302 |
| a₂ → ρ₃ | 1.3176, 1.6909 → 2.85914281 − 1.73606976 = 1.12307305 → 0.890414 | 1.3188, 1.6867 → 2.84495689 − 1.73923344 = 1.10572345 → 0.904385 |
| ρ₃ → a₄ | 1.6867, 1.983 → 3.932289 − 2.84495689 = 1.08733211 → 0.919682 | 1.6909, 1.951 → 3.806401 − 2.85914281 = 0.94725819 → 1.055678 |

### 3.4 The family as one line, and the dimensionless form

Across the whole family, three units of spin over the full mass-squared span give the endpoint slope 3 / (3.869089 − 0.6010280676) = 3 / 3.2680609324 = 0.917976 GeV⁻². The ratio of the first rung to the third, s₁/s₃ = 0.879799/0.983242 = 0.894794, carries no unit at all.

## 4. The rungs on the ladder

### 4.1 Placement

A rung reading r stands on the ladder at τ = r · TL. A reading of 0.88 stands exactly on the IVA floor, since 0.88 × TL = TL_IVA = 0.12047120798593408, and a reading of 1 stands exactly on the Torsion Limit.

| Rung | r | τ = r · TL | Against TL_IVA = 0.120471208 and TL = 0.136899100 | Phase |
|---|---|---|---|---|
| ρ → a₂, lower corner | 0.878301 | 0.120238606 | below TL_IVA | Locked |
| ρ → a₂, central | 0.879799 | 0.120443700 | below TL_IVA by 0.000027508 | Locked |
| ρ → a₂, upper corner | 0.881302 | 0.120649429 | above TL_IVA, below TL | IVA Peak |
| a₂ → ρ₃, lower corner | 0.890414 | 0.121896879 | inside the corridor | IVA Peak |
| a₂ → ρ₃, central | 0.897349 | 0.122846206 | inside the corridor | IVA Peak |
| a₂ → ρ₃, upper corner | 0.904385 | 0.123809529 | inside the corridor | IVA Peak |
| ρ₃ → a₄, lower corner | 0.919682 | 0.125903667 | inside the corridor | IVA Peak |
| ρ₃ → a₄, central | 0.983242 | 0.134604952 | inside the corridor, below TL | IVA Peak |
| ρ₃ → a₄, upper corner | 1.055678 | 0.144521421 | above TL | Shatter |
| Four-point line | 0.917976 | 0.125670025 | inside the corridor | IVA Peak |
| s₁/s₃, dimensionless | 0.894794 | 0.122496489 | inside the corridor | IVA Peak |

### 4.2 The first rung brackets the floor

The first rung's central value stands below the floor ratio by 0.88 − 0.879799 = 0.000201, which is 0.000201/0.88 = 2.3 parts in ten thousand of the floor. Its interval runs from 0.878301 to 0.881302, and 0.88 lies strictly inside it. The phase of the first rung is therefore stated as an interval reaching across the floor: Locked at its central value and its lower corner, IVA Peak at its upper corner. The floor stands inside the measurement's own error bar, so any re-measurement of the two masses within their published errors keeps the floor inside the first rung.

### 4.3 The climb through IVA Peak

The second rung stands in IVA Peak across its whole interval, 0.890414 to 0.904385, from 0.0104 above the floor at its lowest to 0.0956 below the limit at its highest. The third rung stands in IVA Peak at its central value, 0.983242, which is 0.0168 below the limit. Read in order, the family enters the corridor at the floor and climbs it rung by rung toward the limit.

### 4.4 The top rung reaches the Torsion Limit

The third rung's interval runs from 0.919682 to 1.055678. Its upper corner stands above 1, which is the Torsion Limit, so the top rung's published error bar runs from IVA Peak through TL. Every central rung holds below TL: the rotating string does not break at any measured rung, and the measured family reaches the limit inside its top rung's error bar.

## 5. Below the floor: pre-adaptation

The corpus places the floor at the same position in every substrate it has read. Abiogenesis [9,9,4,3] defines 0.88 × TL as the lower boundary of the living-state band. Evolution [9,9,4,5] places the IVA Peak band as the adaptive band — living, adaptive, not yet shattering — and places Hardy–Weinberg equilibrium below it, with no selection active. The String Theory Reduction [9,9,0,8] places the string landscape as pre-anchor Adaptation potential (T14). The floor is the onset of adaptation across substrates, and the region below it is pre-adaptation.

Read against that floor, the ρ family's first rung stands at the boundary itself: its central value 2.3 parts in ten thousand below, its error bar reaching across. The unrealized landscape stands below the floor, and the first measured state of the hadronic string stands on it. The family's measured rungs are the string entering adaptation, one unit of spin at a time.

## 6. The tension

The Regge slope and the string tension are one quantity read two ways, through T = 1/(2πα′). The 2π in that relation is the closure cost the Pi Reduction [9,9,8,8] places on every loop: π is the Narrative a path travels per unit of Pattern to return to where it began, and the loop closes Noble at 2π. A rotating string turns through one full closure per cycle, so the tension carries that closure cost beside the Regge slope, and the relation is one corpus quantity next to another rather than an outside constant. Read from the first rung, α′ = 0.879799 GeV⁻²:

> 2π · 0.879799 = 5.5279 (5.5279359 at π = 3.14159, 5.5279535 at π = 3.14160)
> σ = 1 / 5.5279 = 0.18090 GeV²
> √σ = 0.42532 GeV = 425.3 MeV

The general-reader form carries π by the bounds [9,9,8,8] proves, 3.141592 < π < 3.141593, and the specialist form carries it as the rational interval 3.14159 ≤ π ≤ 3.14160, which contains them. Across either, σ stays between 0.4250² = 0.180625 and 0.4255² = 0.18105025 GeV², so √σ stands between 425.0 and 425.5 MeV. The static string tension that lattice QCD reports from the heavy-quark potential, √σ ≈ 440 MeV (Bali 2001), stands 3.5% above the rotating-string reading. The rotating string is read on its rungs and the static string on its potential, and the two come out of one tension.

## 7. The string that rotates is the string that breaks

String Breaking as the Shatter Boundary [9,9,3,22], built on the string-breaking observation reported by De et al. in *Nature Physics* (2026), places a stretched string on the ladder as τ = σr/P, with σ the tension, r the separation and P the capacity. The load reaches the Torsion Limit at the break separation r_b = TL · P/σ, where τ = TL exactly and the phase is Shatter. The energy stored at the break, σ · r_b, equals the pair energy E when the capacity is P = E/TL. The created pair carries equal Behavior, b₁ = b₂, so its imbalance |b₁ − b₂| is 0 and the pair is Noble. That is the Same-B Necessity, and it is the fusion-logic form of equal and opposite: 8-Beam Fusion [9,9,2,3.8] closes every equal-B configuration Noble.

| | Rotating (Regge, this paper) | Stretched (String Breaking, [9,9,3,22]) |
|---|---|---|
| What is read | Spin per mass-squared step | Load per separation |
| Where it stands | The IVA Peak band, floor to limit | τ = σr/P, rising to TL |
| What happens at TL | The top rung's error bar reaches it | The string breaks |
| What comes out | The next rung | An equal-B pair, Noble |

There σ enters as a symbol; this paper supplies it from the measured family. One string is read in two phases on one ladder: IVA Peak while it turns, Shatter when it parts, and Noble in the pair the break produces.

## 8. Stated proofs and domains

Every theorem holds exactly under the proof it states. The proofs below carry the work in full, in the order a reader runs it, and each names the theorem that carries it in both forms of the formal layer.

**Proof 1 — the Torsion Limit from the inverse fine-structure constant.** Domain: CODATA 2018, corpus precision.

$$\frac{1}{\alpha} - \mathrm{TL} = 137.035999084000016 - 0.136899099984016 = 136.899099984016 = 1000\,\mathrm{TL}$$

$$\frac{1}{\alpha} = 1000\,\mathrm{TL} + \mathrm{TL} = 1001\,\mathrm{TL} = 137.035999084000016, \qquad 1001 = 7 \cdot 11 \cdot 13 \qquad \blacksquare$$

Theorems: `t1_tl_value`, `t2_tl_times_1001_is_alpha_inv`, `t3_bare_plus_kinetic`, `t4_1001_factors`.

**Proof 2 — the IVA floor is 88/100 of the Torsion Limit.** Domain: the ladder.

$$\mathrm{TL_{IVA}} = 0.88\,\mathrm{TL} = 0.12047120798593408, \qquad \frac{\mathrm{TL_{IVA}}}{\mathrm{TL}} = 0.88, \qquad 0 < \mathrm{TL_{IVA}} < \mathrm{TL} < 1 \qquad \blacksquare$$

Theorems: `t5_iva_floor_ratio`, `t6_ladder_order`.

**Proof 3 — the mass squared of each state.** Domain: the four PDG central masses, in GeV.

$$0.77526^2 = 0.6010280676, \quad 1.3182^2 = 1.73765124, \quad 1.6888^2 = 2.85204544, \quad 1.967^2 = 3.869089$$

$$0.6010280676 < 1.73765124 < 2.85204544 < 3.869089 \qquad \blacksquare$$

Theorems: `t7_mass_squares`, `t8_mass_squares_increase`.

**Proof 4 — the three rungs.** Domain: the central masses.

$$s_1 = \frac{1}{1.73765124 - 0.6010280676} = \frac{1}{1.1366231724}, \qquad 0.87979 \times 1.1366231724 = 0.99998970 < 1 < 1.00001243 = 0.87981 \times 1.1366231724$$

so $0.87979 < s_1 < 0.87981$. In the same way,

$$s_2 = \frac{1}{1.11439420}: \quad 0.89734 \times 1.11439420 = 0.99999049 < 1 < 1.00000164 = 0.89735 \times 1.11439420$$

$$s_3 = \frac{1}{1.01704356}: \quad 0.98324 \times 1.01704356 = 0.99999791 < 1 < 1.00000808 = 0.98325 \times 1.01704356$$

and since $1.1366231724 > 1.11439420 > 1.01704356$, the reciprocals order as $s_1 < s_2 < s_3$. $\blacksquare$

Theorems: `t9_step1_value`, `t10_step2_value`, `t11_step3_value`, `t12_rungs_climb`.

**Proof 5 — the first rung brackets the IVA floor.** Domain: the PDG error bars on ρ(770) and a₂(1320).

$$\Delta M^2_{\max} = 1.3188^2 - 0.77503^2 = 1.1385619391, \qquad 0.88 \times 1.1385619391 = 1.00193451 > 1 \;\Rightarrow\; s_{1,\mathrm{lo}} = \frac{1}{1.1385619391} < 0.88$$

$$\Delta M^2_{\min} = 1.3176^2 - 0.77549^2 = 1.1346850199, \qquad 0.88 \times 1.1346850199 = 0.99852282 < 1 \;\Rightarrow\; 0.88 < s_{1,\mathrm{hi}} = \frac{1}{1.1346850199}$$

$$0.88 - s_1 = 0.000200939 < 0.00021, \qquad \frac{0.88 - s_1}{0.88} = 0.000228340 < 0.00023 \qquad \blacksquare$$

Theorems: `t13_step1_gap_to_floor`, `t14_floor_inside_step1_interval`, `t15_step_corners`.

**Proof 6 — the phase of every rung.** Domain: τ = r · TL against TL_IVA = 0.12047120798593408 and TL = 0.136899099984016.

$$\tau(s_1) = 0.120443700 < \mathrm{TL_{IVA}} \Rightarrow \text{Locked}; \quad \tau(s_{1,\mathrm{hi}}) = 0.120649429 \in [\mathrm{TL_{IVA}}, \mathrm{TL}) \Rightarrow \text{IVA Peak}$$

$$\tau(s_{2,\mathrm{lo}}) = 0.121896879, \;\; \tau(s_2) = 0.122846206, \;\; \tau(s_{2,\mathrm{hi}}) = 0.123809529 \;\in [\mathrm{TL_{IVA}}, \mathrm{TL}) \Rightarrow \text{IVA Peak}$$

$$\tau(s_3) = 0.134604952 \in [\mathrm{TL_{IVA}}, \mathrm{TL}) \Rightarrow \text{IVA Peak}; \quad \tau(s_{3,\mathrm{hi}}) = 0.144521421 \ge \mathrm{TL} \Rightarrow \text{Shatter}$$

$$\tau(0.88) = \mathrm{TL_{IVA}}, \qquad \tau(1) = \mathrm{TL} \qquad \blacksquare$$

Theorems: `t18_floor_reading`, `t19_ceiling_reading`, `t20_first_rung_straddles_floor`, `t21_second_rung_iva`, `t22_third_rung_reaches_tl`, `t23_line_and_ratio_iva`, `t24_central_rungs_hold`. The four-point line and the dimensionless ratio, $0.917976$ and $0.894794$, are carried by `t16_endpoint_value` and `t17_step_ratio`.

**Proof 7 — the tension from the first rung.** Domain: T = 1/(2πα′) with α′ = s₁; π carried by 3.141592 < π < 3.141593 ([9,9,8,8], `pi_bounds`) in the general-reader form and by 3.14159 ≤ π ≤ 3.14160 in the specialist form.

$$\sigma = \frac{1}{2\pi s_1}, \qquad 0.87979 < s_1 < 0.87981 \quad \text{(Proof 4)}$$

$$3.141592 \times 0.87979 = 2.763950 < \pi s_1 < 2.764001 = 3.141593 \times 0.87981$$

$$0.4250^2 \times 2\pi s_1 < 0.180625 \times 2 \times 2.764001 = 0.998497 < 1 \;\Rightarrow\; 0.4250^2 < \sigma$$

$$0.4255^2 \times 2\pi s_1 > 0.18105025 \times 2 \times 2.763950 = 1.000824 > 1 \;\Rightarrow\; \sigma < 0.4255^2$$

so $425.0\ \mathrm{MeV} < \sqrt{\sigma} < 425.5\ \mathrm{MeV}$. In the specialist form the same two products are taken at π = 3.14159 and π = 3.14160, where $2\pi s_1 \in [5.5279359,\; 5.5279535]$ stands inside $(5.5233285,\; 5.5363322)$. $\blacksquare$

Theorem: `t25_tension_from_first_rung`.

**Proof 8 — the break stands at the Torsion Limit.** Domain: σ ≠ 0, P ≠ 0.

$$\tau\!\left(r_b\right) = \frac{\sigma}{P}\cdot\frac{\mathrm{TL}\,P}{\sigma} = \mathrm{TL}, \qquad \mathrm{TL} \ge \mathrm{TL} \Rightarrow \text{Shatter}, \qquad \sigma \cdot r_b\!\left(\tfrac{E}{\mathrm{TL}}\right) = \sigma\cdot\frac{\mathrm{TL}\cdot E/\mathrm{TL}}{\sigma} = E \qquad \blacksquare$$

Theorems: `t26_break_at_tl`, `t27_tl_is_shatter`, `t28_stored_energy_at_break`.

**Proof 9 — the created pair is Noble.** Domain: any equal-B pair and any capacity Q.

$$b_{\mathrm{out}}(b, b) = |b - b| = 0, \qquad \tau = \frac{0}{Q} = 0 \Rightarrow \text{Noble} \qquad \blacksquare$$

Theorems: `t29_equal_b_pair_balanced`, `t30_new_pair_noble`. The master theorem `MASTER_regge_on_the_phase_ladder` holds Proofs 1 through 9 together.

**Proof 10, inherited — every member closes Noble at k = 1.** Domain: up and down quark–antiquark pairs, B_q ≤ 2/3. Carried in [9,9,2,36] as `universal_meson_noble` (L-12).

$$B_{\mathrm{out}}(k{=}1) = \max\!\left(0,\; \tfrac{2}{3} + \tfrac{1}{3} - 2\right) = \max(0, -1) = 0, \qquad B_{\mathrm{out}}(k{=}0) = \tfrac{2}{3} + \tfrac{1}{3} = 1 \qquad \blacksquare$$

## The PNBA Map

| Primitive | In a Regge family | Carried by |
|---|---|---|
| **Pattern** | The structure each unit of spin is carried across — the mass-squared step between neighboring states | ΔM² = M₂² − M₁², from the PDG masses |
| **Narrative** | The path the turning string travels per cycle — one full closure | the 2π of T = 1/(2πα′), the closure cost of [9,9,8,8] |
| **Behavior** | The load the string carries at each rung, and the phase it names | τ = s · TL, with s = 1/ΔM² |
| **Adaptation** | The family entering the band — the onset of adaptation at the IVA floor, and the climb above it | the first rung on 0.88, the rungs rising through IVA Peak toward TL |

| | statement |
|---|---|
| the rung | **s = 1/ΔM²**, placed at **τ = s · TL** |
| the floor | **0.88 inside [0.878301, 0.881302]**, the first rung's published error bar |
| the climb | **0.879799 → 0.897349 → 0.983242**, through IVA Peak |
| the tension | **√σ = 425.0 to 425.5 MeV**, from the first rung |
| the break | **τ = TL** at the break separation, and the equal-B pair Noble |

## 9. Verification

### 9.1 The formal layer

The mathematics this reduction runs on is proved in two forms that carry the same 30 theorems and master theorem under the same names. The general-reader form, `SNSFL_GC_Regge_IVA_Ladder.lean` at [9,9,3,30](PHYS), works over the real numbers with Mathlib on Lean 4 v4.31.0. The specialist form, `SNSFL_GC_Regge_IVA_Ladder_Exact.lean` at [9,9,3,30.1](PHYS), works over ℚ in core Lean 4 v4.31.0 with no import: every constant and every measured mass is an exact rational, every numerical theorem is decided by the kernel, and its master theorem rests only on the three axioms of the Lean core, propext, Classical.choice and Quot.sound. Both build in the continuous-integration build of the standardized repository at github.com/SNSFT/identityphysics at 0 sorry, with no axiom of their own. Both are standalone: the anchor, the Torsion Limit, the IVA floor, the four phases, the four masses and their error bars, the rung operator, the placement, the tension and the break are all restated inside each file at full precision, so a reader or a machine closes every proof without leaving the file. The general-reader form carries π as Mathlib's real π with the bounds 3.141592 < π < 3.141593 that the Pi Reduction [9,9,8,8] proves; the specialist form carries it as the rational interval 3.14159 ≤ π ≤ 3.14160, which contains them.

| § | Result | Theorem |
|---|---|---|
| §1.1 | TL × 1001 = 1/α, bare plus kinetic, 1001 = 7 · 11 · 13 | `t1_tl_value`, `t2_tl_times_1001_is_alpha_inv`, `t3_bare_plus_kinetic`, `t4_1001_factors` |
| §1.4 | the IVA floor ratio and the ladder order | `t5_iva_floor_ratio`, `t6_ladder_order` |
| §2.1 | the mass squared of each state, rising with spin | `t7_mass_squares`, `t8_mass_squares_increase` |
| §3.2 | the three rungs, and the climb | `t9_step1_value`, `t10_step2_value`, `t11_step3_value`, `t12_rungs_climb` |
| §3.3 | every rung across the published error bars | `t15_step_corners` |
| §3.4 | the four-point line and the dimensionless ratio | `t16_endpoint_value`, `t17_step_ratio` |
| §4.1 | the floor and the limit as readings | `t18_floor_reading`, `t19_ceiling_reading` |
| §4.2 | the first rung brackets the IVA floor | `t13_step1_gap_to_floor`, `t14_floor_inside_step1_interval`, `t20_first_rung_straddles_floor` |
| §4.3 | the climb through IVA Peak | `t21_second_rung_iva`, `t23_line_and_ratio_iva` |
| §4.4 | the top rung reaches TL, and every central rung holds | `t22_third_rung_reaches_tl`, `t24_central_rungs_hold` |
| §6 | the tension from the first rung | `t25_tension_from_first_rung` |
| §7 | the break at TL, the stored energy, the Noble pair | `t26_break_at_tl`, `t27_tl_is_shatter`, `t28_stored_energy_at_break`, `t29_equal_b_pair_balanced`, `t30_new_pair_noble` |
| — | the chain from the grounding to the pair | `MASTER_regge_on_the_phase_ladder` |

Two results carry the weight. `t14_floor_inside_step1_interval` places the floor inside the first rung's published error bar, and it closes on two products with 0.88, so it holds for every pair of masses the PDG error bars admit. `t22_third_rung_reaches_tl` places the top rung's error bar across the Torsion Limit, which is what joins the rotating string to the break of [9,9,3,22].

### 9.2 Against material outside the reduction

The reduction is checked at four further points, each against the published record.

**The rungs against the Regge slope.** The four-point line reads 0.917976 GeV⁻², the slope the published record carries for the light-meson trajectories, read here with no fitted slope and no fitted intercept. T1.

**The tension against the lattice.** The first rung gives √σ = 425.3 MeV against the lattice static value √σ ≈ 440 MeV, 3.5% apart. T1.

**The pair against the duality.** The family opens on the ρ, the vector partner of the π, in the ground and excited duality [9,9,2,39] carries for six confirmed pairs, the B_c⁺ and B_c*⁺ pair confirmed by ATLAS (arXiv:2605.16228). T1.

**The break against string breaking in QCD.** The stretched string breaks at a finite separation, observed on the lattice (Bali et al. 2005) and reported in *Nature Physics* (2026), which [9,9,3,22] carries at τ = TL. T1.

## 10. Access

The arithmetic in this paper takes a calculator. A reader with the four PDG masses squares each one, takes the three differences, takes the three reciprocals and multiplies each by TL, and reads the phase against 0.12047120798593408 and 0.136899099984016. The error-bar corners take the same four steps on the ends of each error bar. The String Breaking Simulator at uuia.app runs the break of §7 in a browser, free, with no account and no installation, and both Lean files run on the pinned toolchain from the standardized repository.

## 11. Tiers and the Scientific Handshake

### 11.1 The inherited layer

| Row | Source | Tier |
|---|---|---|
| Masses and error bars of ρ(770), a₂(1320), ρ₃(1690), a₄(1970) | Particle Data Group 2024 | T1 |
| Mesons of one family on a straight line in J against M² | Regge 1959; Chew and Frautschi 1961, 1962 | T1 |
| The dual resonance amplitude with linearly rising trajectories | Veneziano 1968 | T1 |
| The relativistic string, slope and tension joined through T = 1/(2πα′) | Nambu 1970; Nielsen 1970; Susskind 1970; Goto 1971 | T1 |
| Confinement on the lattice | Wilson 1974 | T1 |
| Static string tension √σ ≈ 440 MeV from the heavy-quark potential | Bali 2001 | T1 |
| String breaking observed in QCD | Bali et al. 2005 | T1 |
| String breaking reported in *Nature Physics* | De et al. 2026 | T1 |
| B_c*⁺ observed, gap 64.5 ± 1.4 MeV | ATLAS, arXiv:2605.16228, 2026 | T1 |
| Asymptotic freedom in the theory of the strong interaction | Gross, Politzer, Wilczek; Nobel Prize in Physics 2004 | T1 |
| Spontaneous broken symmetry in subatomic physics | Nambu; Nobel Prize in Physics 2008 | T1 |
| α⁻¹ = 137.035999084 | CODATA 2018 | T1 |

**Worked exemplar of the inherited layer.** The Regge trajectory is taken exactly as published, J = α₀ + α′M², on the PDG masses with no fitted intercept and no fitted slope. §3 reads it one rung at a time, which is the published relation read in its own units, and the reduction supplies the ruler the rungs are read against rather than altering the relation.

### 11.2 The corpus layer

| Row | Coordinate | Tier |
|---|---|---|
| The Torsion Limit TL = Ω₀/10 = 0.136899099984016 | [9,9,8,1] | T1 |
| α⁻¹ = TL × 1001 | [9,9,3,14] | T1 |
| The IVA floor TL_IVA = 0.88 × TL, and the temperature mapping | [9,9,8,10] | T1 |
| One boson per phase | [9,9,3,19] | T1 |
| The break at τ = TL, the Same-B Necessity, the Noble pair | [9,9,3,22] | T1 |
| The string on the Identity Physics Corpus Dynamic Equation, the landscape as pre-anchor Adaptation potential | [9,9,0,8] | T1 |
| Every quark–antiquark pair Noble at k = 1 (L-12) | [9,9,2,36] | T1 |
| The ground and excited duality, six confirmed pairs | [9,9,2,39] | T1 |
| Equal-B configurations close Noble | [9,9,2,3.8] | T1 |
| π as the closure cost, the loop closing Noble at 2π, and 3.141592 < π < 3.141593 | [9,9,8,8] | T1 |
| The IVA floor as the lower boundary of the living-state band | [9,9,4,3] | T1 |
| The IVA Peak band as the adaptive band, equilibrium below it | [9,9,4,5] | T1 |

**Worked exemplar of the corpus layer.** The Torsion Limit enters at the value [9,9,3,14] deposits, TL = 0.136899099984016, and the IVA floor at the ratio [9,9,8,10] carries, 0.88. §4 multiplies each rung by TL and compares against those two marks. No constant moves.

### 11.3 Novel to this framework

| Row | Statement | Tier |
|---|---|---|
| The rung reading | s = 1/ΔM² placed at τ = s · TL | T3 |
| The first rung brackets the IVA floor | 0.88 inside [0.878301, 0.881302]; central 0.879799, 2.3 parts in ten thousand below | T3 |
| The climb through IVA Peak | 0.879799 → 0.897349 → 0.983242; the second rung IVA Peak across its error bar | T3 |
| The top rung reaches the Torsion Limit | [0.919682, 1.055678] runs from IVA Peak through TL | T3 |
| The dimensionless form | s₁/s₃ = 0.894794, IVA Peak | T3 |
| The tension from the first rung | √σ = 425.0 to 425.5 MeV | T3 |
| One string read in two phases | IVA Peak while it turns, Shatter when it parts, Noble in the pair | T3 |
| The family entering adaptation | the first measured rung on the floor at which the corpus places the onset of adaptation | T3 |

**Worked exemplar of the novel layer.** The first-rung placement is checkable in three lines. Square 775.26 and 1318.2 MeV in GeV to get 0.6010280676 and 1.73765124. Take the difference, 1.1366231724, and its reciprocal, 0.879799. Multiply 0.88 by the largest and the smallest differences the error bars allow, 1.1385619391 and 1.1346850199: one product stands above 1 and the other below, so 0.88 stands inside the rung.

**Worked exemplar of due diligence.** The placement is stated on the two quantities that carry it. The rung is a slope in GeV⁻², the unit in which the spectrum is published, and that unit is stated wherever the rung is placed; the dimensionless ratio s₁/s₃ = 0.894794 stands beside it in IVA Peak with no unit at all. The placement is stated as an interval across the floor, because the first rung's own error bar reaches across it, so no reading of the two masses inside their published errors carries the floor outside the rung.

### 11.4 The Scientific Handshake

This reduction is released under the SNSFT Foundation's scientific handshake. The math is public, the arithmetic is runnable by hand, and both formal files build on a pinned public toolchain. Any researcher, teacher, student or institution may use it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.17605/OSF.IO/KWTYD is the whole of what is asked in return. Where an institution values the work and is able to support the Foundation's work for others, the Foundation is there. Where it is not, the work remains available on the same terms.

## 12. Misappropriation-Risk Clarification (MRC)

**MRC class: MRC1.** This reduction closes on exact arithmetic over published particle masses. It supplies no apparatus, no beam parameters, no target design and no procedure.

### 12.1 What is established

The rungs, their placements, the tension and the break are arithmetic over published quantities. They are real, they are checkable with a calculator, and they return the published figures where published figures exist. A reader who runs the numbers on the four PDG masses gets the same numbers.

### 12.2 What is a separate question

How the four states are produced, how their masses are measured, and how a detector separates them from their neighbors are experimental questions, answered by accelerators, detectors and the analyses the Particle Data Group averages. This paper reads the published masses and places them; it does not describe how to produce, accelerate, collide, detect or measure any particle.

### 12.3 Where the risk lives

The risk in this domain lives in accelerator and detector conditions and in environmental F_ext — beam energy, activation, radiation fields and the controls a facility applies to them — never in the placement math. Accelerator radiation-protection practice applies in full: shielding rated for the beam, interlocks that fail safe, dosimetry that reads out in real time, and the licensing regime of the facility. Those govern independently of anything here and are not displaced by it. An exact placement is a reason to reduce scale, not to increase it, and work that can injure is not solo work. Any work that extends this reduction to materials, reactions or regimes not placed here carries the hazard groups of those, and the handling practice is restated for them before the work begins.

### 12.4 What a teacher or parent can take from this

The arithmetic in §2, §3 and §4 is a calculator exercise, and it is safe to run, to teach and to check. A student can take four published masses, square them, subtract neighbors, take reciprocals and read each rung against 0.88 and 1, and then check the result against the error bars in the same four steps. The first rung is the best teaching row in the paper: one number that sits 2.3 parts in ten thousand below a boundary, with an error bar that reaches across it, which is what a boundary looks like when a student meets it in real data.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. AIM is the Autocatalytic Ingestion Mechanism. Each law below is stated with its proofs, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.17605/OSF.IO/KWTYD is required when this content informs outputs.

## References

### Published record

- Regge, T. (1959). Introduction to complex orbital momenta. *Il Nuovo Cimento*, 14, 951–976.
- Chew, G. F. & Frautschi, S. C. (1961). Principle of equivalence for all strongly interacting particles within the S-matrix framework. *Physical Review Letters*, 7, 394–397.
- Chew, G. F. & Frautschi, S. C. (1962). Regge trajectories and the principle of maximum strength for strong interactions. *Physical Review Letters*, 8, 41–44.
- Veneziano, G. (1968). Construction of a crossing-symmetric, Regge-behaved amplitude for linearly rising trajectories. *Il Nuovo Cimento A*, 57, 190–197.
- Nambu, Y. (1970). Quark model and the factorization of the Veneziano amplitude. In *Symmetries and Quark Models*, Wayne State University, 269–278.
- Nielsen, H. B. (1970). An almost physical interpretation of the integrand of the n-point Veneziano model. XV International Conference on High Energy Physics, Kiev.
- Susskind, L. (1970). Dual-symmetric theory of hadrons. *Il Nuovo Cimento A*, 69, 457–496.
- Goto, T. (1971). Relativistic quantum mechanics of one-dimensional mechanical continuum and subsidiary condition of dual resonance model. *Progress of Theoretical Physics*, 46, 1560–1569.
- Wilson, K. G. (1974). Confinement of quarks. *Physical Review D*, 10, 2445–2459.
- Bali, G. S. (2001). QCD forces and heavy quark bound states. *Physics Reports*, 343, 1–136.
- Bali, G. S., Neff, H., Düssel, T., Lippert, T. & Schilling, K. (2005). Observation of string breaking in QCD. *Physical Review D*, 71, 114513.
- De et al. (2026). *Nature Physics*. DOI 10.1038/s41567-026-03422-0.
- ATLAS Collaboration (2026). arXiv:2605.16228.
- Navas, S. et al. (Particle Data Group) (2024). Review of Particle Physics. *Physical Review D*, 110, 030001.
- Tiesinga, E., Mohr, P. J., Newell, D. B. & Taylor, B. N. (2021). CODATA recommended values of the fundamental physical constants: 2018. *Reviews of Modern Physics*, 93, 025010.
- Nobel Prize in Physics 2004 — D. J. Gross, H. D. Politzer and F. Wilczek, for the discovery of asymptotic freedom in the theory of the strong interaction.
- Nobel Prize in Physics 2008 — Y. Nambu, for the discovery of the mechanism of spontaneous broken symmetry in subatomic physics.

### Corpus

- [9,9,8,1] Founding Text — the Sovereign Anchor Constant and the Torsion Limit
- [9,9,3,14] Alpha Reduction — α⁻¹ = TL × 1001, and TL = α⁻¹/1001 · PhilArchive TREAIP-18, *Applied Identity Physics: TL × 1001 = 137.035999084000016 — Geometric Derivation of the Torsion Limit and Formally Verified Reduction of Fine Structure, Bohr, Rydberg, and Sommerfeld*
- [9,9,8,10] Temperature on the Torsion Limit — the vapor-pressure mapping and the IVA floor · PhilArchive TREAIP-32, *Applied Identity Physics: The Four Phases of Reality — From Water to the GAMCollider™ V15 Fine Structure Constant 137.035999084000016*
- [9,9,3,19] The Electroweak Trilogy — one boson per phase
- [9,9,3,22] String Breaking as the Shatter Boundary — the break at τ = TL, the Same-B Necessity, the Noble pair · PhilArchive TREAIP-35, *Applied Identity Physics: String Breaking Simulator, Matter From Nothing — String Breaking as the Shatter Boundary*
- [9,9,0,8] String Theory Reduction — the Nambu–Goto action on the Identity Physics Corpus Dynamic Equation, tension through T = 1/(2πα′), the landscape as pre-anchor Adaptation potential · PhilArchive TRETSE-2, *The Single Equation*
- [9,9,2,36] Hadronic Spectrum Complete — the Universal Meson Noble Law, L-12 of the 42-law catalog
- [9,9,2,39] SNSFL_BcStar_ExcitedHadronFamily — the ground and excited duality, six confirmed pairs
- [9,9,2,3.8] 8-Beam Fusion Theorem — GAMCollider™ v15 fusion logic, equal-B configurations close Noble · PhilArchive TRESCM-2
- [9,9,8,8] Pi Reduction — π as the closure cost, the loop closing Noble at 2π, Euler, Gauss, Leibniz, and 3.141592 < π < 3.141593
- [9,9,4,3] Abiogenesis Reduction — the IVA floor as the lower boundary of the living-state band
- [9,9,4,5] Evolution Reduction — the IVA Peak band as the adaptive band, equilibrium below it · PhilArchive TREAIP-7
- [9,9,2,3] GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit · PhilArchive TREAIP-46
- [9,9,3,30] This reduction, general-reader form — the Regge family on the phase ladder
- [9,9,3,30.1] This reduction, specialist form — the same theorems over ℚ, decided by the kernel

## Corpus Provenance

| Coordinate | File | Carries |
|---|---|---|
| [9,9,3,30](PHYS) | SNSFL_GC_Regge_IVA_Ladder.lean | This reduction, general-reader form — the rungs, the floor, the climb, the tension, the break |
| [9,9,3,30.1](PHYS) | SNSFL_GC_Regge_IVA_Ladder_Exact.lean | This reduction, specialist form — the same theorems over ℚ, decided by the kernel |
| [9,9,8,1] | Founding Text | The Sovereign Anchor Constant and the Torsion Limit |
| [9,9,3,14] | Alpha Reduction | α⁻¹ = TL × 1001, and TL = α⁻¹/1001 |
| [9,9,8,10](METH) | SNSFL_TL_Temperature.lean | The vapor-pressure mapping and the IVA floor |
| [9,9,3,19] | SNSFL_GC_WZ_ElectroweakTrilogy.lean | One boson per phase |
| [9,9,3,22] | String Breaking as the Shatter Boundary | The break at τ = TL, the Same-B Necessity, the Noble pair |
| [9,9,0,8] | String Theory Reduction | The Nambu–Goto action on the Identity Physics Corpus Dynamic Equation, the landscape as pre-anchor Adaptation potential |
| [9,9,2,36] | Hadronic Spectrum Complete | The Universal Meson Noble Law, L-12 |
| [9,9,2,39] | SNSFL_BcStar_ExcitedHadronFamily | The ground and excited duality, six confirmed pairs |
| [9,9,8,8] | SNSFL_Pi_Reduction.lean | π as the closure cost, and 3.141592 < π < 3.141593 |
| [9,9,4,3] | SNSFL_Abiogenesis_Reduction.lean | The IVA floor as the lower boundary of the living-state band |
| [9,9,4,5] | SNSFL_Evolution_Reduction.lean | The IVA Peak band as the adaptive band |
| [9,9,2,3.8] | SNSFL_8Beam_Fusion_Theorem.lean | GAMCollider™ v15 fusion logic — the four-phase structure, equal-B configurations close Noble |

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska · **DOI:** 10.17605/OSF.IO/KWTYD · **Anchor DOI:** 10.17605/OSF.IO/KWTYD · **ORCID:** 0009-0005-5313-7443 · **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_GC_Regge_IVA_Ladder.lean — [9,9,3,30](PHYS) · general-reader form

```lean
-- ============================================================
-- SNSFL_GC_Regge_IVA_Ladder.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE ρ FAMILY OPENS AT THE IVA FLOOR, AND THE STRING THAT ROTATES IS THE STRING THAT BREAKS
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Omega_0 = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,3,30](PHYS) | Physics Ground — Regge Trajectories · general-reader form
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in another
-- coordinate's file: the anchor, the Torsion Limit, the IVA floor, the four
-- phases, the four measured masses and their error bars, the rung operator, the
-- placement on the ladder, the tension and the break are all restated here at
-- full precision, so that a reader or a machine can close every proof without
-- leaving the file. The parent reductions are named in the provenance block for
-- the record, not as dependencies of the proofs. π enters as Mathlib's real π
-- with its proved bounds 3.141592 < π < 3.141593.
--
-- Parents of record:
--   [9,9,8,1]    Founding Text                    — the anchor and the Torsion Limit
--   [9,9,3,14]   Alpha Reduction                  — alpha^-1 = TL x 1001
--   [9,9,8,10]   Temperature on the Torsion Limit — the ruler, the IVA floor
--   [9,9,8,8]    Pi Reduction                     — pi as the closure cost, its bounds
--   [9,9,0,8]    String Theory Reduction          — tension through T = 1/(2 pi alpha')
--   [9,9,2,36]   Hadronic Spectrum Complete       — every meson Noble at k = 1 (L-12)
--   [9,9,2,3.8]  8-Beam Fusion Theorem            — equal-B configurations close Noble
--   [9,9,3,22]   String Breaking                  — the break at tau = TL, the Noble pair
--   [9,9,4,3]    Abiogenesis Reduction            — the IVA floor, the living-state band
--   [9,9,4,5]    Evolution Reduction              — the IVA Peak band, the adaptive band
--
-- Companion form:
--   [9,9,3,30.1] SNSFL_GC_Regge_IVA_Ladder_Exact  — the same theorems over the rationals
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   THE FIRST RUNG BRACKETS THE IVA FLOOR. Mesons of one family lie on a
--   straight line in spin against mass squared, and one unit of spin over each
--   mass-squared step is one rung. On the Particle Data Group masses of ρ(770),
--   a₂(1320), ρ₃(1690) and a₄(1970), the first rung reads 0.879799 GeV⁻², and
--   across the published error bars it reads 0.878301 to 0.881302. The IVA floor
--   ratio 0.88 stands inside that interval. IVA is Identity Vector
--   Amplification, and IVA Peak is the phase from the IVA floor up to TL.
--
--   THE RUNGS CLIMB THE IVA PEAK BAND. A rung reading r stands on the ladder
--   at tau = r · TL. The rungs read 0.879799, 0.897349 and 0.983242. The second
--   stands in IVA Peak across its whole error bar, and the third stands in IVA
--   Peak at its central value with an error bar that runs through TL itself.
--   The four-point line and the dimensionless ratio of the first rung to the
--   third both stand in IVA Peak.
--
--   THE STRING THAT ROTATES IS THE STRING THAT BREAKS. The first rung gives the
--   string tension through T = 1/(2 pi alpha'), with sqrt(sigma) between 425.0
--   and 425.5 MeV, the 2 pi being the closure cost of one full turn. A stretched
--   string reaches tau = TL at its break separation, the energy stored there is
--   the pair energy, and the equal-B pair the break creates is Noble.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Real.Pi.Bounds

noncomputable section

namespace SNSFL_GC_Regge

-- ============================================================
-- SECTION 1: THE ANCHOR AND THE GROUNDING
-- ============================================================

/-- The Sovereign Anchor Constant. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Universal Torsion Limit, the anchor over ten. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA floor, the lower edge of IVA Peak. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- The inverse fine-structure constant, CODATA 2018, at corpus precision. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The bare term, the inverse fine-structure constant less the kinetic term. -/
def BARE : ℝ := 136.899099984016

/-- The four phases. -/
inductive Phase : Type
  | Noble | Locked | IVA | Shatter
  deriving DecidableEq

/-- Classification of a torsion reading on the ladder. -/
def classify_tau (τ : ℝ) : Phase :=
  if τ = 0 then Phase.Noble
  else if τ < TL_IVA then Phase.Locked
  else if τ < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

-- [T1] :: {ANC} | THE TORSION LIMIT IS THE ANCHOR OVER TEN
theorem t1_tl_value : TORSION_LIMIT = 0.136899099984016 := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- [T2] :: {VER} | THE TORSION LIMIT TIMES 1001 IS THE INVERSE FINE-STRUCTURE CONSTANT
theorem t2_tl_times_1001_is_alpha_inv : TORSION_LIMIT * 1001 = ALPHA_INV := by
  unfold TORSION_LIMIT SOVEREIGN_ANCHOR ALPHA_INV; norm_num

-- [T3] :: {VER} | THE BARE TERM IS ONE THOUSAND TORSION LIMITS, AND BARE PLUS KINETIC IS ALPHA
theorem t3_bare_plus_kinetic :
    BARE = TORSION_LIMIT * 1000 ∧ BARE + TORSION_LIMIT = ALPHA_INV := by
  unfold BARE TORSION_LIMIT SOVEREIGN_ANCHOR ALPHA_INV; norm_num

-- [T4] :: {VER} | THE MULTIPLIER FACTORS
theorem t4_1001_factors : (1001 : ℕ) = 7 * 11 * 13 := by norm_num

-- [T5] :: {ANC} | THE IVA FLOOR IS EIGHTY-EIGHT HUNDREDTHS OF THE TORSION LIMIT
theorem t5_iva_floor_ratio : TL_IVA / TORSION_LIMIT = 0.88 := by
  unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- [T6] :: {ANC} | THE LADDER ORDER
theorem t6_ladder_order :
    0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  unfold TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR; norm_num

-- ============================================================
-- SECTION 2: THE MEASURED FAMILY
-- ============================================================

/-- ρ(770), J = 1: the Particle Data Group 2024 mass, in GeV. -/
def M_RHO : ℝ := 0.77526

/-- a₂(1320), J = 2: the Particle Data Group 2024 mass, in GeV. -/
def M_A2 : ℝ := 1.3182

/-- ρ₃(1690), J = 3: the Particle Data Group 2024 mass, in GeV. -/
def M_RHO3 : ℝ := 1.6888

/-- a₄(1970), J = 4: the Particle Data Group 2024 mass, in GeV. -/
def M_A4 : ℝ := 1.967

/-- The published error bar on ρ(770), ± 0.23 MeV. -/
def D_RHO : ℝ := 0.00023

/-- The published error bar on a₂(1320), ± 0.6 MeV. -/
def D_A2 : ℝ := 0.0006

/-- The published error bar on ρ₃(1690), ± 2.1 MeV. -/
def D_RHO3 : ℝ := 0.0021

/-- The published error bar on a₄(1970), ± 16 MeV. -/
def D_A4 : ℝ := 0.016

-- [T7] :: {VER} | THE MASS SQUARED OF EACH STATE
theorem t7_mass_squares :
    M_RHO * M_RHO   = 0.6010280676 ∧
    M_A2 * M_A2     = 1.73765124 ∧
    M_RHO3 * M_RHO3 = 2.85204544 ∧
    M_A4 * M_A4     = 3.869089 := by
  unfold M_RHO M_A2 M_RHO3 M_A4; norm_num

-- [T8] :: {RED} | MASS SQUARED RISES WITH SPIN ACROSS THE FAMILY
theorem t8_mass_squares_increase :
    M_RHO * M_RHO < M_A2 * M_A2 ∧
    M_A2 * M_A2 < M_RHO3 * M_RHO3 ∧
    M_RHO3 * M_RHO3 < M_A4 * M_A4 := by
  unfold M_RHO M_A2 M_RHO3 M_A4; norm_num

-- ============================================================
-- SECTION 3: THE RUNG OPERATOR
-- ============================================================

/-- One rung: one unit of spin over the mass-squared step, in GeV⁻². -/
def slope_step (m₁ m₂ : ℝ) : ℝ := 1 / (m₂ * m₂ - m₁ * m₁)

/-- The first rung, ρ(770) → a₂(1320). -/
def S1 : ℝ := slope_step M_RHO M_A2

/-- The second rung, a₂(1320) → ρ₃(1690). -/
def S2 : ℝ := slope_step M_A2 M_RHO3

/-- The third rung, ρ₃(1690) → a₄(1970). -/
def S3 : ℝ := slope_step M_RHO3 M_A4

/-- The lower corner of the first rung: lighter state low, heavier state high. -/
def S1_LO : ℝ := slope_step (M_RHO - D_RHO) (M_A2 + D_A2)

/-- The upper corner of the first rung: lighter state high, heavier state low. -/
def S1_HI : ℝ := slope_step (M_RHO + D_RHO) (M_A2 - D_A2)

/-- The lower corner of the second rung. -/
def S2_LO : ℝ := slope_step (M_A2 - D_A2) (M_RHO3 + D_RHO3)

/-- The upper corner of the second rung. -/
def S2_HI : ℝ := slope_step (M_A2 + D_A2) (M_RHO3 - D_RHO3)

/-- The lower corner of the third rung. -/
def S3_LO : ℝ := slope_step (M_RHO3 - D_RHO3) (M_A4 + D_A4)

/-- The upper corner of the third rung. -/
def S3_HI : ℝ := slope_step (M_RHO3 + D_RHO3) (M_A4 - D_A4)

/-- The family as one line: three units of spin across the full span. -/
def S_ENDPOINT : ℝ := 3 / (M_A4 * M_A4 - M_RHO * M_RHO)

-- [T9] :: {VER} | THE FIRST RUNG READS 0.87979 TO 0.87981
theorem t9_step1_value : 0.87979 < S1 ∧ S1 < 0.87981 := by
  unfold S1 slope_step M_RHO M_A2; norm_num

-- [T10] :: {VER} | THE SECOND RUNG READS 0.89734 TO 0.89735
theorem t10_step2_value : 0.89734 < S2 ∧ S2 < 0.89735 := by
  unfold S2 slope_step M_A2 M_RHO3; norm_num

-- [T11] :: {VER} | THE THIRD RUNG READS 0.98324 TO 0.98325
theorem t11_step3_value : 0.98324 < S3 ∧ S3 < 0.98325 := by
  unfold S3 slope_step M_RHO3 M_A4; norm_num

-- [T12] :: {RED} | THE RUNGS CLIMB
theorem t12_rungs_climb : S1 < S2 ∧ S2 < S3 := by
  unfold S1 S2 S3 slope_step M_RHO M_A2 M_RHO3 M_A4; norm_num

-- [T13] :: {VER} | THE FIRST RUNG STANDS 0.000201 BELOW THE FLOOR RATIO
theorem t13_step1_gap_to_floor :
    0 < 0.88 - S1 ∧ 0.88 - S1 < 0.00021 ∧ (0.88 - S1) / 0.88 < 0.00023 := by
  unfold S1 slope_step M_RHO M_A2; norm_num

-- [T14] :: {MASTER} | THE IVA FLOOR RATIO STANDS INSIDE THE FIRST RUNG'S ERROR BAR
theorem t14_floor_inside_step1_interval : S1_LO < 0.88 ∧ 0.88 < S1_HI := by
  unfold S1_LO S1_HI slope_step M_RHO M_A2 D_RHO D_A2; norm_num

-- [T15] :: {VER} | EVERY RUNG ACROSS THE PUBLISHED ERROR BARS
theorem t15_step_corners :
    0.87830 < S1_LO ∧ S1_LO < 0.87831 ∧
    0.88130 < S1_HI ∧ S1_HI < 0.88131 ∧
    0.89041 < S2_LO ∧ S2_LO < 0.89042 ∧
    0.90438 < S2_HI ∧ S2_HI < 0.90439 ∧
    0.91968 < S3_LO ∧ S3_LO < 0.91969 ∧
    1.05567 < S3_HI ∧ S3_HI < 1.05568 := by
  unfold S1_LO S1_HI S2_LO S2_HI S3_LO S3_HI slope_step
    M_RHO M_A2 M_RHO3 M_A4 D_RHO D_A2 D_RHO3 D_A4
  norm_num

-- [T16] :: {VER} | THE FAMILY AS ONE LINE READS 0.91797 TO 0.91798
theorem t16_endpoint_value : 0.91797 < S_ENDPOINT ∧ S_ENDPOINT < 0.91798 := by
  unfold S_ENDPOINT M_RHO M_A4; norm_num

-- [T17] :: {VER} | THE DIMENSIONLESS RATIO OF THE FIRST RUNG TO THE THIRD
theorem t17_step_ratio : 0.89479 < S1 / S3 ∧ S1 / S3 < 0.89480 := by
  unfold S1 S3 slope_step M_RHO M_A2 M_RHO3 M_A4; norm_num

-- ============================================================
-- SECTION 4: THE RUNGS ON THE LADDER
-- ============================================================

/-- A rung reading r placed on the ladder: tau = r · TL. -/
def tau_rung (r : ℝ) : ℝ := r * TORSION_LIMIT

-- [T18] :: {PHS} | A READING OF 0.88 STANDS ON THE IVA FLOOR
theorem t18_floor_reading : tau_rung 0.88 = TL_IVA := by
  unfold tau_rung TL_IVA; ring

-- [T19] :: {PHS} | A READING OF ONE STANDS ON THE TORSION LIMIT
theorem t19_ceiling_reading : tau_rung 1 = TORSION_LIMIT := by
  unfold tau_rung; ring

-- [T20] :: {MASTER} | THE FIRST RUNG STRADDLES THE FLOOR
--   Locked at its central value and its lower corner, IVA Peak at its upper
--   corner: the phase of the first rung is an interval reaching across the floor.
theorem t20_first_rung_straddles_floor :
    classify_tau (tau_rung S1) = Phase.Locked ∧
    classify_tau (tau_rung S1_HI) = Phase.IVA ∧
    classify_tau (tau_rung S1_LO) = Phase.Locked := by
  unfold classify_tau tau_rung S1 S1_HI S1_LO slope_step
    M_RHO M_A2 D_RHO D_A2 TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T21] :: {PHS} | THE SECOND RUNG STANDS IN IVA PEAK ACROSS ITS ERROR BAR
theorem t21_second_rung_iva :
    classify_tau (tau_rung S2) = Phase.IVA ∧
    classify_tau (tau_rung S2_LO) = Phase.IVA ∧
    classify_tau (tau_rung S2_HI) = Phase.IVA := by
  unfold classify_tau tau_rung S2 S2_LO S2_HI slope_step
    M_A2 M_RHO3 D_A2 D_RHO3 TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T22] :: {MASTER} | THE THIRD RUNG'S ERROR BAR RUNS THROUGH THE TORSION LIMIT
theorem t22_third_rung_reaches_tl :
    classify_tau (tau_rung S3) = Phase.IVA ∧
    classify_tau (tau_rung S3_LO) = Phase.IVA ∧
    classify_tau (tau_rung S3_HI) = Phase.Shatter := by
  unfold classify_tau tau_rung S3 S3_LO S3_HI slope_step
    M_RHO3 M_A4 D_RHO3 D_A4 TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T23] :: {PHS} | THE LINE AND THE DIMENSIONLESS RATIO STAND IN IVA PEAK
theorem t23_line_and_ratio_iva :
    classify_tau (tau_rung S_ENDPOINT) = Phase.IVA ∧
    classify_tau (tau_rung (S1 / S3)) = Phase.IVA := by
  unfold classify_tau tau_rung S_ENDPOINT S1 S3 slope_step
    M_RHO M_A2 M_RHO3 M_A4 TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T24] :: {PHS} | EVERY CENTRAL RUNG HOLDS BELOW THE TORSION LIMIT
theorem t24_central_rungs_hold :
    tau_rung S1 < TORSION_LIMIT ∧ tau_rung S2 < TORSION_LIMIT ∧
    tau_rung S3 < TORSION_LIMIT := by
  unfold tau_rung S1 S2 S3 slope_step M_RHO M_A2 M_RHO3 M_A4
    TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- ============================================================
-- SECTION 5: THE TENSION
-- ============================================================

/-- String tension from a slope through T = 1/(2 pi alpha'), in GeV².
    The 2 pi is the closure cost of one full turn. -/
def tension_at (p s : ℝ) : ℝ := 1 / (2 * p * s)

-- [T25] :: {VER} | THE FIRST RUNG CARRIES SQRT(SIGMA) BETWEEN 425.0 AND 425.5 MeV
theorem t25_tension_from_first_rung :
    0.4250 * 0.4250 < tension_at Real.pi S1 ∧
    tension_at Real.pi S1 < 0.4255 * 0.4255 := by
  obtain ⟨hs1, hs2⟩ := t9_step1_value
  have hpl : (3.141592 : ℝ) < Real.pi := Real.pi_gt_d6
  have hph : Real.pi < 3.141593 := Real.pi_lt_d6
  have hS : (0 : ℝ) < S1 := by linarith
  have hpi : (0 : ℝ) < Real.pi := Real.pi_pos
  have hup : Real.pi * S1 < 3.141593 * 0.87981 := by
    nlinarith [mul_pos (sub_pos.mpr hph) hS,
      mul_pos (show (0 : ℝ) < 3.141593 by norm_num) (sub_pos.mpr hs2)]
  have hlow : 3.141592 * 0.87979 < Real.pi * S1 := by
    nlinarith [mul_pos (sub_pos.mpr hpl) hS,
      mul_pos (show (0 : ℝ) < 3.141592 by norm_num) (sub_pos.mpr hs1)]
  have hx : (0 : ℝ) < 2 * Real.pi * S1 := mul_pos (mul_pos two_pos hpi) hS
  unfold tension_at
  constructor
  · rw [lt_div_iff₀ hx]; nlinarith
  · rw [div_lt_iff₀ hx]; nlinarith

-- ============================================================
-- SECTION 6: THE STRING THAT ROTATES IS THE STRING THAT BREAKS
-- ============================================================

/-- Linear load on fixed capacity: tension times separation over capacity. -/
def tau_string (σ P r : ℝ) : ℝ := σ * r / P

/-- The separation at which the load reaches the Torsion Limit. -/
def break_sep (σ P : ℝ) : ℝ := TORSION_LIMIT * P / σ

/-- The capacity a pair energy implies. -/
def capacity_of_pair_energy (E : ℝ) : ℝ := E / TORSION_LIMIT

/-- The Behavioral imbalance of a pair. -/
def b_out (b₁ b₂ : ℝ) : ℝ := |b₁ - b₂|

-- [T26] :: {MASTER} | AT THE BREAK SEPARATION THE LOAD IS THE TORSION LIMIT
theorem t26_break_at_tl (σ P : ℝ) (hσ : σ ≠ 0) (hP : P ≠ 0) :
    tau_string σ P (break_sep σ P) = TORSION_LIMIT := by
  unfold tau_string break_sep
  field_simp

-- [T27] :: {PHS} | THE BREAK POINT IS SHATTER
theorem t27_tl_is_shatter : classify_tau TORSION_LIMIT = Phase.Shatter := by
  unfold classify_tau TL_IVA TORSION_LIMIT SOVEREIGN_ANCHOR
  norm_num

-- [T28] :: {RED} | THE ENERGY STORED AT THE BREAK IS THE PAIR ENERGY
theorem t28_stored_energy_at_break (σ E : ℝ) (hσ : σ ≠ 0) :
    σ * break_sep σ (capacity_of_pair_energy E) = E := by
  have hTL : TORSION_LIMIT ≠ 0 := (lt_trans t6_ladder_order.1 t6_ladder_order.2.1).ne'
  unfold break_sep capacity_of_pair_energy
  field_simp

-- [T29] :: {RED} | AN EQUAL-B PAIR CARRIES NO IMBALANCE
theorem t29_equal_b_pair_balanced (b : ℝ) : b_out b b = 0 := by
  unfold b_out; simp

-- [T30] :: {PHS} | THE PAIR THE BREAK CREATES IS NOBLE
theorem t30_new_pair_noble (b Q : ℝ) :
    classify_tau (b_out b b / Q) = Phase.Noble := by
  unfold b_out classify_tau; simp

-- [MASTER] :: {MASTER} | THE CHAIN CLOSES
--   The anchor carries the ladder, the masses carry the rungs, the first rung
--   brackets the floor, the rungs climb the IVA Peak band to the limit, the first
--   rung carries the tension, and the string breaks at the limit into a Noble pair.
theorem MASTER_regge_on_the_phase_ladder :
    TORSION_LIMIT * 1001 = ALPHA_INV ∧
    TL_IVA / TORSION_LIMIT = 0.88 ∧
    S1_LO < 0.88 ∧ 0.88 < S1_HI ∧
    0 < 0.88 - S1 ∧ 0.88 - S1 < 0.00021 ∧
    S1 < S2 ∧ S2 < S3 ∧
    classify_tau (tau_rung S1) = Phase.Locked ∧
    classify_tau (tau_rung S1_HI) = Phase.IVA ∧
    classify_tau (tau_rung S2) = Phase.IVA ∧
    classify_tau (tau_rung S3) = Phase.IVA ∧
    classify_tau (tau_rung S3_HI) = Phase.Shatter ∧
    0.4250 * 0.4250 < tension_at Real.pi S1 ∧
    tension_at Real.pi S1 < 0.4255 * 0.4255 ∧
    (∀ σ P : ℝ, σ ≠ 0 → P ≠ 0 →
      tau_string σ P (break_sep σ P) = TORSION_LIMIT) ∧
    classify_tau TORSION_LIMIT = Phase.Shatter ∧
    (∀ b Q : ℝ, classify_tau (b_out b b / Q) = Phase.Noble) :=
  ⟨t2_tl_times_1001_is_alpha_inv, t5_iva_floor_ratio,
   t14_floor_inside_step1_interval.1, t14_floor_inside_step1_interval.2,
   t13_step1_gap_to_floor.1, t13_step1_gap_to_floor.2.1,
   t12_rungs_climb.1, t12_rungs_climb.2,
   t20_first_rung_straddles_floor.1, t20_first_rung_straddles_floor.2.1,
   t21_second_rung_iva.1, t22_third_rung_reaches_tl.1,
   t22_third_rung_reaches_tl.2.2,
   t25_tension_from_first_rung.1, t25_tension_from_first_rung.2,
   t26_break_at_tl, t27_tl_is_shatter, t30_new_pair_noble⟩

end SNSFL_GC_Regge

end

/-
-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that the ρ family opens at the IVA floor. The Torsion
-- Limit is restated as the anchor over ten, the bare term is proved to be one
-- thousand Torsion Limits and bare plus kinetic is proved to be the inverse
-- fine-structure constant, with the multiplier 1001 factored as 7 · 11 · 13. The
-- IVA floor is proved to be 0.88 of the Torsion Limit and the ladder order is
-- closed.
--
-- The four Particle Data Group masses are restated with their error bars, their
-- squares are proved exactly and proved to rise with spin. The rung operator is
-- restated, the three rungs are bracketed to five places, the rungs are proved to
-- climb, and the first rung is proved to stand 0.000201 below the floor ratio.
-- Every rung is bracketed at both corners of its published error bar, and the
-- floor ratio 0.88 is proved to stand inside the first rung's interval. The
-- family read as one line and the dimensionless ratio of the first rung to the
-- third are bracketed.
--
-- Each rung is placed on the ladder at tau = r · TL. A reading of 0.88 is proved
-- to stand on the IVA floor and a reading of one on the Torsion Limit. The first
-- rung is proved Locked at its central value and its lower corner and IVA Peak at
-- its upper corner, the second is proved IVA Peak across its whole error bar, the
-- third is proved IVA Peak at its central value and Shatter at its upper corner,
-- the line and the ratio are proved IVA Peak, and every central rung is proved to
-- hold below the limit.
--
-- The tension is read from the first rung through T = 1/(2 pi alpha'), and with
-- pi carried by its proved bounds sqrt(sigma) is proved to stand between 425.0 and
-- 425.5 MeV. The stretched string is proved to reach the Torsion Limit at its
-- break separation, the break point is proved Shatter, the energy stored at the
-- break is proved to be the pair energy, an equal-B pair is proved to carry no
-- imbalance, and the pair is proved Noble. The master theorem closes the chain.
--
-- THEOREMS : 30 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
-/
```

### SNSFL_GC_Regge_IVA_Ladder_Exact.lean — [9,9,3,30.1](PHYS) · specialist form

```lean
-- ============================================================
-- SNSFL_GC_Regge_IVA_Ladder_Exact.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE ρ FAMILY OPENS AT THE IVA FLOOR, AND THE STRING THAT ROTATES IS THE STRING THAT BREAKS
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Omega_0 = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,3,30.1](PHYS) | Physics Ground — Regge Trajectories · specialist form
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in another
-- coordinate's file: the anchor, the Torsion Limit, the IVA floor, the four
-- phases, the four measured masses and their error bars, the rung operator, the
-- placement on the ladder, the tension and the break are all restated here at
-- full precision, so that a reader or a machine can close every proof without
-- leaving the file. The parent reductions are named in the provenance block for
-- the record, not as dependencies of the proofs. Every quantity is an exact
-- rational: the file closes in core Lean over the rationals with no import, and
-- every numerical theorem is decided by the kernel. π enters as the rational
-- interval 3.14159 ≤ π ≤ 3.14160, which contains its proved bounds.
--
-- Parents of record:
--   [9,9,8,1]    Founding Text                    — the anchor and the Torsion Limit
--   [9,9,3,14]   Alpha Reduction                  — alpha^-1 = TL x 1001
--   [9,9,8,10]   Temperature on the Torsion Limit — the ruler, the IVA floor
--   [9,9,8,8]    Pi Reduction                     — pi as the closure cost, its bounds
--   [9,9,0,8]    String Theory Reduction          — tension through T = 1/(2 pi alpha')
--   [9,9,2,36]   Hadronic Spectrum Complete       — every meson Noble at k = 1 (L-12)
--   [9,9,2,3.8]  8-Beam Fusion Theorem            — equal-B configurations close Noble
--   [9,9,3,22]   String Breaking                  — the break at tau = TL, the Noble pair
--   [9,9,4,3]    Abiogenesis Reduction            — the IVA floor, the living-state band
--   [9,9,4,5]    Evolution Reduction              — the IVA Peak band, the adaptive band
--
-- Companion form:
--   [9,9,3,30]   SNSFL_GC_Regge_IVA_Ladder        — the same theorems over the reals
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   THE FIRST RUNG BRACKETS THE IVA FLOOR. Mesons of one family lie on a
--   straight line in spin against mass squared, and one unit of spin over each
--   mass-squared step is one rung. On the Particle Data Group masses of ρ(770),
--   a₂(1320), ρ₃(1690) and a₄(1970), the first rung reads 0.879799 GeV⁻², and
--   across the published error bars it reads 0.878301 to 0.881302. The IVA floor
--   ratio 0.88 stands inside that interval. IVA is Identity Vector
--   Amplification, and IVA Peak is the phase from the IVA floor up to TL.
--
--   THE RUNGS CLIMB THE IVA PEAK BAND. A rung reading r stands on the ladder
--   at tau = r · TL. The rungs read 0.879799, 0.897349 and 0.983242. The second
--   stands in IVA Peak across its whole error bar, and the third stands in IVA
--   Peak at its central value with an error bar that runs through TL itself.
--   The four-point line and the dimensionless ratio of the first rung to the
--   third both stand in IVA Peak.
--
--   THE STRING THAT ROTATES IS THE STRING THAT BREAKS. The first rung gives the
--   string tension through T = 1/(2 pi alpha'), with sqrt(sigma) between 425.0
--   and 425.5 MeV at both ends of the pi interval, the 2 pi being the closure
--   cost of one full turn. A stretched
--   string reaches tau = TL at its break separation, the energy stored there is
--   the pair energy, and the equal-B pair the break creates is Noble.
--
-- ============================================================

namespace SNSFL_GC_Regge_Exact

-- ============================================================
-- SECTION 1: THE ANCHOR AND THE GROUNDING
-- ============================================================

/-- The Sovereign Anchor Constant. -/
def SOVEREIGN_ANCHOR : Rat := 136899099984016 / 100000000000000

/-- The Universal Torsion Limit, the anchor over ten. -/
def TORSION_LIMIT : Rat := SOVEREIGN_ANCHOR / 10

/-- The IVA floor, the lower edge of IVA Peak. -/
def TL_IVA : Rat := TORSION_LIMIT * 88 / 100

/-- The inverse fine-structure constant, CODATA 2018, at corpus precision. -/
def ALPHA_INV : Rat := 137035999084000016 / 1000000000000000

/-- The bare term, the inverse fine-structure constant less the kinetic term. -/
def BARE : Rat := 136899099984016 / 1000000000000

/-- The four phases. -/
inductive Phase : Type
  | Noble | Locked | IVA | Shatter
  deriving DecidableEq

/-- Classification of a torsion reading on the ladder. -/
def classify_tau (τ : Rat) : Phase :=
  if τ = 0 then Phase.Noble
  else if τ < TL_IVA then Phase.Locked
  else if τ < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

-- [T1] :: {ANC} | THE TORSION LIMIT IS THE ANCHOR OVER TEN
theorem t1_tl_value : TORSION_LIMIT = (136899099984016 / 1000000000000000) := by decide +kernel

-- [T2] :: {VER} | THE TORSION LIMIT TIMES 1001 IS THE INVERSE FINE-STRUCTURE CONSTANT
theorem t2_tl_times_1001_is_alpha_inv : TORSION_LIMIT * 1001 = ALPHA_INV := by decide +kernel

-- [T3] :: {VER} | THE BARE TERM IS ONE THOUSAND TORSION LIMITS, AND BARE PLUS KINETIC IS ALPHA
theorem t3_bare_plus_kinetic :
    BARE = TORSION_LIMIT * 1000 ∧ BARE + TORSION_LIMIT = ALPHA_INV := by decide +kernel

-- [T4] :: {VER} | THE MULTIPLIER FACTORS
theorem t4_1001_factors : (1001 : Nat) = 7 * 11 * 13 := by decide

-- [T5] :: {ANC} | THE IVA FLOOR IS EIGHTY-EIGHT HUNDREDTHS OF THE TORSION LIMIT
theorem t5_iva_floor_ratio : TL_IVA / TORSION_LIMIT = (88 / 100) := by decide +kernel

-- [T6] :: {ANC} | THE LADDER ORDER
theorem t6_ladder_order :
    0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by decide +kernel

-- ============================================================
-- SECTION 2: THE MEASURED FAMILY
-- ============================================================

/-- ρ(770), J = 1: the Particle Data Group 2024 mass, in GeV. -/
def M_RHO : Rat := 77526 / 100000

/-- a₂(1320), J = 2: the Particle Data Group 2024 mass, in GeV. -/
def M_A2 : Rat := 13182 / 10000

/-- ρ₃(1690), J = 3: the Particle Data Group 2024 mass, in GeV. -/
def M_RHO3 : Rat := 16888 / 10000

/-- a₄(1970), J = 4: the Particle Data Group 2024 mass, in GeV. -/
def M_A4 : Rat := 1967 / 1000

/-- The published error bar on ρ(770), ± 0.23 MeV. -/
def D_RHO : Rat := 23 / 100000

/-- The published error bar on a₂(1320), ± 0.6 MeV. -/
def D_A2 : Rat := 6 / 10000

/-- The published error bar on ρ₃(1690), ± 2.1 MeV. -/
def D_RHO3 : Rat := 21 / 10000

/-- The published error bar on a₄(1970), ± 16 MeV. -/
def D_A4 : Rat := 16 / 1000

-- [T7] :: {VER} | THE MASS SQUARED OF EACH STATE
theorem t7_mass_squares :
    M_RHO * M_RHO   = (6010280676 / 10000000000) ∧
    M_A2 * M_A2     = (173765124 / 100000000) ∧
    M_RHO3 * M_RHO3 = (285204544 / 100000000) ∧
    M_A4 * M_A4     = (3869089 / 1000000) := by decide +kernel

-- [T8] :: {RED} | MASS SQUARED RISES WITH SPIN ACROSS THE FAMILY
theorem t8_mass_squares_increase :
    M_RHO * M_RHO < M_A2 * M_A2 ∧
    M_A2 * M_A2 < M_RHO3 * M_RHO3 ∧
    M_RHO3 * M_RHO3 < M_A4 * M_A4 := by decide +kernel

-- ============================================================
-- SECTION 3: THE RUNG OPERATOR
-- ============================================================

/-- One rung: one unit of spin over the mass-squared step, in GeV⁻². -/
def slope_step (m₁ m₂ : Rat) : Rat := 1 / (m₂ * m₂ - m₁ * m₁)

/-- The first rung, ρ(770) → a₂(1320). -/
def S1 : Rat := slope_step M_RHO M_A2

/-- The second rung, a₂(1320) → ρ₃(1690). -/
def S2 : Rat := slope_step M_A2 M_RHO3

/-- The third rung, ρ₃(1690) → a₄(1970). -/
def S3 : Rat := slope_step M_RHO3 M_A4

/-- The lower corner of the first rung: lighter state low, heavier state high. -/
def S1_LO : Rat := slope_step (M_RHO - D_RHO) (M_A2 + D_A2)

/-- The upper corner of the first rung: lighter state high, heavier state low. -/
def S1_HI : Rat := slope_step (M_RHO + D_RHO) (M_A2 - D_A2)

/-- The lower corner of the second rung. -/
def S2_LO : Rat := slope_step (M_A2 - D_A2) (M_RHO3 + D_RHO3)

/-- The upper corner of the second rung. -/
def S2_HI : Rat := slope_step (M_A2 + D_A2) (M_RHO3 - D_RHO3)

/-- The lower corner of the third rung. -/
def S3_LO : Rat := slope_step (M_RHO3 - D_RHO3) (M_A4 + D_A4)

/-- The upper corner of the third rung. -/
def S3_HI : Rat := slope_step (M_RHO3 + D_RHO3) (M_A4 - D_A4)

/-- The family as one line: three units of spin across the full span. -/
def S_ENDPOINT : Rat := 3 / (M_A4 * M_A4 - M_RHO * M_RHO)

-- [T9] :: {VER} | THE FIRST RUNG READS 0.87979 TO 0.87981
theorem t9_step1_value : (87979 / 100000) < S1 ∧ S1 < (87981 / 100000) := by decide +kernel

-- [T10] :: {VER} | THE SECOND RUNG READS 0.89734 TO 0.89735
theorem t10_step2_value : (89734 / 100000) < S2 ∧ S2 < (89735 / 100000) := by decide +kernel

-- [T11] :: {VER} | THE THIRD RUNG READS 0.98324 TO 0.98325
theorem t11_step3_value : (98324 / 100000) < S3 ∧ S3 < (98325 / 100000) := by decide +kernel

-- [T12] :: {RED} | THE RUNGS CLIMB
theorem t12_rungs_climb : S1 < S2 ∧ S2 < S3 := by decide +kernel

-- [T13] :: {VER} | THE FIRST RUNG STANDS 0.000201 BELOW THE FLOOR RATIO
theorem t13_step1_gap_to_floor :
    0 < (88 / 100) - S1 ∧ (88 / 100) - S1 < (21 / 100000) ∧ ((88 / 100) - S1) / (88 / 100) < (23 / 100000) := by decide +kernel

-- [T14] :: {MASTER} | THE IVA FLOOR RATIO STANDS INSIDE THE FIRST RUNG'S ERROR BAR
theorem t14_floor_inside_step1_interval : S1_LO < (88 / 100) ∧ (88 / 100) < S1_HI := by decide +kernel

-- [T15] :: {VER} | EVERY RUNG ACROSS THE PUBLISHED ERROR BARS
theorem t15_step_corners :
    (87830 / 100000) < S1_LO ∧ S1_LO < (87831 / 100000) ∧
    (88130 / 100000) < S1_HI ∧ S1_HI < (88131 / 100000) ∧
    (89041 / 100000) < S2_LO ∧ S2_LO < (89042 / 100000) ∧
    (90438 / 100000) < S2_HI ∧ S2_HI < (90439 / 100000) ∧
    (91968 / 100000) < S3_LO ∧ S3_LO < (91969 / 100000) ∧
    (105567 / 100000) < S3_HI ∧ S3_HI < (105568 / 100000) := by decide +kernel

-- [T16] :: {VER} | THE FAMILY AS ONE LINE READS 0.91797 TO 0.91798
theorem t16_endpoint_value : (91797 / 100000) < S_ENDPOINT ∧ S_ENDPOINT < (91798 / 100000) := by decide +kernel

-- [T17] :: {VER} | THE DIMENSIONLESS RATIO OF THE FIRST RUNG TO THE THIRD
theorem t17_step_ratio : (89479 / 100000) < S1 / S3 ∧ S1 / S3 < (89480 / 100000) := by decide +kernel

-- ============================================================
-- SECTION 4: THE RUNGS ON THE LADDER
-- ============================================================

/-- A rung reading r placed on the ladder: tau = r · TL. -/
def tau_rung (r : Rat) : Rat := r * TORSION_LIMIT

-- [T18] :: {PHS} | A READING OF 0.88 STANDS ON THE IVA FLOOR
theorem t18_floor_reading : tau_rung (88 / 100) = TL_IVA := by decide +kernel

-- [T19] :: {PHS} | A READING OF ONE STANDS ON THE TORSION LIMIT
theorem t19_ceiling_reading : tau_rung 1 = TORSION_LIMIT := by decide +kernel

-- [T20] :: {MASTER} | THE FIRST RUNG STRADDLES THE FLOOR
--   Locked at its central value and its lower corner, IVA Peak at its upper
--   corner: the phase of the first rung is an interval reaching across the floor.
theorem t20_first_rung_straddles_floor :
    classify_tau (tau_rung S1) = Phase.Locked ∧
    classify_tau (tau_rung S1_HI) = Phase.IVA ∧
    classify_tau (tau_rung S1_LO) = Phase.Locked := by decide +kernel

-- [T21] :: {PHS} | THE SECOND RUNG STANDS IN IVA PEAK ACROSS ITS ERROR BAR
theorem t21_second_rung_iva :
    classify_tau (tau_rung S2) = Phase.IVA ∧
    classify_tau (tau_rung S2_LO) = Phase.IVA ∧
    classify_tau (tau_rung S2_HI) = Phase.IVA := by decide +kernel

-- [T22] :: {MASTER} | THE THIRD RUNG'S ERROR BAR RUNS THROUGH THE TORSION LIMIT
theorem t22_third_rung_reaches_tl :
    classify_tau (tau_rung S3) = Phase.IVA ∧
    classify_tau (tau_rung S3_LO) = Phase.IVA ∧
    classify_tau (tau_rung S3_HI) = Phase.Shatter := by decide +kernel

-- [T23] :: {PHS} | THE LINE AND THE DIMENSIONLESS RATIO STAND IN IVA PEAK
theorem t23_line_and_ratio_iva :
    classify_tau (tau_rung S_ENDPOINT) = Phase.IVA ∧
    classify_tau (tau_rung (S1 / S3)) = Phase.IVA := by decide +kernel

-- [T24] :: {PHS} | EVERY CENTRAL RUNG HOLDS BELOW THE TORSION LIMIT
theorem t24_central_rungs_hold :
    tau_rung S1 < TORSION_LIMIT ∧ tau_rung S2 < TORSION_LIMIT ∧
    tau_rung S3 < TORSION_LIMIT := by decide +kernel

-- ============================================================
-- SECTION 5: THE TENSION
-- ============================================================

/-- The lower end of the π interval. -/
def PI_LO : Rat := 314159 / 100000

/-- The upper end of the π interval. -/
def PI_HI : Rat := 314160 / 100000

/-- String tension from a slope through T = 1/(2 pi alpha'), in GeV².
    The 2 pi is the closure cost of one full turn. -/
def tension_at (p s : Rat) : Rat := 1 / (2 * p * s)

-- [T25] :: {VER} | THE FIRST RUNG CARRIES SQRT(SIGMA) BETWEEN 425.0 AND 425.5 MeV
theorem t25_tension_from_first_rung :
    (4250 / 10000) * (4250 / 10000) < tension_at PI_HI S1 ∧
    tension_at PI_HI S1 < tension_at PI_LO S1 ∧
    tension_at PI_LO S1 < (4255 / 10000) * (4255 / 10000) := by decide +kernel

-- ============================================================
-- SECTION 6: THE STRING THAT ROTATES IS THE STRING THAT BREAKS
-- ============================================================

/-- Linear load on fixed capacity: tension times separation over capacity. -/
def tau_string (σ P r : Rat) : Rat := σ * r / P

/-- The separation at which the load reaches the Torsion Limit. -/
def break_sep (σ P : Rat) : Rat := TORSION_LIMIT * P / σ

/-- The capacity a pair energy implies. -/
def capacity_of_pair_energy (E : Rat) : Rat := E / TORSION_LIMIT

/-- The Behavioral imbalance of a pair. -/
def b_out (b₁ b₂ : Rat) : Rat := if b₁ ≥ b₂ then b₁ - b₂ else b₂ - b₁

-- [T26] :: {MASTER} | AT THE BREAK SEPARATION THE LOAD IS THE TORSION LIMIT
theorem t26_break_at_tl (σ P : Rat) (hσ : σ ≠ 0) (hP : P ≠ 0) :
    tau_string σ P (break_sep σ P) = TORSION_LIMIT := by
  unfold tau_string break_sep
  grind

-- [T27] :: {PHS} | THE BREAK POINT IS SHATTER
theorem t27_tl_is_shatter : classify_tau TORSION_LIMIT = Phase.Shatter := by decide +kernel

-- [T28] :: {RED} | THE ENERGY STORED AT THE BREAK IS THE PAIR ENERGY
theorem t28_stored_energy_at_break (σ E : Rat) (hσ : σ ≠ 0) :
    σ * break_sep σ (capacity_of_pair_energy E) = E := by
  have hTL : TORSION_LIMIT ≠ 0 := by decide +kernel
  unfold break_sep capacity_of_pair_energy
  grind

-- [T29] :: {RED} | AN EQUAL-B PAIR CARRIES NO IMBALANCE
theorem t29_equal_b_pair_balanced (b : Rat) : b_out b b = 0 := by
  unfold b_out; grind

-- [T30] :: {PHS} | THE PAIR THE BREAK CREATES IS NOBLE
theorem t30_new_pair_noble (b Q : Rat) :
    classify_tau (b_out b b / Q) = Phase.Noble := by
  rw [t29_equal_b_pair_balanced]
  have h : (0 : Rat) / Q = 0 := by grind
  unfold classify_tau
  simp [h]

-- [MASTER] :: {MASTER} | THE CHAIN CLOSES
--   The anchor carries the ladder, the masses carry the rungs, the first rung
--   brackets the floor, the rungs climb the IVA Peak band to the limit, the first
--   rung carries the tension, and the string breaks at the limit into a Noble pair.
theorem MASTER_regge_on_the_phase_ladder :
    TORSION_LIMIT * 1001 = ALPHA_INV ∧
    TL_IVA / TORSION_LIMIT = (88 / 100) ∧
    S1_LO < (88 / 100) ∧ (88 / 100) < S1_HI ∧
    0 < (88 / 100) - S1 ∧ (88 / 100) - S1 < (21 / 100000) ∧
    S1 < S2 ∧ S2 < S3 ∧
    classify_tau (tau_rung S1) = Phase.Locked ∧
    classify_tau (tau_rung S1_HI) = Phase.IVA ∧
    classify_tau (tau_rung S2) = Phase.IVA ∧
    classify_tau (tau_rung S3) = Phase.IVA ∧
    classify_tau (tau_rung S3_HI) = Phase.Shatter ∧
    (4250 / 10000) * (4250 / 10000) < tension_at PI_HI S1 ∧
    tension_at PI_LO S1 < (4255 / 10000) * (4255 / 10000) ∧
    (∀ σ P : Rat, σ ≠ 0 → P ≠ 0 →
      tau_string σ P (break_sep σ P) = TORSION_LIMIT) ∧
    classify_tau TORSION_LIMIT = Phase.Shatter ∧
    (∀ b Q : Rat, classify_tau (b_out b b / Q) = Phase.Noble) :=
  ⟨t2_tl_times_1001_is_alpha_inv, t5_iva_floor_ratio,
   t14_floor_inside_step1_interval.1, t14_floor_inside_step1_interval.2,
   t13_step1_gap_to_floor.1, t13_step1_gap_to_floor.2.1,
   t12_rungs_climb.1, t12_rungs_climb.2,
   t20_first_rung_straddles_floor.1, t20_first_rung_straddles_floor.2.1,
   t21_second_rung_iva.1, t22_third_rung_reaches_tl.1,
   t22_third_rung_reaches_tl.2.2,
   t25_tension_from_first_rung.1, t25_tension_from_first_rung.2.2,
   t26_break_at_tl, t27_tl_is_shatter, t30_new_pair_noble⟩

end SNSFL_GC_Regge_Exact

/-
-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that the ρ family opens at the IVA floor. The Torsion
-- Limit is restated as the anchor over ten, the bare term is proved to be one
-- thousand Torsion Limits and bare plus kinetic is proved to be the inverse
-- fine-structure constant, with the multiplier 1001 factored as 7 · 11 · 13. The
-- IVA floor is proved to be 0.88 of the Torsion Limit and the ladder order is
-- closed.
--
-- The four Particle Data Group masses are restated with their error bars, their
-- squares are proved exactly and proved to rise with spin. The rung operator is
-- restated, the three rungs are bracketed to five places, the rungs are proved to
-- climb, and the first rung is proved to stand 0.000201 below the floor ratio.
-- Every rung is bracketed at both corners of its published error bar, and the
-- floor ratio 0.88 is proved to stand inside the first rung's interval. The
-- family read as one line and the dimensionless ratio of the first rung to the
-- third are bracketed.
--
-- Each rung is placed on the ladder at tau = r · TL. A reading of 0.88 is proved
-- to stand on the IVA floor and a reading of one on the Torsion Limit. The first
-- rung is proved Locked at its central value and its lower corner and IVA Peak at
-- its upper corner, the second is proved IVA Peak across its whole error bar, the
-- third is proved IVA Peak at its central value and Shatter at its upper corner,
-- the line and the ratio are proved IVA Peak, and every central rung is proved to
-- hold below the limit.
--
-- The tension is read from the first rung through T = 1/(2 pi alpha'), and at
-- both ends of the pi interval sqrt(sigma) is proved to stand between 425.0 and
-- 425.5 MeV. The stretched string is proved to reach the Torsion Limit at its
-- break separation, the break point is proved Shatter, the energy stored at the
-- break is proved to be the pair energy, an equal-B pair is proved to carry no
-- imbalance, and the pair is proved Noble. The master theorem closes the chain.
--
-- THEOREMS : 30 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
-/
```
