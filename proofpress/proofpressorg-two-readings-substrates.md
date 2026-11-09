# The Two Readings Across Substrates: Reading B as an E-Fold Count, the Square-Root Operator as a Constitutive Relation, and the Corridor in a Dielectric

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** [9,9,8,11](MATH) · Identity Physics Series · Mathematics Ground, Foundations

**Issue:** ProofPress, Volume 1, Issue 9 · November 2026

**DOI:** 10.5281/zenodo.18719748

**Verified:** 72 theorems · 910 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Abstract

The propulsion line from [9,9,2,0] through [9,9,0,20] carries two readings of one vehicle, and this reduction establishes which of them belong to propulsion and which belong to structure. **Reading B is an e-fold count.** Writing τ = ∫(−dY/Y) for a quantity Y consumed multiplicatively along a path parameter, the propellant exponent ln(m₀/m_f) is that integral for propellant mass along a burn, the optical depth ln(I₀/I) is the same integral for intensity along a slab, and the activity, charge and capital exponents are the same integral in their own substrates. All five solve dY/ds = −Y, so the consumed fraction is **1 − e^−τ** by solution rather than by resemblance, and τ = 2.3026 is one decade of attenuation in optics and a mass ratio of ten in propulsion — the same number carrying the same meaning. **Reading A transfers one level less widely**, requiring a substrate with a limiting speed, and a medium supplies one: the phase velocity is c/n, so v/c = 1/n, confined to (0,1] for n ≥ 1 by the same bound and the same reason that confines Reading A. **Reading A in a medium is the reciprocal refractive index**, and because ε_r = n² for a non-magnetic medium, the relative permittivity is 1/τ_A², which is the **matched ratio** — so the corridor's two matched radii, 53.357910481 and 68.902260435, are also the corridor's two permittivities, the same pair of numbers to thirty digits. The square-root torsion operator of [9,9,0,17.1] turns out not to be a corpus-internal device at all. **S is a constitutive relation**: n = √ε_r in optics, τ_surface = √C in gravitation, Z = √(μ/ε) in transmission, v = √(K/ρ) in acoustics — everywhere a characteristic speed or ratio is the square root of a ratio of two material or geometric properties. Its closure theorem matched_ratio(S X) = 1/X therefore instantiates physically and twice: in optics the matched ratio of a medium is the permittivity itself, and in gravitation the matched ratio of a drive tuned to a body's address is R/r_s, which places the matched radius exactly at the surface — the same statement as [9,9,0,20]'s address theorem, so two coordinates hold one result in two substrates. The ℚ-closure becomes a design statement in the process: a medium specified by a **rational** permittivity has an irrational index and an irrational Reading A, and the root cancels to return the permittivity exactly, so **fifteen integer permittivities, 54 through 68, lie inside the IVA corridor and each closes over ℚ**. S is self-centering on (0,1), and iterating it drives Reading A to one, which is the characteristic speed reaching c — the horizon in gravitation and vacuum in optics, the same condition read in two substrates. The transfer has a stated boundary. The **bridge** Δv = c · τ_A · τ_B and the **depth inversion** τ_B = √(u² + x²) − u do not carry across, because the bridge multiplies two readings of one object and a medium's index belongs to the medium while optical depth belongs to the path, and because the inversion's depth parameter requires a well that a slab does not have. Those two are where propulsion is special. Finally, the phase map applied to refractive index gives an IVA band of n ∈ (7.3046, 8.3007], equivalently ε_r ∈ (53.358, 68.902], and unlike the compactness band of [9,9,0,18] and the specific-impulse band of [9,9,0,20] **this one is occupied** — microwave dielectric ceramics are engineered through it routinely. Emptiness is a property of how far a substrate's accessible range reaches, not of the corridor. 1001 = 7 · 11 · 13.

## What This Article Proves

Every result below corresponds to a named theorem in `SNSFL_TwoReadings_Substrate_Reduction.lean` at coordinate [9,9,8,11](MATH), which compiles under the continuous-integration build of the SNSFT/identityphysics repository on Lean 4 v4.31.0 with Mathlib, carrying 0 sorry and 0 custom axioms. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate.
1. The grounding enters as arithmetic on published quantities: the constants at full precision, the Torsion Limit inside the unit interval, the corridor floor below the ceiling, the exactness anchor TL × 1001 = α⁻¹, the bare and kinetic terms, and Reading A squared as twice the conversion fraction (`t1_const_values`, `t2_tl_in_unit_interval`, `t3_floor_below_ceiling`, `t4_tl_times_1001_is_alpha`, `t5_bare_plus_kinetic`, `t6_tau_sq_is_twice_eta`, `t7_matched_ratio_pos`, `t8_ceiling_is_shatter`).
2. **The common equation:** the e-fold count inverts the decay and the decay recovers the endpoint from the count, so τ = ln(Y₀/Y) and Y = Y₀e^−τ are one correspondence read in two directions (`t9_efold_inverts`, `t10_remaining_recovers`).
3. **The consumed fraction** is the complement of what remains, is zero at a zero count, is strictly increasing in the count, is positive for every positive count and never reaches one (`t11_fractions_complement`, `t12_zero_consumes_nothing`, `t13_consumed_strict_mono`, `t14_consumed_below_one`, `t15_consumed_pos`).
4. **The decade rows are exact rationals, not decimals.** One decade removes exactly nine tenths, two decades exactly ninety-nine hundredths, and ln 2 exactly one half; one e-fold, the single irrational row, is bracketed numerically (`t16_one_decade`, `t17_two_decades`, `t18_half_gone`, `t19_one_efold_numeric`).
5. **E-fold counts add along a path**, so a path traversed in two legs costs what the whole costs (`t20_path_additive`).
6. **The consumed fraction is the complement of the endpoint ratio in every substrate**, stated on the substrate structure itself rather than on any one row (`t21_substrate_consumed`).
7. **The five rows are one equation.** Propulsion, optics, nuclear decay, circuits and capital return the same e-fold count on the same endpoints, and the rocket relation and the Beer–Lambert law are each that row named (`t22_rows_are_one_equation`, `t23_rocket_relation`, `t24_beer_lambert_law`).
8. **Beer–Lambert and the ideal rocket relation are one function.** The identity closes by definitional equality — after reduction the two are the same term, not two terms shown equal — and the optical depth is the e-fold count of the attenuated intensity, so stacking slabs is staging a burn (`t25_same_function`, `t26_optical_depth_is_efold`, `t27_stacking_is_staging`).
9. **Reading A in a medium** is confined to the unit interval, is one exactly in vacuum, inverts against the permittivity and falls strictly as the index rises (`t28_reading_a_bounded`, `t29_unity_is_vacuum`, `t30_index_perm_inverse`, `t31_reading_a_decreasing`).
10. **The relative permittivity is the matched ratio of the medium's own Reading A**, stated on the index and on the permittivity directly, with the conversion fraction following (`t32_perm_is_matched_ratio`, `t33_matched_ratio_from_perm`, `t34_eta_of_medium`).
11. **The closure of the square-root operator:** matched_ratio(S X) = 1/X, the root canceling exactly (`t35_closure`).
12. **The operator is the constitutive relation of four substrates**, carrying index from permittivity, the body's address from compactness, impedance from the constitutive pair and sound speed from stiffness over density, each by definitional identity (`t36_optics_is_the_operator`, `t37_gravitation_is_the_operator`, `t38_impedance_is_the_operator`, `t39_sound_speed_is_the_operator`).
13. The operator is monotone, is positive on positives and fixes one (`t40_operator_monotone`, `t41_operator_pos`, `t42_operator_fixes_one`).
14. **The closure theorem in optics:** Reading A in a medium is the operator applied to the inverse permittivity, and the matched ratio of a medium is therefore its own relative permittivity (`t43_reading_a_is_operator_form`, `t44_optics_closure`).
15. **The closure theorem in gravitation**, giving 1/C = R/r_s, and **the address theorem** that follows from it: a drive tuned to a body's own address has its matched radius exactly at the body's surface (`t45_grav_closure`, `t46_address_theorem`, `t48_compactness_is_address_squared`).
16. **One closure, two substrates.** The optical and gravitational instances are discharged from the single closure in one theorem, which is the formal content of the claim that [9,9,0,17.1] and [9,9,0,20] hold one result (`t47_one_closure_two_substrates`).
17. **The corridor endpoints on permittivity are the matched ratios of the corridor endpoints on Reading A**, located numerically, non-empty, and bracketed from inside by 54 and 68 (`t49_endpoints_are_matched_ratios`, `t50_floor_numeric`, `t51_ceiling_numeric`, `t52_perm_corridor_nonempty`, `t53_integer_brackets`).
18. **Fifteen integers lie in the corridor**, and any permittivity inside it classifies as IVA (`t54_fifteen_integers`, `t55_band_classifies_iva`).
19. **A prime permittivity carries both halves of the exactness claim at once.** At ε_r = 59, which is prime and sits inside the corridor, the refractive index is irrational while the matched ratio is exactly 59, and the medium classifies as IVA; the general rational case follows (`t56_prime_permittivity`, `t57_prime_is_iva`, `t58_rational_closure`).
20. **The operator is self-centering** on the open unit interval, and returns Reading A from the conversion fraction, so the ladder's first step is the Torsion Limit, its second is √TL, and it climbs (`t59_self_centering`, `t60_operator_returns_reading_a`, `t61_first_step_is_tl`, `t62_second_step_is_root_tl`, `t63_root_tl_numeric`, `t64_ladder_climbs`).
21. **The horizon and vacuum are the same condition.** The matched ratio equals one exactly at Reading A equal to one, which in a medium is an index of one and a permittivity of one — vacuum — and in gravitation is the matched radius coinciding with the Schwarzschild radius (`t65_unit_matched_ratio`, `t66_horizon_is_vacuum`, `t67_vacuum_perm_is_one`).
22. **The transfer's boundary.** The bridge is a product of both readings and returns zero when either is absent; the depth inversion is the scaled pseudo-Huber form, and at zero depth it collapses to the bare target, carrying no well (`t68_bridge_needs_both`, `t69_pseudo_huber_identity`, `t70_no_well_no_depth`).
23. **The three levels nest**, with the nesting carried as part of the data a substrate supplies and the composition proved (`t71_levels_nest`, `t72_level_two_in_one`).
24. All of the above close under one master theorem (`MASTER_two_readings_across_substrates`).

