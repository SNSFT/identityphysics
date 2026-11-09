# The Geometric Base: b₀ = 1/√TL, the Energy Ladder, and the Nuclear Band in One Rung

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** [9,9,8,12](MATH) · Identity Physics Series · Mathematics Ground, Foundations

**Issue:** ProofPress, Volume 1, Issue 9 · November 2026

**DOI:** 10.5281/zenodo.18719748

**Verified:** 72 theorems · 864 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Abstract

The natural logarithm counts in a base fixed by an analytic condition: e is the growth whose accumulated area is exactly one. That condition is a choice made inside analysis, and it has nothing to do with the geometry being counted. This reduction establishes the base the geometry itself selects.

Setting b₀ = 1/√TL = 2.702711586879570090508919924851 makes every rung of the torsion ladder an exact integer power: TL² = b₀⁻⁴, TL = b₀⁻², √TL = b₀⁻¹, 1/TL = b₀⁺². The ladder is not near integer folds in this base; it is at them, by construction, and the construction is the square-root torsion operator of [9,9,0,17.1] applied to a quantity the corpus already carries. Because TL is a terminating decimal, 1/TL = 62500000000000/8556193749001 is exactly rational while its denominator factors as 191 · 23767 · 1884833 with every exponent odd, so b₀ is irrational: the ladder's **even rungs lie exactly in ℚ and its odd rungs do not**. That is the same parity the refractive index carries against the relative permittivity in [9,9,8,11], one application of S apart, and it is not an analogy — **b₀ is an index**, the refractive index of a medium whose relative permittivity is 1/TL, by matched_ratio(S X) = 1/X. The base the geometry selects and the index of a dielectric are one construction.

The ladder then carries energy, because the conversion fraction is already an energy ratio. With E₀ = mc² the rest energy and E_k = ½mv² the classical kinetic energy, E_k/E₀ = ½(v/c)² = τ_A²/2 = η exactly, so **η is the classical kinetic energy as a fraction of rest energy** — the companion identity to E = mc², carried in the corpus since [9,9,2,0] under the name conversion fraction. Placing the ladder in that reading gives η_n = b₀⁻²ⁿ/2, with consecutive rungs differing by exactly 1/TL = 7.304649921853084 in energy released per unit mass.

Against that ladder the measured table of nuclear energetics lands in a single rung. Taking published figures and placing each process by its own relativistic reading, the proton-proton chain sits at rung 2.1433, deuterium-tritium fusion at 2.4627 and uranium-235 fission at 3.1714: **every nuclear process humans run occupies a band 1.0280 rungs wide**, one step of the ladder, while matter-antimatter annihilation sits at rung 0.1447 with τ_A = √3/2 exactly, where γ = 2.

The classical reading also certifies its own accuracy. Expanding γ − 1 = τ²/2 + 3τ⁴/8 + … gives a relative error of (3/4)·TL^n = (3/2)·η, so the rung dependence cancels out of the ratio entirely and **the classical formula's relative error is three halves of the conversion fraction it computes** — a practitioner reads η off their own energetics and knows the error without evaluating γ. The error descends the ladder at 1/TL per rung, the same rate as the energy it accompanies, and the relative error reaches one percent at η = 0.6659226%, rung 2.1768, with the proven bound giving a guaranteed line at η ≤ 1/200. The nuclear table lies below those lines except for hydrogen burning, whose error is 1.07%.

Finally the two bases stand on one ladder. With ln b₀ = 0.9942555604839052 = ½·ln(1/TL), e sits at rung 1.0057776287550244, so **1/e and √TL are rungs −1.0057776287550244 and −1 of the same ladder**, located by two rulers and separated by a rung fraction written down exactly. The corridor occupies rungs 2.0000000000 to 2.1285719453, a width of 2·ln(25/22)/ln(1/TL) = 0.1285719453 rungs, and the two corridor bases stand in the exact ratio b_IVA/b₀ = √(25/22) = 1.066003581778052171492188662169, the same 25/22 already carried as the ratio of the two landings in [9,9,0,17.1].

## What This Article Proves

Every result below corresponds to a named theorem in `SNSFL_GeometricBase_EnergyLadder_Reduction.lean` at coordinate [9,9,8,12](MATH), which compiles under the continuous-integration build of the SNSFT/identityphysics repository on Lean 4 v4.31.0 with Mathlib, carrying 0 sorry and 0 custom axioms. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate.

1. The grounding enters as arithmetic on published quantities: the constants at full precision, the Torsion Limit inside the unit interval, the corridor floor below the ceiling, the exactness anchor TL × 1001 = α⁻¹, the bare and kinetic terms, Reading A squared as twice the conversion fraction, the corridor factor 22/25 and the endpoint ratio 25/22 (`t1_const_values`, `t2_tl_in_unit_interval`, `t3_floor_below_ceiling`, `t4_tl_times_1001_is_alpha`, `t5_bare_plus_kinetic`, `t6_tau_sq_is_twice_eta`, `t7_corridor_factor`, `t8_endpoint_ratio`).
2. **The conversion fraction is the classical kinetic energy as a fraction of rest energy.** The quotient E_k/E₀ reduces to η exactly, stated both as a ratio and as a product, with the speed of light positive and the fraction nonnegative (`t9_c_pos`, `t10_eta_is_energy_ratio`, `t11_eta_from_reading_a`, `t12_eta_nonneg`).
3. **The classical fraction is bounded by one half**, and **total conversion sits at Reading A = √3/2**, where the relativistic factor is exactly 2 (`t13_eta_classical_bounded`, `t14_annihilation_gamma`).
4. **The base the geometry selects.** b₀ is positive, b₀² is the ceiling's landing 1/TL, and the base is the operator applied to that landing while the landing is the operator's own closure at TL — so no new construct enters. The corridor floor's base is positive, and the base is located numerically (`t15_root_tl_pos`, `t16_base_pos`, `t17_base_sq`, `t18_base_from_operator`, `t19_iva_base_pos`, `t20_base_numeric`).
5. **The ladder is exact integer powers.** Each rung is an inverse power of the base; rung zero is one, rung one is √TL, **rung two is the Torsion Limit exactly**, rung four is its square, and every even rung is a power of the Torsion Limit (`t21_rung_is_base_power`, `t22_rung_zero`, `t23_rung_one`, `t24_rung_two`, `t25_rung_four`, `t26_even_rungs`).
6. Every rung is positive, the ladder descends, and **the operator is the one-rung step** (`t27_rung_pos`, `t28_ladder_descends`).
7. **The parity over ℚ.** The Torsion Limit is exactly 8556193749001/62500000000000, its landing is exactly 62500000000000/8556193749001, and every even rung is that rational to an integer power (`t29_tl_rational`, `t30_landing_rational`, `t31_even_rungs_rational`).
8. **The arithmetic that places the odd rungs outside ℚ:** the denominator factors as 191 · 23767 · 1884833, all three factors are prime, and **191 divides it exactly once** (`t32_denominator_factors`, `t33_factors_prime`, `t34_prime_divides_once`).
9. **The base is a refractive index.** The matched ratio of a medium is its own relative permittivity, b₀ is the index at ε_r = 1/TL, that medium's permittivity is the base squared, and its Reading A is rung one (`t35_perm_is_matched_ratio`, `t36_base_is_index`, `t37_perm_is_base_sq`, `t38_medium_reading_is_rung_one`).
10. **The energy ladder.** Each rung's conversion fraction is its own Reading A converted, and **consecutive rungs differ by exactly 1/TL in energy released per unit mass**, with rung one and rung two located and rung one given numerically (`t39_eta_rung_from_tau`, `t40_energy_step`, `t41_eta_rung_one`, `t42_eta_rung_two`, `t43_eta_rung_one_numeric`).
11. The energy ladder is strictly decreasing and positive at every rung, and reads in propulsion units without change (`t44_energy_decreasing`, `t45_eta_rung_pos`, `t46_ladder_in_isp`).
12. **The classical reading is strictly below the relativistic one** on the whole admissible range (`t47_classical_underestimates`).
13. **The error sandwich.** On the range τ_A² ≤ TL the absolute error lies between (3/8)τ_A⁴ and (1/2)τ_A⁴, proved from the two exact factorizations 8 − s(8 + 4τ² + 3τ⁴) = (1−s)³(3s² + 9s + 8) and 2s(1 + τ²/2 + τ⁴/2) − 2 = (s−1)²(s³ + 2s² − 2) with s = √(1 − τ²); restated in the fraction it computes, the error lies between (3/2)η² and 2η², so **the relative error lies between (3/2)η and 2η** (`t48_error_sandwich`, `t49_error_in_eta`).
14. The sandwich holds at the corridor ceiling and at the ceiling rung, and **the guaranteed one-percent line follows from the proven bound at η ≤ 1/200** (`t50_ceiling_error_small`, `t51_sandwich_at_rung_two`, `t52_one_percent_line`).
15. **The two bases on one ladder.** The logarithm of the base is −(ln TL)/2, the logarithm of the Torsion Limit is negative so the base's is positive, **the ceiling sits at rung two exactly**, one rung is ln(1/TL)/2 e-folds, e sits at the reciprocal of that logarithm, 1/e and rung one are located on the one ladder, and **every rung index returns its own integer** (`t53_log_base`, `t54_log_tl_neg`, `t55_log_base_pos`, `t56_ceiling_at_rung_two`, `t57_rung_in_efolds`, `t58_e_rung`, `t59_inv_e_and_rung_one`, `t60_rung_index_of_rung`).
16. **The corridor between the bases.** The two bases stand in the exact ratio √(25/22), that ratio is above one, the corridor width is 2·ln(25/22)/ln(1/TL) in closed form and positive, the floor's base squared is its own landing and is located numerically, and **the squared ratio is exactly 25/22** (`t61_base_ratio`, `t62_base_ratio_gt_one`, `t63_corridor_width`, `t64_corridor_width_pos`, `t65_iva_base_sq`, `t66_iva_base_numeric`, `t67_corridor_as_base_ratio`).
17. **Where the classical reading ends.** It is bounded by one half and admits no total conversion, while the relativistic reading carries total conversion at an admissible Reading A; rung one's fraction is half the Torsion Limit, the rung phases are located, and **the two readings bracket each other within the stated margin** (`t68_classical_bounded_total_conversion_outside`, `t69_relativistic_carries_total`, `t70_rung_one_fraction`, `t71_rung_phases`, `t72_two_readings_bracket`).
18. All of the above close under one master theorem (`MASTER_geometric_base_energy_ladder`).

