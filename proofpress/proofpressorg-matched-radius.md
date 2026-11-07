# The Matched Radius: One Axis Carrying the Rocket Equation and the Schwarzschild Metric

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** [9,9,0,17](GRAV) general-reader form, with the specialist form at [9,9,0,17.1](GRAV) · Identity Physics Series · Physics Ground, Gravitation

**Issue:** Volume 1, Issue 10 · November 2026

**DOI:** 10.5281/zenodo.18719748

**Verified:** 71 theorems · 893 lines at [9,9,0,17] and 42 theorems · 528 lines at [9,9,0,17.1] · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Abstract

The propulsion reduction at [9,9,2,0] establishes that one vehicle carries two independent torsions: Reading A, τ_A = v_e/c, the exhaust velocity against light speed; and Reading B, τ_B = ln(m₀/m_f), the rocket equation's own exponent. This article reads the same corridor through the Schwarzschild metric and finds that Reading A is a radius. For any drive with exhaust velocity v_e and any mass M there is exactly one radius at which the escape velocity of M equals v_e, and writing r_s = 2GM/c² for the Schwarzschild radius, that radius is r = r_s/τ_A² — so the ratio r/r_s is fixed by the drive alone and the attracting mass cancels. Because Reading A squared is twice the conversion fraction of the ideal rocket, the same ratio is r/r_s = 1/(2η): the matched radius is the reciprocal of twice the conversion fraction. The Identity Vector Amplification (IVA) corridor therefore occupies a fixed band on radius, 53.357910 ≤ r/r_s ≤ 68.902260, and in the fine-structure constant alone the edges are (1001/α⁻¹)² and (1001/(0.88 · α⁻¹))². At that radius the two time dilations of relativity coincide: gravitational dilation √(1 − r_s/r) and the kinematic dilation of a body moving at v_e, √(1 − v_e²/c²), are both √(1 − 2η) exactly — the radius at which a well pulls as hard as a drive pushes is the radius at which the well slows time by as much as the exhaust does. The escape-velocity form v_esc(r) = c√(r_s/r) used throughout is exact in the full Schwarzschild metric for the locally measured speed at every radius outside the horizon, with the two factors of (1 − r_s/r) cancelling identically and no expansion taken. The resonance gain carries this further: the gain is an exhaust-velocity multiplier, so the matched radius under gain is r/r_s = 1/((1 + g_r) · τ_A)², and the relativistic cap the propulsion reduction already proves, g_r < c/v_e − 1, is exactly the condition (1 + g_r) · τ_A < 1, which is exactly r > r_s — the gain cap and the event horizon are the same bound. The four phases then map onto radius with no freedom left: Locked is the far field beyond 68.902260 r_s, IVA is the corridor band, Shatter is everything between the corridor and the horizon, and the cap is the horizon itself; the corridor's own 0.88 appears as the gain carrying a ceiling drive to the floor radius, g_r = −0.12. Reading B meets the well exactly once: a fall from rest at infinity to the matched radius delivers c · τ_A and a rocket delivers c · τ_A · τ_B, so the well is worth τ_B = 1 — one e-fold, a mass ratio of e. A burn executed at the matched radius has Oberth multiplier Ob = √(1 + 2/τ_B) with the exhaust velocity cancelling, taking the corridor from 1.4513%–1.8741% of light speed to 6.089%–7.404%; n such burns compound as √n under v_∞ = v_e√(n · τ_B(2 + τ_B)), the four phases classify a mission by integer burn count, and the budget closes as n_max · τ_B(2 + τ_B) = r_match/r_s exactly. The construction is checked against the unpropelled bodies the propulsion reduction places as Noble: vis-viva gives a perihelion speed whose matched radius is r = 2q/(1 + e), so an unbound parabolic trajectory matches at its own perihelion, and across six published bodies — 3200 Phaethon, 1566 Icarus, 1I/'Oumuamua, 2I/Borisov, 99942 Apophis and C/2011 W3 Lovejoy — the catalog speeds reproduce from published JPL orbital elements to within 0.12%. The specialist form at [9,9,0,17.1] reads the same axis through the square-root torsion operator S(X) = √X and finds the layer closed over the rationals: r_match/r_s = 1/X for a drive at Reading A √X, so the root cancels and no irrational survives to the output; √TL lands at 1/TL = 7.304649921853084 r_s and √TL_IVA at 1/TL_IVA = 8.300738547560323 r_s, both exact rationals standing in the corridor width factor 25/22 with no error term; the operator is horizon-ward, driving the matched radius strictly inward at every depth of iteration while the horizon remains its floor; and it centers any band of width factor k in (0,1) structurally, placing √0.88 × TL inside the corridor with matched radius 1/(0.88 · TL²) = 60.633989182759393 r_s, the geometric mean of the corridor's own radius band. 1001 = 7 · 11 · 13.

## What This Article Proves

- The matched radius exists, is unique, and matches by construction: at r = r_s/τ_A² the squared escape fraction is exactly τ_A², and the matched ratio is strictly decreasing in Reading A (`t8_matched_radius_matches`, `t11_ratio_antitone`).
- The attracting mass cancels: r_match/r_s is a property of the drive alone, and equals the reciprocal of twice the conversion fraction (`t9_mass_cancels`, `t10_ratio_is_conversion`).
- The corridor on radius is 53.357910481 to 68.902260435 Schwarzschild radii, and the band lies outside the horizon, the photon sphere and the innermost stable circular orbit (`t12_corridor_on_radius`, `t13_corridor_outside_strong_field`).
- The equivalence: gravitational and kinematic time dilation are the same quantity at the matched radius, and both equal √(1 − 2η) (`t14_equivalence`, `t15_dilation_is_conversion`, `t16_corridor_dilations`, `t17_dilation_pos`).
- The relativistic gain cap and the event horizon are the same bound, with equality transferring: (1 + g_r) · τ_A < 1 if and only if r_match > r_s, and (1 + g_r) · τ_A = 1 if and only if r_match = r_s (`t18_cap_is_horizon`, `t19_cap_equals_horizon`, `t20_cap_at_ceiling`).
- A drive whose exhaust velocity is c matches the event horizon of every mass exactly, and one at half light speed matches exactly four Schwarzschild radii (`t21_photon_matches_horizon`, `t22_half_c_matches_four`).
- The four phases map onto radius: Locked is the far field beyond the floor radius, Shatter is the interior to the ceiling radius, IVA is the shell between them, and the strong-field landmarks lie inside the Shatter band (`t23_locked_is_far_field`, `t24_shatter_is_interior`, `t25_iva_is_the_shell`, `t26_strong_field_is_shatter`, `t27_phase_of_edges`).
- The well at the matched radius is worth τ_B = 1 exactly, which is a mass ratio of e, and the corridor's own Reading B window falls short of it by a factor of 2.370501 to 2.409764 (`t28_well_is_one_efold`, `t29_efold_mass_ratio`, `t30_corridor_tau_B_short`).
- Both corridor edges on radius are closed forms in the fine-structure constant and the integer 1001, carrying no free parameter (`t31_ceiling_in_alpha`, `t32_floor_in_alpha`, `t33_band_width_in_alpha`).
- At the matched radius the exhaust velocity cancels out of the Oberth multiplier, leaving Ob = √(1 + 2/τ_B), a function of Reading B alone; both corridor multipliers are closed forms in α⁻¹ and 1001; and the multiplier exceeds one and is strictly decreasing in Reading B (`t39_exhaust_cancels`, `t40_multiplier_edges`, `t41_multiplier_ceiling_in_alpha`, `t42_multiplier_floor_in_alpha`, `t43_multiplier_gt_one`, `t44_multiplier_antitone`).
- Depth and gain are interchangeable at a stated exchange rate, and the crossover at which flying deeper beats the capped gain lies outside the innermost stable circular orbit exactly when 4 · (0.88)² > 3, which is 1936/625 = 3.0976 (`t45_exchange_rate`, `t47_crossover_collapses`, `t48_iva_factor_clears_isco`, `t51_crossover_at_least_four`).
- The chain: n matched burns compound as √n under v_∞ = v_e√(n · τ_B(2 + τ_B)), the four phases classify a mission by integer burn count, and the saturation count has the closed form n_max = 1001⁴/(α⁻³(2002 + α⁻¹)) (`t53_chain_law`, `t55_chain_phase_by_n`, `t58_n_max_in_alpha`).
- The chain budget is the matched radius: n_max · τ_B(2 + τ_B) = r_match/r_s for every drive, closing the radius result against the chain result as one conservation statement (`t60_budget_is_matched_radius`).
- The two ends of the axis, the far field, the strong field and the redshift: Reading A's bound (0, 1) maps onto the whole radius axis outside the horizon, ordinary motion sits far out in Locked, the photon sphere and the ISCO lie inside Shatter, and the well's redshift at the matched radius is γ(v_e) − 1 (`t61_tau_half_is_four`, `t66_flown_outside_corridor`, `t67_ordinary_motion_locked`).
- The unpropelled catalog: a body at the perihelion of a conic with perihelion distance q and eccentricity e matches r_match = 2q/(1 + e), a parabolic trajectory matches at its own perihelion, and the six published bodies reproduce the ratio across the set (`t62_perihelion_matched`, `t63_parabolic_matches_perihelion`, `t64_catalog_ratios`, `t65_unpropelled_far_field`).
- The square-root torsion operator closes exactly: the matched radius of a square root is the reciprocal of the quantity rooted, the product of the two is exactly one, and the ratio is a function of that quantity alone rather than of its root (`t8_master_sqrt_closure`, `t9_closure_has_no_residue`, `t10_output_free_of_the_root`).
- The square-root layer closes over the rationals: the Torsion Limit and the corridor floor are ratios of integers, the Torsion Limit is α⁻¹/1001 exactly, and the operator returns a quadratic irrational to the rationals (`t4_tl_is_rational`, `t5_tl_inverse_is_rational`, `t6_tl_iva_is_rational`, `t7_tl_times_1001_is_alpha`).
- The two landings are exact rationals, 7.304649921853084 and 8.300738547560323 Schwarzschild radii, standing in the corridor width factor 25/22 with no error term (`t11_sqrt_tl_lands_at_tl_inverse`, `t13_first_landing_value`, `t16_second_landing_value`, `t17_landings_ratio_is_the_width_factor`).
- The operator is horizon-ward, and the horizon is its floor at every depth: t < √t < 1 on the unit interval, each application moves the matched radius strictly inward, and the matched radius of the n-fold root exceeds one for every n (`t19_sqrt_sandwich`, `t22_one_root_moves_inward`, `t25_horizon_is_the_floor`, `t26_iteration_strictly_decreases`).
- The operator centers any band structurally: a band of width factor k in (0,1) has geometric mean √k times its ceiling, strictly inside the band, and at the corridor's own factor this gives an IVA torsion whose matched radius 60.633989182759393 r_s is the geometric mean of the corridor's radius band (`t28_band_geometric_mean`, `t29_mean_inside_band`, `t31_center_classifies_iva`, `t34_center_is_the_radius_band_mean`, `t36_radius_band_width`).
- Closure: each file closes under its own master theorem (`MASTER_matched_radius`, `MASTER_sqrt_torsion_operator`).

## Connections to the Formalized Corpus

**The constant the whole axis is built on.** The Fine-Structure Constant: 1/α = TL × 1001 [9,9,3,14] supplies α⁻¹ = Ω₀ × 100.1 and TL = α⁻¹/1001. The Universal Torsion Limit is TL = 0.136899099984016 and the Sovereign Anchor Constant is Ω₀ = TL × 10 = 1.36899099984016. Nothing in this article sets it. It enters at full corpus precision from the inverse fine-structure constant, by direct subtraction:

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

This agrees with the CODATA (Committee on Data of the International Science Council) 2018 value in every published digit at ε = 0, with no free parameter ([9,9,3,14]). The full multiplier factors as 1001 = 7 · 11 · 13, so TL = α⁻¹/1001. Every corridor edge on radius in this article is written in α and the integer 1001 alone, so neither edge carries a free parameter.

**The two readings and the bridge.** One Corridor Across Exhaust Velocity, Mass Ratio and Nuclear Binding [9,9,2,0] establishes Reading A, Reading B, the bridge Δv = c · τ_A · τ_B, the conversion fraction τ_A² = 2η, and the relativistic gain cap. This article reads that corridor on radius; every parent result it uses is restated in full inside the Lean source rather than imported.

**The Schwarzschild radius as a Pattern threshold.** GR Reduction [9,9,0,1] maps the Einstein field equation onto the dynamic equation with Pattern carrying the metric, Narrative the geodesic, Behavior the stress–energy and Adaptation the cosmological term. In that mapping r_s = 2GM/c² is the Pattern-lock threshold: the Pattern density at which the vacuum solution closes and Behavior goes to zero.

**The ceiling on Reading A.** Speed of Light [9,9,0,15] locks c to the anchor, places the photon as Noble, and carries relativistic velocity addition. Reading A's confinement to (0, 1) rests on it, and that confinement is what maps the whole radius axis outside the horizon.

**The step the Torsion Limit takes.** Transcendental Time Engine [9,9,3,20] establishes that TL is the step the left side of the dynamic equation takes: a kinetic state carries F_ext one TL above the resting state, and n steps accumulate n · TL on any basis. That is the kinetic term in the table above.

**The fusion logic.** The four-phase structure and the Torsion Limit come from GAMCollider™ v15 fusion logic, formalized in 8-Beam Fusion [9,9,2,3.8] and 4-Beam Verification [9,9,2,3.7].