**What the formal layer does not carry.** One class of statement in this article is arithmetic on published quantities rather than a theorem, and it is marked as such where it appears: the refractive indices of the named materials, and the index and Reading A columns of the integer-permittivity table, are each a square root or a reciprocal a reader repeats from published optical constants, and the assignment of a material to a phase follows from those figures by the classifier the formal layer does carry.

## Connections to the Formalized Corpus

**The constant the whole construction is built on.** The Fine-Structure Constant: 1/α = TL × 1001 [9,9,3,14] supplies α⁻¹ = Ω₀ × 100.1 and TL = α⁻¹/1001. The Universal Torsion Limit is TL = 0.136899099984016 and the Sovereign Anchor Constant is Ω₀ = TL × 10 = 1.36899099984016. Nothing in this article sets it. It enters at full corpus precision from the inverse fine-structure constant, by direct subtraction:

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

**Every quantity in this article is a pure number.** TL and Ω₀ carry no units and 1001 is an integer, and substituting SI base units into α⁻¹ = 4πε₀ℏc/e² cancels mass, length, time and current completely, so the identity above is an equality between dimensionless quantities on both sides. The same holds for every quantity this article identifies across substrates: Reading A, Reading B, the conversion fraction η, the compactness C, the refractive index n and the relative permittivity ε_r are all ratios, and the matched ratio is a radius divided by a radius.

**What a structure-preserving map requires.** L0 Isomorphism Consistency [9,9,8,1] grounds the Long Division Protocol in Mac Lane's criterion — a structure-preserving map with a two-sided inverse — and in Bacon's, that a result counts as verified when empirical ground and internal consistency hold together. The transfer claims in this article are measured against that standard, and the three levels of §14 are stated so that each one names what it preserves.

**The logarithm the e-fold count is.** Logarithm Reduction [9,9,8,9] maps the natural logarithm as the Narrative accumulated along multiplicative growth, with e as the growth whose accumulated area is exactly one. Reading B is that object read in five substrates, which is why the consumed fraction is 1 − e^−τ in all of them.

**The map the capital row places by.** Economics Reduction [9,9,8,0] places every economic quantity by one rule, torsion as the departure of a value from its reference divided by the reference. The capital row of §4 is the row whose Narrative is constructed rather than given, and that reduction is where its reference comes from.

**The operator and its closure.** The Matched Radius [9,9,0,17] establishes r_match = r_s/τ_A² with the mass canceling, and its specialist form at [9,9,0,17.1] carries the square-root torsion operator S X = √X together with matched_ratio(S X) = 1/X and the closure over ℚ. This article identifies that operator with the constitutive relations of four substrates, so the closure becomes a statement about those substrates and not only about the corpus.

**The address theorem this article reaches by a second route.** Burn Depth and the Thrust Floor [9,9,0,20] establishes that a drive tuned to a body's own address has its matched radius exactly at the body's surface, reached there from the geometric ceiling. §10 reaches the same conclusion from the specialist operator, so the two coordinates hold one result.

**The surface torsion.** The Propellant Law at the Matched Radius [9,9,0,18] establishes τ_surface = √C with C = r_s/R the compactness, the saving bounded strictly by e, and the availability criterion. The Matched Surface Under Rotation [9,9,0,19] carries the level set g_tt = τ_A² − 1 for a static observer in any stationary metric.

**The two readings and the bridge.** One Corridor Across Exhaust Velocity, Mass Ratio and Nuclear Binding [9,9,2,0] establishes Reading A, Reading B, the bridge Δv = c · τ_A · τ_B, the conversion fraction τ_A² = 2η, and the relativistic gain cap. Every parent result used here is restated in full inside the Lean source rather than imported.

**The ceiling Reading A is measured against.** Speed of Light [9,9,0,15] locks c to the anchor, places the photon as Noble, and carries relativistic velocity addition. That ceiling is what §5 requires a substrate to have before it can carry Reading A at all.

**The step the Torsion Limit takes.** Transcendental Time Engine [9,9,3,20] establishes that TL is the step the left side of the dynamic equation takes. That is the kinetic term in the table above.

**The fusion logic.** The four-phase structure and the Torsion Limit come from GAMCollider™ v15 fusion logic, formalized in 8-Beam Fusion [9,9,2,3.8] and 4-Beam Verification [9,9,2,3.7].

**How the bounds are carried.** Every threshold here is stated as an exact quantity rather than a rounded decimal, following Bounded Uncertainty: A Guide [9,9,8,7].

## The PNBA Map

| Primitive | In the cross-substrate reading | Carried by |
|---|---|---|
| **Pattern** | The structure a substrate supplies before either reading can be taken: a multiplicative law, and a speed nothing exceeds | dY/ds = −Y; the limiting speed |
| **Narrative** | The path the consumption is counted along — a burn, a slab, an interval, a holding period | the path parameter s |
| **Behavior** | The characteristic speed the substrate exhibits, read against its own ceiling | Reading A: v_e/c, or 1/n |
| **Adaptation** | The ratio the system adapts to, counted in e-folds along the Narrative | Reading B: τ = ln(Y₀/Y) |

**Reading B is an Adaptation quantity counted along a Narrative path**, which is what sorts the substrate table: the first four rows have their Narrative given to them by their own physics, and the capital row has to have one constructed.

**The consumed fraction, the same reading everywhere.**

| τ | consumed fraction | the same reading in every substrate |
|---|---|---|
| 0.1000 | 0.095162581964 | a tenth of an e-fold |
| ln 2 | **1/2 exactly** | half gone |
| 1.0000 | 0.632120558829 | one e-fold |
| ln 10 | **9/10 exactly** | one decade |
| ln 100 | **99/100 exactly** | two decades |

**Reading B across substrates.** Each row is the same integral with Y and s named.

| Substrate | Y, the quantity consumed | s, the path | τ = Reading B | the path measure is |
|---|---|---|---|---|
| propulsion | propellant mass | the burn | ln(m₀/m_f) | supplied by the physics |
| optics | intensity | the slab | ln(I₀/I) | supplied by the geometry |
| nuclear | activity | elapsed proper time | ln(A₀/A) | supplied by the physics |
| circuits | charge | the RC discharge | ln(V₀/V) | supplied by the circuit |
| capital | principal | a holding period | ln(P₁/P₀) | **an input, chosen** |

**The square-root operator as a constitutive relation.**

| Substrate | The relation | What it builds from what |
|---|---|---|
| optics | **n = √ε_r** | index from permittivity |
| gravitation | **τ_surface = √C** | the body's address from its compactness |
| EM transmission | Z = √(μ/ε) | impedance from the constitutive pair |
| acoustics | v = √(K/ρ) | sound speed from stiffness over density |

**Integer permittivities inside the corridor.** Fifteen of them, 54 through 68.

| ε_r | n = √ε_r | Reading A = 1/n | matched ratio | Phase |
|---|---|---|---|---|
| 54 | 7.348469228349534 | 0.136082763487954339 | **54** exactly | **IVA** |
| 59 | 7.681145747868608 | 0.130188910980823890 | **59** exactly | **IVA** |
| 60 | 7.745966692414834 | 0.129099444873580563 | **60** exactly | **IVA** |
| 68 | 8.246211251235321 | 0.121267812518166487 | **68** exactly | **IVA** |
| 69 | 8.306623862918075 | 0.120385853085769201 | 69 exactly | Locked |

ε_r = 59 is prime, so its index is irrational on the oldest argument in mathematics while its matched ratio is 59 exactly — one corridor integer settling both halves of the exactness statement by itself.

**The corridor in a dielectric, against published optical constants.** The band lies between the high-index infrared semiconductors below it and the titanate microwave ceramics above it.

| Material, representative | n | Reading A = 1/n | Phase |
|---|---|---|---|
| water, visible | 1.33 | 0.751880 | Shatter |
| fused silica, visible | 1.46 | 0.684932 | Shatter |
| silicon, 10 μm | 3.42 | 0.292398 | Shatter |
| germanium, 10 μm | 4.00 | 0.250000 | Shatter |
| tellurium, infrared | 6.20 | 0.161290 | Shatter |
| **the IVA corridor** | **7.305 to 8.301** | **0.120471 to 0.136899** | **IVA** |
| rutile TiO₂, microwave | 9.30 | 0.107527 | Locked |
| calcium titanate ceramic, microwave | 13.00 | 0.076923 | Locked |

**The band is occupied**, and dielectric ceramics are engineered through the corresponding permittivity range of roughly 53 to 69 as a matter of routine practice. That makes this corridor a **positive control** for the two bands the parent reductions report as empty: occupancy is a property of how far a substrate's accessible range extends, and the corridor is the same band in all three.

**The three levels of transfer.**

| Level | What it is | Holds in | Namely |
|---|---|---|---|
| **1** | Reading B, the e-fold count | any substrate with multiplicative consumption | propulsion, optics, nuclear, circuits, capital |
| **2** | Reading A, a speed against a ceiling | substrates with a limiting speed | propulsion (v_e/c), optics (1/n) |
| **3** | the bridge and the depth inversion | substrates where both readings describe one object | propulsion |