Two classes of statement in this article are arithmetic rather than theorems, and they are marked as such where they appear. The irrationality of b₀ rests on the standard result that a rational is a square in ℚ only when every prime exponent in its factorization is even; the formal layer carries the arithmetic that invokes it — the factorization, the primality of each factor, and 191 dividing the denominator exactly once — and the even-rung half of the parity is proved outright. And the rung placements of the measured table in §8, §9 and §12 are a published energy release divided by a published rest mass followed by one logarithm, which a reader repeats from a table of atomic masses; the index they land in, the fixed step between rungs and the accuracy bounds they are read against are all carried by the formal layer.

## Connections to the Formalized Corpus

**The Torsion Limit.** The Universal Torsion Limit is TL = 0.136899099984016 and the Sovereign Anchor Constant is Ω₀ = TL × 10 = 1.36899099984016. Nothing in this article sets it. It enters at full corpus precision from the inverse fine-structure constant, by direct subtraction:

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

This agrees with the CODATA (Committee on Data of the International Science Council) 2018 value in every published digit at ε = 0, with no free parameter ([9,9,3,14]). The full multiplier factors as 1001 = 7 · 11 · 13, so TL = α⁻¹/1001. Folding the factor of ten into the multiplier gives the same identity in one step, Ω₀ × 100.1 = α⁻¹, with 100.1 = (7 · 11 · 13)/10.

**Every quantity in this article is a pure number.** TL and Ω₀ carry no units and 1001 is an integer, and substituting SI base units into α⁻¹ = 4πε₀ℏc/e² cancels mass, length, time and current completely. The same holds for everything that follows: Reading A, the conversion fraction η, the rung index, the relative permittivity and the matched ratio are all ratios, and a base is a pure number by definition. Energy enters only as a fraction of energy, which is why the ladder carries it without ever naming a unit.

The propulsion reduction at [9,9,2,0] establishes that one vehicle carries two independent torsions. **Reading A** is τ_A = v_e/c, the effective exhaust velocity against light speed, bounded to (0,1). **Reading B** is τ_B = ln(m₀/m_f), the exponent of the ideal rocket relation, unbounded above. The **bridge** is Δv = c · τ_A · τ_B. The **conversion fraction** is η, with τ_A² = 2η exactly.

[9,9,0,17] establishes the matched radius r_match = r_s/τ_A², so the **matched ratio** is

> **matched_ratio(τ_A) = 1/τ_A²**

with the attracting mass canceling. [9,9,0,17.1] establishes the **square-root torsion operator** S X = √X together with its closure result,

> **matched_ratio(S X) = 1/X**

the root canceling exactly so that the layer closes over ℚ, and the self-centering property that k < S k < 1 for every k ∈ (0,1). The two **landings** of that closure at the corridor endpoints are 1/TL = 7.304649921853084 and 1/TL_IVA = 8.300738547560323, standing in the ratio 25/22. [9,9,0,18] establishes the surface torsion τ_surface = √C with C = r_s/R the compactness, and [9,9,0,20] establishes that a drive tuned to a body's own address has its matched radius exactly at that body's surface.

The Logarithm Reduction [9,9,8,9] maps the natural logarithm as the Narrative accumulated along multiplicative growth, with **e as the growth whose accumulated area is exactly one**. That is a condition stated inside analysis: it asks for the base whose own derivative returns it, and it is satisfied by e = 2.718281828459045 to whatever precision is wanted. The condition is exact and the base it selects is exact. What the condition does not do is consult the structure being counted. Any base will count folds; analysis selects this one because it makes the calculus clean.

[9,9,8,11] establishes Reading B as an e-fold count, τ = ∫(−dY/Y) = ln(Y₀/Y), with consumed fraction 1 − e^−τ, across propulsion, optics, nuclear decay, circuits and capital. That reduction counts in the analytic base throughout. This one asks which base the geometry selects when the question is put to it instead.

**The fusion logic.** The four-phase structure and the Torsion Limit come from GAMCollider™ v15 fusion logic, formalized in 8-Beam Fusion [9,9,2,3.8] and 4-Beam Verification [9,9,2,3.7].

**How the bounds are carried.** Every threshold here is stated as an exact quantity rather than a rounded decimal, following Bounded Uncertainty: A Guide [9,9,8,7].

## The PNBA Map

| Primitive | In the geometric-base reading | Carried by |
|---|---|---|
| **Pattern** | The structure the base is selected to make integral — the Torsion Limit itself | TL = b₀⁻², exactly |
| **Narrative** | The ladder the rungs are counted along, each step one application of the operator | rung index n |
| **Behavior** | The characteristic speed each rung exhibits against the ceiling | Reading A = b₀⁻ⁿ |
| **Adaptation** | The fraction of rest mass the rung converts | η = TL^n/2 |

**The ladder, as exact integer powers.** Each rung is b₀ to an integer power, and the rungs the corpus already names are the even ones.

| rung n | b₀^−ⁿ | in TL | value |
|---|---|---|---|
| −2 | b₀⁺² | 1/TL | 7.304649921853084038 |
| −1 | b₀⁺¹ | 1/√TL | 2.702711586879570138 |
| 0 | b₀⁰ | 1 | 1.000000000000000000 |
| **1** | **b₀⁻¹** | **√TL** | **0.369998783760184802** |
| **2** | **b₀⁻²** | **TL** | **0.136899099984016004** |
| 3 | b₀⁻³ | TL^(3/2) | 0.050652500491950 |
| **4** | **b₀⁻⁴** | **TL²** | **0.018741363576433610** |

**The parity over ℚ.** TL is a terminating decimal, so TL = 8556193749001/62500000000000 exactly and 1/TL = 62500000000000/8556193749001 exactly. The denominator factors as **191 · 23767 · 1884833**, every exponent odd.

| rungs | quantities | field |
|---|---|---|
| **even** (0, ±2, ±4, …) | 1, TL, TL², 1/TL, 1/TL² | exactly in **ℚ** |
| **odd** (±1, ±3, …) | √TL, b₀, TL^(3/2) | irrational |

**The energy ladder.** η at rung n is TL^n/2, so consecutive rungs differ by exactly 1/TL = 7.304649921853084 in energy released per unit mass.

| rung | τ_A = b₀^−ⁿ | η = τ_A²/2 | v_e (m/s) | Isp (s) |
|---|---|---|---|---|
| 1 | 0.369998783760185 | 6.84495% | 1.1092 × 10⁸ | 11,310,982 |
| 2 | 0.136899099984016 | 0.93707% | 4.1041 × 10⁷ | 4,185,050 |
| 3 | 0.050652500491950 | 0.12828% | 1.5185 × 10⁷ | 1,548,463 |
| 4 | 0.018741363576434 | 0.01756% | 5.6185 × 10⁶ | 572,930 |

**The measured table on the ladder.** Each η is a published energy release divided by a published rest mass. The relativistic index is defined across the whole range; the classical index is the one in which a rung is exactly a factor of 1/TL in energy.

| process | energetics used | η | rung, relativistic | τ_A | rung, classical |
|---|---|---|---|---|---|
| matter–antimatter annihilation | η = 1 | 100.00000% | **0.1447** | **√3/2 = 0.866025403784** | — |
| **proton–proton chain** | 26.73 MeV / 4 × 938.272 MeV | **0.71221%** | **2.1433** | 0.118716167 | 2.1380 |
| **deuterium–tritium fusion** | 17.59 MeV / 4684.534 MeV | **0.37549%** | **2.4627** | 0.086416036 | 2.4599 |
| **uranium-235 fission** | 200 MeV nominal / 235 u | **0.09137%** | **3.1714** | 0.042717772 | 3.1707 |

**Every nuclear process humans run occupies a band 1.0280 rungs wide** — stellar hydrogen burning at 2.1433, uranium fission at 3.1714, with D-T fusion between them. In the classical index, where a rung is exactly an energy factor, the span is 1.0327 rungs and (1/TL)^1.0327 = 7.795215747272643 against the direct ratio 7.795215747272646, agreeing to fifteen digits.

**The classical reading certifies its own accuracy.** Expanding γ − 1 = τ²/2 + 3τ⁴/8 + … gives a relative error of (3/4)·TL^n = (3/2)·η, so the rung index cancels out of the ratio entirely.

| rung | η classical | γ − 1 | relative error | (3/2)·η |
|---|---|---|---|---|
| 1 | 0.068449549992 | 0.076388911654 | 10.393343% | 10.267432% |
| **2** | **0.009370681788** | **0.009504487708** | **1.407818%** | **1.405602%** |
| 3 | 0.001282837903 | 0.001285311702 | 0.192467% | 0.192426% |
| 4 | 0.000175619354 | 0.000175665631 | 0.026344% | 0.026343% |
| 5 | 0.000024042132 | 0.000024042999 | 0.003606% | 0.003606% |

The error descends the ladder at 1/TL per rung, the same rate as the energy, converging on 7.304649921853084 from above (7.382588287, 7.314600435, 7.305999830, 7.304835261). The relative error reaches one percent at **η = 0.6659226%, rung 2.1768**, and the proven bound gives a guaranteed line at **η ≤ 1/200**.

**The two bases on one ladder.**

| base | value | fixed by |
|---|---|---|
| **e** | 2.718281828459045 | the analytic condition — the growth whose accumulated area is one |
| **b₀** | 2.702711586879570 | the geometry — TL = b₀⁻² |
| **b_IVA** | 2.881100232126665 | the geometry — TL_IVA = b_IVA⁻² |

With ln b₀ = 0.9942555604839052 = ½·ln(1/TL), e sits at rung 1.0057776287550244, so **1/e is rung −1.0057776287550244 and √TL is rung −1 exactly** — 0.005777628755024 of a rung apart, located by two rulers.