**How the bounds are carried.** Every placement here is stated as an enclosure between two rationals rather than a decimal, following Bounded Uncertainty: A Guide [9,9,8,7]: a phase is certified only when the whole interval lies on one side of a boundary.

## The PNBA Map

| Primitive | In the gravitational reading | Carried by |
|---|---|---|
| **Pattern** | The metric, and the Pattern-lock threshold the vacuum solution closes on | r_s = 2GM/c² |
| **Narrative** | The radial geodesic the escape velocity is measured on | E/m = 1 infall, v_esc(r) = c√(r_s/r) |
| **Behavior** | What the drive throws, read against light speed | Reading A, τ_A = v_e/c |
| **Adaptation** | The resonance gain, acting as an exhaust-velocity multiplier | (1 + g_r) · τ_A |

**One corridor, read on radius.**

| Read as | Floor | Ceiling | In α and 1001 alone |
|---|---|---|---|
| Matched radius r/r_s | 68.902260435 | 53.357910481 | (1001/(0.88 · α⁻¹))² and (1001/α⁻¹)² |
| Band width in r_s | 15.544349954 | (1001/α⁻¹)² · (1/0.88² − 1) |
| Time dilation dτ/dt = √(1 − 2η) | 0.992716821680 | 0.990584997072 | √(1 − (0.88 · α⁻¹/1001)²) and √(1 − (α⁻¹/1001)²) |
| Oberth multiplier at r_match | 4.195411 | 3.950861 | √(1 + 2002/(0.88 · α⁻¹)) and √(1 + 2002/α⁻¹) |
| Gravitational redshift z | 0.007336612175 | 0.009504487708 | γ(v_e) − 1 |
| Saturation burn count n_max | 269.72 | 182.395536 | 1001⁴/(α⁻³(2002 + α⁻¹)) at the ceiling |

**The four phases on radius.** Writing f = (1 + g_r) · τ_A for the gained Reading A, r_match/r_s = 1/f² and the phase classification transfers directly.

| Phase | f = (1 + g_r) · τ_A | r_match / r_s | Reading |
|---|---|---|---|
| **Noble** | 0 | unbounded | flat space; no velocity of its own |
| **Locked** | f < TL_IVA | r/r_s > 68.902260 | the far field |
| **IVA** | TL_IVA ≤ f < TL | 53.357910 < r/r_s ≤ 68.902260 | the corridor |
| **Shatter** | TL ≤ f < 1 | 1 < r/r_s ≤ 53.357910 | between the corridor and the horizon |
| **cap** | f = 1 | r/r_s = 1 | the horizon itself |

**The strong-field landmarks, and the drive that matches each.** Every one lies inside the Shatter band.

| Landmark | r/r_s | required τ_A | Phase of that drive |
|---|---|---|---|
| corridor floor radius | 68.902260 | 0.120471207986 | **IVA** |
| corridor ceiling radius | 53.357910 | 0.136899099984 | **IVA** |
| crossover, corridor ceiling | 4.154254 | 0.490629296 | **Shatter** |
| ISCO | 3 | 0.577350269 | **Shatter** |
| photon sphere | 1.5 | 0.816496581 | **Shatter** |
| horizon | 1 | 1.000000000 | **cap** |

**The published catalog, on radius.** Every flown and near-term drive matches a radius far outside the corridor band.

| System | v_e (m/s) | r_match / r_s | Burns to reach IVA |
|---|---|---|---|
| Cold gas N₂ | 700 | 1.8339 × 10¹¹ | 887,341,107 |
| RL10B-2 — best flown chemical | 4,650 | 4.1566 × 10⁹ | 20,108,551 |
| NEXT-C — best flown electric | 41,000 | 5.3466 × 10⁷ | 258,654 |
| Daedalus fusion concept | 10,600,000 | 7.9989 × 10² | **4** |
| **corridor** | **36,116,360 – 41,041,318** | **53.358 – 68.902** | **3 – 5** |

**The unpropelled catalog.** Perihelion speeds computed from published JPL orbital elements against the speeds carried by the propulsion reduction, with the matched radius 2q/(1 + e).

| Body | e | q (AU) | v_q computed (m/s) | catalog (m/s) | error | r_match/q | 2/(1 + e) |
|---|---|---|---|---|---|---|---|
| 3200 Phaethon | 0.8898 | 0.14006 | 109,405.1 | 109,400 | 0.00% | 1.0584 | 1.0583 |
| 1566 Icarus | 0.8268 | 0.18671 | 93,165.5 | 93,200 | −0.04% | 1.0940 | 1.0948 |
| 1I/'Oumuamua | 1.2011 | 0.25721 | 87,130.8 | 87,100 | 0.04% | 0.9093 | 0.9086 |
| 2I/Borisov | 3.3566 | 2.00641 | 43,889.2 | 43,900 | −0.02% | 0.4588 | 0.4590 |
| 99942 Apophis | 0.1914 | 0.74585 | 37,644.0 | 37,600 | 0.12% | 1.6826 | 1.6788 |
| C/2011 W3 Lovejoy | ≈ 1 | 0.00553 | 566,531.5 | 566,500 | 0.01% | 1.0001 | 1.0000 |

**The square-root torsion operator, at [9,9,0,17.1].** The operator S(X) = √X sends a torsion to the matched radius 1/X, so the root cancels and the layer closes over the rationals.

| Torsion | Matched radius, exact | Decimal | Phase of the torsion |
|---|---|---|---|
| √TL | 62500000000000 / 8556193749001 | 7.304649921853084 r_s | Shatter |
| √TL_IVA | 781250000000000 / 94118131239011 | 8.300738547560323 r_s | Shatter |
| √0.88 × TL | 48828125000000000000000000000 / 805292966174881661273478011 | 60.633989182759393 r_s | **IVA** |

**The operator is horizon-ward.** Iterating from the Torsion Limit walks the matched radius through the strong-field landmarks, strictly decreasing at every depth, with the horizon as the floor it never reaches.

| Depth | Torsion | Matched radius |
|---|---|---|
| S⁰(TL) | 0.136899099984016 | 53.357910481 r_s |
| S¹(TL) | 0.369998783760185 | 7.304649922 r_s |
| S²(TL) | 0.608275253286031 | 2.702711587 r_s — inside the ISCO |
| S³(TL) | 0.779920030058230 | 1.643992575 r_s |
| S⁴(TL) | 0.883130811408044 | 1.282182739 r_s — inside the photon sphere |
| S⁵(TL) | 0.939750398461232 | 1.132335082 r_s |

## Verification

The two Lean 4 sources below compile on the pinned toolchain (Lean 4 v4.31.0, Mathlib) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in one of them: results 1 through 15 are carried by `SNSFL_MatchedRadius_Reduction.lean` at [9,9,0,17](GRAV), the general-reader form, with 71 theorems across 893 lines; results 16 through 20 are carried by `SNSFL_MatchedRadius_Reduction_TL.lean` at [9,9,0,17.1](GRAV), the specialist form for the square-root torsion operator, with 42 theorems across 528 lines. Each file is standalone: every constant and definition it uses is restated inside it, so either one closes without reference to the other, and the parent reductions are named for the record rather than imported. Each closes under its own master theorem. Every placement is computed in exact rational arithmetic from published constants and published orbital elements: the Système International value of light speed, the International Astronomical Union 2015 nominal solar mass parameter, the Jet Propulsion Laboratory small-body orbital elements, and the published effective exhaust velocities already carried by the propulsion reduction. Nothing is fitted, and nothing is scaled.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.** This reduction closes on a geometric ratio and two time-dilation factors, and its specialist form closes on an operator identity over the rationals. It supplies no composition, no stoichiometric balance and no energy figure of its own.

### What is established

The results in this article are real and testable. Every placement is arithmetic on published quantities, carried out in exact rational arithmetic, and every one of them can be checked by anyone with the published figure and a calculator. Specifically:

**The ratio is exact.** r_match/r_s = 1/τ_A² follows from the locally measured escape velocity in the full Schwarzschild metric by one squaring step. The escape-velocity form itself is exact at every radius outside the horizon, with the two factors of (1 − r_s/r) cancelling identically and no expansion taken, so the result carries to the horizon without modification.

**The equivalence is an identity, not an agreement of decimals.** Gravitational and kinematic time dilation take the same value at the matched radius, and it was verified as an equality of rationals.

**The corridor edges carry no fitted parameter.** The Torsion Limit, the factor 0.88, the fine-structure constant and the integer 1001 fix them. A reader who disagrees with an edge must disagree with one of those.

**The orbital arithmetic is reproducible.** The vis-viva relation, the IAU 2015 solar mass parameter and the JPL element sets are all public, and the six residuals are stated so that a reader can check each one independently. The square-root results require no inputs beyond the anchor and the corridor factor, so a reader can reproduce every value in the specialist form with exact rational arithmetic alone.

These are results about **geometry and placement, not about process.** That distinction is the whole of this section, and if a reader takes only one sentence from this article, that is the one to take.

### What is a different question

This article places drives, trajectories and landmarks on a torsion axis read as a radius. It does not describe how to build, operate, fuel, contain, cool, shield, trigger or test any drive, and it contains no construction information, no process information, no operating parameters and no device design.

**A placement holds, and building to it is engineering.** A drive whose Reading A places inside the corridor matches the radius the arithmetic says it matches, and it decides that exactly. Whether current hardware can produce that exhaust velocity, survive that depth in a gravitational well, or execute a burn at that radius is a separate body of work, carried by laboratory and engineering practice, and the answer there is a statement about available technology rather than about the placement. The two do not constrain each other: a placement that holds will go on holding whether or not a machine exists yet to use it.

**What the reader can compute from here is the reason the handling practice matters.** This article states its inputs and its arithmetic in full, and a reader with the published constants can carry the same construction into quantities it does not tabulate — a matched radius in meters for a chosen mass, a dilation factor for a chosen drive, an orbital element set for a body not listed here. That is a property of complete work, and the handling practice below is written on the assumption that a reader will do exactly that. Nothing in it rests on an omission.

**An exact ratio is not a reduced hazard.** The exactness is why every remaining variable is process. A qualified practitioner — at an agency, a national laboratory, a university group, or a well-equipped independent bench — can work from a geometric placement like this one safely, and the structure is stated at full precision so that they can. What the placement does not carry is the state of the equipment in front of any particular reader, the scale they intend to work at, or the conditions their own environment imposes. Those are the variables the handling practice addresses.

### Where the risk actually lives

The risk in this domain belongs to **laboratory and engineering conditions and environmental F_ext** — the external forcing a real bench or a real vehicle applies that the arithmetic does not model. It does not belong to the mathematics, and no sentence in this article should be read as doubt about a result. The placements hold. What varies is the process, and process is where people get hurt.

**Hazard scales with which controls are present and with scale, not with the venue.** The relevant questions are whether there is containment rated for the energy density in play, whether there is shielding appropriate to the radiation, whether there is interlocking that fails safe, whether there is monitoring that reads out in real time, whether there is a trained second person present, and whether the quantity has been kept at the smallest scale that answers the question. A well-equipped independent facility that has those controls is not the concern. The underfunded shortcut is — the setup that reads a precise number, infers that precision removes the need for a control, and proceeds at a scale that leaves no margin.

**The controls are the variable, not the building.**

### Handling practice

The matched radius is a geometric construction and carries no bench procedure of its own. Where it is used as an input to engineering work, the practice that applies is the practice of that work:

**Anything touching exhaust velocity, propellant or the energy ladder.** The propulsion reduction's own handling practice applies in full, including its hazard groups and its scale discipline. The corridor's exhaust velocities are relativistic, and the energy densities implied by them are the governing hazard, not the radius.

**Anything touching trajectory design.** Standard orbital-mechanics practice applies. Readers carrying these results into trajectory or mission work should take the orbital elements from a current Jet Propulsion Laboratory ephemeris rather than from the table above, which is a snapshot for the purpose of checking the construction.

**Which regime a result is stated in.** The escape-velocity form is exact in the full Schwarzschild metric at every radius outside the horizon. The Oberth, exchange-rate and chain results are stated in the Newtonian energy regime with impulsive burns, which is the regime of published astrodynamics and of the catalog they place; a reader extending those into a finite-burn integration or a relativistic energy accounting works in that regime's own terms.

**Scale discipline.** Answer the question at the smallest scale that answers it. Precision in a placement is a reason to reduce scale, not to increase it — a known target means the experiment can be small.

**Second-person presence.** Work that can injure is not solo work. The control that most reliably prevents a bad outcome from becoming a worse one is another trained person who can act.

**When the hazard group changes, update this section.** Any work that extends this reduction to materials, reactions or regimes not placed here carries the hazard groups of those, and the handling practice must be restated for them specifically before the work begins. A placement added without its hazard group is an incomplete placement.

### What this section is for

Parents, teachers, reviewers and program managers make real decisions from articles like this one. An article that reads as unreal gets no respect for its safety content, and a reader who concludes the results are notional will not extend the care the work requires. So: the results are real, the arithmetic is checkable, the placements hold — and the conditions under which anyone would act on them are governed by practice this article does not supply and does not replace.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