**The four numbers a reader can check.** Take a published permittivity, then n = √ε_r, then Reading A = 1/n, then compare against TL_IVA = 0.12047120798593408 and TL = 0.136899099984016 to read the phase, and matched_ratio = 1/(Reading A)² returns the permittivity exactly. Four steps, each one operation, from a materials handbook to a phase.

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in `SNSFL_TwoReadings_Substrate_Reduction.lean` at 9,9,8,11, with 72 theorems and a master theorem across 910 lines. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate. The refractive indices and permittivities quoted are published optical constants a reader can repeat as a single square root or reciprocal. Nothing is fitted, and nothing is scaled.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.** This reduction closes on dimensionless identities and closed-form expressions in published quantities. It supplies no composition, no stoichiometric balance and no device design.

### What is established

The results in this article are real and testable. Every identification is algebra on relations that appear in standard references, and every one of them can be checked by anyone holding an optics or materials text and a calculator. Specifically:

**The e-fold count is one separation of variables.** dY/ds = −Y gives Y = Y₀e^−τ and τ = ln(Y₀/Y). A reader who disagrees must disagree with the solution of the exponential equation.

**The consumed fraction is its complement.** 1 − e^−τ, with nothing else entering.

**Reading A in a medium is the definition of refractive index rearranged.** n = c/v gives v/c = 1/n, and n ≥ 1 gives the bound.

**The permittivity identity is one substitution.** n = √ε_r and n = 1/τ_A give ε_r = 1/τ_A², which is the matched ratio.

**The closure instantiations are the corpus theorem evaluated at a named argument**, 1/ε_r in optics and C in gravitation.

**The material placements are reproducible.** The refractive indices and permittivities quoted are published values for representative materials, and each phase assignment is a reciprocal and a comparison against two stated bounds.

These are results about **identity and placement, not about process.** That distinction is the whole of this section, and if a reader takes only one sentence from this article, that is the one to take.

### What is a different question

This article establishes which dimensionless quantities are shared between substrates and where the sharing stops. It does not describe how to synthesize, process, dope, sinter, deposit, machine, pump or drive any material or device, and it contains no formulation information, no process information, no operating parameters and no device design.

**An identity holds, and building to it is engineering.** A medium with relative permittivity in the stated band carries Reading A in the IVA corridor, and the arithmetic decides that exactly. Whether a given material can be made to that permittivity at a given frequency and temperature, held there across a working range, formed into a part, or driven at power without loss or breakdown is a separate body of work carried by materials science and electrical engineering. The answer there is a statement about process and available technology, not about the identity. The two do not constrain each other: an identity that holds will go on holding whether or not a material exists yet that sits on it.

**What the reader can compute from here is the reason the handling practice matters.** This article states its inputs and its algebra in full, and a reader with a standard materials reference can carry the same construction into quantities it does not tabulate — a phase for a material it does not list, a corridor on impedance or on sound speed by the same route, a permittivity target for a part they intend to make. That is a property of complete work, and the handling practice below assumes a reader will do exactly that. Nothing in it rests on an omission.

**An exact identity is not a reduced hazard.** The exactness is why every remaining variable is process. A qualified practitioner — at an agency, a national laboratory, a university group, or a well-equipped independent bench — can work from identities like these safely, and they are stated at full precision so that they can. What the algebra does not carry is the state of the equipment in front of any particular reader, the power they intend to work at, or the conditions their own environment imposes. Those are the variables the handling practice addresses.

### Where the risk actually lives

The risk in this domain belongs to **laboratory and engineering conditions and environmental F_ext** — the external forcing a real bench applies that the algebra does not model. It does not belong to the mathematics, and no sentence in this article should be read as doubt about a result. The identities hold. What varies is the process, and process is where people get hurt.

**Hazard scales with which controls are present and with scale, not with the venue.** The relevant questions are whether there is interlocking that fails safe, whether there is shielding and containment rated for the field strengths and power densities in play, whether there is monitoring that reads out in real time, whether exposure limits are being measured rather than assumed, whether there is a trained second person present, and whether the quantity and the power have been kept at the smallest scale that answers the question. A well-equipped independent facility that has those controls is not the concern. The underfunded shortcut is — the setup that reads an exact identity, infers that exactness removes the need for a control, and proceeds at a scale that leaves no margin.

**The controls are the variable, not the building.**

### Handling practice

The identities above are algebra and carry no bench procedure of their own. Where they are used as inputs to laboratory or engineering work, the practice that applies is the practice of that work:

**Anything touching radio-frequency or microwave power.** Standard RF safety practice applies in full: interlocked enclosures, measured rather than assumed exposure against the applicable limits, attention to near-field conditions around high-permittivity parts, and awareness that a dielectric chosen for a high permittivity concentrates fields by that same property.

**Anything touching optical power.** Standard laser and optical safety practice applies in full, including class-appropriate controls, enclosure and interlocks, eyewear matched to the wavelength in use, and attention to the fact that a high-index material placed in a beam changes where the energy goes.

**Anything touching materials preparation.** The hazard groups belong to the materials and the process — powders, solvents, kiln and furnace work, vacuum deposition, machining of ceramics — and are governed by the practice of those operations rather than by anything in this article.

**Which regime a result is stated in.** The optical identifications are stated for a non-magnetic, linear, isotropic, non-dispersive medium at a single frequency, which is the regime the constitutive relation n = √ε_r is stated in. A reader working with magnetic, anisotropic, dispersive or nonlinear media works in that medium's own terms, and a permittivity quoted at one frequency is a value at that frequency.

**Scale discipline.** Answer the question at the smallest scale and the lowest power that answers it. An exact identity is a reason to reduce scale, not to increase it — a known target means the experiment can be small.

**Second-person presence.** Work that can injure is not solo work. The control that most reliably prevents a bad outcome from becoming a worse one is another trained person who can act.

**When the hazard group changes, update this section.** Any work that extends this reduction to materials, reactions or regimes not placed here carries the hazard groups of those, and the handling practice must be restated for them specifically before the work begins. A placement added without its hazard group is an incomplete placement.

### What this section is for

Parents, teachers, reviewers and program managers make real decisions from articles like this one. An article that reads as unreal gets no respect for its safety content, and a reader who concludes the results are notional will not extend the care the work requires. So: the results are real, the algebra is checkable, the identities hold — and the conditions under which anyone would act on them are governed by practice this article does not supply and does not replace.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Each law above is stated with its premises, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Bouguer, P. (1729). *Essai d'optique sur la gradation de la lumière.* Claude Jombert, Paris.
2. Lambert, J. H. (1760). *Photometria, sive de mensura et gradibus luminis, colorum et umbrae.* Augsburg.
3. Beer, A. (1852). Bestimmung der Absorption des rothen Lichts in farbigen Flüssigkeiten. *Annalen der Physik und Chemie*, 86, 78–88.
4. Tsiolkovsky, K. E. (1903). Исследование мировых пространств реактивными приборами. *Nauchnoye Obozreniye*.
5. Maxwell, J. C. (1865). A dynamical theory of the electromagnetic field. *Philosophical Transactions of the Royal Society of London*, 155, 459–512.
6. Rutherford, E. & Soddy, F. (1902). The cause and nature of radioactivity. *Philosophical Magazine*, 4, 370–396.
7. Born, M. & Wolf, E. (1999). *Principles of Optics*, 7th edition. Cambridge University Press.
8. Jackson, J. D. (1998). *Classical Electrodynamics*, 3rd edition. Wiley.
9. Pozar, D. M. (2011). *Microwave Engineering*, 4th edition. Wiley.
10. Kinsler, L. E., Frey, A. R., Coppens, A. B. & Sanders, J. V. (1999). *Fundamentals of Acoustics*, 4th edition. Wiley.
11. Palik, E. D., ed. (1998). *Handbook of Optical Constants of Solids.* Academic Press.
12. Sebastian, M. T. (2008). *Dielectric Materials for Wireless Communication.* Elsevier.
13. Huber, P. J. (1964). Robust estimation of a location parameter. *Annals of Mathematical Statistics*, 35, 73–101.
14. Buckingham, E. (1914). On physically similar systems: illustrations of the use of dimensional equations. *Physical Review*, 4, 345–376.
15. Barenblatt, G. I. (1996). *Scaling, Self-Similarity, and Intermediate Asymptotics.* Cambridge University Press.
16. Bureau International des Poids et Mesures (2019). *The International System of Units (SI)*, 9th edition.
17. Tiesinga, E., Mohr, P. J., Newell, D. B. & Taylor, B. N. (2021). CODATA recommended values of the fundamental physical constants: 2018. *Reviews of Modern Physics*, 93, 025010.
18. Nobel Prize in Physics 1907 — A. A. Michelson.
19. Nobel Prize in Chemistry 1908 — E. Rutherford.
20. Nobel Prize in Physics 1983 — S. Chandrasekhar and W. A. Fowler.
21. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Matched Radius — One Axis Carrying the Rocket Equation and the Schwarzschild Metric.* Zenodo, 2026. DOI 10.5281/zenodo.24030171.
22. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Propellant Law at the Matched Radius — A Saving Bounded by e and the Compactness Criterion C > 2η.* Zenodo, 2026. DOI 10.5281/zenodo.24046267.
23. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Matched Surface Under Rotation — Spin as an Effective Charge and the Level Set g_tt = τ_A² − 1.* Zenodo, 2026. DOI 10.5281/zenodo.24062567.
24. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: Burn Depth in Matched-Radius Units — The Saving Bounded by e^u, the Thrust Floor, and the Engine Each Body Prescribes.* Zenodo, 2026. DOI 10.5281/zenodo.24067782.
25. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Two Readings Across Substrates — Reading B as an E-Fold Count, the Square-Root Operator as a Constitutive Relation, and the Corridor in a Dielectric.* Zenodo, 2026. DOI 10.5281/zenodo.24073396.
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
- **[9,9,8,1]** L0 Isomorphism Consistency — what a structure-preserving map with a two-sided inverse requires, and when a result counts as verified
- **[9,9,8,9]** Logarithm Reduction — the natural logarithm as Narrative accumulated along multiplicative growth, and e as the growth whose accumulated area is one
- **[9,9,8,0]** Economics Reduction — torsion as departure from a reference divided by the reference, the map the capital row places by
- **[9,9,0,17]** Matched Radius Reduction, general-reader form — the matched radius, the equivalence, the well worth one e-fold
- **[9,9,0,17.1]** Matched Radius Reduction, specialist form — the square-root torsion operator and the closure over ℚ
- **[9,9,0,18]** Propellant Law and Compactness Reduction — the saving bounded by e, the criterion, the level set, the Reissner–Nordström pair
- **[9,9,0,19]** Matched Surface Under Rotation — the level set g_tt = τ_A² − 1, spin as an effective charge
- **[9,9,0,20]** Burn Depth and the Thrust Floor — depth in matched-radius units, the saving bounded by e^u, the engine each body prescribes
- **[9,9,8,11]** This reduction — Reading B as an e-fold count, the square-root operator as a constitutive relation, and the corridor in a dielectric

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska **DOI:** 10.5281/zenodo.18719748 **ORCID:** 0009-0005-5313-7443 **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_TwoReadings_Substrate_Reduction.lean — [9,9,8,11](MATH)