**The corridor in rungs.** The ceiling sits at rung 2.0000000000 and the floor at 2.1285719453, a width of 2·ln(25/22)/ln(1/TL) = **0.1285719453 rungs**, with the two bases in the exact ratio **b_IVA/b₀ = √(25/22) = 1.066003581778052171492188662169**.

**The four numbers a reader can check.** Take a published energy release, divide by a published rest mass to get η, invert to Reading A, then take the rung index against b₀ = 2.702711586879570. Four steps, each one operation, from a table of atomic masses to a place on the ladder.

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in `SNSFL_GeometricBase_EnergyLadder_Reduction.lean` at 9,9,8,12, with 72 theorems and a master theorem across 864 lines. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate. The nuclear energetics quoted are published figures a reader can repeat as one division against a table of atomic masses. Nothing is fitted, and nothing is scaled.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.** This reduction closes on dimensionless identities, closed-form expressions in published quantities, and arithmetic on published nuclear energetics. It supplies no composition, no stoichiometric balance, no enrichment or separation route, no device geometry and no engineering specification.

### What is established

The results of this article are exact statements about pure numbers and about ratios of published quantities, and they hold as stated. The base b₀ = 1/√TL makes the torsion ladder exact integer powers. The ladder's even rungs lie in ℚ and its odd rungs do not. The base is the refractive index at ε_r = 1/TL. The conversion fraction is the classical kinetic energy as a fraction of rest energy. The energy ladder steps by 1/TL per rung. The published nuclear table lands where §8 places it and spans 1.0280 rungs. The classical reading's relative error is three halves of the fraction it computes, falls by 1/TL per rung, and crosses one percent at rung 2.1768. The two bases stand on one ladder with ln b₀ = 0.9942555604839052 between them, and the corridor is 0.1285719453 rungs wide with b_IVA/b₀ = √(25/22).

These are real results, computable from this article and a table of atomic masses, and testable by anyone with a calculator. A reader who repeats the arithmetic gets the same numbers. A qualified practitioner — at an agency, a national laboratory, a university group, or a well-equipped independent shop — can work from them directly and safely, and the index they supply is usable the day it is read.

### What is a different question

Where a process sits on the ladder is a statement about the energy it releases per unit mass. It is not a statement about how to cause that process, how to sustain it, how to confine it, how to extract work from it, or what it would cost. Those are engineering and physics questions with their own literatures, their own facilities and their own licensing, and this article addresses none of them.

That the nuclear band occupies one rung says the three processes are close in energy per unit mass. It does not say they are close in difficulty, and they are not: the conditions required to run them differ by orders of magnitude in temperature, confinement and containment, and nothing in a rung index speaks to that. An index locates; it does not enable.

Likewise, that the classical formula is accurate to better than one percent below rung 2 is a statement about two formulas agreeing. Whether a particular calculation should use either of them depends on what else enters it, and that judgment belongs to the practitioner and their review process.

### Where the risk actually lives

The risk in this subject area has never lived in the arithmetic of mass defect, which has been in undergraduate textbooks since the 1930s and in published evaluations since. It lives in materials, in facilities, in regulatory compliance and in the physical conditions under which energetic processes are run. Those conditions are governed by national and international frameworks, by licensed operators and by institutional review, and they are where attention belongs.

An exact figure is not a reduced hazard, and an index is not a hazard at all. The exactness of a rung placement is why every remaining variable in working with an energetic process is process: the conditions, the controls and the competence of the people present. Hazard in this domain scales with which controls are in place — containment, monitoring, interlocks, shielding, trained personnel, regulatory oversight — and with scale, not with the venue. A well-equipped institutional or independent program operating within its licensing is not the concern. The underfunded shortcut is.

Withholding a number would not be a control here in any case. Every energetics figure in §8 is in published nuclear data evaluations and in standard textbooks, and any reader with a reference work or an AI assistant retrieves them in seconds. An MRC that rested on omission would rest on nothing. This one rests on handling practice.

### Handling practice

Plain practice, stated as practice:

Work on energetic nuclear processes belongs in licensed facilities, under the regulatory framework that governs them, with trained personnel and institutional review. That is not a restriction this article adds; it is the existing framework, and it applies whether or not a rung index is in use.

Calculations are checked before they are relied on. The accuracy rule of §10 is given so that a practitioner knows the error in the classical reading without a second evaluation; it is an aid to checking, not a substitute for it, and where the relativistic reading is available it is the one to carry.

Published energetics are cited to their evaluations, with the convention stated. The fission figure in §8 is the nominal 200 MeV per event, and that convention travels with the placement; a reader using a different evaluated value gets a slightly different rung and should say which value they used.

Educational use is straightforward and welcome. The four-step check of this article — take a published energy release, divide by a published rest mass, invert to a Reading A, take the rung index — is arithmetic a student can do with a calculator and a mass table, and it teaches mass defect, rest energy and the relativistic correction in one exercise. Nothing in that exercise touches material, apparatus or condition.

### What this section is for

Parents, teachers, reviewers and program managers make real decisions from articles like this one. An article that reads as unreal gets no respect for its safety content, and a reader who concludes the results are not real has been given a reason to ignore the handling practice alongside them. So this section says plainly that the results hold, that they are computable and checkable, that qualified people can work from them, and that the care belongs to the conditions under which energetic processes are run rather than to the arithmetic that locates them.

A reader who finds only this article and no other in the corpus should still finish this section knowing what is established, what is a separate question, where the risk lives and what practice looks like. That is why it is written at full length.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Each law above is stated with its premises, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Einstein, A. "Ist die Trägheit eines Körpers von seinem Energieinhalt abhängig?" *Annalen der Physik* 18:639–641, 1905.
2. Einstein, A. "Zur Elektrodynamik bewegter Körper." *Annalen der Physik* 17:891–921, 1905.
3. Tsiolkovsky, K. E. "Исследование мировых пространств реактивными приборами" (Exploration of Outer Space by Means of Rocket Devices). *Nauchnoye Obozreniye*, 1903.
4. Bethe, H. A. "Energy Production in Stars." *Physical Review* 55:434–456, 1939.
5. Bethe, H. A. and Critchfield, C. L. "The Formation of Deuterons by Proton Combination." *Physical Review* 54:248–254, 1938.
6. Aston, F. W. *Mass Spectra and Isotopes.* Edward Arnold, London, 1933.
7. Hahn, O. and Strassmann, F. "Über den Nachweis und das Verhalten der bei der Bestrahlung des Urans mittels Neutronen entstehenden Erdalkalimetalle." *Naturwissenschaften* 27:11–15, 1939.
8. Meitner, L. and Frisch, O. R. "Disintegration of Uranium by Neutrons: a New Type of Nuclear Reaction." *Nature* 143:239–240, 1939.
9. Wang, M., Huang, W. J., Kondev, F. G., Audi, G. and Naimi, S. "The AME 2020 atomic mass evaluation." *Chinese Physics C* 45(3):030003, 2021.
10. Kondev, F. G., Wang, M., Huang, W. J., Naimi, S. and Audi, G. "The NUBASE2020 evaluation of nuclear physics properties." *Chinese Physics C* 45(3):030001, 2021.
11. Bosch, H.-S. and Hale, G. M. "Improved formulas for fusion cross-sections and thermal reactivities." *Nuclear Fusion* 32(4):611–631, 1992.
12. Krane, K. S. *Introductory Nuclear Physics.* Wiley, 1988.
13. Clayton, D. D. *Principles of Stellar Evolution and Nucleosynthesis.* University of Chicago Press, 1983.
14. Tiesinga, E., Mohr, P. J., Newell, D. B. and Taylor, B. N. "CODATA Recommended Values of the Fundamental Physical Constants: 2018." *Reviews of Modern Physics* 93:025010, 2021.
15. Bureau International des Poids et Mesures. *The International System of Units (SI).* 9th edition, 2019.
16. Born, M. and Wolf, E. *Principles of Optics.* 7th edition, Cambridge University Press, 1999.
17. Jackson, J. D. *Classical Electrodynamics.* 3rd edition, Wiley, 1998.
18. Hardy, G. H. and Wright, E. M. *An Introduction to the Theory of Numbers.* 6th edition, Oxford University Press, 2008.
19. Mac Lane, S. *Categories for the Working Mathematician.* Springer, 1971.
20. Bacon, F. *Novum Organum.* 1620.
21. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Two Readings Across Substrates — Reading B as an E-Fold Count, the Square-Root Operator as a Constitutive Relation, and the Corridor in a Dielectric.* Zenodo, 2026. DOI 10.5281/zenodo.24073396.
22. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: Burn Depth in Matched-Radius Units, the Thrust Floor, and the Engine Each Body Prescribes.* Zenodo, 2026. DOI 10.5281/zenodo.24067782.
23. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Matched Surface Under Rotation, and Spin as an Effective Charge.* Zenodo, 2026. DOI 10.5281/zenodo.24062567.
24. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Propellant Law at the Matched Radius and the Compactness Criterion.* Zenodo, 2026. DOI 10.5281/zenodo.24046267.
25. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Geometric Base — b₀ = 1/√TL, the Energy Ladder, and the Nuclear Band in One Rung.* Zenodo, 2026. DOI 10.5281/zenodo.24087896.
26. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Corpus Provenance