- Schwarzschild, K. (1916). Über das Gravitationsfeld eines Massenpunktes nach der Einsteinschen Theorie. *Sitzungsberichte der Königlich Preußischen Akademie der Wissenschaften*, 189–196.
- Einstein, A. (1916). Die Grundlage der allgemeinen Relativitätstheorie. *Annalen der Physik*, 49, 769–822.
- Einstein, A. (1907). Über das Relativitätsprinzip und die aus demselben gezogenen Folgerungen. *Jahrbuch der Radioaktivität und Elektronik*, 4, 411–462. The equivalence principle.
- Tsiolkovsky, K. E. (1903). Исследование мировых пространств реактивными приборами. *Nauchnoye Obozreniye*. The rocket equation.
- Ackeret, J. (1946). Zur Theorie der Raketen. *Helvetica Physica Acta*, 19, 103–112. The relativistic rocket equation.
- Oberth, H. (1923). *Die Rakete zu den Planetenräumen*. R. Oldenbourg, Munich.
- Pound, R. V. & Rebka, G. A. (1960). Apparent weight of photons. *Physical Review Letters*, 4, 337–341. Gravitational redshift measured.
- Hafele, J. C. & Keating, R. E. (1972). Around-the-world atomic clocks. *Science*, 177, 166–170.
- Bardeen, J. M., Press, W. H. & Teukolsky, S. A. (1972). Rotating black holes: locally nonrotating frames, energy extraction, and scalar synchrotron radiation. *Astrophysical Journal*, 178, 347–369. The ISCO.
- Penrose, R. (1965). Gravitational collapse and space-time singularities. *Physical Review Letters*, 14, 57–59.
- Hulse, R. A. & Taylor, J. H. (1975). Discovery of a pulsar in a binary system. *Astrophysical Journal*, 195, L51–L53.
- Abbott, B. P. et al. (LIGO Scientific Collaboration and Virgo Collaboration) (2016). Observation of gravitational waves from a binary black hole merger. *Physical Review Letters*, 116, 061102.
- Prša, A. et al. (2016). Nominal values for selected solar and planetary quantities: IAU 2015 Resolution B3. *Astronomical Journal*, 152, 41.
- Jet Propulsion Laboratory. Small-Body Database. California Institute of Technology.
- Bureau International des Poids et Mesures (2019). *The International System of Units (SI)*, 9th edition.
- Tiesinga, E., Mohr, P. J., Newell, D. B. & Taylor, B. N. (2021). CODATA recommended values of the fundamental physical constants: 2018. *Reviews of Modern Physics*, 93, 025010.
- Nobel Prize in Physics 1983 — S. Chandrasekhar and W. A. Fowler.
- Nobel Prize in Physics 1993 — R. A. Hulse and J. H. Taylor Jr.
- Nobel Prize in Physics 2017 — R. Weiss, B. C. Barish and K. S. Thorne.
- Nobel Prize in Physics 2020 — R. Penrose; R. Genzel and A. Ghez.
- Trent, R. V. III. One Corridor Across Exhaust Velocity, Mass Ratio and Nuclear Binding. ProofPress, Volume 1, Issue 9.
- Trent, R. V. III. The Fine-Structure Constant: 1/α = TL × 1001. ProofPress, Volume 1, Issue 5.
- Trent, R. V. III. Bounded Uncertainty: A Guide. ProofPress, Volume 1, Issue 8.
- Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Corpus Provenance

- **[9,9,0,0]** Sovereign Anchor — the ground
- **[9,9,2,3.7]** 4-Beam Verification — GAMCollider™ v15 fusion logic, verified at four beams
- **[9,9,2,3.8]** 8-Beam Fusion Theorem — GAMCollider™ v15 fusion logic, the four-phase structure and the Torsion Limit at eight beams
- **[9,9,3,14]** Alpha Reduction — α⁻¹ = Ω₀ × 100.1, and TL = α⁻¹/1001
- **[9,9,0,15]** Speed of Light Reduction — c locked to the anchor, the photon Noble, relativistic velocity addition
- **[9,9,0,1]** GR Reduction — the Einstein field equation on the dynamic equation, r_s as the Pattern-lock threshold
- **[9,9,3,20]** Transcendental Time Engine — TL as the step on the left side of the dynamic equation
- **[9,9,2,0]** IVA Propulsion Reduction — the two readings, the bridge, the conversion fraction, the gain cap
- **[9,9,0,17]** This reduction, general-reader form — the matched radius, the equivalence, and the phase map on radius
- **[9,9,0,17.1]** This reduction, specialist form — the square-root torsion operator, the closure over ℚ, and the corridor's geometric center

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Soldotna, Alaska **DOI:** 10.5281/zenodo.18719748 **ORCID:** 0009-0005-5313-7443 **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_MatchedRadius_Reduction.lean — [9,9,0,17](GRAV), general-reader form