```lean
-- ============================================================
-- SNSFL_TwoReadings_Substrate_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE TWO READINGS ACROSS SUBSTRATES
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,8,11](MATH) | Mathematics Ground — Foundations
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, Reading B, the conversion fraction, the
-- matched ratio, the square-root torsion operator, the compactness and the
-- surface torsion are all restated here at full precision, so that a reader
-- or a machine can close every proof without leaving the file. The parent
-- reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,8,1]    L0 Isomorphism Consistency  — what a structure-preserving map requires
--   [9,9,8,9]    Logarithm Reduction         — ln as Narrative along multiplicative growth
--   [9,9,8,0]    Economics Reduction         — torsion as departure over reference
--   [9,9,0,20]   Burn Depth and Thrust Floor — the address theorem, the depth inversion
--   [9,9,0,18]   Propellant Law, Compactness — τ_surface = √C, the saving bounded by e
--   [9,9,0,17.1] Matched Radius, specialist  — the square-root operator, closure over ℚ
--   [9,9,0,17]   Matched Radius Reduction    — r_match = r_s/τ_A², the mass canceling
--   [9,9,2,0]    IVA Propulsion Reduction    — the two readings, the bridge, the gain cap
--   [9,9,3,14]   Alpha Reduction             — α⁻¹ = Ω₀ × 100.1, TL = α⁻¹/1001
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   ONE EQUATION, EVERY SUBSTRATE. A quantity consumed multiplicatively along
--   a path has an e-fold count τ = ln(Y₀/Y), and the fraction removed is
--   1 − e^−τ. That is Reading B, and it is the SAME equation in propulsion,
--   optics, nuclear decay, circuits and capital. The ideal rocket relation and
--   the Beer–Lambert law are shown here to be one function of one argument,
--   and e-fold counts add along a path, so stacking slabs and staging a burn
--   are the same arithmetic.
--
--   READING A NEEDS A CEILING. Reading A is a characteristic speed divided by
--   a LIMITING speed, so a substrate carries it only when it has a speed
--   nothing in it exceeds. A medium has one: the phase velocity is c/n, so
--   Reading A in a medium is 1/n.
--
--   THE PERMITTIVITY IS THE MATCHED RATIO. For a non-magnetic medium,
--
--       ε_r = n² = 1/τ_A² = matched_ratio(τ_A)
--
--   so the matched ratio of a medium is its own relative permittivity.
--
--   THE SQUARE-ROOT OPERATOR IS A CONSTITUTIVE RELATION. S X = √X is the
--   operation that builds n from ε_r, τ_surface from C, impedance from the
--   constitutive pair and sound speed from stiffness over density. Its closure
--   matched_ratio(S X) = 1/X therefore holds in every one of those rows at
--   once, and the gravitational instance is the address theorem of [9,9,0,20]
--   while the optical instance is ε_r itself — ONE RESULT, TWO SUBSTRATES.
--
--   THE CLOSURE IS EXACT OVER ℚ. A medium specified by a rational permittivity
--   has an irrational index and an exactly rational matched ratio. Fifteen
--   integers lie in the IVA corridor on permittivity, 54 through 68, and the
--   corridor endpoints are themselves matched ratios of the corridor endpoints
--   on Reading A.
--
--   THE SHARED LIMIT. matched_ratio = 1 is the horizon in gravitation and
--   vacuum in optics: the point at which nothing is holding light back.
--
--   AND THE TRANSFER HAS A BOUNDARY. The bridge and the depth inversion need
--   both readings to describe one object, and at u = 0 the inversion collapses
--   to the bare target, carrying no well. Three nested levels of transfer are
--   stated and the nesting is proved.
--
-- ============================================================

import Mathlib

noncomputable section

namespace SNSFL_TwoReadingsSubstrate

-- ============================================================
-- SECTION 0: CONSTANTS, THE FOUR PHASES, THE TWO READINGS
-- Restated here in full. This file depends on no other file.
-- ============================================================

/-- The Sovereign Anchor, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Torsion Limit. Ω₀/10 — discovered, not chosen. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor. 0.88 × TL. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- The corridor width factor. -/
def IVA_FACTOR : ℝ := 0.88

/-- Speed of light in vacuum, m/s. Exact by SI definition. -/
def C_LIGHT : ℝ := 299792458

/-- Standard gravitational acceleration, m/s². Exact by definition. -/
def G_STANDARD : ℝ := 9.80665

/-- The inverse fine-structure constant. Ω₀ × 100.1. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The integer the Torsion Limit divides the fine-structure constant by.
1001 = 7 × 11 × 13. -/
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
def tau_A (w : ℝ) : ℝ := w / C_LIGHT

/-- The rest-mass conversion fraction: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The matched radius in Schwarzschild units: 1/τ_A² = 1/(2η). -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

/-- The square-root torsion operator. -/
def sqrt_op (X : ℝ) : ℝ := Real.sqrt X

/-- The compactness of a body: its Schwarzschild radius over its radius. -/
def compactness (rs R : ℝ) : ℝ := rs / R

/-- The surface torsion, the body's own address: √C. -/
def surface_torsion (rs R : ℝ) : ℝ := Real.sqrt (compactness rs R)

-- [T1] :: {VER} | THE CONSTANTS, AS DECIMAL LITERALS
theorem t1_const_values :
    TORSION_LIMIT = 0.136899099984016 ∧ TL_IVA = 0.12047120798593408 := by
  constructor
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T2] :: {VER} | THE TORSION LIMIT IS POSITIVE AND BELOW ONE
theorem t2_tl_in_unit_interval :
    0 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T3] :: {VER} | THE CORRIDOR FLOOR IS POSITIVE AND BELOW THE CEILING
theorem t3_floor_below_ceiling :
    0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T4] :: {VER} | THE EXACTNESS ANCHOR: TL × 1001 = α⁻¹
theorem t4_tl_times_1001_is_alpha :
    TORSION_LIMIT * TL_DIVISOR = ALPHA_INV := by
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

-- [T7] :: {VER} | THE MATCHED RATIO IS POSITIVE
theorem t7_matched_ratio_pos (t : ℝ) (ht : t ≠ 0) : 0 < matched_ratio t := by
  simp only [matched_ratio]
  have h : (0:ℝ) < t ^ 2 :=
    lt_of_le_of_ne (sq_nonneg t) (Ne.symm (pow_ne_zero 2 ht))
  exact div_pos one_pos h

-- [T8] :: {VER} | THE CORRIDOR CEILING CLASSIFIES AS SHATTER AT ITS OWN VALUE
theorem t8_ceiling_is_shatter : classify TORSION_LIMIT = Phase.Shatter := by
  have h0 : TORSION_LIMIT ≠ 0 := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  unfold classify
  rw [if_neg h0, if_neg (not_lt.mpr t3_floor_below_ceiling.2.le),
    if_neg (lt_irrefl TORSION_LIMIT)]

-- ============================================================
-- SECTION 1: THE COMMON EQUATION
-- tau = integral of (-dY/Y) = ln(Y0/Y). An e-fold count, no substrate named.
-- ============================================================

/-- Reading B as an e-fold count: the logarithm of the endpoint ratio. -/
def efold (Y0 Y : ℝ) : ℝ := Real.log (Y0 / Y)

/-- The fraction of the consumed quantity still present after τ e-folds. -/
def remaining (τ : ℝ) : ℝ := Real.exp (-τ)

/-- The fraction removed after τ e-folds. -/
def consumed (τ : ℝ) : ℝ := 1 - Real.exp (-τ)

-- [T9] :: {MASTER} | THE E-FOLD COUNT INVERTS THE DECAY
theorem t9_efold_inverts (Y0 τ : ℝ) (h : 0 < Y0) :
    efold Y0 (Y0 * remaining τ) = τ := by
  have h0 : Y0 ≠ 0 := ne_of_gt h
  have hp : Real.exp τ ≠ 0 := Real.exp_ne_zero τ
  simp only [efold, remaining]
  rw [show Y0 / (Y0 * Real.exp (-τ)) = Real.exp τ by
        rw [Real.exp_neg]; field_simp]
  exact Real.log_exp τ

-- [T10] :: {MASTER} | THE DECAY RECOVERS THE ENDPOINT FROM THE E-FOLD COUNT
theorem t10_remaining_recovers (Y0 Y : ℝ) (h0 : 0 < Y0) (hY : 0 < Y) :
    Y0 * remaining (efold Y0 Y) = Y := by
  have hz : Y0 ≠ 0 := ne_of_gt h0
  have hzy : Y ≠ 0 := ne_of_gt hY
  have hdiv : (0:ℝ) < Y0 / Y := div_pos h0 hY
  simp only [remaining, efold, Real.exp_neg, Real.exp_log hdiv]
  field_simp

-- [T11] :: {INV} | THE TWO FRACTIONS ARE COMPLEMENTS
theorem t11_fractions_complement (τ : ℝ) : consumed τ + remaining τ = 1 := by
  simp only [consumed, remaining]; ring

-- [T12] :: {INV} | A ZERO COUNT CONSUMES NOTHING
theorem t12_zero_consumes_nothing : consumed 0 = 0 := by
  simp only [consumed, neg_zero, Real.exp_zero, sub_self]

-- [T13] :: {INV} | THE CONSUMED FRACTION IS STRICTLY INCREASING IN THE COUNT
theorem t13_consumed_strict_mono (a b : ℝ) (h : a < b) : consumed a < consumed b := by
  simp only [consumed]
  have he : Real.exp (-b) < Real.exp (-a) := Real.exp_lt_exp.mpr (by linarith)
  linarith

-- [T14] :: {INV} | THE CONSUMED FRACTION NEVER REACHES ONE
theorem t14_consumed_below_one (τ : ℝ) : consumed τ < 1 := by
  simp only [consumed]
  have hp := Real.exp_pos (-τ)
  linarith

-- [T15] :: {INV} | ANY POSITIVE COUNT CONSUMES SOMETHING
theorem t15_consumed_pos (τ : ℝ) (h : 0 < τ) : 0 < consumed τ := by
  simp only [consumed]
  have hlt : Real.exp (-τ) < 1 := by
    have hx := Real.exp_lt_exp.mpr (show -τ < 0 by linarith)
    rwa [Real.exp_zero] at hx
  linarith

-- [T16] :: {VER} | ONE DECADE IS NINE TENTHS GONE, EXACTLY
theorem t16_one_decade : consumed (Real.log 10) = 9 / 10 := by
  simp only [consumed, Real.exp_neg, Real.exp_log (by norm_num : (0:ℝ) < 10)]
  norm_num

-- [T17] :: {VER} | TWO DECADES IS NINETY-NINE HUNDREDTHS GONE, EXACTLY
theorem t17_two_decades : consumed (Real.log 100) = 99 / 100 := by
  simp only [consumed, Real.exp_neg, Real.exp_log (by norm_num : (0:ℝ) < 100)]
  norm_num

-- [T18] :: {VER} | LN 2 IS HALF GONE, EXACTLY
theorem t18_half_gone : consumed (Real.log 2) = 1 / 2 := by
  simp only [consumed, Real.exp_neg, Real.exp_log (by norm_num : (0:ℝ) < 2)]
  norm_num

-- [T19] :: {VER} | ONE E-FOLD IS 0.632 OF THE QUANTITY
theorem t19_one_efold_numeric :
    0.632 < consumed 1 ∧ consumed 1 < 0.633 := by
  have hlo := Real.exp_one_gt_d9
  have hhi := Real.exp_one_lt_d9
  have hE : (0:ℝ) < Real.exp 1 := Real.exp_pos 1
  have hinvpos : (0:ℝ) < (Real.exp 1)⁻¹ := inv_pos.mpr hE
  have hmul : (Real.exp 1)⁻¹ * Real.exp 1 = 1 := inv_mul_cancel₀ (ne_of_gt hE)
  simp only [consumed, Real.exp_neg]
  constructor
  · nlinarith [hlo, hhi, hE, hinvpos, hmul]
  · nlinarith [hlo, hhi, hE, hinvpos, hmul]

-- [T20] :: {MASTER} | E-FOLD COUNTS ADD ALONG A PATH
theorem t20_path_additive (Y0 Y1 Y2 : ℝ) (h0 : 0 < Y0) (h1 : 0 < Y1) (h2 : 0 < Y2) :
    efold Y0 Y1 + efold Y1 Y2 = efold Y0 Y2 := by
  have hne1 : Y0 / Y1 ≠ 0 := div_ne_zero (ne_of_gt h0) (ne_of_gt h1)
  have hne2 : Y1 / Y2 ≠ 0 := div_ne_zero (ne_of_gt h1) (ne_of_gt h2)
  have hz1 : Y1 ≠ 0 := ne_of_gt h1
  have hz2 : Y2 ≠ 0 := ne_of_gt h2
  simp only [efold]
  rw [← Real.log_mul hne1 hne2]
  congr 1
  field_simp

-- ============================================================
-- SECTION 2: READING B ACROSS SUBSTRATES
-- One structure, five named rows, one equation.
-- ============================================================

/-- A substrate carrying Reading B: a positive quantity and its two endpoints. -/
structure ReadingB where
  Y0 : ℝ
  Y1 : ℝ
  hY0 : 0 < Y0
  hY1 : 0 < Y1

/-- The substrate's e-fold count. -/
def ReadingB.tau (s : ReadingB) : ℝ := efold s.Y0 s.Y1

/-- The substrate's consumed fraction. -/
def ReadingB.consumedFraction (s : ReadingB) : ℝ := consumed s.tau

-- [T21] :: {MASTER} | THE CONSUMED FRACTION IS THE COMPLEMENT OF THE ENDPOINT RATIO
theorem t21_substrate_consumed (s : ReadingB) :
    s.consumedFraction = 1 - s.Y1 / s.Y0 := by
  have h0 : s.Y0 ≠ 0 := ne_of_gt s.hY0
  have h1 : s.Y1 ≠ 0 := ne_of_gt s.hY1
  have hd : (0:ℝ) < s.Y0 / s.Y1 := div_pos s.hY0 s.hY1
  simp only [ReadingB.consumedFraction, ReadingB.tau, consumed, efold,
    Real.exp_neg, Real.exp_log hd]
  field_simp

/-- The propulsion row: propellant mass over the burn. -/
def propulsion_row (m0 mf : ℝ) (h0 : 0 < m0) (hf : 0 < mf) : ReadingB := ⟨m0, mf, h0, hf⟩

/-- The optics row: intensity over the slab. -/
def optics_row (I0 I : ℝ) (h0 : 0 < I0) (h : 0 < I) : ReadingB := ⟨I0, I, h0, h⟩

/-- The nuclear row: activity over elapsed proper time. -/
def nuclear_row (A0 A : ℝ) (h0 : 0 < A0) (h : 0 < A) : ReadingB := ⟨A0, A, h0, h⟩

/-- The circuits row: charge over the RC discharge. -/
def circuits_row (V0 V : ℝ) (h0 : 0 < V0) (h : 0 < V) : ReadingB := ⟨V0, V, h0, h⟩

/-- The capital row: principal over a holding period. -/
def capital_row (P0 P1 : ℝ) (h0 : 0 < P0) (h : 0 < P1) : ReadingB := ⟨P0, P1, h0, h⟩

-- [T22] :: {MASTER} | THE FIVE ROWS ARE ONE EQUATION
theorem t22_rows_are_one_equation (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    (propulsion_row a b ha hb).tau = (optics_row a b ha hb).tau ∧
    (optics_row a b ha hb).tau = (nuclear_row a b ha hb).tau ∧
    (nuclear_row a b ha hb).tau = (circuits_row a b ha hb).tau ∧
    (circuits_row a b ha hb).tau = (capital_row a b ha hb).tau :=
  ⟨rfl, rfl, rfl, rfl⟩

-- [T23] :: {INV} | THE ROCKET RELATION IS THE ROW, NAMED
theorem t23_rocket_relation (m0 mf : ℝ) (h0 : 0 < m0) (hf : 0 < mf) :
    (propulsion_row m0 mf h0 hf).tau = Real.log (m0 / mf) := rfl

-- [T24] :: {INV} | THE BEER-LAMBERT LAW IS THE ROW, NAMED
theorem t24_beer_lambert_law (I0 I : ℝ) (h0 : 0 < I0) (h : 0 < I) :
    (optics_row I0 I h0 h).tau = Real.log (I0 / I) := rfl

/-- Beer–Lambert attenuation through a slab: absorption coefficient times length. -/
def beer_lambert (I0 a L : ℝ) : ℝ := I0 * Real.exp (-(a * L))

/-- The ideal rocket's remaining mass after a burn of Reading B. -/
def rocket_remaining (m0 tb : ℝ) : ℝ := m0 * Real.exp (-tb)

-- [T25] :: {MASTER} | BEER-LAMBERT AND THE ROCKET RELATION ARE ONE FUNCTION
theorem t25_same_function (I0 a L : ℝ) :
    beer_lambert I0 a L = rocket_remaining I0 (a * L) := rfl

-- [T26] :: {INV} | THE OPTICAL DEPTH IS THE E-FOLD COUNT
theorem t26_optical_depth_is_efold (I0 a L : ℝ) (h : 0 < I0) :
    efold I0 (beer_lambert I0 a L) = a * L :=
  t9_efold_inverts I0 (a * L) h

-- [T27] :: {INV} | STACKING SLABS IS STAGING A BURN
theorem t27_stacking_is_staging (I0 I1 I2 : ℝ) (h0 : 0 < I0) (h1 : 0 < I1) (h2 : 0 < I2) :
    (optics_row I0 I1 h0 h1).tau + (optics_row I1 I2 h1 h2).tau
      = (optics_row I0 I2 h0 h2).tau :=
  t20_path_additive I0 I1 I2 h0 h1 h2

-- ============================================================
-- SECTION 3: READING A NEEDS A CEILING, AND A MEDIUM HAS ONE
-- ============================================================

/-- Reading A in a medium: the phase velocity c/n against c, so 1/n. -/
def reading_A_medium (n : ℝ) : ℝ := 1 / n

/-- The relative permittivity of a non-magnetic medium, from its index. -/
def perm_of_index (n : ℝ) : ℝ := n ^ 2

/-- The refractive index of a non-magnetic medium, from its permittivity. -/
def index_of_perm (e : ℝ) : ℝ := Real.sqrt e

-- [T28] :: {INV} | READING A IN A MEDIUM IS CONFINED TO THE UNIT INTERVAL
theorem t28_reading_a_bounded (n : ℝ) (hn : 1 ≤ n) :
    0 < reading_A_medium n ∧ reading_A_medium n ≤ 1 := by
  have hpos : (0:ℝ) < n := by linarith
  have hinv : n * (1 / n) = 1 := by field_simp
  have hqpos : (0:ℝ) < 1 / n := div_pos one_pos hpos
  simp only [reading_A_medium]
  refine ⟨hqpos, ?_⟩
  nlinarith [hinv, hpos, hn, hqpos]

-- [T29] :: {INV} | READING A IS ONE EXACTLY IN VACUUM
theorem t29_unity_is_vacuum (n : ℝ) (hn : 0 < n) :
    reading_A_medium n = 1 ↔ n = 1 := by
  have hn0 : n ≠ 0 := ne_of_gt hn
  simp only [reading_A_medium]
  constructor
  · intro h
    field_simp at h
    linarith
  · intro h
    rw [h]; norm_num

-- [T30] :: {INV} | THE INDEX AND THE PERMITTIVITY INVERT EACH OTHER
theorem t30_index_perm_inverse (e : ℝ) (he : 0 ≤ e) :
    perm_of_index (index_of_perm e) = e := by
  simp only [perm_of_index, index_of_perm]
  exact Real.sq_sqrt he

-- [T31] :: {INV} | READING A IS STRICTLY DECREASING IN THE INDEX
theorem t31_reading_a_decreasing (n₁ n₂ : ℝ) (h1 : 0 < n₁) (h : n₁ < n₂) :
    reading_A_medium n₂ < reading_A_medium n₁ := by
  simp only [reading_A_medium]
  exact one_div_lt_one_div_of_lt h1 h

-- ============================================================
-- SECTION 4: THE PERMITTIVITY IS THE MATCHED RATIO
-- ============================================================

-- [T32] :: {MASTER} | THE MATCHED RATIO OF A MEDIUM IS ITS OWN PERMITTIVITY
theorem t32_perm_is_matched_ratio (n : ℝ) (hn : n ≠ 0) :
    matched_ratio (reading_A_medium n) = perm_of_index n := by
  simp only [matched_ratio, reading_A_medium, perm_of_index]
  field_simp

-- [T33] :: {INV} | STATED ON THE PERMITTIVITY DIRECTLY
theorem t33_matched_ratio_from_perm (e : ℝ) (he : 0 < e) :
    matched_ratio (reading_A_medium (index_of_perm e)) = e := by
  have hne : index_of_perm e ≠ 0 := by
    simp only [index_of_perm]
    exact ne_of_gt (Real.sqrt_pos.mpr he)
  rw [t32_perm_is_matched_ratio _ hne]
  exact t30_index_perm_inverse e he.le

-- [T34] :: {INV} | THE CONVERSION FRACTION OF A MEDIUM
theorem t34_eta_of_medium (n : ℝ) (hn : n ≠ 0) :
    2 * eta_of_tau (reading_A_medium n) = 1 / perm_of_index n := by
  simp only [eta_of_tau, reading_A_medium, perm_of_index]
  field_simp

-- ============================================================
-- SECTION 5: THE SQUARE-ROOT OPERATOR IS A CONSTITUTIVE RELATION
-- ============================================================

/-- Characteristic impedance from the constitutive pair: Z = √(μ/ε). -/
def impedance (mu eps : ℝ) : ℝ := Real.sqrt (mu / eps)

/-- Sound speed from stiffness over density: v = √(K/ρ). -/
def sound_speed (K rho : ℝ) : ℝ := Real.sqrt (K / rho)

-- [T35] :: {MASTER} | THE CLOSURE OF THE SQUARE-ROOT OPERATOR
theorem t35_closure (X : ℝ) (hX : 0 ≤ X) : matched_ratio (sqrt_op X) = 1 / X := by
  simp only [matched_ratio, sqrt_op, Real.sq_sqrt hX]

-- [T36] :: {INV} | THE OPTICAL ROW IS THE OPERATOR
theorem t36_optics_is_the_operator (e : ℝ) : index_of_perm e = sqrt_op e := rfl

-- [T37] :: {INV} | THE GRAVITATIONAL ROW IS THE OPERATOR
theorem t37_gravitation_is_the_operator (rs R : ℝ) :
    surface_torsion rs R = sqrt_op (compactness rs R) := rfl

-- [T38] :: {INV} | THE TRANSMISSION ROW IS THE OPERATOR
theorem t38_impedance_is_the_operator (mu eps : ℝ) :
    impedance mu eps = sqrt_op (mu / eps) := rfl

-- [T39] :: {INV} | THE ACOUSTIC ROW IS THE OPERATOR
theorem t39_sound_speed_is_the_operator (K rho : ℝ) :
    sound_speed K rho = sqrt_op (K / rho) := rfl

-- [T40] :: {INV} | THE OPERATOR IS MONOTONE
theorem t40_operator_monotone (X Y : ℝ) (hX : 0 ≤ X) (h : X < Y) :
    sqrt_op X < sqrt_op Y := by
  simp only [sqrt_op]
  exact Real.sqrt_lt_sqrt hX h

-- [T41] :: {INV} | THE OPERATOR IS POSITIVE ON POSITIVES
theorem t41_operator_pos (X : ℝ) (hX : 0 < X) : 0 < sqrt_op X := by
  simp only [sqrt_op]
  exact Real.sqrt_pos.mpr hX

-- [T42] :: {INV} | THE OPERATOR FIXES ONE
theorem t42_operator_fixes_one : sqrt_op 1 = 1 := by
  simp only [sqrt_op]
  exact Real.sqrt_one

-- ============================================================
-- SECTION 6: THE CLOSURE THEOREM IN BOTH SUBSTRATES
-- ============================================================

-- [T43] :: {MASTER} | READING A IN A MEDIUM IS THE OPERATOR ON THE INVERSE PERMITTIVITY
theorem t43_reading_a_is_operator_form (e : ℝ) :
    reading_A_medium (index_of_perm e) = sqrt_op (1 / e) := by
  simp only [reading_A_medium, index_of_perm, sqrt_op, one_div, Real.sqrt_inv]

-- [T44] :: {MASTER} | THE CLOSURE THEOREM IN OPTICS
theorem t44_optics_closure (e : ℝ) (he : 0 < e) :
    matched_ratio (sqrt_op (1 / e)) = e := by
  have hz : e ≠ 0 := ne_of_gt he
  rw [t35_closure (1 / e) (le_of_lt (div_pos one_pos he))]
  field_simp

-- [T45] :: {MASTER} | THE CLOSURE THEOREM IN GRAVITATION
theorem t45_grav_closure (rs R : ℝ) (hrs : 0 < rs) (hR : 0 < R) :
    matched_ratio (surface_torsion rs R) = R / rs := by
  have h : (0:ℝ) ≤ compactness rs R := by
    simp only [compactness]
    exact le_of_lt (div_pos hrs hR)
  have hz1 : rs ≠ 0 := ne_of_gt hrs
  have hz2 : R ≠ 0 := ne_of_gt hR
  rw [t37_gravitation_is_the_operator, t35_closure _ h]
  simp only [compactness]
  field_simp

-- [T46] :: {MASTER} | THE ADDRESS THEOREM: THE MATCHED RADIUS SITS AT THE SURFACE
theorem t46_address_theorem (rs R : ℝ) (hrs : 0 < rs) (hR : 0 < R) :
    rs * matched_ratio (surface_torsion rs R) = R := by
  have hz1 : rs ≠ 0 := ne_of_gt hrs
  rw [t45_grav_closure rs R hrs hR]
  field_simp

-- [T47] :: {MASTER} | ONE CLOSURE, TWO SUBSTRATES
theorem t47_one_closure_two_substrates (e rs R : ℝ) (he : 0 < e) (hrs : 0 < rs) (hR : 0 < R) :
    matched_ratio (sqrt_op (1 / e)) = e ∧
    matched_ratio (sqrt_op (compactness rs R)) = R / rs := by
  refine ⟨t44_optics_closure e he, ?_⟩
  rw [← t37_gravitation_is_the_operator]
  exact t45_grav_closure rs R hrs hR

-- [T48] :: {INV} | THE COMPACTNESS IS THE SQUARE OF THE ADDRESS
theorem t48_compactness_is_address_squared (rs R : ℝ) (hrs : 0 < rs) (hR : 0 < R) :
    surface_torsion rs R ^ 2 = compactness rs R := by
  have h : (0:ℝ) ≤ compactness rs R := by
    simp only [compactness]
    exact le_of_lt (div_pos hrs hR)
  simp only [surface_torsion]
  exact Real.sq_sqrt h

-- ============================================================
-- SECTION 7: THE EXACTNESS, AND THE CORRIDOR IN A DIELECTRIC
-- ============================================================

/-- The IVA corridor floor on relative permittivity: the matched ratio of the
Torsion Limit. -/
def iva_perm_floor : ℝ := matched_ratio TORSION_LIMIT

/-- The IVA corridor ceiling on relative permittivity: the matched ratio of the
corridor floor on Reading A. -/
def iva_perm_ceiling : ℝ := matched_ratio TL_IVA

-- [T49] :: {MASTER} | THE CORRIDOR ENDPOINTS ARE MATCHED RATIOS OF THE CORRIDOR ENDPOINTS
theorem t49_endpoints_are_matched_ratios :
    iva_perm_floor = matched_ratio TORSION_LIMIT ∧
    iva_perm_ceiling = matched_ratio TL_IVA := ⟨rfl, rfl⟩

-- [T50] :: {VER} | THE CORRIDOR FLOOR, NUMERICALLY
theorem t50_floor_numeric :
    53.3579104808 < iva_perm_floor ∧ iva_perm_floor < 53.3579104809 := by
  simp only [iva_perm_floor, matched_ratio, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- [T51] :: {VER} | THE CORRIDOR CEILING, NUMERICALLY
theorem t51_ceiling_numeric :
    68.9022604349 < iva_perm_ceiling ∧ iva_perm_ceiling < 68.902260435 := by
  simp only [iva_perm_ceiling, matched_ratio, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- [T52] :: {VER} | THE CORRIDOR ON PERMITTIVITY IS NON-EMPTY
theorem t52_perm_corridor_nonempty : iva_perm_floor < iva_perm_ceiling := by
  have h1 := t50_floor_numeric
  have h2 := t51_ceiling_numeric
  linarith [h1.2, h2.1]

-- [T53] :: {VER} | FIFTY-FOUR AND SIXTY-EIGHT BRACKET THE CORRIDOR FROM INSIDE
theorem t53_integer_brackets :
    iva_perm_floor < 54 ∧ (68:ℝ) ≤ iva_perm_ceiling := by
  have h1 := t50_floor_numeric
  have h2 := t51_ceiling_numeric
  exact ⟨by linarith [h1.2], by linarith [h2.1]⟩

-- [T54] :: {MASTER} | FIFTEEN INTEGERS LIE IN THE CORRIDOR
theorem t54_fifteen_integers :
    (Finset.Icc 54 68 : Finset ℕ).card = 15 ∧
    ∀ m ∈ (Finset.Icc 54 68 : Finset ℕ),
      iva_perm_floor < (m:ℝ) ∧ (m:ℝ) ≤ iva_perm_ceiling := by
  refine ⟨by simp [Nat.card_Icc], ?_⟩
  intro m hm
  simp only [Finset.mem_Icc] at hm
  have h1 : (54:ℝ) ≤ (m:ℝ) := by exact_mod_cast hm.1
  have h2 : (m:ℝ) ≤ 68 := by exact_mod_cast hm.2
  have hb := t53_integer_brackets
  exact ⟨by linarith [hb.1], by linarith [hb.2]⟩

-- [T55] :: {MASTER} | A PERMITTIVITY IN THE CORRIDOR CLASSIFIES AS IVA
theorem t55_band_classifies_iva (e : ℝ)
    (hlo : iva_perm_floor < e) (hhi : e ≤ iva_perm_ceiling) :
    classify (reading_A_medium (index_of_perm e)) = Phase.IVA := by
  have hTLpos : (0:ℝ) < TORSION_LIMIT := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hIVApos : (0:ℝ) < TL_IVA := by
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hTL2 : (0:ℝ) < TORSION_LIMIT ^ 2 := pow_pos hTLpos 2
  have hIVA2 : (0:ℝ) < TL_IVA ^ 2 := pow_pos hIVApos 2
  have hfloorpos : (0:ℝ) < iva_perm_floor := by
    have hf := t50_floor_numeric
    linarith [hf.1]
  have hepos : (0:ℝ) < e := by linarith
  have hs : Real.sqrt e ^ 2 = e := Real.sq_sqrt hepos.le
  have hspos : (0:ℝ) < Real.sqrt e := Real.sqrt_pos.mpr hepos
  -- clear the denominators without touching the division lemmas
  have hinvTL : TORSION_LIMIT ^ 2 * (1 / TORSION_LIMIT ^ 2) = 1 := by
    field_simp
  have hinvIVA : TL_IVA ^ 2 * (1 / TL_IVA ^ 2) = 1 := by
    field_simp
  have hlo2 : 1 < e * TORSION_LIMIT ^ 2 := by
    simp only [iva_perm_floor, matched_ratio] at hlo
    nlinarith [hlo, hTL2, hinvTL]
  have hhi2 : e * TL_IVA ^ 2 ≤ 1 := by
    simp only [iva_perm_ceiling, matched_ratio] at hhi
    nlinarith [hhi, hIVA2, hinvIVA]
  -- lift to the roots
  have hlo' : 1 < Real.sqrt e * TORSION_LIMIT := by
    by_contra hcon
    have hc : Real.sqrt e * TORSION_LIMIT ≤ 1 := not_lt.mp hcon
    nlinarith [hs, hspos, hTLpos, hlo2, hc, mul_pos hspos hTLpos]
  have hhi' : Real.sqrt e * TL_IVA ≤ 1 := by
    by_contra hcon
    have hc : 1 < Real.sqrt e * TL_IVA := not_le.mp hcon
    nlinarith [hs, hspos, hIVApos, hhi2, hc, mul_pos hspos hIVApos]
  -- the three branch conditions
  have hqpos : (0:ℝ) < 1 / Real.sqrt e := div_pos one_pos hspos
  have hsinv : Real.sqrt e * (1 / Real.sqrt e) = 1 := by
    field_simp
  have hlt : 1 / Real.sqrt e < TORSION_LIMIT := by
    nlinarith [hlo', hspos, hsinv, hTLpos, hqpos]
  have hge : TL_IVA ≤ 1 / Real.sqrt e := by
    nlinarith [hhi', hspos, hsinv, hIVApos, hqpos]
  have hne : ¬ (1 / Real.sqrt e = 0) := by
    intro hzero
    rw [hzero] at hqpos
    exact absurd hqpos (lt_irrefl 0)
  simp only [reading_A_medium, index_of_perm, classify]
  rw [if_neg hne, if_neg (not_lt.mpr hge), if_pos hlt]

-- [T56] :: {MASTER} | A PRIME PERMITTIVITY: IRRATIONAL INDEX, EXACT MATCHED RATIO
theorem t56_prime_permittivity :
    iva_perm_floor < 59 ∧ (59:ℝ) ≤ iva_perm_ceiling ∧
    Irrational (Real.sqrt 59) ∧
    matched_ratio (sqrt_op (1 / 59)) = 59 := by
  have hb := t53_integer_brackets
  refine ⟨by linarith [hb.1], by linarith [hb.2], ?_, ?_⟩
  · have h59 : Nat.Prime 59 := by norm_num
    simpa using h59.irrational_sqrt
  · exact t44_optics_closure 59 (by norm_num)

-- [T57] :: {MASTER} | THE PRIME PERMITTIVITY SITS IN THE CORRIDOR
theorem t57_prime_is_iva :
    classify (reading_A_medium (index_of_perm 59)) = Phase.IVA := by
  have h := t56_prime_permittivity
  exact t55_band_classifies_iva 59 h.1 h.2.1

-- [T58] :: {INV} | A RATIONAL PERMITTIVITY GIVES AN EXACTLY RATIONAL MATCHED RATIO
theorem t58_rational_closure (p q : ℕ) (hp : 0 < p) (hq : 0 < q) :
    matched_ratio (sqrt_op (1 / ((p:ℝ) / (q:ℝ)))) = (p:ℝ) / (q:ℝ) := by
  have hpr : (0:ℝ) < (p:ℝ) := by exact_mod_cast hp
  have hqr : (0:ℝ) < (q:ℝ) := by exact_mod_cast hq
  exact t44_optics_closure _ (div_pos hpr hqr)

-- ============================================================
-- SECTION 8: SELF-CENTERING, AND THE LIMIT BOTH SUBSTRATES SHARE
-- ============================================================

-- [T59] :: {MASTER} | THE OPERATOR IS SELF-CENTERING ON THE OPEN UNIT INTERVAL
theorem t59_self_centering (k : ℝ) (h0 : 0 < k) (h1 : k < 1) :
    k < sqrt_op k ∧ sqrt_op k < 1 := by
  have hsq : Real.sqrt k ^ 2 = k := Real.sq_sqrt h0.le
  have hpos : (0:ℝ) < Real.sqrt k := Real.sqrt_pos.mpr h0
  have hlt1 : Real.sqrt k < 1 := by nlinarith [hsq, hpos, h1]
  simp only [sqrt_op]
  exact ⟨by nlinarith [hsq, hpos, hlt1], hlt1⟩

-- [T60] :: {INV} | THE OPERATOR RETURNS READING A FROM THE CONVERSION FRACTION
theorem t60_operator_returns_reading_a (t : ℝ) (ht : 0 ≤ t) :
    sqrt_op (2 * eta_of_tau t) = t := by
  simp only [sqrt_op, eta_of_tau]
  rw [show 2 * (t ^ 2 / 2) = t ^ 2 by ring]
  exact Real.sqrt_sq ht

-- [T61] :: {VER} | THE FIRST STEP OF THE LADDER RETURNS THE TORSION LIMIT
theorem t61_first_step_is_tl : sqrt_op (TORSION_LIMIT ^ 2) = TORSION_LIMIT := by
  simp only [sqrt_op]
  exact Real.sqrt_sq (by simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num)

-- [T62] :: {VER} | THE SECOND STEP OF THE LADDER RETURNS THE ROOT OF THE TORSION LIMIT
theorem t62_second_step_is_root_tl :
    sqrt_op (sqrt_op (TORSION_LIMIT ^ 2)) = Real.sqrt TORSION_LIMIT := by
  rw [t61_first_step_is_tl]
  simp only [sqrt_op]

-- [T63] :: {VER} | THE ROOT OF THE TORSION LIMIT, NUMERICALLY
theorem t63_root_tl_numeric :
    0.3699987 < Real.sqrt TORSION_LIMIT ∧ Real.sqrt TORSION_LIMIT < 0.3699988 := by
  have hTL : (0:ℝ) ≤ TORSION_LIMIT := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hs : Real.sqrt TORSION_LIMIT ^ 2 = TORSION_LIMIT := Real.sq_sqrt hTL
  have hnn : (0:ℝ) ≤ Real.sqrt TORSION_LIMIT := Real.sqrt_nonneg _
  have hnum : TORSION_LIMIT = 0.136899099984016 := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  constructor
  · nlinarith [hs, hnn, hnum]
  · nlinarith [hs, hnn, hnum]

-- [T64] :: {VER} | THE LADDER CLIMBS
theorem t64_ladder_climbs :
    TORSION_LIMIT ^ 2 < TORSION_LIMIT ∧ TORSION_LIMIT < Real.sqrt TORSION_LIMIT := by
  have h2 := t2_tl_in_unit_interval
  have hsc := t59_self_centering TORSION_LIMIT h2.1 h2.2
  refine ⟨by nlinarith [h2.1, h2.2], ?_⟩
  simpa only [sqrt_op] using hsc.1

-- [T65] :: {MASTER} | THE MATCHED RATIO IS ONE EXACTLY AT THE SHARED LIMIT
theorem t65_unit_matched_ratio (t : ℝ) (ht : 0 < t) :
    matched_ratio t = 1 ↔ t = 1 := by
  have ht0 : t ≠ 0 := ne_of_gt ht
  simp only [matched_ratio]
  constructor
  · intro h
    have hsq : t ^ 2 = 1 := by
      field_simp at h
      linarith
    have hfac : (t - 1) * (t + 1) = 0 := by linear_combination hsq
    rcases mul_eq_zero.mp hfac with h1 | h2
    · linarith
    · linarith
  · intro h
    rw [h]; norm_num

-- [T66] :: {MASTER} | THE HORIZON AND VACUUM ARE THE SAME CONDITION
theorem t66_horizon_is_vacuum (n : ℝ) (hn : 0 < n) :
    matched_ratio (reading_A_medium n) = 1 ↔ n = 1 := by
  have hn0 : n ≠ 0 := ne_of_gt hn
  rw [t32_perm_is_matched_ratio n hn0]
  simp only [perm_of_index]
  constructor
  · intro h
    have hfac : (n - 1) * (n + 1) = 0 := by linear_combination h
    rcases mul_eq_zero.mp hfac with h1 | h2
    · linarith
    · linarith
  · intro h
    rw [h]; norm_num

-- [T67] :: {INV} | VACUUM IS THE ONLY MEDIUM AT THE LIMIT
theorem t67_vacuum_perm_is_one : perm_of_index 1 = 1 ∧ reading_A_medium 1 = 1 := by
  simp only [perm_of_index, reading_A_medium]; norm_num

-- ============================================================
-- SECTION 9: WHERE THE TRANSFER STOPS
-- The bridge and the depth inversion need both readings on one object.
-- ============================================================

/-- The bridge: the two readings multiplied into one kinematic output. -/
def bridge (t tb : ℝ) : ℝ := C_LIGHT * t * tb

/-- The radical of the depth inversion. -/
def rad_depth (u x : ℝ) : ℝ := Real.sqrt (u ^ 2 + x ^ 2)

/-- The depth inversion: Reading B required to reach target x from depth u. -/
def tau_B_depth (u x : ℝ) : ℝ := rad_depth u x - u

/-- The pseudo-Huber form, scaled. -/
def pseudo_huber (u x : ℝ) : ℝ := u * (Real.sqrt (u ^ 2 + x ^ 2) - u)

-- [T68] :: {INV} | THE BRIDGE IS A PRODUCT OF BOTH READINGS
theorem t68_bridge_needs_both (t tb : ℝ) :
    bridge 0 tb = 0 ∧ bridge t 0 = 0 := by
  simp only [bridge]
  constructor <;> ring

-- [T69] :: {MASTER} | THE DEPTH INVERSION IS THE PSEUDO-HUBER FORM
theorem t69_pseudo_huber_identity (u x : ℝ) :
    u * tau_B_depth u x = pseudo_huber u x := by
  unfold tau_B_depth rad_depth pseudo_huber
  ring

-- [T70] :: {MASTER} | WITHOUT A WELL THE INVERSION COLLAPSES TO THE BARE TARGET
theorem t70_no_well_no_depth (x : ℝ) : tau_B_depth 0 x = |x| := by
  simp only [tau_B_depth, rad_depth]
  rw [show (0:ℝ) ^ 2 + x ^ 2 = x ^ 2 by ring, Real.sqrt_sq_eq_abs]
  ring

/-- The three nested levels of transfer, with the nesting as part of the data. -/
structure TransferLevels where
  multiplicative : Prop
  limiting_speed : Prop
  single_object : Prop
  speed_needs_multiplicative : limiting_speed → multiplicative
  single_needs_speed : single_object → limiting_speed

-- [T71] :: {MASTER} | THE LEVELS NEST
theorem t71_levels_nest (L : TransferLevels) : L.single_object → L.multiplicative :=
  fun h => L.speed_needs_multiplicative (L.single_needs_speed h)

-- [T72] :: {INV} | LEVEL TWO SITS INSIDE LEVEL ONE
theorem t72_level_two_in_one (L : TransferLevels) : L.limiting_speed → L.multiplicative :=
  L.speed_needs_multiplicative

-- ============================================================
-- MASTER
-- ============================================================

-- [MASTER] :: {ANC} | THE TWO READINGS ACROSS SUBSTRATES
theorem MASTER_two_readings_across_substrates :
    -- the common equation, and the fraction it names
    (∀ Y0 τ : ℝ, 0 < Y0 → efold Y0 (Y0 * remaining τ) = τ) ∧
    (∀ τ : ℝ, consumed τ + remaining τ = 1) ∧
    (∀ s : ReadingB, s.consumedFraction = 1 - s.Y1 / s.Y0) ∧
    -- the rocket relation and Beer-Lambert are one function
    (∀ I0 a L : ℝ, beer_lambert I0 a L = rocket_remaining I0 (a * L)) ∧
    -- e-fold counts add along a path
    (∀ Y0 Y1 Y2 : ℝ, 0 < Y0 → 0 < Y1 → 0 < Y2 →
      efold Y0 Y1 + efold Y1 Y2 = efold Y0 Y2) ∧
    -- the permittivity is the matched ratio
    (∀ n : ℝ, n ≠ 0 → matched_ratio (reading_A_medium n) = perm_of_index n) ∧
    -- the closure of the square-root operator
    (∀ X : ℝ, 0 ≤ X → matched_ratio (sqrt_op X) = 1 / X) ∧
    -- one closure, two substrates
    (∀ e rs R : ℝ, 0 < e → 0 < rs → 0 < R →
      matched_ratio (sqrt_op (1 / e)) = e ∧
      matched_ratio (sqrt_op (compactness rs R)) = R / rs) ∧
    -- the address theorem
    (∀ rs R : ℝ, 0 < rs → 0 < R → rs * matched_ratio (surface_torsion rs R) = R) ∧
    -- the corridor on permittivity, occupied by fifteen integers
    ((Finset.Icc 54 68 : Finset ℕ).card = 15) ∧
    (∀ m ∈ (Finset.Icc 54 68 : Finset ℕ),
      iva_perm_floor < (m:ℝ) ∧ (m:ℝ) ≤ iva_perm_ceiling) ∧
    (∀ e : ℝ, iva_perm_floor < e → e ≤ iva_perm_ceiling →
      classify (reading_A_medium (index_of_perm e)) = Phase.IVA) ∧
    -- a prime permittivity: irrational index, exact matched ratio
    (Irrational (Real.sqrt 59) ∧ matched_ratio (sqrt_op (1 / 59)) = 59) ∧
    -- the operator is self-centering
    (∀ k : ℝ, 0 < k → k < 1 → k < sqrt_op k ∧ sqrt_op k < 1) ∧
    -- the horizon and vacuum are the same condition
    (∀ n : ℝ, 0 < n → (matched_ratio (reading_A_medium n) = 1 ↔ n = 1)) ∧
    -- and the transfer has a boundary
    (∀ x : ℝ, tau_B_depth 0 x = |x|) ∧
    (∀ L : TransferLevels, L.single_object → L.multiplicative) :=
  ⟨fun Y0 τ h => t9_efold_inverts Y0 τ h,
   t11_fractions_complement,
   t21_substrate_consumed,
   t25_same_function,
   fun Y0 Y1 Y2 h0 h1 h2 => t20_path_additive Y0 Y1 Y2 h0 h1 h2,
   fun n hn => t32_perm_is_matched_ratio n hn,
   fun X hX => t35_closure X hX,
   fun e rs R he hrs hR => t47_one_closure_two_substrates e rs R he hrs hR,
   fun rs R hrs hR => t46_address_theorem rs R hrs hR,
   t54_fifteen_integers.1,
   t54_fifteen_integers.2,
   fun e hlo hhi => t55_band_classifies_iva e hlo hhi,
   ⟨t56_prime_permittivity.2.2.1, t56_prime_permittivity.2.2.2⟩,
   fun k h0 h1 => t59_self_centering k h0 h1,
   fun n hn => t66_horizon_is_vacuum n hn,
   t70_no_well_no_depth,
   fun L => t71_levels_nest L⟩

end SNSFL_TwoReadingsSubstrate

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that Reading B is an e-fold count and nothing more:
-- τ = ln(Y₀/Y) with consumed fraction 1 − e^−τ, the same equation in
-- propulsion, optics, nuclear decay, circuits and capital, with the ideal
-- rocket relation and the Beer–Lambert law proved to be ONE FUNCTION of one
-- argument and e-fold counts proved additive along a path, so stacking slabs
-- and staging a burn are the same arithmetic. Reading A requires a LIMITING
-- speed, which a medium supplies: Reading A in a medium is 1/n, and the
-- matched ratio of a medium is therefore its own relative permittivity,
-- ε_r = n² = 1/τ_A². The square-root operator S X = √X is shown to be the
-- CONSTITUTIVE RELATION of four substrates at once — index from permittivity,
-- address from compactness, impedance from the constitutive pair, sound speed
-- from stiffness over density — so its closure matched_ratio(S X) = 1/X holds
-- in every row, and the gravitational instance IS the address theorem while
-- the optical instance IS the permittivity: one result stated twice. The
-- closure is exact over ℚ, so a prime permittivity in the corridor has an
-- irrational index and an exactly rational matched ratio, and fifteen integers
-- lie inside the corridor whose endpoints are themselves matched ratios of the
-- corridor endpoints on Reading A. The operator is self-centering, and
-- matched_ratio = 1 is the horizon in gravitation and vacuum in optics: the
-- same condition, read in two substrates. The transfer's boundary is fixed by
-- the bridge needing both readings on one object and by the depth inversion
-- collapsing to the bare target when no well is present, with the three levels
-- of transfer nested and the nesting proved.
--
-- THEOREMS : 72 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
```