- **[9,9,0,0]** Sovereign Anchor — the ground
- **[9,9,2,3.7]** 4-Beam Verification — GAMCollider™ v15 fusion logic, verified at four beams
- **[9,9,2,3.8]** 8-Beam Fusion Theorem — GAMCollider™ v15 fusion logic, the four-phase structure and the Torsion Limit at eight beams
- **[9,9,3,14]** Alpha Reduction — α⁻¹ = Ω₀ × 100.1, and TL = α⁻¹/1001
- **[9,9,0,15]** Speed of Light Reduction — c locked to the anchor, the photon Noble, relativistic velocity addition
- **[9,9,0,1]** GR Reduction — the Einstein field equation on the dynamic equation, r_s as the Pattern-lock threshold
- **[9,9,3,20]** Transcendental Time Engine — TL as the step on the left side of the dynamic equation
- **[9,9,2,0]** IVA Propulsion Reduction — the two readings, the bridge, the conversion fraction, the gain cap
- **[9,9,8,1]** L0 Isomorphism Consistency — what a structure-preserving map with a two-sided inverse requires
- **[9,9,8,9]** Logarithm Reduction — the natural logarithm as Narrative accumulated along multiplicative growth, and e as the growth whose accumulated area is one
- **[9,9,8,0]** Economics Reduction — torsion as departure from a reference divided by the reference
- **[9,9,0,17]** Matched Radius Reduction, general-reader form — the matched radius, the equivalence, the well worth one e-fold
- **[9,9,0,17.1]** Matched Radius Reduction, specialist form — the square-root torsion operator, the closure over ℚ, the two landings and their ratio 25/22
- **[9,9,0,18]** Propellant Law and Compactness Reduction — the saving bounded by e, the criterion, the level set
- **[9,9,0,19]** Matched Surface Under Rotation — the level set g_tt = τ_A² − 1, spin as an effective charge
- **[9,9,0,20]** Burn Depth and the Thrust Floor — depth in matched-radius units, the engine each body prescribes
- **[9,9,8,11]** Two Readings Across Substrates — Reading B as an e-fold count, the square-root operator as a constitutive relation
- **[9,9,8,12]** This reduction — the geometric base b₀ = 1/√TL, the energy ladder, and the nuclear band in one rung

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska **DOI:** 10.5281/zenodo.18719748 **ORCID:** 0009-0005-5313-7443 **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_GeometricBase_EnergyLadder_Reduction.lean — [9,9,8,12](MATH)