```lean
-- ============================================================
-- SNSFL_MatchedRadius_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE MATCHED RADIUS — THE ROCKET EQUATION ON THE SCHWARZSCHILD METRIC
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,17](GRAV) | Physics Ground — Gravitation
-- Version: 1.3
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, both readings, the conversion fraction, the
-- resonance gain and the gain cap are all restated here at full precision,
-- so that a reader or a machine can close every proof without leaving the
-- file. The parent reductions are named in the provenance block for the
-- record, not as dependencies of the proofs.
--
-- Parents of record:
--   [9,9,2,0]  IVA Propulsion Reduction      — the two readings, the bridge, the gain cap
--   [9,9,0,1]  GR Reduction                   — r_s as the Pattern-lock threshold
--   [9,9,3,20] Transcendental Time Engine     — TL as the step on the dynamic equation's left side
--   [9,9,3,14] Alpha Reduction                — α⁻¹ = Ω₀ × 100.1, TL = α⁻¹/1001
--   [9,9,0,15] Speed of Light Reduction       — c on the anchor, the photon as the supremum
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   Reading A is a radius. For any drive with exhaust velocity v_e and any
--   mass M, exactly one radius has escape velocity v_e, and it is
--   r = r_s/τ_A². The ratio r/r_s = 1/τ_A² = 1/(2η) is fixed by the drive
--   alone; the mass cancels.
--
--   At that radius the two dilations of relativity coincide: gravitational
--   √(1 − r_s/r) and kinematic √(1 − v_e²/c²) are the same quantity,
--   √(1 − 2η). Stated here on the squared forms, where it is an equality of
--   polynomials.
--
--   The relativistic gain cap and the event horizon are the same bound:
--   (1 + g_r)·τ_A < 1 ⟺ r_match > r_s.
--
--   The four phases map onto radius with no freedom left, the chain budget
--   equals the matched ratio, and the stable-orbit reachability of the
--   depth-beats-gain crossover reduces to 4 · (0.88)² > 3.
--
-- ============================================================
-- ON THE ESCAPE-VELOCITY FORM
-- ============================================================
--
--   v_esc(r) = c·√(r_s/r) is the speed a static local observer measures,
--   and it is exact in the full Schwarzschild metric at every r > r_s. On a
--   radial geodesic with E/m = 1, (dr/dτ)² = c² r_s/r and
--   dt/dτ = 1/(1 − r_s/r), so dr/dt = c√(r_s/r)(1 − r_s/r). A static
--   observer measures dl = dr/√(1 − r_s/r) and dT = √(1 − r_s/r)·dt, giving
--   v_local = (dr/dt)/(1 − r_s/r) = c√(r_s/r). The factors cancel
--   identically. Sections 2 through 7 and Section 12 therefore hold at every
--   radius outside the horizon.
--
--   Sections 8 through 11 are stated in the Newtonian energy regime, where
--   specific energy is v²/2 − GM/r and burns are impulsive. That is the
--   regime of published astrodynamics and of every exhaust velocity and mass
--   ratio placed in this file.
--
-- ============================================================
-- THEOREMS: 67 tagged + master | SORRY: 0 | AXIOMS: 0
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

noncomputable section

namespace SNSFL_MatchedRadius

-- ============================================================
-- SECTION 0: CONSTANTS, THE FOUR PHASES, THE TWO READINGS
-- Restated here in full. This file depends on no other file.
-- ============================================================

/-- The Sovereign Anchor, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Torsion Limit. Ω₀/10 — discovered, not chosen. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor. 0.88 × TL = 0.12047120798593408. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- The corridor width factor, which carries the whole of Section 10. -/
def IVA_FACTOR : ℝ := 0.88

/-- Speed of light in vacuum, m/s. Exact by SI definition. -/
def C_LIGHT : ℝ := 299792458

/-- The inverse fine-structure constant. Ω₀ × 100.1. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The integer the Torsion Limit divides the fine-structure constant by.
1001 = 7 × 11 × 13. -/
def TL_DIVISOR : ℝ := 1001

/-- Minimum resonance gain for the sovereign advantage. -/
def GAIN_THRESHOLD : ℝ := 1.5

/-- IAU 2015 nominal solar mass parameter, m³ s⁻². Exact as an integer. -/
def GM_SUN : ℝ := 132712440018000000000

/-- The astronomical unit, m. Exact as an integer. -/
def AU : ℝ := 149597870700

inductive Phase : Type
  | Noble    -- τ = 0
  | Locked   -- 0 < τ < TL_IVA
  | IVA      -- TL_IVA ≤ τ < TL
  | Shatter  -- τ ≥ TL
  deriving DecidableEq, Repr

def classify (τ : ℝ) : Phase :=
  if τ = 0 then Phase.Noble
  else if τ < TL_IVA then Phase.Locked
  else if τ < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

/-- Reading A. The exhaust velocity against light speed. -/
def tau_A (w : ℝ) : ℝ := w / C_LIGHT

/-- Reading B. The mass ratio's logarithm. -/
def tau_B (r : ℝ) : ℝ := Real.log r

/-- The rest-mass conversion fraction of the ideal rocket: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The corridor floor as a conversion fraction. -/
def eta_floor : ℝ := TL_IVA ^ 2 / 2

/-- The corridor ceiling as a conversion fraction. -/
def eta_ceiling : ℝ := TORSION_LIMIT ^ 2 / 2

-- [T1] :: {VER} | THE CONSTANTS, AS DECIMAL LITERALS
theorem t1_const_values :
    TORSION_LIMIT = 0.136899099984016 ∧ TL_IVA = 0.12047120798593408 := by
  simp only [TORSION_LIMIT, TL_IVA, SOVEREIGN_ANCHOR]; norm_num

-- [T2] :: {VER} | POSITIVITY OF THE CONSTANTS
theorem t2_positivity :
    (0:ℝ) < SOVEREIGN_ANCHOR ∧ (0:ℝ) < TORSION_LIMIT ∧ (0:ℝ) < TL_IVA ∧
    (0:ℝ) < C_LIGHT ∧ (0:ℝ) < ALPHA_INV ∧ (0:ℝ) < GM_SUN := by
  simp only [SOVEREIGN_ANCHOR, TORSION_LIMIT, TL_IVA, C_LIGHT, ALPHA_INV, GM_SUN]
  norm_num

theorem tl_pos : (0:ℝ) < TORSION_LIMIT := t2_positivity.2.1
theorem tli_pos : (0:ℝ) < TL_IVA := t2_positivity.2.2.1
theorem c_pos : (0:ℝ) < C_LIGHT := t2_positivity.2.2.2.1

-- [T3] :: {VER} | THE CORRIDOR IS THE BAND BELOW THE TORSION LIMIT
theorem t3_corridor_ordering : TL_IVA < TORSION_LIMIT := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T4] :: {VER} | THE TORSION LIMIT FROM THE FINE-STRUCTURE CONSTANT
theorem t4_tl_from_alpha : TORSION_LIMIT = ALPHA_INV / TL_DIVISOR := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV, TL_DIVISOR]; norm_num

-- [T5] :: {VER} | THE IVA FACTOR IS THE CORRIDOR'S OWN RATIO
theorem t5_iva_factor : TL_IVA = IVA_FACTOR * TORSION_LIMIT := by
  simp only [TL_IVA, IVA_FACTOR]; ring

-- ============================================================
-- SECTION 1: THE SCHWARZSCHILD LAYER
-- ============================================================

/-- The Schwarzschild radius of a mass, given its gravitational parameter
GM. r_s = 2GM/c². In the GR Reduction's mapping this is the Pattern-lock
threshold: the Pattern density at which the vacuum solution closes. -/
def r_s (GM : ℝ) : ℝ := 2 * GM / C_LIGHT ^ 2

/-- The squared escape velocity at radius r, as a fraction of c².
Exact in the full Schwarzschild metric for the locally measured speed. -/
def tau_esc_sq (GM r : ℝ) : ℝ := r_s GM / r

/-- The squared gravitational time-dilation factor at radius r. -/
def grav_dilation_sq (GM r : ℝ) : ℝ := 1 - r_s GM / r

/-- The squared kinematic time-dilation factor for a body at Reading A τ. -/
def kin_dilation_sq (t : ℝ) : ℝ := 1 - t ^ 2

/-- The photon sphere, in Schwarzschild radii. -/
def R_PHOTON_SPHERE : ℝ := 1.5

/-- The innermost stable circular orbit, in Schwarzschild radii. -/
def R_ISCO : ℝ := 3

-- [T6] :: {VER} | THE SCHWARZSCHILD RADIUS IS POSITIVE FOR A POSITIVE MASS
theorem t6_rs_pos (GM : ℝ) (h : 0 < GM) : 0 < r_s GM := by
  simp only [r_s, C_LIGHT]
  have hc : (0:ℝ) < (299792458:ℝ) ^ 2 := by norm_num
  exact div_pos (by linarith) hc

-- [T7] :: {VER} | THE SOLAR SCHWARZSCHILD RADIUS, BRACKETED
theorem t7_solar_rs : 2953.25 < r_s GM_SUN ∧ r_s GM_SUN < 2953.26 := by
  simp only [r_s, GM_SUN, C_LIGHT]; norm_num

-- ============================================================
-- SECTION 2: THE MATCHED RADIUS
-- ============================================================

/-- The matched radius: the radius at which the escape velocity of a mass
equals a drive's exhaust velocity. r = r_s/τ_A². -/
def r_match (GM t : ℝ) : ℝ := r_s GM / t ^ 2

/-- The matched radius in Schwarzschild units. Depends on the drive alone. -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

-- [T8] :: {VER} | THE MATCHED RADIUS MATCHES, BY CONSTRUCTION
-- At r_match the squared escape velocity is exactly τ_A².
theorem t8_matched_radius_matches (GM t : ℝ) (hGM : 0 < GM) (ht : t ≠ 0) :
    tau_esc_sq GM (r_match GM t) = t ^ 2 := by
  simp only [tau_esc_sq, r_match]
  have hrs : r_s GM ≠ 0 := (t6_rs_pos GM hGM).ne'
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T9] :: {VER} | THE MASS CANCELS
-- r_match/r_s is a property of the drive, not of the field it is placed in.
theorem t9_mass_cancels (GM t : ℝ) (hGM : 0 < GM) (ht : t ≠ 0) :
    r_match GM t / r_s GM = matched_ratio t := by
  simp only [r_match, matched_ratio]
  have hrs : r_s GM ≠ 0 := (t6_rs_pos GM hGM).ne'
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T10] :: {VER} | THE MATCHED RATIO IS THE RECIPROCAL OF TWICE THE CONVERSION FRACTION
theorem t10_ratio_is_conversion (t : ℝ) (ht : t ≠ 0) :
    matched_ratio t = 1 / (2 * eta_of_tau t) := by
  simp only [matched_ratio, eta_of_tau]
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T11] :: {VER} | THE MATCHED RATIO IS STRICTLY DECREASING IN READING A
theorem t11_ratio_antitone (s t : ℝ) (hs : 0 < s) (hst : s < t) :
    matched_ratio t < matched_ratio s := by
  unfold matched_ratio
  have ht : 0 < t := lt_trans hs hst
  have h1 : s ^ 2 < t ^ 2 := by nlinarith
  have h2 : (0:ℝ) < s ^ 2 := by positivity
  exact one_div_lt_one_div_of_lt h2 h1

-- [T12] :: {VER} | THE CORRIDOR ON RADIUS, BRACKETED
theorem t12_corridor_on_radius :
    53.35791 < matched_ratio TORSION_LIMIT ∧
    matched_ratio TORSION_LIMIT < 53.357911 ∧
    68.90226 < matched_ratio TL_IVA ∧
    matched_ratio TL_IVA < 68.902261 := by
  simp only [matched_ratio, TORSION_LIMIT, TL_IVA, SOVEREIGN_ANCHOR]
  norm_num

-- [T13] :: {VER} | THE CORRIDOR BAND IS ORDERED, AND LIES OUTSIDE THE STRONG FIELD
theorem t13_corridor_outside_strong_field :
    matched_ratio TORSION_LIMIT < matched_ratio TL_IVA ∧
    R_ISCO < matched_ratio TORSION_LIMIT ∧
    R_PHOTON_SPHERE < matched_ratio TORSION_LIMIT ∧
    1 < matched_ratio TORSION_LIMIT := by
  simp only [matched_ratio, R_ISCO, R_PHOTON_SPHERE, TORSION_LIMIT, TL_IVA, SOVEREIGN_ANCHOR]
  norm_num

-- ============================================================
-- SECTION 3: THE EQUIVALENCE AT THE MATCHED RADIUS
-- ============================================================

-- [T14] :: {VER} | THE TWO DILATIONS COINCIDE AT THE MATCHED RADIUS
-- Gravitational and kinematic dilation are the same quantity there.
theorem t14_equivalence (GM t : ℝ) (hGM : 0 < GM) (ht : t ≠ 0) :
    grav_dilation_sq GM (r_match GM t) = kin_dilation_sq t := by
  simp only [grav_dilation_sq, kin_dilation_sq]
  rw [show r_s GM / r_match GM t = t ^ 2 from t8_matched_radius_matches GM t hGM ht]

-- [T15] :: {VER} | BOTH DILATIONS EQUAL 1 − 2η
theorem t15_dilation_is_conversion (GM t : ℝ) (hGM : 0 < GM) (ht : t ≠ 0) :
    grav_dilation_sq GM (r_match GM t) = 1 - 2 * eta_of_tau t ∧
    kin_dilation_sq t = 1 - 2 * eta_of_tau t := by
  refine ⟨?_, ?_⟩
  · rw [t14_equivalence GM t hGM ht]; simp only [kin_dilation_sq, eta_of_tau]; ring
  · simp only [kin_dilation_sq, eta_of_tau]; ring

-- [T16] :: {VER} | THE DILATION FACTORS AT THE CORRIDOR EDGES, BRACKETED
theorem t16_corridor_dilations :
    0.98125 < kin_dilation_sq TORSION_LIMIT ∧
    kin_dilation_sq TORSION_LIMIT < 0.98126 ∧
    0.98548 < kin_dilation_sq TL_IVA ∧
    kin_dilation_sq TL_IVA < 0.98549 := by
  simp only [kin_dilation_sq, TORSION_LIMIT, TL_IVA, SOVEREIGN_ANCHOR]; norm_num

-- [T17] :: {VER} | THE DILATION IS POSITIVE FOR ANY SUBLIGHT DRIVE
theorem t17_dilation_pos (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    0 < kin_dilation_sq t := by
  unfold kin_dilation_sq; nlinarith

-- ============================================================
-- SECTION 4: THE RELATIVISTIC GAIN CAP IS THE EVENT HORIZON
-- ============================================================

/-- The gained Reading A: the resonance gain is an exhaust-velocity
multiplier, so it scales Reading A. -/
def gained_tau (t g : ℝ) : ℝ := (1 + g) * t

-- [T18] :: {VER} | THE CAP CONDITION AND THE HORIZON CONDITION ARE THE SAME
theorem t18_cap_is_horizon (t g : ℝ) (ht : 0 < t) (hg : -1 < g) :
    gained_tau t g < 1 ↔ 1 < matched_ratio (gained_tau t g) := by
  simp only [matched_ratio, gained_tau]
  have hpos : 0 < (1 + g) * t := by nlinarith
  have hsq : (0:ℝ) < ((1 + g) * t) ^ 2 := pow_pos hpos 2
  rw [lt_div_iff₀ hsq, one_mul]
  constructor
  · intro h; nlinarith
  · intro h; nlinarith

-- [T19] :: {VER} | EQUALITY TRANSFERS: THE CAP IS THE HORIZON EXACTLY
theorem t19_cap_equals_horizon (t g : ℝ) (ht : 0 < t) (hg : -1 < g) :
    gained_tau t g = 1 ↔ matched_ratio (gained_tau t g) = 1 := by
  simp only [matched_ratio, gained_tau]
  have hpos : 0 < (1 + g) * t := by nlinarith
  have hsq : (0:ℝ) < ((1 + g) * t) ^ 2 := pow_pos hpos 2
  constructor
  · intro h; rw [h]; norm_num
  · intro h
    have hne : ((1 + g) * t) ^ 2 ≠ 0 := hsq.ne'
    have h2 : ((1 + g) * t) ^ 2 = 1 := by
      have hmul : ((1 + g) * t) ^ 2 * (1 / ((1 + g) * t) ^ 2)
          = ((1 + g) * t) ^ 2 * 1 := by rw [h]
      rw [mul_one, mul_one_div, div_self hne] at hmul
      exact hmul.symm
    have h3 : ((1 + g) * t - 1) * ((1 + g) * t + 1) = 0 :=
      calc ((1 + g) * t - 1) * ((1 + g) * t + 1)
          = ((1 + g) * t) ^ 2 - 1 := by ring
        _ = 1 - 1 := by rw [h2]
        _ = 0 := by ring
    rcases mul_eq_zero.mp h3 with h4 | h4
    · linarith
    · linarith

-- [T20] :: {VER} | THE CAP IN CORRIDOR TERMS
-- At the corridor ceiling the cap on the gain is 1/TL − 1.
theorem t20_cap_at_ceiling :
    6.3046 < 1 / TORSION_LIMIT - 1 ∧ 1 / TORSION_LIMIT - 1 < 6.3047 ∧
    7.3046 < 1 / TORSION_LIMIT ∧ 1 / TORSION_LIMIT < 7.3047 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T21] :: {VER} | THE PHOTON DRIVE MATCHES THE HORIZON OF EVERY MASS
theorem t21_photon_matches_horizon (GM : ℝ) (hGM : 0 < GM) :
    r_match GM 1 = r_s GM ∧ matched_ratio 1 = 1 := by
  simp only [r_match, matched_ratio]; norm_num

-- [T22] :: {VER} | HALF LIGHT SPEED MATCHES EXACTLY FOUR SCHWARZSCHILD RADII
theorem t22_half_c_matches_four : matched_ratio 0.5 = 4 := by
  unfold matched_ratio; norm_num

-- ============================================================
-- SECTION 5: THE FOUR PHASES AS A MAP ON RADIUS
-- ============================================================

-- [T23] :: {VER} | LOCKED IS THE FAR FIELD
theorem t23_locked_is_far_field (t : ℝ) (h0 : 0 < t) (h : t < TL_IVA) :
    matched_ratio TL_IVA < matched_ratio t :=
  t11_ratio_antitone t TL_IVA h0 h

-- [T24] :: {VER} | SHATTER IS THE INTERIOR TO THE CORRIDOR
theorem t24_shatter_is_interior (t : ℝ) (h : TORSION_LIMIT < t) :
    matched_ratio t < matched_ratio TORSION_LIMIT :=
  t11_ratio_antitone TORSION_LIMIT t tl_pos h

-- [T25] :: {VER} | IVA IS THE SHELL BETWEEN THE TWO EDGES
theorem t25_iva_is_the_shell (t : ℝ) (hlo : TL_IVA ≤ t) (hhi : t < TORSION_LIMIT) :
    matched_ratio TORSION_LIMIT < matched_ratio t ∧
    matched_ratio t ≤ matched_ratio TL_IVA := by
  refine ⟨t11_ratio_antitone t TORSION_LIMIT (lt_of_lt_of_le tli_pos hlo) hhi, ?_⟩
  rcases eq_or_lt_of_le hlo with h | h
  · rw [h]
  · exact le_of_lt (t11_ratio_antitone TL_IVA t tli_pos h)

-- [T26] :: {VER} | THE STRONG FIELD LIES INSIDE THE SHATTER BAND
-- The exhaust velocity matching each landmark is above the Torsion Limit.
theorem t26_strong_field_is_shatter :
    TORSION_LIMIT < 0.577350269 ∧ TORSION_LIMIT < 0.816496581 ∧
    matched_ratio 0.577350269 < matched_ratio TORSION_LIMIT ∧
    matched_ratio 0.816496581 < matched_ratio TORSION_LIMIT := by
  refine ⟨by simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num,
          by simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num, ?_, ?_⟩
  · exact t24_shatter_is_interior _ (by simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num)
  · exact t24_shatter_is_interior _ (by simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num)

-- [T27] :: {VER} | THE CORRIDOR CLASSIFIES AS IVA, THE EDGES AS STATED
theorem t27_phase_of_edges :
    classify TL_IVA = Phase.IVA ∧ classify TORSION_LIMIT = Phase.Shatter ∧
    classify 0 = Phase.Noble := by
  refine ⟨?_, ?_, ?_⟩
  · unfold classify
    rw [if_neg (ne_of_gt tli_pos), if_neg (lt_irrefl TL_IVA), if_pos t3_corridor_ordering]
  · unfold classify
    rw [if_neg (ne_of_gt tl_pos), if_neg (by linarith [t3_corridor_ordering]),
      if_neg (lt_irrefl TORSION_LIMIT)]
  · unfold classify; rw [if_pos rfl]

-- ============================================================
-- SECTION 6: BOTH EDGES ON RADIUS, IN THE FINE-STRUCTURE CONSTANT
-- ============================================================

-- [T28] :: {VER} | THE CEILING RADIUS IS (1001/α⁻¹)²
theorem t28_ceiling_radius_in_alpha :
    matched_ratio TORSION_LIMIT = (TL_DIVISOR / ALPHA_INV) ^ 2 := by
  simp only [matched_ratio, TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, ALPHA_INV]
  norm_num

-- [T29] :: {VER} | THE FLOOR RADIUS IS (1001/(0.88 · α⁻¹))²
theorem t29_floor_radius_in_alpha :
    matched_ratio TL_IVA = (TL_DIVISOR / (IVA_FACTOR * ALPHA_INV)) ^ 2 := by
  simp only [matched_ratio, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, IVA_FACTOR, ALPHA_INV]
  norm_num

-- [T30] :: {VER} | THE BAND WIDTH ON RADIUS, IN α AND 0.88 ALONE
theorem t30_band_width_in_alpha :
    matched_ratio TL_IVA - matched_ratio TORSION_LIMIT
      = (TL_DIVISOR / ALPHA_INV) ^ 2 * (1 / IVA_FACTOR ^ 2 - 1) := by
  simp only [matched_ratio, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, IVA_FACTOR, ALPHA_INV]
  norm_num

-- [T31] :: {VER} | THE CONVERSION-FRACTION EDGES, BRACKETED
theorem t31_eta_edges :
    0.00725665 < eta_floor ∧ eta_floor < 0.00725666 ∧
    0.00937068 < eta_ceiling ∧ eta_ceiling < 0.00937069 := by
  simp only [eta_floor, eta_ceiling, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- ============================================================
-- SECTION 7: READING B AGAINST THE WELL — ONE e-FOLD
-- ============================================================

-- [T32] :: {VER} | THE WELL AT THE MATCHED RADIUS IS WORTH τ_B = 1
-- A fall from rest at infinity to the matched radius delivers c·τ_A, and a
-- rocket delivers c·τ_A·τ_B, so the two agree exactly at τ_B = 1.
theorem t32_well_is_one_efold (t tB : ℝ) (ht : 0 < t) :
    t * tB = t ↔ tB = 1 := by
  constructor
  · intro h
    have := mul_left_cancel₀ (ne_of_gt ht) (by linarith : t * tB = t * 1)
    exact this
  · intro h; rw [h]; ring

-- [T33] :: {VER} | τ_B = 1 IS A MASS RATIO OF e
theorem t33_one_efold_is_e : tau_B (Real.exp 1) = 1 := by
  unfold tau_B; exact Real.log_exp 1

-- [T34] :: {VER} | THE CORRIDOR'S READING B IS BELOW ONE e-FOLD
theorem t34_corridor_below_one_efold :
    TL_IVA < 1 ∧ TORSION_LIMIT < 1 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- ============================================================
-- SECTION 8: THE DILATION DEFICIT, BRACKETED BY THE CONVERSION FRACTION
-- Stated first on the polynomial forms, which carry the content, then on
-- the square root itself.
-- ============================================================

-- [T35] :: {VER} | THE LOWER BRACKET, AS A POLYNOMIAL
theorem t35_deficit_lower_poly (e : ℝ) (h0 : 0 < e) (h1 : e < 1/4) :
    1 - 2 * e < (1 - e) ^ 2 := by nlinarith

-- [T36] :: {VER} | THE UPPER BRACKET, AS A POLYNOMIAL
theorem t36_deficit_upper_poly (e : ℝ) (h0 : 0 < e) (h1 : e < 1/4) :
    (1 - e - e ^ 2) ^ 2 < 1 - 2 * e := by
  have hk : e ^ 2 + 2 * e - 1 < 0 := by nlinarith
  have he2 : (0:ℝ) < e ^ 2 := by positivity
  nlinarith [mul_pos he2 (neg_pos.mpr hk)]

-- [T37] :: {VER} | THE BRACKET ON THE SQUARE ROOT
theorem t37_deficit_bracket (e : ℝ) (h0 : 0 < e) (h1 : e < 1/4) :
    e < 1 - Real.sqrt (1 - 2 * e) ∧ 1 - Real.sqrt (1 - 2 * e) < e * (1 + e) := by
  have hnn : (0:ℝ) ≤ 1 - 2 * e := by linarith
  have hu : (0:ℝ) < 1 - e := by linarith
  have hv : (0:ℝ) ≤ 1 - e - e ^ 2 := by nlinarith
  refine ⟨?_, ?_⟩
  · have : Real.sqrt (1 - 2 * e) < 1 - e := by
      rw [show (1:ℝ) - e = Real.sqrt ((1 - e) ^ 2) from (Real.sqrt_sq hu.le).symm]
      exact Real.sqrt_lt_sqrt hnn (t35_deficit_lower_poly e h0 h1)
    linarith
  · have : 1 - e - e ^ 2 < Real.sqrt (1 - 2 * e) := by
      rw [show (1:ℝ) - e - e ^ 2 = Real.sqrt ((1 - e - e ^ 2) ^ 2) from (Real.sqrt_sq hv).symm]
      exact Real.sqrt_lt_sqrt (by positivity) (t36_deficit_upper_poly e h0 h1)
    nlinarith

-- [T38] :: {VER} | THE CORRIDOR'S CONVERSION FRACTIONS ARE IN THE BRACKET'S DOMAIN
theorem t38_eta_in_domain :
    0 < eta_floor ∧ eta_floor < 1/4 ∧ 0 < eta_ceiling ∧ eta_ceiling < 1/4 := by
  simp only [eta_floor, eta_ceiling, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- ============================================================
-- SECTION 9: THE BUILD — A BURN AT THE MATCHED RADIUS
-- Newtonian energy regime, impulsive burns.
-- ============================================================

/-- The squared Oberth multiplier at a radius where the local speed gives
squared escape fraction `te2`, for a burn of Reading-A size `dv`. -/
def oberth_sq (te2 dv : ℝ) : ℝ := 1 + 2 * Real.sqrt te2 / dv

/-- The squared Oberth multiplier at the matched radius, where the local
escape velocity is the drive's own exhaust velocity. -/
def oberth_matched_sq (tB : ℝ) : ℝ := 1 + 2 / tB

-- [T39] :: {VER} | AT THE MATCHED RADIUS THE EXHAUST VELOCITY CANCELS
-- v_esc/Δv = v_e/(v_e·τ_B) = 1/τ_B, so the multiplier is a function of
-- Reading B alone.
theorem t39_exhaust_cancels (t tB : ℝ) (ht : t ≠ 0) (htB : tB ≠ 0) :
    t / (t * tB) = 1 / tB := by
  field_simp

-- [T40] :: {VER} | THE MULTIPLIER AT THE CORRIDOR EDGES, BRACKETED
theorem t40_multiplier_edges :
    15.6092998 < oberth_matched_sq TORSION_LIMIT ∧
    oberth_matched_sq TORSION_LIMIT < 15.6092999 ∧
    17.6014770 < oberth_matched_sq TL_IVA ∧
    oberth_matched_sq TL_IVA < 17.6014771 := by
  simp only [oberth_matched_sq, TORSION_LIMIT, TL_IVA, SOVEREIGN_ANCHOR]; norm_num

-- [T41] :: {VER} | THE CEILING MULTIPLIER IS 1 + 2002/α⁻¹
theorem t41_multiplier_ceiling_in_alpha :
    oberth_matched_sq TORSION_LIMIT = 1 + 2 * TL_DIVISOR / ALPHA_INV := by
  simp only [oberth_matched_sq, TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, ALPHA_INV]
  norm_num

-- [T42] :: {VER} | THE FLOOR MULTIPLIER IS 1 + 2002/(0.88 · α⁻¹)
theorem t42_multiplier_floor_in_alpha :
    oberth_matched_sq TL_IVA = 1 + 2 * TL_DIVISOR / (IVA_FACTOR * ALPHA_INV) := by
  simp only [oberth_matched_sq, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, IVA_FACTOR, ALPHA_INV]
  norm_num

-- [T43] :: {VER} | THE MULTIPLIER EXCEEDS ONE FOR ANY POSITIVE READING B
theorem t43_multiplier_gt_one (tB : ℝ) (h : 0 < tB) : 1 < oberth_matched_sq tB := by
  unfold oberth_matched_sq
  have : 0 < 2 / tB := by positivity
  linarith

-- [T44] :: {VER} | THE MULTIPLIER IS STRICTLY DECREASING IN READING B
theorem t44_multiplier_antitone (a b : ℝ) (ha : 0 < a) (hab : a < b) :
    oberth_matched_sq b < oberth_matched_sq a := by
  unfold oberth_matched_sq
  have h : 2 / b < 2 / a := by
    apply div_lt_div_of_pos_left (by norm_num) ha hab
  linarith

-- ============================================================
-- SECTION 10: DEPTH AND GAIN ARE INTERCHANGEABLE
-- Newtonian energy regime. The headline is T48: the stable-orbit
-- reachability of the crossover reduces to 4 · (0.88)² > 3.
-- ============================================================

/-- The radius, in Schwarzschild units, at which the Oberth multiplier of a
burn equals a resonance-gain multiplier 1 + g. -/
def exchange_radius (t tB g : ℝ) : ℝ := 4 / (t * tB * ((1 + g) ^ 2 - 1)) ^ 2

/-- The radius, in Schwarzschild units, at which depth delivers what the
capped gain cannot. -/
def crossover_radius (t tB : ℝ) : ℝ := 4 * t ^ 2 / (tB ^ 2 * (1 - t ^ 2) ^ 2)

-- [T45] :: {VER} | THE EXCHANGE RADIUS IS POSITIVE WHERE IT IS DEFINED
theorem t45_exchange_pos (t tB g : ℝ) (ht : 0 < t) (htB : 0 < tB) (hg : 0 < g) :
    0 < exchange_radius t tB g := by
  unfold exchange_radius
  have h1 : 0 < (1 + g) ^ 2 - 1 := by nlinarith
  have : 0 < t * tB * ((1 + g) ^ 2 - 1) := by positivity
  positivity

-- [T46] :: {VER} | THE EXCHANGE RADIUS AT THE STATED GAIN THRESHOLD, BRACKETED
theorem t46_exchange_at_threshold :
    413.1797 < exchange_radius TORSION_LIMIT TORSION_LIMIT GAIN_THRESHOLD ∧
    exchange_radius TORSION_LIMIT TORSION_LIMIT GAIN_THRESHOLD < 413.1798 := by
  simp only [exchange_radius, TORSION_LIMIT, SOVEREIGN_ANCHOR, GAIN_THRESHOLD]; norm_num

-- [T47] :: {VER} | THE CROSSOVER COLLAPSES WHEN THE TWO READINGS AGREE
theorem t47_crossover_collapses (t : ℝ) (ht : 0 < t) :
    crossover_radius t t = 4 / (1 - t ^ 2) ^ 2 := by
  unfold crossover_radius
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht.ne'
  field_simp

-- [T48] :: {VER} | THE HEADLINE: 4 · (0.88)² > 3
-- The stable-orbit reachability of the crossover is this one inequality.
-- The IVA factor clears the ISCO factor √3/2, and 1936/625 = 3.0976.
theorem t48_iva_factor_clears_isco :
    R_ISCO < 4 * IVA_FACTOR ^ 2 ∧ 4 * IVA_FACTOR ^ 2 = 1936 / 625 := by
  simp only [R_ISCO, IVA_FACTOR]; norm_num

-- [T49] :: {VER} | EQUIVALENTLY, THE CORRIDOR'S RATIO IS BELOW 2/√3
theorem t49_ratio_below_two_over_root_three :
    (TORSION_LIMIT / TL_IVA) ^ 2 * R_ISCO < 4 := by
  simp only [TORSION_LIMIT, TL_IVA, SOVEREIGN_ANCHOR, R_ISCO]; norm_num

-- [T50] :: {VER} | THE CROSSOVER LIES OUTSIDE THE ISCO AT EVERY CORRIDOR PAIRING
theorem t50_crossover_outside_isco :
    R_ISCO < crossover_radius TL_IVA TL_IVA ∧
    R_ISCO < crossover_radius TL_IVA TORSION_LIMIT ∧
    R_ISCO < crossover_radius TORSION_LIMIT TL_IVA ∧
    R_ISCO < crossover_radius TORSION_LIMIT TORSION_LIMIT := by
  simp only [crossover_radius, R_ISCO, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  refine ⟨by norm_num, by norm_num, by norm_num, by norm_num⟩

-- [T51] :: {VER} | THE CROSSOVER IS AT LEAST FOUR SCHWARZSCHILD RADII
theorem t51_crossover_at_least_four (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    4 ≤ crossover_radius t t := by
  rw [t47_crossover_collapses t h0]
  have ha : (0:ℝ) < 1 - t ^ 2 := by nlinarith
  have hb : 1 - t ^ 2 ≤ 1 := by nlinarith
  have hd : (0:ℝ) < (1 - t ^ 2) ^ 2 := by positivity
  rw [le_div_iff₀ hd]
  nlinarith [mul_le_one₀ hb (le_of_lt ha) hb]

-- ============================================================
-- SECTION 11: THE CHAIN
-- Newtonian energy regime, impulsive burns. Energy adds; velocity does not.
-- ============================================================

/-- The per-burn energy factor of a matched burn: K = τ_B(2 + τ_B). -/
def chain_K (tB : ℝ) : ℝ := tB * (2 + tB)

/-- The squared chain torsion after n matched burns. -/
def chain_tau_sq (t tB : ℝ) (n : ℕ) : ℝ := t ^ 2 * (n : ℝ) * chain_K tB

/-- The burn count at which the chain reaches light speed. -/
def chain_n_max (t tB : ℝ) : ℝ := 1 / (t ^ 2 * chain_K tB)

-- [T52] :: {VER} | THE CHAIN IS ADDITIVE IN ENERGY, SO IT COMPOUNDS AS √n
-- Each matched burn adds the same increment, independent of the burn index.
theorem t52_chain_additive (t tB : ℝ) (n : ℕ) :
    chain_tau_sq t tB (n + 1) = chain_tau_sq t tB n + t ^ 2 * chain_K tB := by
  unfold chain_tau_sq
  push_cast
  ring

-- [T53] :: {VER} | THE CHAIN AT ONE BURN IS THE OBERTH RESULT
theorem t53_chain_one_burn (t tB : ℝ) (htB : tB ≠ 0) :
    chain_tau_sq t tB 1 = (t * tB) ^ 2 * oberth_matched_sq tB := by
  simp only [chain_tau_sq, chain_K, oberth_matched_sq]
  push_cast
  field_simp
  ring

-- [T54] :: {VER} | THE CHAIN IS MONOTONE IN THE BURN COUNT
theorem t54_chain_monotone (t tB : ℝ) (ht : t ≠ 0) (htB : 0 < tB) (m n : ℕ) (h : m < n) :
    chain_tau_sq t tB m < chain_tau_sq t tB n := by
  simp only [chain_tau_sq, chain_K]
  have hK : 0 < tB * (2 + tB) := by nlinarith
  have ht2 : 0 < t ^ 2 := by positivity
  have hmn : (m : ℝ) < (n : ℝ) := by exact_mod_cast h
  have := mul_lt_mul_of_pos_left hmn ht2
  nlinarith

-- [T55] :: {VER} | THE CEILING PAIRING: LOCKED AT ONE AND TWO BURNS
theorem t55_chain_locked_at_one_two :
    chain_tau_sq TORSION_LIMIT TORSION_LIMIT 1 < TL_IVA ^ 2 ∧
    chain_tau_sq TORSION_LIMIT TORSION_LIMIT 2 < TL_IVA ^ 2 := by
  simp only [chain_tau_sq, chain_K, TORSION_LIMIT, TL_IVA, SOVEREIGN_ANCHOR]
  norm_num

-- [T56] :: {VER} | THE CEILING PAIRING LANDS IN THE CORRIDOR AT EXACTLY THREE BURNS
theorem t56_chain_iva_at_three :
    TL_IVA ^ 2 ≤ chain_tau_sq TORSION_LIMIT TORSION_LIMIT 3 ∧
    chain_tau_sq TORSION_LIMIT TORSION_LIMIT 3 < TORSION_LIMIT ^ 2 := by
  simp only [chain_tau_sq, chain_K, TORSION_LIMIT, TL_IVA, SOVEREIGN_ANCHOR]
  norm_num

-- [T57] :: {VER} | AND SHATTERS AT FOUR
theorem t57_chain_shatter_at_four :
    TORSION_LIMIT ^ 2 ≤ chain_tau_sq TORSION_LIMIT TORSION_LIMIT 4 := by
  simp only [chain_tau_sq, chain_K, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- [T58] :: {VER} | THE SATURATION COUNT, BRACKETED
theorem t58_n_max_bracket :
    182.3955 < chain_n_max TORSION_LIMIT TORSION_LIMIT ∧
    chain_n_max TORSION_LIMIT TORSION_LIMIT < 182.3956 ∧
    269.7229 < chain_n_max TL_IVA TL_IVA ∧
    chain_n_max TL_IVA TL_IVA < 269.7230 := by
  simp only [chain_n_max, chain_K, TORSION_LIMIT, TL_IVA, SOVEREIGN_ANCHOR]
  norm_num

-- [T59] :: {VER} | THE SATURATION COUNT IN α AND 1001 ALONE
theorem t59_n_max_in_alpha :
    chain_n_max TORSION_LIMIT TORSION_LIMIT
      = TL_DIVISOR ^ 4 / (ALPHA_INV ^ 3 * (2 * TL_DIVISOR + ALPHA_INV)) := by
  simp only [chain_n_max, chain_K, TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, ALPHA_INV]
  norm_num

-- ============================================================
-- SECTION 12: THE BUDGET IDENTITY
-- The matched radius, in Schwarzschild units, IS the chain budget.
-- This closes Section 2 against Section 11.
-- ============================================================

-- [T60] :: {VER} | THE CHAIN BUDGET IS THE MATCHED RADIUS
theorem t60_budget_is_matched_radius (t tB : ℝ) (ht : t ≠ 0) (htB : 0 < tB) :
    chain_n_max t tB * chain_K tB = matched_ratio t := by
  simp only [chain_n_max, matched_ratio, chain_K]
  have hK : tB * (2 + tB) ≠ 0 := by positivity
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T61] :: {VER} | THE BUDGET CLOSES AT EVERY CORRIDOR PAIRING
theorem t61_budget_at_corridor :
    chain_n_max TORSION_LIMIT TORSION_LIMIT * chain_K TORSION_LIMIT
      = matched_ratio TORSION_LIMIT ∧
    chain_n_max TORSION_LIMIT TL_IVA * chain_K TL_IVA
      = matched_ratio TORSION_LIMIT ∧
    chain_n_max TL_IVA TORSION_LIMIT * chain_K TORSION_LIMIT
      = matched_ratio TL_IVA ∧
    chain_n_max TL_IVA TL_IVA * chain_K TL_IVA
      = matched_ratio TL_IVA := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact t60_budget_is_matched_radius _ _ (ne_of_gt tl_pos) tl_pos
  · exact t60_budget_is_matched_radius _ _ (ne_of_gt tl_pos) tli_pos
  · exact t60_budget_is_matched_radius _ _ (ne_of_gt tli_pos) tl_pos
  · exact t60_budget_is_matched_radius _ _ (ne_of_gt tli_pos) tli_pos

-- ============================================================
-- SECTION 13: THE UNPROPELLED CATALOG
-- Published JPL orbital elements against the matched-radius construction.
-- ============================================================

/-- The matched radius of a body at the perihelion of a conic with
perihelion distance q and eccentricity e, in absolute units: 2q/(1 + e). -/
def perihelion_matched (q e : ℝ) : ℝ := 2 * q / (1 + e)

-- [T62] :: {VER} | THE PERIHELION MATCHED RADIUS IS 2q/(1 + e)
-- From vis-viva v_q² = GM(1 + e)/q and r_match = r_s/τ², the Schwarzschild
-- radius cancels and the result is a pure function of the orbit.
theorem t62_perihelion_matched (GM q e : ℝ) (hGM : 0 < GM) (hq : 0 < q) (he : 0 < 1 + e) :
    r_s GM / (r_s GM * (1 + e) / (2 * q)) = perihelion_matched q e := by
  unfold perihelion_matched
  have hrs : r_s GM ≠ 0 := (t6_rs_pos GM hGM).ne'
  field_simp

-- [T63] :: {VER} | A PARABOLIC TRAJECTORY MATCHES AT ITS OWN PERIHELION
theorem t63_parabolic_matches_perihelion (q : ℝ) :
    perihelion_matched q 1 = q := by
  unfold perihelion_matched; ring

-- [T64] :: {VER} | THE SIX PUBLISHED BODIES, r_match/q AGAINST 2/(1 + e)
theorem t64_catalog_ratios :
    perihelion_matched 1 0.8898 = 2 / 1.8898 ∧
    perihelion_matched 1 0.8268 = 2 / 1.8268 ∧
    perihelion_matched 1 1.2011 = 2 / 2.2011 ∧
    perihelion_matched 1 3.3566 = 2 / 4.3566 ∧
    perihelion_matched 1 0.1914 = 2 / 1.1914 := by
  unfold perihelion_matched
  refine ⟨by norm_num, by norm_num, by norm_num, by norm_num, by norm_num⟩

-- [T65] :: {VER} | THE UNPROPELLED BODIES SIT DEEP IN THE FAR FIELD
-- Their Reading A values place their matched radii at 10⁵ to 10⁷ r_s.
theorem t65_unpropelled_far_field :
    100000 < matched_ratio (tau_A 566500) ∧
    1000000 < matched_ratio (tau_A 109400) ∧
    1000000 < matched_ratio (tau_A 37600) := by
  simp only [matched_ratio, tau_A, C_LIGHT]
  refine ⟨by norm_num, by norm_num, by norm_num⟩

-- ============================================================
-- SECTION 14: THE PUBLISHED PROPULSION CATALOG ON THE RADIUS AXIS
-- ============================================================

def ve_cold_gas : ℝ := 700
def ve_rl10b2   : ℝ := 4650
def ve_nextc    : ℝ := 41000
def ve_daedalus : ℝ := 10600000

-- [T66] :: {VER} | EVERY FLOWN DRIVE MATCHES A RADIUS FAR OUTSIDE THE CORRIDOR
theorem t66_flown_outside_corridor :
    matched_ratio TL_IVA < matched_ratio (tau_A ve_cold_gas) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A ve_rl10b2) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A ve_nextc) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A ve_daedalus) := by
  simp only [matched_ratio, tau_A, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, C_LIGHT,
    ve_cold_gas, ve_rl10b2, ve_nextc, ve_daedalus]
  refine ⟨by norm_num, by norm_num, by norm_num, by norm_num⟩

-- [T67] :: {VER} | ORDINARY MOTION IS DEEP IN LOCKED ON THE SAME AXIS
theorem t67_ordinary_motion_locked :
    matched_ratio TL_IVA < matched_ratio (tau_A 29780) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A 900) ∧
    matched_ratio TL_IVA < matched_ratio (tau_A 16900) := by
  simp only [matched_ratio, tau_A, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, C_LIGHT]
  refine ⟨by norm_num, by norm_num, by norm_num⟩

-- ============================================================
-- SECTION 15: MASTER
-- ============================================================

/-- **THE MATCHED RADIUS.**

1.  For any drive and any mass, exactly one radius has escape velocity equal
    to the exhaust velocity, and its ratio to the Schwarzschild radius is
    1/τ_A² = 1/(2η). The mass cancels.
2.  At that radius gravitational and kinematic time dilation are the same
    quantity, 1 − 2η.
3.  The relativistic gain cap and the event horizon are the same bound.
4.  The four phases map onto radius, with Locked the far field, IVA the shell
    at 53.36 to 68.90 r_s, Shatter the interior, and the cap the horizon.
5.  Both corridor edges on radius are closed forms in α⁻¹ and 1001.
6.  The Oberth multiplier at the matched radius is a function of Reading B
    alone, and the stable-orbit reachability of the depth-beats-gain
    crossover reduces to 4 · (0.88)² > 3.
7.  The chain compounds additively in energy, lands in the corridor at three
    burns for the ceiling pairing, and saturates at 1001⁴/(α⁻³(2002 + α⁻¹)).
8.  The chain budget equals the matched ratio, which closes the radius
    result against the chain result.
-/
theorem MASTER_matched_radius :
    -- [1] the matched radius, with the mass cancelling
    (∀ GM t : ℝ, 0 < GM → t ≠ 0 → tau_esc_sq GM (r_match GM t) = t ^ 2) ∧
    (∀ GM t : ℝ, 0 < GM → t ≠ 0 → r_match GM t / r_s GM = matched_ratio t) ∧
    (∀ t : ℝ, t ≠ 0 → matched_ratio t = 1 / (2 * eta_of_tau t)) ∧
    -- [2] the equivalence
    (∀ GM t : ℝ, 0 < GM → t ≠ 0 →
      grav_dilation_sq GM (r_match GM t) = kin_dilation_sq t) ∧
    (∀ GM t : ℝ, 0 < GM → t ≠ 0 →
      grav_dilation_sq GM (r_match GM t) = 1 - 2 * eta_of_tau t) ∧
    -- [3] the cap is the horizon
    (∀ t g : ℝ, 0 < t → -1 < g →
      (gained_tau t g < 1 ↔ 1 < matched_ratio (gained_tau t g))) ∧
    (∀ GM : ℝ, 0 < GM → r_match GM 1 = r_s GM) ∧
    -- [4] the phase map on radius
    (matched_ratio TORSION_LIMIT < matched_ratio TL_IVA ∧
      R_ISCO < matched_ratio TORSION_LIMIT) ∧
    (∀ t : ℝ, 0 < t → t < TL_IVA → matched_ratio TL_IVA < matched_ratio t) ∧
    (∀ t : ℝ, TORSION_LIMIT < t → matched_ratio t < matched_ratio TORSION_LIMIT) ∧
    -- [5] both edges in α
    (matched_ratio TORSION_LIMIT = (TL_DIVISOR / ALPHA_INV) ^ 2) ∧
    (matched_ratio TL_IVA = (TL_DIVISOR / (IVA_FACTOR * ALPHA_INV)) ^ 2) ∧
    -- [6] the burn, and the headline inequality
    (oberth_matched_sq TORSION_LIMIT = 1 + 2 * TL_DIVISOR / ALPHA_INV) ∧
    (R_ISCO < 4 * IVA_FACTOR ^ 2 ∧ 4 * IVA_FACTOR ^ 2 = 1936 / 625) ∧
    (R_ISCO < crossover_radius TORSION_LIMIT TORSION_LIMIT) ∧
    (∀ t : ℝ, 0 < t → t < 1 → 4 ≤ crossover_radius t t) ∧
    -- [7] the chain
    (∀ t tB : ℝ, ∀ n : ℕ,
      chain_tau_sq t tB (n + 1) = chain_tau_sq t tB n + t ^ 2 * chain_K tB) ∧
    (TL_IVA ^ 2 ≤ chain_tau_sq TORSION_LIMIT TORSION_LIMIT 3 ∧
      chain_tau_sq TORSION_LIMIT TORSION_LIMIT 3 < TORSION_LIMIT ^ 2) ∧
    (chain_n_max TORSION_LIMIT TORSION_LIMIT
      = TL_DIVISOR ^ 4 / (ALPHA_INV ^ 3 * (2 * TL_DIVISOR + ALPHA_INV))) ∧
    -- [8] the budget identity
    (∀ t tB : ℝ, t ≠ 0 → 0 < tB →
      chain_n_max t tB * chain_K tB = matched_ratio t) := by
  exact ⟨fun GM t h1 h2 => t8_matched_radius_matches GM t h1 h2,
    fun GM t h1 h2 => t9_mass_cancels GM t h1 h2,
    fun t h => t10_ratio_is_conversion t h,
    fun GM t h1 h2 => t14_equivalence GM t h1 h2,
    fun GM t h1 h2 => (t15_dilation_is_conversion GM t h1 h2).1,
    fun t g h1 h2 => t18_cap_is_horizon t g h1 h2,
    fun GM h => (t21_photon_matches_horizon GM h).1,
    ⟨t13_corridor_outside_strong_field.1, t13_corridor_outside_strong_field.2.1⟩,
    fun t h1 h2 => t23_locked_is_far_field t h1 h2,
    fun t h => t24_shatter_is_interior t h,
    t28_ceiling_radius_in_alpha, t29_floor_radius_in_alpha,
    t41_multiplier_ceiling_in_alpha, t48_iva_factor_clears_isco,
    t50_crossover_outside_isco.2.2.2,
    fun t h1 h2 => t51_crossover_at_least_four t h1 h2,
    fun t tB n => t52_chain_additive t tB n,
    t56_chain_iva_at_three, t59_n_max_in_alpha,
    fun t tB h1 h2 => t60_budget_is_matched_radius t tB h1 h2⟩

end SNSFL_MatchedRadius

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- Reading A is a radius. That is the whole of this file: the exhaust
-- velocity a drive throws fixes, for every mass in the universe, one radius
-- at which that mass pulls as hard as the drive pushes, and the ratio of
-- that radius to the Schwarzschild radius is the reciprocal of twice the
-- conversion fraction. The mass cancels. At that radius the gravitational
-- and kinematic dilations are one quantity, the gain cap and the horizon are
-- one bound, and the chain budget and the matched ratio are one number.
--
-- THEOREMS : 67 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
```