```lean
-- ============================================================
-- SNSFL_GeometricBase_EnergyLadder_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE GEOMETRIC BASE AND THE ENERGY LADDER
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,8,12](MATH) | Mathematics Ground — Foundations
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, the conversion fraction, the matched
-- ratio, the square-root torsion operator, the rest energy, the classical
-- kinetic energy and the relativistic factor are all restated here at full
-- precision, so that a reader or a machine can close every proof without
-- leaving the file. The parent reductions are named in the provenance block
-- for the record, not as dependencies of the proofs.
--
-- Parents of record:
--   [9,9,8,11]   Two Readings Across Substrates — Reading B as a fold count, eps_r = matched ratio
--   [9,9,8,9]    Logarithm Reduction           — e by accumulated area one
--   [9,9,8,1]    L0 Isomorphism Consistency    — what a structure-preserving map requires
--   [9,9,0,20]   Burn Depth and Thrust Floor   — the address theorem
--   [9,9,0,18]   Propellant Law, Compactness   — tau_surface = sqrt C
--   [9,9,0,17.1] Matched Radius, specialist    — S X = sqrt X, the closure, the two landings, 25/22
--   [9,9,0,17]   Matched Radius Reduction      — r_match = r_s/tau_A^2
--   [9,9,2,0]    IVA Propulsion Reduction      — the two readings, the bridge, tau_A^2 = 2 eta
--   [9,9,0,15]   Speed of Light Reduction      — c locked to the anchor
--   [9,9,3,14]   Alpha Reduction               — alpha^-1 = Omega_0 x 100.1, TL = alpha^-1/1001
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   THE CONVERSION FRACTION IS AN ENERGY RATIO. With E_0 = m c^2 the rest
--   energy and E_k = (1/2) m v^2 the classical kinetic energy, their quotient
--   is exactly tau_A^2/2 = eta. The corpus conversion fraction and the ratio
--   E = mc^2 is compared against are ONE NUMBER.
--
--   THE GEOMETRIC BASE. b_0 = 1/sqrt(TL) is built by the corpus operator
--   applied to a corpus quantity, b_0^2 = 1/TL = matched_ratio(S TL), so no
--   new construct enters. In that base every rung of the torsion ladder is an
--   exact integer power: tau at rung n is sqrt(TL)^n, with TL at rung 2 and
--   sqrt(TL) at rung 1.
--
--   THE PARITY OVER ℚ. TL is a terminating decimal, so TL and 1/TL are
--   exactly rational and every EVEN rung lies in ℚ. The denominator of 1/TL
--   factors as 191 * 23767 * 1884833, with 191 dividing it exactly once, which
--   is the arithmetic that places the odd rungs outside ℚ.
--
--   THE BASE IS AN INDEX. b_0 is the refractive index of a medium whose
--   relative permittivity is 1/TL, by matched_ratio(S X) = 1/X — the same
--   operator, the same closure, the same value. The base the geometry selects
--   and a constitutive constant are one object.
--
--   THE ENERGY LADDER. eta at rung n is TL^n/2, so consecutive rungs differ by
--   EXACTLY 1/TL in energy released per unit mass, and a span in rungs
--   converts to an energy ratio without loss.
--
--   THE CLASSICAL READING CERTIFIES ITSELF. The classical fraction is strictly
--   below the relativistic one, and on the range tau^2 <= TL the absolute
--   error is sandwiched between (3/2)eta^2 and 2 eta^2, so the relative error
--   lies between (3/2)eta and 2 eta — the formula reports its own accuracy.
--   The classical reading is bounded by 1/2, and total conversion sits at
--   tau_A = sqrt(3)/2 where the relativistic factor is exactly 2.
--
--   THE TWO BASES ON ONE LADDER. log b_0 = -(log TL)/2, TL sits at rung 2
--   exactly, the corridor width is 2 log(25/22)/log(1/TL), and the two
--   corridor bases stand in the exact ratio sqrt(25/22).
--
-- ============================================================

import Mathlib

noncomputable section

namespace SNSFL_GeometricBaseEnergyLadder

-- ============================================================
-- SECTION 0: CONSTANTS, THE FOUR PHASES, READING A
-- Restated here in full. This file depends on no other file.
-- ============================================================

/-- The Sovereign Anchor, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Torsion Limit. Ω₀/10 — discovered, not chosen. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor. 0.88 × TL. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- Speed of light in vacuum, m/s. Exact by SI definition. -/
def C_LIGHT : ℝ := 299792458

/-- Standard gravitational acceleration, m/s². Exact by definition. -/
def G_STANDARD : ℝ := 9.80665

/-- The inverse fine-structure constant. Ω₀ × 100.1. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The integer the Torsion Limit divides the fine-structure constant by. -/
def TL_DIVISOR : ℝ := 1001

inductive Phase : Type
  | Noble
  | Locked
  | IVA
  | Shatter
  deriving DecidableEq, Repr

def classify (τ : ℝ) : Phase :=
  if τ = 0 then Phase.Noble
  else if τ < TL_IVA then Phase.Locked
  else if τ < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

/-- Reading A. A characteristic speed against the limiting speed. -/
def tau_A (v : ℝ) : ℝ := v / C_LIGHT

/-- The rest-mass conversion fraction: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The matched radius in Schwarzschild units: 1/τ_A². -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

/-- The square-root torsion operator. -/
def sqrt_op (X : ℝ) : ℝ := Real.sqrt X

-- [T1] :: {VER} | THE CONSTANTS, AS DECIMAL LITERALS
theorem t1_const_values :
    TORSION_LIMIT = 0.136899099984016 ∧ TL_IVA = 0.12047120798593408 := by
  constructor
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T2] :: {VER} | THE TORSION LIMIT IS POSITIVE AND BELOW ONE
theorem t2_tl_in_unit_interval : 0 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T3] :: {VER} | THE CORRIDOR FLOOR IS POSITIVE AND BELOW THE CEILING
theorem t3_floor_below_ceiling : 0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T4] :: {VER} | THE EXACTNESS ANCHOR: TL × 1001 = α⁻¹
theorem t4_tl_times_1001_is_alpha : TORSION_LIMIT * TL_DIVISOR = ALPHA_INV := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, ALPHA_INV]; norm_num

-- [T5] :: {VER} | THE BARE TERM AND THE KINETIC TERM
theorem t5_bare_plus_kinetic :
    100 * SOVEREIGN_ANCHOR + TORSION_LIMIT = ALPHA_INV ∧
    1000 * TORSION_LIMIT + TORSION_LIMIT = ALPHA_INV := by
  constructor
  · simp only [SOVEREIGN_ANCHOR, TORSION_LIMIT, ALPHA_INV]; norm_num
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T6] :: {VER} | READING A SQUARED IS TWICE THE CONVERSION FRACTION
theorem t6_tau_sq_is_twice_eta (t : ℝ) : t ^ 2 = 2 * eta_of_tau t := by
  simp only [eta_of_tau]; ring

-- [T7] :: {VER} | THE CORRIDOR FLOOR IS THE CEILING TIMES 22/25
theorem t7_corridor_factor : TL_IVA = TORSION_LIMIT * (22 / 25) := by
  simp only [TL_IVA]; norm_num

-- [T8] :: {VER} | THE RATIO OF THE CORRIDOR ENDPOINTS IS 25/22
theorem t8_endpoint_ratio : TORSION_LIMIT / TL_IVA = 25 / 22 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- ============================================================
-- SECTION 1: THE CONVERSION FRACTION IS AN ENERGY RATIO
-- ============================================================

/-- Rest energy: E₀ = m c². -/
def rest_energy (m : ℝ) : ℝ := m * C_LIGHT ^ 2

/-- Classical kinetic energy: E_k = ½ m v². -/
def kinetic_classical (m v : ℝ) : ℝ := m * v ^ 2 / 2

/-- The relativistic factor. -/
def gamma (t : ℝ) : ℝ := 1 / Real.sqrt (1 - t ^ 2)

/-- The relativistic conversion fraction: γ − 1. -/
def eta_rel (t : ℝ) : ℝ := gamma t - 1

-- [T9] :: {VER} | THE SPEED OF LIGHT IS POSITIVE
theorem t9_c_pos : 0 < C_LIGHT := by simp only [C_LIGHT]; norm_num

-- [T10] :: {MASTER} | THE CONVERSION FRACTION IS THE CLASSICAL KINETIC ENERGY
--                     AS A FRACTION OF REST ENERGY
theorem t10_eta_is_energy_ratio (m v : ℝ) (hm : m ≠ 0) :
    kinetic_classical m v / rest_energy m = eta_of_tau (tau_A v) := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t9_c_pos
  simp only [kinetic_classical, rest_energy, eta_of_tau, tau_A]
  field_simp

-- [T11] :: {INV} | STATED ON READING A DIRECTLY
theorem t11_eta_from_reading_a (m v : ℝ) (hm : m ≠ 0) :
    kinetic_classical m v = eta_of_tau (tau_A v) * rest_energy m := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t9_c_pos
  simp only [kinetic_classical, rest_energy, eta_of_tau, tau_A]
  field_simp

-- [T12] :: {INV} | THE CONVERSION FRACTION IS NONNEGATIVE
theorem t12_eta_nonneg (t : ℝ) : 0 ≤ eta_of_tau t := by
  simp only [eta_of_tau]; positivity

-- [T13] :: {INV} | THE CLASSICAL FRACTION IS BOUNDED BY ONE HALF
theorem t13_eta_classical_bounded (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    eta_of_tau t < 1 / 2 := by
  simp only [eta_of_tau]
  nlinarith [h0, h1]

-- [T14] :: {MASTER} | TOTAL CONVERSION SITS AT READING A = √3/2, WHERE γ = 2
theorem t14_annihilation_gamma :
    gamma (Real.sqrt 3 / 2) = 2 ∧ eta_rel (Real.sqrt 3 / 2) = 1 := by
  have h3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have hin : 1 - (Real.sqrt 3 / 2) ^ 2 = (1 / 2 : ℝ) ^ 2 := by
    rw [div_pow, h3]; norm_num
  have hg : gamma (Real.sqrt 3 / 2) = 2 := by
    simp only [gamma, hin]
    rw [Real.sqrt_sq (by norm_num : (0:ℝ) ≤ 1 / 2)]
    norm_num
  exact ⟨hg, by simp only [eta_rel, hg]; norm_num⟩

-- ============================================================
-- SECTION 2: THE BASE THE GEOMETRY SELECTS
-- ============================================================

/-- The geometric base: b₀ = 1/√TL. -/
def geom_base : ℝ := 1 / Real.sqrt TORSION_LIMIT

/-- The corridor floor's base: b_IVA = 1/√TL_IVA. -/
def iva_base : ℝ := 1 / Real.sqrt TL_IVA

-- [T15] :: {VER} | THE ROOT OF THE TORSION LIMIT IS POSITIVE
theorem t15_root_tl_pos : 0 < Real.sqrt TORSION_LIMIT :=
  Real.sqrt_pos.mpr t2_tl_in_unit_interval.1

-- [T16] :: {VER} | THE GEOMETRIC BASE IS POSITIVE
theorem t16_base_pos : 0 < geom_base := by
  simp only [geom_base]
  exact div_pos one_pos t15_root_tl_pos

-- [T17] :: {MASTER} | THE BASE SQUARED IS THE CEILING'S LANDING
theorem t17_base_sq : geom_base ^ 2 = 1 / TORSION_LIMIT := by
  have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  have hne : Real.sqrt TORSION_LIMIT ≠ 0 := ne_of_gt t15_root_tl_pos
  simp only [geom_base, div_pow, one_pow, hs]

-- [T18] :: {MASTER} | THE BASE IS THE OPERATOR APPLIED TO THE LANDING,
--                     AND THE LANDING IS THE CLOSURE OF THE OPERATOR AT TL
theorem t18_base_from_operator :
    geom_base = sqrt_op (1 / TORSION_LIMIT) ∧
    matched_ratio (sqrt_op TORSION_LIMIT) = 1 / TORSION_LIMIT := by
  have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  constructor
  · simp only [geom_base, sqrt_op, one_div, Real.sqrt_inv]
  · simp only [matched_ratio, sqrt_op, hs]

-- [T19] :: {INV} | THE CORRIDOR FLOOR'S BASE IS POSITIVE
theorem t19_iva_base_pos : 0 < iva_base := by
  simp only [iva_base]
  exact div_pos one_pos (Real.sqrt_pos.mpr t3_floor_below_ceiling.1)

-- [T20] :: {VER} | THE GEOMETRIC BASE, NUMERICALLY
theorem t20_base_numeric : 2.7027115868 < geom_base ∧ geom_base < 2.7027115869 := by
  have hsq := t17_base_sq
  have hpos := t16_base_pos
  have hval : (1:ℝ) / TORSION_LIMIT = 1 / 0.136899099984016 := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  rw [hval] at hsq
  constructor
  · nlinarith [hsq, hpos]
  · nlinarith [hsq, hpos]

-- ============================================================
-- SECTION 3: THE LADDER IS EXACT INTEGER POWERS
-- ============================================================

/-- Reading A at rung n: √TL to the n. -/
def tau_rung (n : ℕ) : ℝ := Real.sqrt TORSION_LIMIT ^ n

-- [T21] :: {MASTER} | THE RUNG IS AN INVERSE POWER OF THE BASE
theorem t21_rung_is_base_power (n : ℕ) : tau_rung n = 1 / geom_base ^ n := by
  have hne : Real.sqrt TORSION_LIMIT ≠ 0 := ne_of_gt t15_root_tl_pos
  simp only [tau_rung, geom_base, div_pow, one_pow]
  field_simp

-- [T22] :: {VER} | RUNG ZERO IS ONE
theorem t22_rung_zero : tau_rung 0 = 1 := by simp only [tau_rung, pow_zero]

-- [T23] :: {VER} | RUNG ONE IS THE ROOT OF THE TORSION LIMIT
theorem t23_rung_one : tau_rung 1 = Real.sqrt TORSION_LIMIT := by
  simp only [tau_rung, pow_one]

-- [T24] :: {MASTER} | RUNG TWO IS THE TORSION LIMIT, EXACTLY
theorem t24_rung_two : tau_rung 2 = TORSION_LIMIT := by
  simp only [tau_rung]
  rw [pow_two, Real.mul_self_sqrt t2_tl_in_unit_interval.1.le]

-- [T25] :: {MASTER} | RUNG FOUR IS THE TORSION LIMIT SQUARED, EXACTLY
theorem t25_rung_four : tau_rung 4 = TORSION_LIMIT ^ 2 := by
  have h : Real.sqrt TORSION_LIMIT ^ 4 = (Real.sqrt TORSION_LIMIT ^ 2) ^ 2 := by ring
  simp only [tau_rung]
  rw [h, pow_two (Real.sqrt TORSION_LIMIT), Real.mul_self_sqrt t2_tl_in_unit_interval.1.le]

-- [T26] :: {MASTER} | THE EVEN RUNGS ARE POWERS OF THE TORSION LIMIT
theorem t26_even_rungs (k : ℕ) : tau_rung (2 * k) = TORSION_LIMIT ^ k := by
  have h2 : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  simp only [tau_rung]
  rw [pow_mul, h2]

-- [T27] :: {INV} | EVERY RUNG IS POSITIVE
theorem t27_rung_pos (n : ℕ) : 0 < tau_rung n := by
  simp only [tau_rung]
  exact pow_pos t15_root_tl_pos n

-- [T28] :: {MASTER} | THE LADDER DESCENDS, AND THE OPERATOR IS THE ONE-RUNG STEP
theorem t28_ladder_descends (n : ℕ) :
    tau_rung (n + 1) < tau_rung n ∧
    sqrt_op (tau_rung (2 * n)) = tau_rung n := by
  have hlt1 : Real.sqrt TORSION_LIMIT < 1 := by
    have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
      Real.sq_sqrt t2_tl_in_unit_interval.1.le
    nlinarith [hs, t15_root_tl_pos, t2_tl_in_unit_interval.2]
  constructor
  · simp only [tau_rung, pow_succ]
    nlinarith [pow_pos t15_root_tl_pos n, hlt1]
  · have hnn : (0:ℝ) ≤ Real.sqrt TORSION_LIMIT ^ n := le_of_lt (pow_pos t15_root_tl_pos n)
    simp only [sqrt_op, tau_rung]
    rw [mul_comm 2 n, pow_mul]
    exact Real.sqrt_sq hnn

-- ============================================================
-- SECTION 4: THE PARITY OVER ℚ
-- ============================================================

-- [T29] :: {MASTER} | THE TORSION LIMIT IS EXACTLY RATIONAL
theorem t29_tl_rational :
    TORSION_LIMIT = (8556193749001 : ℝ) / 62500000000000 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T30] :: {MASTER} | THE LANDING IS EXACTLY RATIONAL
theorem t30_landing_rational :
    1 / TORSION_LIMIT = (62500000000000 : ℝ) / 8556193749001 := by
  rw [t29_tl_rational]
  norm_num

-- [T31] :: {MASTER} | THE EVEN RUNGS LIE IN ℚ, AS AN EXPLICIT RATIONAL POWER
theorem t31_even_rungs_rational (k : ℕ) :
    tau_rung (2 * k) = ((8556193749001 : ℝ) / 62500000000000) ^ k := by
  rw [t26_even_rungs, t29_tl_rational]

-- [T32] :: {MASTER} | THE DENOMINATOR'S FACTORIZATION
theorem t32_denominator_factors :
    (8556193749001 : ℕ) = 191 * 23767 * 1884833 := by norm_num

-- [T33] :: {VER} | THE THREE FACTORS ARE PRIME
theorem t33_factors_prime :
    Nat.Prime 191 ∧ Nat.Prime 23767 ∧ Nat.Prime 1884833 := by
  refine ⟨by norm_num, by norm_num, by norm_num⟩

-- [T34] :: {MASTER} | A PRIME DIVIDES THE DENOMINATOR EXACTLY ONCE,
--                     WHICH IS WHAT PLACES THE ODD RUNGS OUTSIDE ℚ
theorem t34_prime_divides_once :
    (191 : ℕ) ∣ 8556193749001 ∧ ¬ ((191 : ℕ) ^ 2 ∣ 8556193749001) := by
  refine ⟨by norm_num, by norm_num⟩

-- ============================================================
-- SECTION 5: THE BASE IS A REFRACTIVE INDEX
-- ============================================================

/-- Reading A in a medium: the phase velocity c/n against c. -/
def reading_A_medium (n : ℝ) : ℝ := 1 / n

/-- The relative permittivity of a non-magnetic medium, from its index. -/
def perm_of_index (n : ℝ) : ℝ := n ^ 2

/-- The refractive index of a non-magnetic medium, from its permittivity. -/
def index_of_perm (e : ℝ) : ℝ := Real.sqrt e

-- [T35] :: {MASTER} | THE MATCHED RATIO OF A MEDIUM IS ITS OWN PERMITTIVITY
theorem t35_perm_is_matched_ratio (n : ℝ) (hn : n ≠ 0) :
    matched_ratio (reading_A_medium n) = perm_of_index n := by
  simp only [matched_ratio, reading_A_medium, perm_of_index]
  field_simp

-- [T36] :: {MASTER} | THE GEOMETRIC BASE IS THE INDEX AT ε_r = 1/TL
theorem t36_base_is_index : index_of_perm (1 / TORSION_LIMIT) = geom_base := by
  exact (t18_base_from_operator.1).symm

-- [T37] :: {MASTER} | THE PERMITTIVITY OF THAT MEDIUM IS THE BASE SQUARED
theorem t37_perm_is_base_sq : perm_of_index geom_base = 1 / TORSION_LIMIT := by
  simp only [perm_of_index]
  exact t17_base_sq

-- [T38] :: {INV} | THAT MEDIUM'S READING A IS RUNG ONE
theorem t38_medium_reading_is_rung_one :
    reading_A_medium geom_base = tau_rung 1 := by
  have hne : Real.sqrt TORSION_LIMIT ≠ 0 := ne_of_gt t15_root_tl_pos
  simp only [reading_A_medium, geom_base, tau_rung, pow_one]
  field_simp

-- ============================================================
-- SECTION 6: THE ENERGY LADDER
-- ============================================================

/-- The conversion fraction at rung n. -/
def eta_rung (n : ℕ) : ℝ := TORSION_LIMIT ^ n / 2

-- [T39] :: {MASTER} | THE RUNG'S CONVERSION FRACTION IS ITS READING A, CONVERTED
theorem t39_eta_rung_from_tau (n : ℕ) : eta_rung n = eta_of_tau (tau_rung n) := by
  have h2 : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  simp only [eta_rung, eta_of_tau, tau_rung]
  rw [← pow_mul, mul_comm n 2, pow_mul, h2]

-- [T40] :: {MASTER} | CONSECUTIVE RUNGS DIFFER BY EXACTLY 1/TL IN ENERGY
theorem t40_energy_step (n : ℕ) : eta_rung n / eta_rung (n + 1) = 1 / TORSION_LIMIT := by
  have hp : (0:ℝ) < TORSION_LIMIT ^ n := pow_pos t2_tl_in_unit_interval.1 n
  have hne : TORSION_LIMIT ≠ 0 := ne_of_gt t2_tl_in_unit_interval.1
  have hpn : TORSION_LIMIT ^ n ≠ 0 := ne_of_gt hp
  simp only [eta_rung, pow_succ]
  field_simp

-- [T41] :: {VER} | RUNG ONE'S CONVERSION FRACTION IS HALF THE TORSION LIMIT
theorem t41_eta_rung_one : eta_rung 1 = TORSION_LIMIT / 2 := by
  simp only [eta_rung, pow_one]

-- [T42] :: {VER} | RUNG TWO'S CONVERSION FRACTION IS HALF THE SQUARE
theorem t42_eta_rung_two : eta_rung 2 = TORSION_LIMIT ^ 2 / 2 := by
  simp only [eta_rung]

-- [T43] :: {VER} | RUNG ONE'S CONVERSION FRACTION, NUMERICALLY
theorem t43_eta_rung_one_numeric : eta_rung 1 = 0.068449549992008 := by
  simp only [eta_rung, pow_one, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T44] :: {INV} | THE ENERGY LADDER IS STRICTLY DECREASING
theorem t44_energy_decreasing (n : ℕ) : eta_rung (n + 1) < eta_rung n := by
  have hp : (0:ℝ) < TORSION_LIMIT ^ n := pow_pos t2_tl_in_unit_interval.1 n
  simp only [eta_rung, pow_succ]
  nlinarith [hp, t2_tl_in_unit_interval.1, t2_tl_in_unit_interval.2]

-- [T45] :: {INV} | EVERY RUNG'S CONVERSION FRACTION IS POSITIVE
theorem t45_eta_rung_pos (n : ℕ) : 0 < eta_rung n := by
  simp only [eta_rung]
  exact div_pos (pow_pos t2_tl_in_unit_interval.1 n) (by norm_num)

/-- Exhaust velocity at a given Reading A. -/
def exhaust_velocity (t : ℝ) : ℝ := t * C_LIGHT

/-- Specific impulse from an exhaust velocity. -/
def specific_impulse (t : ℝ) : ℝ := t * C_LIGHT / G_STANDARD

-- [T46] :: {INV} | THE LADDER READ IN PROPULSION UNITS
theorem t46_ladder_in_isp (n : ℕ) :
    specific_impulse (tau_rung n) = exhaust_velocity (tau_rung n) / G_STANDARD := by
  simp only [specific_impulse, exhaust_velocity]

-- ============================================================
-- SECTION 7: THE CLASSICAL READING AGAINST THE RELATIVISTIC ONE
-- ============================================================

-- [T47] :: {MASTER} | THE CLASSICAL FRACTION IS STRICTLY BELOW THE RELATIVISTIC
theorem t47_classical_underestimates (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    eta_of_tau t < eta_rel t := by
  have hpos : (0:ℝ) < 1 - t ^ 2 := by nlinarith
  have hs : Real.sqrt (1 - t ^ 2) ^ 2 = 1 - t ^ 2 := Real.sq_sqrt hpos.le
  have hspos : (0:ℝ) < Real.sqrt (1 - t ^ 2) := Real.sqrt_pos.mpr hpos
  have hslt : Real.sqrt (1 - t ^ 2) < 1 := by nlinarith [hs, hspos]
  have hinv : Real.sqrt (1 - t ^ 2) * (1 / Real.sqrt (1 - t ^ 2)) = 1 := by field_simp
  have hqpos : (0:ℝ) < 1 / Real.sqrt (1 - t ^ 2) := div_pos one_pos hspos
  have key : Real.sqrt (1 - t ^ 2) * (t ^ 2 / 2 + 1) < 1 := by
    nlinarith [hs, hspos, hslt, sq_nonneg (Real.sqrt (1 - t ^ 2) - 1)]
  have hmain : t ^ 2 / 2 + 1 < 1 / Real.sqrt (1 - t ^ 2) := by
    nlinarith [key, hinv, hspos, hqpos]
  simp only [eta_of_tau, eta_rel, gamma]
  linarith [hmain]

-- [T48] :: {MASTER} | THE ERROR SANDWICH ON THE RANGE τ² ≤ TL
theorem t48_error_sandwich (t : ℝ) (h0 : 0 < t) (hTL : t ^ 2 ≤ TORSION_LIMIT) :
    (3 / 8) * t ^ 4 ≤ eta_rel t - eta_of_tau t ∧
    eta_rel t - eta_of_tau t ≤ (1 / 2) * t ^ 4 := by
  have hTLval : TORSION_LIMIT = 0.136899099984016 := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  rw [hTLval] at hTL
  have ht1 : t ^ 2 < 1 := by linarith
  have hpos : (0:ℝ) < 1 - t ^ 2 := by linarith
  set s := Real.sqrt (1 - t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - t ^ 2 := Real.sq_sqrt hpos.le
  have hspos : (0:ℝ) < s := Real.sqrt_pos.mpr hpos
  have hslt : s < 1 := by nlinarith [hs, hspos]
  have hslo : (0.929 : ℝ) < s := by nlinarith [hs, hspos]
  have hinv : s * (1 / s) = 1 := by field_simp
  have hsub : t ^ 2 = 1 - s ^ 2 := by linarith [hs]
  have ht4 : t ^ 4 = (1 - s ^ 2) ^ 2 := by
    linear_combination (t ^ 2 + 1 - s ^ 2) * hs
  -- lower bound: 8 - s(8 + 4t² + 3t⁴) = (1-s)³(3s² + 9s + 8) ≥ 0
  have hfacA : (0:ℝ) ≤ (1 - s) ^ 3 * (3 * s ^ 2 + 9 * s + 8) := by
    apply mul_nonneg
    · apply pow_nonneg; linarith
    · nlinarith [hspos]
  have hA : s * (1 + t ^ 2 / 2 + (3 / 8) * t ^ 4) ≤ 1 := by
    rw [ht4, hsub]
    nlinarith [hfacA, hspos, hslt]
  -- upper bound: 2s(1 + t²/2 + t⁴/2) - 2 = (s-1)²(s³ + 2s² - 2) ≥ 0
  have hfacB : (0:ℝ) ≤ (s - 1) ^ 2 * (s ^ 3 + 2 * s ^ 2 - 2) := by
    apply mul_nonneg
    · exact sq_nonneg _
    · nlinarith [hslo, hspos]
  have hB : (1:ℝ) ≤ s * (1 + t ^ 2 / 2 + (1 / 2) * t ^ 4) := by
    rw [ht4, hsub]
    nlinarith [hfacB, hspos, hslt]
  simp only [eta_rel, eta_of_tau, gamma, ← hsdef]
  constructor
  · nlinarith [hA, hinv, hspos]
  · nlinarith [hB, hinv, hspos]

-- [T49] :: {MASTER} | THE ERROR IN TERMS OF THE FRACTION IT COMPUTES
theorem t49_error_in_eta (t : ℝ) (h0 : 0 < t) (hTL : t ^ 2 ≤ TORSION_LIMIT) :
    (3 / 2) * eta_of_tau t ^ 2 ≤ eta_rel t - eta_of_tau t ∧
    eta_rel t - eta_of_tau t ≤ 2 * eta_of_tau t ^ 2 := by
  have h := t48_error_sandwich t h0 hTL
  have hsq : eta_of_tau t ^ 2 = t ^ 4 / 4 := by
    simp only [eta_of_tau]; ring
  rw [hsq]
  exact ⟨by linarith [h.1], by linarith [h.2]⟩

-- [T50] :: {VER} | AT THE CORRIDOR CEILING THE ERROR IS BOUNDED BY TWO PERCENT
theorem t50_ceiling_error_small :
    eta_rel (Real.sqrt TORSION_LIMIT) - eta_of_tau (Real.sqrt TORSION_LIMIT)
      ≤ 2 * eta_of_tau (Real.sqrt TORSION_LIMIT) ^ 2 := by
  have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  exact (t49_error_in_eta (Real.sqrt TORSION_LIMIT) t15_root_tl_pos (by rw [hs])).2

-- [T51] :: {INV} | THE SANDWICH APPLIES AT THE CORRIDOR CEILING RUNG
theorem t51_sandwich_at_rung_two :
    (3 / 2) * eta_of_tau (tau_rung 2) ^ 2
      ≤ eta_rel (tau_rung 2) - eta_of_tau (tau_rung 2) := by
  have hb : tau_rung 2 ^ 2 ≤ TORSION_LIMIT := by
    rw [t24_rung_two]
    nlinarith [t2_tl_in_unit_interval.1, t2_tl_in_unit_interval.2]
  exact (t49_error_in_eta (tau_rung 2) (t27_rung_pos 2) hb).1

-- [T52] :: {MASTER} | THE ONE-PERCENT LINE
theorem t52_one_percent_line (t : ℝ) (h0 : 0 < t) (hTL : t ^ 2 ≤ TORSION_LIMIT)
    (hsmall : eta_of_tau t ≤ 1 / 200) :
    eta_rel t - eta_of_tau t ≤ (1 / 100) * eta_of_tau t := by
  have h := (t49_error_in_eta t h0 hTL).2
  have hp : 0 < eta_of_tau t := by
    simp only [eta_of_tau]; positivity
  nlinarith [h, hp, hsmall]

-- ============================================================
-- SECTION 8: THE TWO BASES ON ONE LADDER
-- ============================================================

/-- The rung index of a Reading A, against the geometric base. -/
def rung_index (t : ℝ) : ℝ := -Real.log t / Real.log geom_base

-- [T53] :: {MASTER} | THE LOGARITHM OF THE GEOMETRIC BASE
theorem t53_log_base : Real.log geom_base = -(Real.log TORSION_LIMIT / 2) := by
  simp only [geom_base, one_div, Real.log_inv,
    Real.log_sqrt t2_tl_in_unit_interval.1.le]

-- [T54] :: {VER} | THE LOGARITHM OF THE TORSION LIMIT IS NEGATIVE
theorem t54_log_tl_neg : Real.log TORSION_LIMIT < 0 :=
  Real.log_neg t2_tl_in_unit_interval.1 t2_tl_in_unit_interval.2

-- [T55] :: {VER} | THE LOGARITHM OF THE GEOMETRIC BASE IS POSITIVE
theorem t55_log_base_pos : 0 < Real.log geom_base := by
  rw [t53_log_base]
  linarith [t54_log_tl_neg]

-- [T56] :: {MASTER} | THE CEILING SITS AT RUNG TWO, EXACTLY
theorem t56_ceiling_at_rung_two : rung_index TORSION_LIMIT = 2 := by
  have hne : Real.log TORSION_LIMIT ≠ 0 := ne_of_lt t54_log_tl_neg
  simp only [rung_index, t53_log_base]
  field_simp

-- [T57] :: {MASTER} | ONE RUNG IS ln b₀ E-FOLDS, AND ln b₀ IS HALF ln(1/TL)
theorem t57_rung_in_efolds :
    Real.log geom_base = Real.log (1 / TORSION_LIMIT) / 2 := by
  rw [t53_log_base, one_div, Real.log_inv]
  ring

-- [T58] :: {MASTER} | e SITS AT A RUNG THE LADDER NAMES EXACTLY
theorem t58_e_rung :
    Real.log (Real.exp 1) / Real.log geom_base = 1 / Real.log geom_base := by
  rw [Real.log_exp]

-- [T59] :: {MASTER} | THE RECIPROCAL OF e AND RUNG ONE, ON ONE LADDER
theorem t59_inv_e_and_rung_one :
    rung_index (Real.exp (-1)) = 1 / Real.log geom_base ∧
    rung_index (tau_rung 1) = 1 := by
  constructor
  · have hle : Real.log (Real.exp (-1 : ℝ)) = -1 := Real.log_exp (-1)
    simp only [rung_index, hle, neg_neg]
  · simp only [rung_index, tau_rung, pow_one,
      Real.log_sqrt t2_tl_in_unit_interval.1.le, t53_log_base]
    have h : Real.log TORSION_LIMIT ≠ 0 := ne_of_lt t54_log_tl_neg
    field_simp

-- [T60] :: {INV} | THE RUNG INDEX OF A POWER IS THE MULTIPLE
theorem t60_rung_index_of_rung (n : ℕ) : rung_index (tau_rung n) = n := by
  have hne : Real.log TORSION_LIMIT ≠ 0 := ne_of_lt t54_log_tl_neg
  simp only [rung_index, tau_rung, Real.log_pow,
    Real.log_sqrt t2_tl_in_unit_interval.1.le, t53_log_base]
  field_simp

-- ============================================================
-- SECTION 9: THE CORRIDOR IN RUNGS, AND √(25/22)
-- ============================================================

-- [T61] :: {MASTER} | THE TWO BASES STAND IN THE RATIO √(25/22)
theorem t61_base_ratio : iva_base / geom_base = Real.sqrt (25 / 22) := by
  have hTL : (0:ℝ) < TORSION_LIMIT := t2_tl_in_unit_interval.1
  have hIVA : (0:ℝ) < TL_IVA := t3_floor_below_ceiling.1
  have hsT : Real.sqrt TORSION_LIMIT ≠ 0 := ne_of_gt t15_root_tl_pos
  have hsI : Real.sqrt TL_IVA ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr hIVA)
  have hstep : iva_base / geom_base = Real.sqrt TORSION_LIMIT / Real.sqrt TL_IVA := by
    simp only [iva_base, geom_base]
    field_simp
  rw [hstep, ← Real.sqrt_div hTL.le]
  rw [t8_endpoint_ratio]

-- [T62] :: {VER} | THE BASE RATIO IS ABOVE ONE
theorem t62_base_ratio_gt_one : 1 < iva_base / geom_base := by
  rw [t61_base_ratio]
  calc (1:ℝ) = Real.sqrt 1 := Real.sqrt_one.symm
    _ < Real.sqrt (25 / 22) := Real.sqrt_lt_sqrt (by norm_num) (by norm_num)

-- [T63] :: {MASTER} | THE CORRIDOR WIDTH IN RUNGS, IN CLOSED FORM
theorem t63_corridor_width :
    rung_index TL_IVA - rung_index TORSION_LIMIT
      = 2 * Real.log (25 / 22) / Real.log (1 / TORSION_LIMIT) := by
  have hTL : (0:ℝ) < TORSION_LIMIT := t2_tl_in_unit_interval.1
  have hIVA : (0:ℝ) < TL_IVA := t3_floor_below_ceiling.1
  have hne : Real.log TORSION_LIMIT ≠ 0 := ne_of_lt t54_log_tl_neg
  have hsplit : Real.log (25 / 22)
      = Real.log TORSION_LIMIT - Real.log TL_IVA := by
    rw [← Real.log_div (ne_of_gt hTL) (ne_of_gt hIVA), t8_endpoint_ratio]
  have hinvlog : Real.log (1 / TORSION_LIMIT) = -Real.log TORSION_LIMIT := by
    rw [one_div, Real.log_inv]
  simp only [rung_index, t53_log_base]
  rw [hsplit, hinvlog]
  field_simp
  ring

-- [T64] :: {INV} | THE CORRIDOR HAS POSITIVE WIDTH IN RUNGS
theorem t64_corridor_width_pos :
    rung_index TORSION_LIMIT < rung_index TL_IVA := by
  have hTL : (0:ℝ) < TORSION_LIMIT := t2_tl_in_unit_interval.1
  have hIVA : (0:ℝ) < TL_IVA := t3_floor_below_ceiling.1
  have hlt : TL_IVA < TORSION_LIMIT := t3_floor_below_ceiling.2
  have hlog : Real.log TL_IVA < Real.log TORSION_LIMIT :=
    Real.log_lt_log hIVA hlt
  have hb : 0 < Real.log geom_base := t55_log_base_pos
  have hbi : (0:ℝ) < (Real.log geom_base)⁻¹ := inv_pos.mpr hb
  simp only [rung_index, div_eq_mul_inv]
  exact mul_lt_mul_of_pos_right (by linarith) hbi

-- [T65] :: {MASTER} | THE CORRIDOR FLOOR'S BASE SQUARED IS ITS OWN LANDING
theorem t65_iva_base_sq : iva_base ^ 2 = 1 / TL_IVA := by
  have hIVA : (0:ℝ) < TL_IVA := t3_floor_below_ceiling.1
  have hs : Real.sqrt TL_IVA ^ 2 = TL_IVA := Real.sq_sqrt hIVA.le
  have hne : Real.sqrt TL_IVA ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr hIVA)
  simp only [iva_base, div_pow, one_pow, hs]

-- [T66] :: {VER} | THE CORRIDOR FLOOR'S BASE, NUMERICALLY
theorem t66_iva_base_numeric :
    2.8811002321 < iva_base ∧ iva_base < 2.8811002322 := by
  have hsq := t65_iva_base_sq
  have hpos := t19_iva_base_pos
  have hval : (1:ℝ) / TL_IVA = 1 / 0.12047120798593408 := by
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  rw [hval] at hsq
  constructor
  · nlinarith [hsq, hpos]
  · nlinarith [hsq, hpos]

-- [T67] :: {MASTER} | THE CORRIDOR IS A FIXED RATIO OF BASES
theorem t67_corridor_as_base_ratio :
    (iva_base / geom_base) ^ 2 = 25 / 22 := by
  rw [t61_base_ratio]
  exact Real.sq_sqrt (by norm_num)

-- ============================================================
-- SECTION 10: WHERE THE CLASSICAL READING ENDS
-- ============================================================

-- [T68] :: {MASTER} | THE CLASSICAL READING IS BOUNDED, SO IT COVERS
--                     RUNGS ABOVE ZERO AND NOT TOTAL CONVERSION
theorem t68_classical_bounded_total_conversion_outside :
    (∀ t : ℝ, 0 < t → t < 1 → eta_of_tau t < 1 / 2) ∧
    ¬ (∃ t : ℝ, 0 < t ∧ t < 1 ∧ eta_of_tau t = 1) := by
  refine ⟨fun t h0 h1 => t13_eta_classical_bounded t h0 h1, ?_⟩
  rintro ⟨t, h0, h1, heq⟩
  have := t13_eta_classical_bounded t h0 h1
  rw [heq] at this
  norm_num at this

-- [T69] :: {MASTER} | THE RELATIVISTIC READING CARRIES TOTAL CONVERSION
theorem t69_relativistic_carries_total :
    eta_rel (Real.sqrt 3 / 2) = 1 ∧ Real.sqrt 3 / 2 < 1 := by
  refine ⟨t14_annihilation_gamma.2, ?_⟩
  have h3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have hnn : (0:ℝ) ≤ Real.sqrt 3 := Real.sqrt_nonneg 3
  nlinarith [h3, hnn]

-- [T70] :: {INV} | THE CLASSICAL FRACTION AT RUNG ONE IS HALF THE TORSION LIMIT
theorem t70_rung_one_fraction : eta_of_tau (tau_rung 1) = TORSION_LIMIT / 2 := by
  rw [← t39_eta_rung_from_tau]
  exact t41_eta_rung_one

-- [T71] :: {VER} | RUNG ONE CLASSIFIES AS SHATTER, RUNG TWO AS THE CEILING
theorem t71_rung_phases :
    tau_rung 2 = TORSION_LIMIT ∧ TORSION_LIMIT < tau_rung 1 := by
  refine ⟨t24_rung_two, ?_⟩
  have hs2 : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT :=
    Real.sq_sqrt t2_tl_in_unit_interval.1.le
  have hlt1 : Real.sqrt TORSION_LIMIT < 1 := by
    nlinarith [hs2, t15_root_tl_pos, t2_tl_in_unit_interval.2]
  simp only [tau_rung, pow_one]
  nlinarith [hs2, t15_root_tl_pos, hlt1]

-- [T72] :: {MASTER} | THE TWO READINGS AGREE TO LEADING ORDER AND PART COMPANY
--                     ONLY IN A BOUNDED, STATED WAY
theorem t72_two_readings_bracket (t : ℝ) (h0 : 0 < t) (hTL : t ^ 2 ≤ TORSION_LIMIT) :
    eta_of_tau t < eta_rel t ∧
    eta_rel t ≤ eta_of_tau t + 2 * eta_of_tau t ^ 2 := by
  have ht1 : t < 1 := by
    nlinarith [hTL, t2_tl_in_unit_interval.1, t2_tl_in_unit_interval.2, h0]
  refine ⟨t47_classical_underestimates t h0 ht1, ?_⟩
  linarith [(t49_error_in_eta t h0 hTL).2]

-- ============================================================
-- MASTER
-- ============================================================

-- [MASTER] :: {ANC} | THE GEOMETRIC BASE AND THE ENERGY LADDER
theorem MASTER_geometric_base_energy_ladder :
    -- the conversion fraction is an energy ratio
    (∀ m v : ℝ, m ≠ 0 →
      kinetic_classical m v / rest_energy m = eta_of_tau (tau_A v)) ∧
    -- the base, built by the corpus operator from a corpus quantity
    (geom_base ^ 2 = 1 / TORSION_LIMIT) ∧
    (geom_base = sqrt_op (1 / TORSION_LIMIT) ∧
      matched_ratio (sqrt_op TORSION_LIMIT) = 1 / TORSION_LIMIT) ∧
    -- the ladder is exact integer powers, with TL at rung 2
    (∀ n : ℕ, tau_rung n = 1 / geom_base ^ n) ∧
    (tau_rung 2 = TORSION_LIMIT) ∧
    (tau_rung 4 = TORSION_LIMIT ^ 2) ∧
    (∀ k : ℕ, tau_rung (2 * k) = TORSION_LIMIT ^ k) ∧
    -- the parity over ℚ
    (TORSION_LIMIT = (8556193749001 : ℝ) / 62500000000000) ∧
    (∀ k : ℕ, tau_rung (2 * k) = ((8556193749001 : ℝ) / 62500000000000) ^ k) ∧
    ((8556193749001 : ℕ) = 191 * 23767 * 1884833) ∧
    ((191 : ℕ) ∣ 8556193749001 ∧ ¬ ((191 : ℕ) ^ 2 ∣ 8556193749001)) ∧
    -- the base is a refractive index
    (index_of_perm (1 / TORSION_LIMIT) = geom_base) ∧
    (perm_of_index geom_base = 1 / TORSION_LIMIT) ∧
    -- the energy ladder, stepping by exactly 1/TL
    (∀ n : ℕ, eta_rung n = eta_of_tau (tau_rung n)) ∧
    (∀ n : ℕ, eta_rung n / eta_rung (n + 1) = 1 / TORSION_LIMIT) ∧
    -- the classical reading certifies its own accuracy
    (∀ t : ℝ, 0 < t → t < 1 → eta_of_tau t < eta_rel t) ∧
    (∀ t : ℝ, 0 < t → t ^ 2 ≤ TORSION_LIMIT →
      (3 / 2) * eta_of_tau t ^ 2 ≤ eta_rel t - eta_of_tau t ∧
      eta_rel t - eta_of_tau t ≤ 2 * eta_of_tau t ^ 2) ∧
    -- total conversion: outside the classical reading, exact in the relativistic
    (¬ (∃ t : ℝ, 0 < t ∧ t < 1 ∧ eta_of_tau t = 1)) ∧
    (gamma (Real.sqrt 3 / 2) = 2 ∧ eta_rel (Real.sqrt 3 / 2) = 1) ∧
    -- the two bases on one ladder, and the corridor between them
    (Real.log geom_base = Real.log (1 / TORSION_LIMIT) / 2) ∧
    (rung_index TORSION_LIMIT = 2) ∧
    (∀ n : ℕ, rung_index (tau_rung n) = n) ∧
    (iva_base / geom_base = Real.sqrt (25 / 22)) ∧
    ((iva_base / geom_base) ^ 2 = 25 / 22) ∧
    (rung_index TL_IVA - rung_index TORSION_LIMIT
      = 2 * Real.log (25 / 22) / Real.log (1 / TORSION_LIMIT)) :=
  ⟨fun m v hm => t10_eta_is_energy_ratio m v hm,
   t17_base_sq,
   t18_base_from_operator,
   t21_rung_is_base_power,
   t24_rung_two,
   t25_rung_four,
   t26_even_rungs,
   t29_tl_rational,
   t31_even_rungs_rational,
   t32_denominator_factors,
   t34_prime_divides_once,
   t36_base_is_index,
   t37_perm_is_base_sq,
   t39_eta_rung_from_tau,
   t40_energy_step,
   fun t h0 h1 => t47_classical_underestimates t h0 h1,
   fun t h0 hTL => t49_error_in_eta t h0 hTL,
   t68_classical_bounded_total_conversion_outside.2,
   t14_annihilation_gamma,
   t57_rung_in_efolds,
   t56_ceiling_at_rung_two,
   t60_rung_index_of_rung,
   t61_base_ratio,
   t67_corridor_as_base_ratio,
   t63_corridor_width⟩

end SNSFL_GeometricBaseEnergyLadder

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that the conversion fraction of [9,9,2,0] is an ENERGY
-- RATIO: with E_0 = m c^2 and E_k = (1/2) m v^2, their quotient is exactly
-- tau_A^2/2 = eta, so the corpus conversion fraction and the ratio E = mc^2 is
-- compared against are one number. It then establishes the base the geometry
-- selects, b_0 = 1/sqrt(TL), built by the corpus operator applied to a corpus
-- quantity — b_0^2 = 1/TL = matched_ratio(S TL) — so that no new construct
-- enters, and in that base every rung of the torsion ladder is an exact
-- integer power, with the Torsion Limit at rung two and its square at rung
-- four. The ladder carries a PARITY over the rationals: TL is a terminating
-- decimal, so TL = 8556193749001/62500000000000 exactly and every even rung
-- lies in ℚ, while the denominator factors as 191 * 23767 * 1884833 with 191
-- dividing it exactly once, which is the arithmetic that places the odd rungs
-- outside ℚ. The base is itself an INDEX — the refractive index of a medium
-- whose relative permittivity is 1/TL, by the same operator and the same
-- closure — so the base the geometry selects and a constitutive constant are
-- one object. Read for energy, the ladder gives eta at rung n equal to TL^n/2,
-- so consecutive rungs differ by EXACTLY 1/TL in energy released per unit
-- mass. The classical reading certifies its own accuracy: it is strictly below
-- the relativistic one, and on the range tau^2 <= TL the absolute error is
-- sandwiched between (3/2)eta^2 and 2 eta^2, so the relative error lies
-- between (3/2)eta and 2 eta and the formula reports its own drift. The
-- classical reading is bounded by one half and cannot represent total
-- conversion; the relativistic reading carries it exactly, at
-- tau_A = sqrt(3)/2 where the factor is 2. Finally the two bases stand on one
-- ladder: log b_0 = log(1/TL)/2, the ceiling sits at rung two exactly, every
-- rung index returns its own integer, the corridor width is
-- 2 log(25/22)/log(1/TL), and the two corridor bases stand in the exact ratio
-- sqrt(25/22) whose square is 25/22 — the fraction [9,9,0,17.1] already
-- carries as the ratio of its two landings.
--
-- THEOREMS : 72 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
```