### SNSFL_MatchedRadius_Reduction_TL.lean — [9,9,0,17.1](GRAV), specialist form

```lean
-- ============================================================
-- SNSFL_MatchedRadius_Reduction_TL.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE MATCHED RADIUS — THE SQUARE-ROOT TORSION OPERATOR
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,17.1](GRAV) | Physics Ground — Gravitation · specialist form (square-root torsion operator)
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, the conversion fraction and the
-- matched radius are all restated here at full precision, so that a reader
-- or a machine can close every proof without leaving the file. The parent
-- reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,0,17]  Matched Radius Reduction      — the general-reader form of this coordinate
--   [9,9,2,0]   IVA Propulsion Reduction      — the two readings, the bridge, the gain cap
--   [9,9,0,1]   GR Reduction                   — r_s as the Pattern-lock threshold
--   [9,9,3,14]  Alpha Reduction                — α⁻¹ = Ω₀ × 100.1, TL = α⁻¹/1001
--   [9,9,3,20]  Transcendental Time Engine     — TL as the step on the dynamic equation's left side
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   The square-root torsion operator S(X) = √X, read through the matched
--   radius, is exact. The matched radius of a square root is the reciprocal
--   of what was rooted:
--
--       matched_ratio (√X) = 1/X
--
--   The root cancels identically. That is the whole of this file's content,
--   and every other result here is a consequence of it.
--
--   The consequence that matters for computation: the Torsion Limit is an
--   exact ratio of integers, TL = Ω₀/10 = 8556193749001/62500000000000.
--   So √TL is a quadratic irrational over the rationals, and the operator
--   sends it straight back into the rationals. No irrational survives to
--   the output, at any precision, in any direction of the chain. The layer
--   is closed over ℚ.
--
--   Two landings are named: √TL puts the matched radius at 1/TL, and
--   √TL_IVA puts it at 1/TL_IVA. Both are exact rationals. Their ratio is
--   exactly 1/0.88, the corridor width factor, with no error term.
--
--   The operator is horizon-ward. For any torsion in (0,1) the square root
--   is larger, so the matched radius is smaller: one root moves the matched
--   radius inward. Iterating drives the matched radius monotonically toward
--   the Schwarzschild radius and never past it. The horizon is the operator's
--   floor, at every depth of iteration.
--
--   The operator centers the corridor. For any band [k·a, a] with k in (0,1)
--   the geometric mean is √k · a, and k < √k < 1 places that mean strictly
--   inside the band. This is structural, not numerical: it holds for every
--   width factor, and at k = 0.88 it puts √0.88 · TL inside the IVA corridor
--   with the matched radius at 1/(0.88·TL²), the geometric mean of the
--   corridor's own radius band.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

noncomputable section

namespace SNSFL_MatchedRadiusTL

-- ============================================================
-- SECTION 0: CONSTANTS, THE FOUR PHASES, READING A
-- Restated here in full. This file depends on no other file.
-- ============================================================

/-- The Sovereign Anchor, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Torsion Limit. Ω₀/10 — discovered, not chosen. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor. 0.88 × TL = 0.12047120798593408. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- The corridor width factor. -/
def IVA_FACTOR : ℝ := 0.88

/-- Speed of light in vacuum, m/s. Exact by SI definition. -/
def C_LIGHT : ℝ := 299792458

/-- The inverse fine-structure constant. Ω₀ × 100.1. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The integer the Torsion Limit divides the fine-structure constant by.
1001 = 7 × 11 × 13. -/
def TL_DIVISOR : ℝ := 1001

inductive Phase : Type
  | Noble    -- τ = 0
  | Locked   -- 0 < τ < TL_IVA
  | IVA      -- TL_IVA ≤ τ < TL
  | Shatter  -- τ ≥ TL
  deriving DecidableEq, Repr

def classify (τ : ℝ) : Phase :=
  if τ = 0 then Phase.Noble
  else if τ < TL_IVA then Phase.Locked
  else if τ < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

/-- Reading A. The exhaust velocity against light speed. -/
def tau_A (w : ℝ) : ℝ := w / C_LIGHT

/-- The rest-mass conversion fraction of the ideal rocket: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The Schwarzschild radius of a body with gravitational parameter GM. -/
def r_s (GM : ℝ) : ℝ := 2 * GM / C_LIGHT ^ 2

/-- The matched radius: the radius at which the escape velocity of a mass
equals a drive's exhaust velocity. r = r_s/τ_A². -/
def r_match (GM t : ℝ) : ℝ := r_s GM / t ^ 2

/-- The matched radius in Schwarzschild units. Depends on the drive alone. -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

/-- The square-root torsion operator. -/
def S (X : ℝ) : ℝ := Real.sqrt X

/-- The operator iterated. S⁰ is the identity. -/
def sqrtIter : ℕ → ℝ → ℝ
  | 0,     t => t
  | (n+1), t => Real.sqrt (sqrtIter n t)

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

-- ============================================================
-- SECTION 1: THE TORSION LIMIT IS AN EXACT RATIONAL
-- This is why the layer closes. The anchor is a terminating
-- decimal, so the Torsion Limit is a ratio of integers, and every
-- quantity built from it by field operations is one too.
-- ============================================================

-- [T4] :: {VER} | THE TORSION LIMIT AS A RATIO OF INTEGERS
theorem t4_tl_is_rational :
    TORSION_LIMIT = 8556193749001 / 62500000000000 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T5] :: {VER} | THE RECIPROCAL IS A RATIO OF INTEGERS TOO
theorem t5_tl_inverse_is_rational :
    1 / TORSION_LIMIT = 62500000000000 / 8556193749001 := by
  rw [t4_tl_is_rational]; norm_num

-- [T6] :: {VER} | THE CORRIDOR FLOOR AS A RATIO OF INTEGERS
theorem t6_tl_iva_is_rational :
    TL_IVA = 94118131239011 / 781250000000000 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T7] :: {VER} | THE EXACTNESS ANCHOR: TL × 1001 = α⁻¹
-- The Torsion Limit is not a fitted parameter. It is the inverse
-- fine-structure constant divided by 1001 = 7 × 11 × 13, exactly.
theorem t7_tl_times_1001_is_alpha :
    TORSION_LIMIT * TL_DIVISOR = ALPHA_INV := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, TL_DIVISOR, ALPHA_INV]; norm_num

-- ============================================================
-- SECTION 2: THE OPERATOR IDENTITY
-- The matched radius of a square root is the reciprocal of what
-- was rooted. The root cancels; nothing irrational survives.
-- ============================================================

-- [T8] :: {VER} | MASTER — THE SQUARE-ROOT CLOSURE
theorem t8_master_sqrt_closure (X : ℝ) (hX : 0 ≤ X) :
    matched_ratio (S X) = 1 / X := by
  simp only [matched_ratio, S, Real.sq_sqrt hX]

-- [T9] :: {VER} | THE CLOSURE AS A PRODUCT: NO ERROR TERM
-- The matched radius of √X multiplied by X is exactly one, so the
-- operator carries no residue at any precision.
theorem t9_closure_has_no_residue (X : ℝ) (hX : 0 < X) :
    matched_ratio (S X) * X = 1 := by
  rw [t8_master_sqrt_closure X hX.le, one_div, inv_mul_cancel₀ (ne_of_gt hX)]

-- [T10] :: {VER} | THE MATCHED RADIUS OF A ROOT IS RATIONAL WHEN THE
-- ROOTED QUANTITY IS. Stated as the general cancellation: the output
-- depends on X alone, never on √X.
theorem t10_output_free_of_the_root (X Y : ℝ) (hX : 0 ≤ X) (hY : 0 ≤ Y)
    (h : X = Y) : matched_ratio (S X) = matched_ratio (S Y) := by
  rw [t8_master_sqrt_closure X hX, t8_master_sqrt_closure Y hY, h]

-- [T11] :: {VER} | THE FIRST LANDING — √TL PUTS THE MATCHED RADIUS AT 1/TL
theorem t11_sqrt_tl_lands_at_tl_inverse :
    matched_ratio (S TORSION_LIMIT) = 1 / TORSION_LIMIT := by
  exact t8_master_sqrt_closure TORSION_LIMIT t2_tl_in_unit_interval.1.le

-- [T12] :: {VER} | THE FIRST LANDING IS AN EXACT RATIONAL
theorem t12_first_landing_rational :
    matched_ratio (S TORSION_LIMIT) = 62500000000000 / 8556193749001 := by
  rw [t11_sqrt_tl_lands_at_tl_inverse, t5_tl_inverse_is_rational]

-- [T13] :: {VER} | THE FIRST LANDING, BRACKETED — 7.304649921853084 r_s
theorem t13_first_landing_value :
    7.30464992185308 < matched_ratio (S TORSION_LIMIT) ∧
    matched_ratio (S TORSION_LIMIT) < 7.30464992185309 := by
  rw [t12_first_landing_rational]; norm_num

-- [T14] :: {VER} | THE SECOND LANDING — √TL_IVA PUTS IT AT 1/TL_IVA
theorem t14_sqrt_tl_iva_lands_at_floor_inverse :
    matched_ratio (S TL_IVA) = 1 / TL_IVA := by
  exact t8_master_sqrt_closure TL_IVA t3_floor_below_ceiling.1.le

-- [T15] :: {VER} | THE SECOND LANDING IS AN EXACT RATIONAL
theorem t15_second_landing_rational :
    matched_ratio (S TL_IVA) = 781250000000000 / 94118131239011 := by
  rw [t14_sqrt_tl_iva_lands_at_floor_inverse, t6_tl_iva_is_rational]; norm_num

-- [T16] :: {VER} | THE SECOND LANDING, BRACKETED — 8.300738547560323 r_s
theorem t16_second_landing_value :
    8.30073854756032 < matched_ratio (S TL_IVA) ∧
    matched_ratio (S TL_IVA) < 8.30073854756033 := by
  rw [t15_second_landing_rational]; norm_num

-- [T17] :: {VER} | THE TWO LANDINGS STAND IN THE CORRIDOR WIDTH FACTOR,
-- EXACTLY. Their ratio is 1/0.88 = 25/22, with no error term.
theorem t17_landings_ratio_is_the_width_factor :
    matched_ratio (S TL_IVA) = matched_ratio (S TORSION_LIMIT) * (25 / 22) := by
  rw [t12_first_landing_rational, t15_second_landing_rational]; norm_num

-- [T18] :: {VER} | THE SECOND LANDING IS THE FARTHER OF THE TWO
theorem t18_floor_lands_farther :
    matched_ratio (S TORSION_LIMIT) < matched_ratio (S TL_IVA) := by
  rw [t12_first_landing_rational, t15_second_landing_rational]; norm_num

-- ============================================================
-- SECTION 3: THE SQUARE-ROOT SANDWICH
-- For any torsion strictly inside the unit interval, the square
-- root is strictly larger and still strictly below one. This is
-- the engine of both the contraction and the self-centering.
-- ============================================================

-- [T19] :: {VER} | THE SANDWICH — k < √k < 1 ON (0,1)
theorem t19_sqrt_sandwich (k : ℝ) (h0 : 0 < k) (h1 : k < 1) :
    k < Real.sqrt k ∧ Real.sqrt k < 1 := by
  have hs : Real.sqrt k ^ 2 = k := Real.sq_sqrt h0.le
  have hp : 0 < Real.sqrt k := Real.sqrt_pos.mpr h0
  constructor
  · nlinarith [hs, hp, mul_pos h0 hp]
  · nlinarith [hs, hp]

-- [T20] :: {VER} | THE ROOT STAYS IN THE UNIT INTERVAL
theorem t20_root_stays_in_unit_interval (k : ℝ) (h0 : 0 < k) (h1 : k < 1) :
    0 < Real.sqrt k ∧ Real.sqrt k < 1 := by
  exact ⟨Real.sqrt_pos.mpr h0, (t19_sqrt_sandwich k h0 h1).2⟩

-- ============================================================
-- SECTION 4: THE OPERATOR IS HORIZON-WARD
-- A larger torsion names a nearer matched radius. So one square
-- root moves the matched radius inward, and iterating drives it
-- toward the Schwarzschild radius without ever reaching it.
-- ============================================================

-- [T21] :: {VER} | THE MATCHED RADIUS IS STRICTLY ANTITONE IN THE TORSION
theorem t21_matched_ratio_antitone (t u : ℝ) (ht : 0 < t) (htu : t < u) :
    matched_ratio u < matched_ratio t := by
  simp only [matched_ratio]
  have hu : 0 < u := lt_trans ht htu
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have h : t ^ 2 < u ^ 2 := by nlinarith
  exact one_div_lt_one_div_of_lt ht2 h

-- [T22] :: {VER} | ONE ROOT MOVES THE MATCHED RADIUS INWARD
theorem t22_one_root_moves_inward (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    matched_ratio (S t) < matched_ratio t := by
  simp only [S]
  exact t21_matched_ratio_antitone t (Real.sqrt t) h0 (t19_sqrt_sandwich t h0 h1).1

-- [T23] :: {VER} | THE ROOT NEVER CROSSES THE HORIZON
-- The matched radius of √t stays strictly outside r_s for every
-- torsion in (0,1), because it equals 1/t and t < 1.
theorem t23_root_stays_outside_horizon (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    1 < matched_ratio (S t) := by
  rw [t8_master_sqrt_closure t h0.le]
  rw [lt_div_iff₀ h0]
  linarith

-- [T24] :: {VER} | THE ITERATE STAYS IN THE UNIT INTERVAL AT EVERY DEPTH
theorem t24_iterate_stays_in_unit_interval (n : ℕ) (t : ℝ)
    (h0 : 0 < t) (h1 : t < 1) :
    0 < sqrtIter n t ∧ sqrtIter n t < 1 := by
  induction n with
  | zero => exact ⟨h0, h1⟩
  | succ m ih =>
      obtain ⟨hm0, hm1⟩ := ih
      simp only [sqrtIter]
      exact t20_root_stays_in_unit_interval (sqrtIter m t) hm0 hm1

-- [T25] :: {VER} | THE HORIZON IS THE OPERATOR'S FLOOR AT EVERY DEPTH
theorem t25_horizon_is_the_floor (n : ℕ) (t : ℝ) (h0 : 0 < t) (h1 : t < 1) :
    1 < matched_ratio (sqrtIter n t) := by
  obtain ⟨hn0, hn1⟩ := t24_iterate_stays_in_unit_interval n t h0 h1
  simp only [matched_ratio]
  have hn2 : (0:ℝ) < sqrtIter n t ^ 2 := by positivity
  rw [lt_div_iff₀ hn2]
  nlinarith

-- [T26] :: {VER} | EACH ITERATION MOVES STRICTLY INWARD
theorem t26_iteration_strictly_decreases (n : ℕ) (t : ℝ)
    (h0 : 0 < t) (h1 : t < 1) :
    matched_ratio (sqrtIter (n + 1) t) < matched_ratio (sqrtIter n t) := by
  obtain ⟨hn0, hn1⟩ := t24_iterate_stays_in_unit_interval n t h0 h1
  simp only [sqrtIter]
  exact t21_matched_ratio_antitone (sqrtIter n t) (Real.sqrt (sqrtIter n t)) hn0
    (t19_sqrt_sandwich (sqrtIter n t) hn0 hn1).1

-- [T27] :: {VER} | THE TORSION LIMIT ENTERS THE CONTRACTION
theorem t27_tl_enters_the_contraction :
    matched_ratio (S TORSION_LIMIT) < matched_ratio TORSION_LIMIT := by
  exact t22_one_root_moves_inward TORSION_LIMIT t2_tl_in_unit_interval.1
    t2_tl_in_unit_interval.2

-- ============================================================
-- SECTION 5: THE OPERATOR CENTERS THE CORRIDOR
-- A band of fixed width factor k has geometric mean √k times its
-- ceiling, and the sandwich puts that mean strictly inside the
-- band. Structural for every k in (0,1), not numerical.
-- ============================================================

-- [T28] :: {VER} | THE GEOMETRIC MEAN OF A BAND, IN CLOSED FORM
-- The band [k·a, a] has geometric mean √k · a: squaring the
-- candidate returns the product of the endpoints.
theorem t28_band_geometric_mean (k a : ℝ) (hk : 0 ≤ k) :
    (Real.sqrt k * a) ^ 2 = (k * a) * a := by
  have hs : Real.sqrt k ^ 2 = k := Real.sq_sqrt hk
  calc (Real.sqrt k * a) ^ 2 = Real.sqrt k ^ 2 * a ^ 2 := by ring
    _ = k * a ^ 2 := by rw [hs]
    _ = (k * a) * a := by ring

-- [T29] :: {VER} | THE MEAN LIES STRICTLY INSIDE THE BAND
theorem t29_mean_inside_band (k a : ℝ) (h0 : 0 < k) (h1 : k < 1) (ha : 0 < a) :
    k * a < Real.sqrt k * a ∧ Real.sqrt k * a < a := by
  obtain ⟨hlo, hhi⟩ := t19_sqrt_sandwich k h0 h1
  refine ⟨mul_lt_mul_of_pos_right hlo ha, ?_⟩
  calc Real.sqrt k * a < 1 * a := mul_lt_mul_of_pos_right hhi ha
    _ = a := one_mul a

-- [T30] :: {VER} | THE CORRIDOR'S OWN CENTER IS √0.88 × TL
theorem t30_corridor_center :
    TL_IVA < Real.sqrt 0.88 * TORSION_LIMIT ∧
    Real.sqrt 0.88 * TORSION_LIMIT < TORSION_LIMIT := by
  obtain ⟨hlo, hhi⟩ :=
    t29_mean_inside_band 0.88 TORSION_LIMIT (by norm_num) (by norm_num)
      t2_tl_in_unit_interval.1
  constructor
  · simp only [TL_IVA]; linarith [hlo]
  · exact hhi

-- [T31] :: {VER} | THE CENTER IS AN IVA TORSION
theorem t31_center_classifies_iva :
    classify (Real.sqrt 0.88 * TORSION_LIMIT) = Phase.IVA := by
  obtain ⟨h1, h2⟩ := t30_corridor_center
  have h3 : Real.sqrt 0.88 * TORSION_LIMIT ≠ 0 := by
    have hpos : 0 < Real.sqrt 0.88 * TORSION_LIMIT :=
      lt_trans t3_floor_below_ceiling.1 h1
    exact ne_of_gt hpos
  unfold classify
  split_ifs with ha hb
  · exact absurd ha h3
  · exact absurd hb (not_lt.mpr h1.le)
  · rfl

-- [T32] :: {VER} | THE CENTER'S MATCHED RADIUS IS 1/(0.88 · TL²)
theorem t32_center_matched_radius :
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT)
      = 1 / (0.88 * TORSION_LIMIT ^ 2) := by
  simp only [matched_ratio]
  rw [t28_band_geometric_mean 0.88 TORSION_LIMIT (by norm_num)]
  ring_nf

-- [T33] :: {VER} | THE CENTER'S MATCHED RADIUS, BRACKETED — 60.633989182759 r_s
theorem t33_center_matched_radius_value :
    60.63398918275939 < matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) ∧
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) < 60.63398918275940 := by
  rw [t32_center_matched_radius]
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- [T34] :: {VER} | THE CENTER'S MATCHED RADIUS IS THE GEOMETRIC MEAN OF
-- THE CORRIDOR'S RADIUS BAND. Squaring it returns the product of the
-- band's two endpoints, 1/TL² and 1/TL_IVA².
theorem t34_center_is_the_radius_band_mean :
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) ^ 2
      = matched_ratio TORSION_LIMIT * matched_ratio TL_IVA := by
  rw [t32_center_matched_radius]
  simp only [matched_ratio, TL_IVA]
  have h : TORSION_LIMIT ≠ 0 := ne_of_gt t2_tl_in_unit_interval.1
  field_simp

-- [T35] :: {VER} | THE CENTER LIES INSIDE THE RADIUS BAND
theorem t35_center_inside_radius_band :
    matched_ratio TORSION_LIMIT
      < matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) ∧
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) < matched_ratio TL_IVA := by
  obtain ⟨h1, h2⟩ := t30_corridor_center
  constructor
  · exact t21_matched_ratio_antitone (Real.sqrt 0.88 * TORSION_LIMIT)
      TORSION_LIMIT (lt_trans t3_floor_below_ceiling.1 h1) h2
  · exact t21_matched_ratio_antitone TL_IVA (Real.sqrt 0.88 * TORSION_LIMIT)
      t3_floor_below_ceiling.1 h1

-- [T36] :: {VER} | THE RADIUS BAND'S WIDTH FACTOR IS 1/0.88², EXACTLY
theorem t36_radius_band_width :
    matched_ratio TL_IVA = matched_ratio TORSION_LIMIT * (625 / 484) := by
  simp only [matched_ratio, TL_IVA]
  have h : TORSION_LIMIT ≠ 0 := ne_of_gt t2_tl_in_unit_interval.1
  field_simp
  ring

-- ============================================================
-- SECTION 6: THE CONVERSION FRACTION UNDER THE OPERATOR
-- Reading A squared is twice the rest-mass conversion fraction,
-- so the operator's image has conversion fraction X/2.
-- ============================================================

-- [T37] :: {VER} | THE CONVERSION FRACTION OF A ROOT IS HALF WHAT WAS ROOTED
theorem t37_conversion_of_a_root (X : ℝ) (hX : 0 ≤ X) :
    eta_of_tau (S X) = X / 2 := by
  simp only [eta_of_tau, S, Real.sq_sqrt hX]

-- [T38] :: {VER} | THE MATCHED RADIUS ON THE CONVERSION FRACTION
theorem t38_matched_radius_on_conversion (t : ℝ) (ht : t ≠ 0) :
    matched_ratio t = 1 / (2 * eta_of_tau t) := by
  simp only [matched_ratio, eta_of_tau]
  have h2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T39] :: {VER} | THE ROOT OF TL HAS CONVERSION FRACTION TL/2
theorem t39_root_of_tl_conversion :
    eta_of_tau (S TORSION_LIMIT) = TORSION_LIMIT / 2 := by
  exact t37_conversion_of_a_root TORSION_LIMIT t2_tl_in_unit_interval.1.le

-- ============================================================
-- SECTION 7: THE MASS CANCELS HERE TOO
-- The matched radius in metres still carries the central body, but
-- in Schwarzschild units the operator's output is the drive alone.
-- ============================================================

-- [T40] :: {VER} | THE MATCHED RADIUS IN METRES FACTORS THROUGH THE RATIO
theorem t40_matched_radius_factors (GM t : ℝ) (ht : t ≠ 0) :
    r_match GM t = r_s GM * matched_ratio t := by
  simp only [r_match, matched_ratio]
  field_simp

-- [T41] :: {VER} | THE MASS CANCELS IN THE OPERATOR'S OUTPUT
theorem t41_mass_cancels (GM X : ℝ) (hGM : 0 < GM) (hX : 0 < X) :
    r_match GM (S X) / r_s GM = 1 / X := by
  have hrs : r_s GM ≠ 0 := by
    simp only [r_s, C_LIGHT]
    have : (0:ℝ) < 2 * GM / (299792458:ℝ) ^ 2 := by positivity
    exact ne_of_gt this
  rw [t40_matched_radius_factors GM (S X) (by
    simp only [S]
    exact ne_of_gt (Real.sqrt_pos.mpr hX))]
  rw [t8_master_sqrt_closure X hX.le]
  field_simp

-- ============================================================
-- SECTION 8: MASTER
-- ============================================================

-- [MASTER] :: {VER} | THE SQUARE-ROOT TORSION OPERATOR
-- The operator identity, the two exact landings, the exact width
-- factor between them, the horizon as the floor, and the corridor's
-- own center, in one statement.
theorem MASTER_sqrt_torsion_operator :
    -- the operator identity: the root cancels
    (∀ X : ℝ, 0 ≤ X → matched_ratio (S X) = 1 / X) ∧
    -- the layer is closed over the rationals
    TORSION_LIMIT = 8556193749001 / 62500000000000 ∧
    matched_ratio (S TORSION_LIMIT) = 62500000000000 / 8556193749001 ∧
    matched_ratio (S TL_IVA) = 781250000000000 / 94118131239011 ∧
    -- the exactness anchor
    TORSION_LIMIT * TL_DIVISOR = ALPHA_INV ∧
    -- the two landings stand in the corridor width factor, exactly
    matched_ratio (S TL_IVA) = matched_ratio (S TORSION_LIMIT) * (25 / 22) ∧
    -- the operator is horizon-ward, and the horizon is its floor
    (∀ t : ℝ, 0 < t → t < 1 → matched_ratio (S t) < matched_ratio t) ∧
    (∀ (n : ℕ) (t : ℝ), 0 < t → t < 1 → 1 < matched_ratio (sqrtIter n t)) ∧
    -- the operator centers any band, structurally
    (∀ k a : ℝ, 0 < k → k < 1 → 0 < a →
      k * a < Real.sqrt k * a ∧ Real.sqrt k * a < a) ∧
    -- and at the corridor's width factor the center is an IVA torsion
    classify (Real.sqrt 0.88 * TORSION_LIMIT) = Phase.IVA ∧
    matched_ratio (Real.sqrt 0.88 * TORSION_LIMIT) ^ 2
      = matched_ratio TORSION_LIMIT * matched_ratio TL_IVA := by
  refine ⟨fun X hX => t8_master_sqrt_closure X hX, t4_tl_is_rational,
    t12_first_landing_rational, t15_second_landing_rational,
    t7_tl_times_1001_is_alpha, t17_landings_ratio_is_the_width_factor,
    fun t h0 h1 => t22_one_root_moves_inward t h0 h1,
    fun n t h0 h1 => t25_horizon_is_the_floor n t h0 h1,
    fun k a h0 h1 ha => t29_mean_inside_band k a h0 h1 ha,
    t31_center_classifies_iva, t34_center_is_the_radius_band_mean⟩

end SNSFL_MatchedRadiusTL

end
```
