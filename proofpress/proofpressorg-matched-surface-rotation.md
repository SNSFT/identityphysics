# The Matched Surface Under Rotation: Spin as an Effective Charge and the Level Set g_tt = τ_A² − 1

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** 9,9,0,19 · Identity Physics Series · Physics Ground, Gravitation

**Issue:** ProofPress, Volume 1, Issue 9 · November 2026

**DOI:** 10.5281/zenodo.18719748

**Verified:** 70 theorems · 918 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Abstract

The matched radius reduction at 9,9,0,17 places a drive against a gravitational well, and the propellant and compactness reduction at 9,9,0,18 generalizes that placement to any static spherically symmetric metric as the level set f(r_match) = 1 − τ_A², while recording that the rotating metric sits outside that class: Boyer–Lindquist carries a dt dφ cross term and its radial component is ρ²/Δ rather than 1/f, so the two factors that cancel in the spherically symmetric case are not the same two factors. This article carries the construction into rotation, and the exclusion resolves into an instance. The quantity the matched surface is a level set of is the time–time component of the metric itself. For a static observer in any stationary metric the locally measured escape fraction is √(1 + g_tt) and the gravitational dilation is √(−g_tt), so the two sum in quadrature to one at every point where such an observer exists, and the matched surface is the level set **g_tt = τ_A² − 1**. Spherical symmetry was sufficient for that statement and was never necessary; what is necessary is a timelike Killing vector and a static region, and the rotating metric supplies both outside its ergosphere. Evaluated in Kerr the level set is a quadratic in the radius with the polar angle as a parameter, τ_A² r² − r_s r + τ_A² a² cos²θ = 0, which is the Reissner–Nordström quadratic of [9,9,0,18] with **effective charge q_eff = τ_A · ã · |cos θ|**, writing ã = a/r_s for the dimensionless spin. Every result of that section therefore transfers unchanged — the root pair, the partition fraction F, the nesting against the horizons, the charged availability criterion — with q replaced by q_eff. Four consequences follow. The effective charge vanishes on the equator, so **the equatorial matched radius is exactly the Schwarzschild matched radius at every spin**, 53.357910481 r_s at the corridor ceiling for a maximally rotating body and a static one alike. Off the equator the surface is pinched toward the poles, an oblate surface of revolution flattened by 0.008782% at maximal spin, with a closed form in θ and no root-finding. At Reading A = 1 the matched surface is exactly the **ergosphere**, completing a family in which the photon-drive surface is the horizon in Schwarzschild, the horizon pair in Reissner–Nordström and the static limit surface in Kerr. And rotation is suppressed relative to charge by exactly **1/τ_A², the matched ratio itself** — an equal spin parameter displaces the surface 53.357910481 times less than an equal charge parameter at the corridor ceiling, so the number that sets where the surface is also sets how little rotation moves it. Because both readings descend from g_tt, the e-fold survives rotation exactly rather than approximately: escape and dilation agree at every latitude, both readings return the identical surface, and at the matched surface a launch at escape speed carries energy exactly equal to rest energy with no turning point outside it in any direction. The availability criterion is correspondingly robust: the penalty for an off-equatorial approach grows as sin² of the latitude and reaches 0.008782% at the pole, which flips no verdict anywhere in the published catalog, and the propellant budget does not move at all, since the parent's saving carries no metric. Kerr–Newman combines the two parameters as q_eff² = q² + τ_A² ã² cos²θ, charge entering unweighted and spin weighted by τ_A², and the resulting discriminant clears the horizon-existence bound by a margin that is again the matched ratio. Real rotating bodies sit far inside these effects: the fastest known pulsar runs ã = 0.130372, for a matched-surface flattening of 0.000597%. 1001 = 7 · 11 · 13.

## What This Article Proves

- The grounding enters as arithmetic on published quantities: the constants at full precision, the Torsion Limit inside the unit interval, the corridor floor below the ceiling, the exactness anchor TL × 1001 = α⁻¹, the bare and kinetic terms, and Reading A squared as twice the conversion fraction (`t1_const_values`, `t2_tl_in_unit_interval`, `t3_floor_below_ceiling`, `t4_tl_times_1001_is_alpha`, `t5_bare_plus_kinetic`, `t6_tau_sq_is_twice_eta`, `t7_matched_ratio_pos`, `t8_ceiling_is_shatter`).
- **The quadrature:** for a static observer the escape fraction squared and the dilation squared sum to one, at every point of every stationary metric, with no symmetry entering (`t9_quadrature`).
- **The matched surface is the level set of the time–time component**, stated both against Reading A and against the conversion fraction (`t10_level_set_form`, `t13_level_set_on_eta`).
- At the matched surface the escape fraction squared is Reading A squared, the dilation squared is its complement, and the escape fraction itself is Reading A (`t11_escape_at_matched`, `t12_dilation_at_matched`, `t14_escape_fraction_is_reading_a`).
- The Schwarzschild instance returns r = r_s/τ_A², which is the matched ratio (`t15_schwarzschild_instance`, `t16_schwarzschild_is_matched_ratio`).
- The charged apparatus, restated in full so the rotating results can be carried across it: the discriminant is nonnegative on the physical range, both roots solve the quadratic, the outer root is the partition fraction times the matched ratio, the pair partitions the matched ratio, the fraction lies between one half and one, the charge-for-shift identity holds, and the charged criterion is an inequality between two dimensionless ratios (`t17_rn_discriminant`, `t18_rn_roots_solve`, `t19_rn_outer_factored`, `t20_rn_pair_partitions`, `t21_rn_factor_le_one`, `t22_rn_factor_ge_half`, `t23_charge_for_shift`, `t24_charged_criterion`).
- **On the equator the rotating time–time component is Schwarzschild's**, with the spin absent (`t25_equatorial_is_schwarzschild`).
- The rotating level set is a quadratic in the radius with the polar angle as a parameter, and the charged rotating level set carries both parameters at once (`t26_kerr_quadratic`, `t27_kn_quadratic`).
- **Spin is an effective charge:** q_eff² = τ_A² ã² cos²θ, the effective charge is nonnegative on the physical range, the two discriminants agree under the substitution, and the rotating root pair and partition fraction are the charged ones evaluated at q_eff (`t28_q_eff_sq`, `t29_q_eff_nonneg`, `t30_discriminants_agree`, `t31_kerr_is_rn`).
- **The equatorial matched radius is exactly the Schwarzschild matched radius at every spin:** the effective charge vanishes on the equator, the partition fraction is one there, and the statement holds for all spins at once (`t32_equatorial_q_eff_zero`, `t33_equatorial_spin_blind`, `t34_equatorial_all_spins`, `t35_kerr_factor_equatorial`).
- The rotating pair partitions the uncharged matched radius, the outer root is the fraction times the ratio, the inner root is the complementary share, and **the pair multiplies to ã² cos²θ with Reading A canceling out** (`t36_kerr_outer_factored`, `t37_kerr_pair_partitions`, `t38_kerr_pair_product`, `t40_kerr_inner_share`).
- The rotating charge-for-shift identity F(1 − F) = τ_A⁴ ã² cos²θ holds exactly (`t39_kerr_charge_for_shift`).
- **The surface is oblate:** the discriminant is nonnegative across the physical range, the outer root is strictly antitone in cos²θ, the polar radius is at most the equatorial radius, and the partition fraction lies in (0, 1] (`t41_kerr_discriminant`, `t42_oblate`, `t43_polar_le_equatorial`, `t44_kerr_factor_le_one`, `t45_kerr_factor_pos`).
- **At Reading A = 1 the matched surface is exactly the static limit surface**, which is the Schwarzschild radius on the equator and the horizon at the poles under extremal spin, completing the family whose Schwarzschild member is the horizon (`t46_cap_is_ergosphere`, `t47_ergo_equatorial`, `t48_ergo_polar_extremal`, `t49_schwarzschild_cap_is_horizon`).
- Below the cap the matched surface lies outside the static limit surface, so every corridor construction sits where static observers exist (`t50_matched_outside_ergosphere`).
- **Charge outweighs spin by exactly the matched ratio**, the combined effective charge of the charged rotating metric is q² + τ_A² ã² cos²θ, and the weighting is strictly asymmetric (`t51_charge_outweighs_spin`, `t52_kn_effective_charge`, `t53_weighting_asymmetry`).
- **The matched discriminant clears the horizon-existence bound by the matched ratio**, in its third independent role (`t54_discriminant_margin`, `t55_margin_is_matched_ratio`).
- The criterion without a metric, the Schwarzschild threshold it returns, **the rotating criterion C > τ_A²/F**, and **the equatorial criterion, which is spin-free** (`t56_criterion_metric_free`, `t57_metric_free_recovers_tau_sq`, `t58_rotating_criterion`, `t59_equatorial_criterion`).
- Rotation tightens availability and never loosens it, the penalty is monotone in cos²θ, and the resonance gain enters quadratically through Reading A (`t60_rotation_tightens`, `t61_penalty_monotone`, `t62_gain_requirement_quadratic`, `t63_gain_tightens`).
- **The budget carries no metric:** the escape fraction at any matched surface of any stationary metric is Reading A, stated generally and instanced in the rotating, charged rotating, charged and Schwarzschild metrics, with the dilation there equal to √(1 − 2η) (`t64_budget_sees_no_metric`, `t65_budget_rotating`, `t66_budget_charged_rotating`, `t67_budget_charged`, `t68_budget_schwarzschild`, `t69_dilation_at_matched_on_eta`).
- The phase map applies to the dimensionless spin as it does to any dimensionless ratio (`t70_spin_classifies`).
- All of the above close under one master theorem (`MASTER_matched_surface_rotation`).

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

**Every quantity in this article is a pure number.** TL and Ω₀ carry no units and 1001 is an integer, and substituting SI base units into α⁻¹ = 4πε₀ℏc/e² cancels mass, length, time and current completely, so the identity above is an equality between dimensionless quantities on both sides. The same holds throughout: Reading A, the conversion fraction η, the compactness C, the spin parameter ã and charge q in units of the Schwarzschild radius, the partition fraction F and the effective charge q_eff are all ratios, and every radius is quoted as a multiple of r_s. No result here depends on a choice of units.

**The class this article carries the construction past.** The Propellant Law at the Matched Radius [9,9,0,18] establishes the level set f(r_match) = 1 − τ_A² for the static spherically symmetric class, the compactness criterion C > 2η and its metric-free form, the Reissner–Nordström pair with its partition fraction, the charge-for-shift identity, the charged criterion, and that the propellant law and the saving bounded by e carry no metric. It is that paper's own class statement — that the rotating metric lies outside it — that this article resolves into an instance.

**The radius the surface generalizes.** The Matched Radius [9,9,0,17] establishes r_match = r_s/τ_A² with the mass canceling, the dilation equivalence, the chain law, the Oberth multiplier Ob = √(1 + 2/τ_B), and the well worth τ_B = 1 — a mass ratio of e. Its specialist form at [9,9,0,17.1] carries the square-root torsion operator and the closure over ℚ.

**The two readings and the bridge.** One Corridor Across Exhaust Velocity, Mass Ratio and Nuclear Binding [9,9,2,0] establishes Reading A, Reading B, the bridge Δv = c · τ_A · τ_B, the conversion fraction τ_A² = 2η, and the relativistic gain cap. Every parent result used here is restated in full inside the Lean source rather than imported.

**The Schwarzschild radius as a Pattern threshold.** GR Reduction [9,9,0,1] maps the Einstein field equation onto the dynamic equation, with r_s = 2GM/c² as the Pattern-lock threshold. The compactness C = r_s/R is that threshold measured against a body's own radius, and the dimensionless spin ã = a/r_s is the body's rotation measured against the same threshold.

**The ceiling on Reading A.** Speed of Light [9,9,0,15] locks c to the anchor, places the photon as Noble, and carries relativistic velocity addition. Reading A's confinement to (0, 1) rests on it, and that confinement is what keeps every matched surface outside the static limit.

**The step the Torsion Limit takes.** Transcendental Time Engine [9,9,3,20] establishes that TL is the step the left side of the dynamic equation takes: a kinetic state carries F_ext one TL above the resting state. That is the kinetic term in the table above.

**The fusion logic.** The four-phase structure and the Torsion Limit come from GAMCollider™ v15 fusion logic, formalized in 8-Beam Fusion [9,9,2,3.8] and 4-Beam Verification [9,9,2,3.7].

**How the bounds are carried.** Every threshold here is stated as an exact quantity rather than a rounded decimal, following Bounded Uncertainty: A Guide [9,9,8,7]: a phase is certified only when the whole interval lies on one side of a boundary.

## The PNBA Map

| Primitive | In the rotating reading | Carried by |
|---|---|---|
| **Pattern** | The body, its Pattern-lock threshold and its rotation measured against that threshold | C = r_s/R, ã = a/r_s |
| **Narrative** | The surface the level set cuts out, and the latitude an approach is made at | g_tt = τ_A² − 1, θ |
| **Behavior** | What the drive throws, read against light speed | Reading A, τ_A = v_e/c |
| **Adaptation** | The mass ratio the vehicle adapts to, unchanged by the metric | Reading B, τ_B = ln(m₀/m_f) |

**The equatorial matched radius, at every spin.**

| a/r_s | equatorial r_match/r_s, corridor ceiling |
|---|---|
| 0 | 53.35791048082826539 |
| 0.1 | 53.35791048082826539 |
| 0.3 | 53.35791048082826539 |
| 0.5 | 53.35791048082826539 |

**The surface off the equator: oblate, closed form in θ.**

| a/r_s | polar r_match/r_s, ceiling | flattening against the equator |
|---|---|---|
| 0.1 | 53.35772306653 | −0.000351% |
| 0.3 | 53.35622370478 | −0.003161% |
| 0.5 | 53.35322472844 | −0.008782% |

**At Reading A = 1 the surface is the static limit surface.**

| cos θ | matched surface at τ_A = 1 | ergosphere | equal |
|---|---|---|---|
| 0 | 1.0 r_s | 1.0 r_s | yes |
| 0.5 | 0.933012701892219323 r_s | 0.933012701892219323 r_s | yes |
| 1 | 0.5 r_s | 0.5 r_s | yes |

**Escape and dilation, in quadrature at every latitude.**

| a/r_s | cos θ | (v_esc/c)² + (dilation)² at the ceiling matched radius |
|---|---|---|
| 0 | 0, 0.7, 1 | 1.000000000000000000000000000000 |
| 0.25 | 0, 0.7, 1 | 1.000000000000000000000000000000 |
| 0.5 | 0, 0.7, 1 | 1.000000000000000000000000000000 |

**Both readings return the identical surface.**

| a/r_s | cos θ | from the dilation | from the escape speed |
|---|---|---|---|
| 0.3 | 0 | 53.3579104808282653905997597690802785 | 53.3579104808282653905997597690802785 |
| 0.3 | 1 | 53.3562237047832070931015280228037670 | 53.3562237047832070931015280228037670 |
| 0.5 | 0 | 53.3579104808282653905997597690802785 | 53.3579104808282653905997597690802785 |
| 0.5 | 1 | 53.3532247284436167405804893741677811 | 53.3532247284436167405804893741677811 |

**The preferred approach plane.** The availability penalty grows as sin² of the latitude, at maximal spin and the corridor ceiling.

| Latitude | cos θ | F | threshold τ_A²/F | penalty against the equator |
|---|---|---|---|---|
| 0° | 0.000000 | 1.00000000000000000000 | 0.0187413635764336095714 | 0 |
| 30° | 0.500000 | 0.99997804709877612333 | 0.0187417750127692250140 | 0.0021953% |
| 60° | 0.866025 | 0.99993413840436820727 | 0.0187425979938437693594 | 0.0065866% |
| 90° | 1.000000 | 0.99991218261093015886 | 0.0187430095385946000770 | 0.0087825% |

**The criterion against the published catalog: no verdict changes.**

| Object | C = r_s/R | equatorial | polar, ã = ½ |
|---|---|---|---|
| the Sun | 4.245005 × 10⁻⁶ | no, 2.265 × 10⁻⁴ × | no, 2.265 × 10⁻⁴ × |
| white dwarf, 0.6 M☉ | 1.279742 × 10⁻³ | no, 0.06828 × | no, 0.06828 × |
| neutron star, 1.4 M☉ at 12 km | 0.344546 | **yes**, 18.38 × | **yes**, 18.38 × |
| black hole, any mass | 1 | **yes**, 53.36 × | **yes**, 53.35 × |

**Real rotating bodies.**

| Object | a/r_s | matched-surface flattening, ceiling |
|---|---|---|
| Crab pulsar, 30 Hz | 0.005463 | 0.0000011% |
| typical millisecond pulsar, 300 Hz | 0.054625 | 0.0001048% |
| PSR J1748−2446ad, 716 Hz — the fastest known | 0.130372 | 0.0005970% |
| near-extremal accreting black hole | 0.499 | 0.0087474% |

**The three appearances of the matched ratio.**

| Role | Value at the ceiling |
|---|---|
| The matched radius itself, r_match/r_s = 1/τ_A² | 53.35791048082826539 |
| The factor by which charge outweighs spin | 53.35791048082826539 |
| The margin of the matched discriminant over the horizon bound | 53.35791048082826539 |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in `SNSFL_MatchedSurface_Rotation_Reduction.lean` at 9,9,0,19, with 70 theorems and a master theorem across 918 lines. The file is standalone: every constant and definition it uses is restated inside it, including the whole Reissner–Nordström apparatus the rotating results are carried across, so it closes without reference to any other coordinate. Every threshold is computed in exact arithmetic from published constants, and the catalog figures are published mass, radius and rotation values a reader can repeat as a single division or a single standard formula. Nothing is fitted, and nothing is scaled.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.** This reduction closes on a level set of a published metric component and an inequality between dimensionless ratios. It supplies no composition, no stoichiometric balance and no energy figure of its own.

### What is established

The results in this article are real and testable. Every placement is algebra on a published metric or arithmetic on published quantities, and every one of them can be checked by anyone holding a standard reference and a calculator. Specifically:

**The level set is one line from the metric.** For a static observer the conserved energy relates to the locally measured energy by a single factor of √(−g_tt), and the escape condition is that the conserved energy reach rest energy. Everything in the quadrature and the general level set follows from those two facts and the signature.

**The effective-charge identification is an equality of coefficients.** The rotating quadratic and the charged quadratic are the same polynomial when q² = τ_A² ã² cos²θ. A reader who disagrees must disagree with one of the two metrics as published.

**The equatorial result is exact.** cos(π/2) = 0 removes the spin from the level set entirely, so the equatorial matched radius is r_s/τ_A² with no spin dependence of any order.

**The catalog arithmetic is reproducible.** The mass, radius and spin figures are published, and each compactness and each spin parameter above is a single division or a single standard formula a reader can repeat.

These are results about **placement, availability and budget, not about process.** That distinction is the whole of this section, and if a reader takes only one sentence from this article, that is the one to take.

### What is a different question

This article establishes where a drive's matched surface sits around a rotating body and whether that body admits one. It does not describe how to build, operate, fuel, contain, cool, shield, trigger or test any drive, and it contains no construction information, no process information, no operating parameters and no device design.

**A placement holds, and building to it is engineering.** A drive whose Reading A clears a body's compactness reaches that body's matched surface, and the inequality decides that exactly. Whether current hardware can produce the exhaust velocity, survive the radiation and tidal environment of a rotating compact object, hold attitude through a burn at that depth, or navigate to a specific latitude on a surface of revolution is a separate body of work carried by engineering and laboratory practice. The answer there is a statement about available technology, not about the level set. The two do not constrain each other: a placement that holds will go on holding whether or not a machine exists yet to use it.

**What the reader can compute from here is the reason the handling practice matters.** This article states its inputs and its algebra in full, and a reader with a standard metric reference can carry the same construction into quantities it does not tabulate — a matched surface for a spin this article does not list, a latitude penalty for an approach it does not work, a combined charged rotating surface for parameters of their own choosing. That is a property of complete work, and the handling practice below assumes a reader will do exactly that. Nothing in it rests on an omission.

**An exact surface is not a reduced hazard.** The exactness is why every remaining variable is process. A qualified practitioner — at an agency, a national laboratory, a university group, or a well-equipped independent bench — can work from a placement like this one safely, and it is stated at full precision so that they can. What the algebra does not carry is the state of the equipment in front of any particular reader, the scale they intend to work at, or the conditions their own environment imposes. Those are the variables the handling practice addresses.

### Where the risk actually lives

The risk in this domain belongs to **laboratory and engineering conditions and environmental F_ext** — the external forcing a real bench or a real vehicle applies that the algebra does not model. It does not belong to the mathematics, and no sentence in this article should be read as doubt about a result. The placements hold. What varies is the process, and process is where people get hurt.

**Hazard scales with which controls are present and with scale, not with the venue.** The relevant questions are whether there is containment rated for the energy density in play, whether there is shielding appropriate to the radiation, whether there is interlocking that fails safe, whether there is monitoring that reads out in real time, whether there is a trained second person present, and whether the quantity has been kept at the smallest scale that answers the question. A well-equipped independent facility that has those controls is not the concern. The underfunded shortcut is — the setup that reads an exact level set, infers that exactness removes the need for a control, and proceeds at a scale that leaves no margin.

**The controls are the variable, not the building.**

### Handling practice

The level set and the approach-plane penalty are algebra and carry no bench procedure of their own. Where they are used as inputs to engineering work, the practice that applies is the practice of that work:

**Anything touching exhaust velocity, propellant or the energy ladder.** The propulsion reduction's own handling practice applies in full, including its hazard groups and its scale discipline. The corridor's exhaust velocities are relativistic and the implied energy densities are the governing hazard.

**Anything touching mission or trajectory design.** Standard orbital-mechanics and mission-assurance practice applies. Readers carrying these results into trajectory work should take body parameters, including spin, from a current published source rather than from the tables above, which are representative figures for the purpose of exhibiting the structure.

**Which regime a result is stated in.** The level set, the escape–dilation quadrature and the matched surface rest on the full metric for static observers, exact wherever such an observer exists. The propellant law, the saving and the chain law are stated in the Newtonian energy regime with impulsive burns, which is the regime of published astrodynamics; a reader extending them into a finite-burn integration or a relativistic energy accounting works in that regime's own terms. The geodesic check is equatorial, and a reader carrying it off the equator works with the Carter constant.

**Scale discipline.** Answer the question at the smallest scale that answers it. An exact placement is a reason to reduce scale, not to increase it — a known target means the experiment can be small.

**Second-person presence.** Work that can injure is not solo work. The control that most reliably prevents a bad outcome from becoming a worse one is another trained person who can act.

**When the hazard group changes, update this section.** Any work that extends this reduction to materials, reactions or regimes not placed here carries the hazard groups of those, and the handling practice must be restated for them specifically before the work begins. A placement added without its hazard group is an incomplete placement.

### What this section is for

Parents, teachers, reviewers and program managers make real decisions from articles like this one. An article that reads as unreal gets no respect for its safety content, and a reader who concludes the results are notional will not extend the care the work requires. So: the results are real, the algebra is checkable, the placements hold — and the conditions under which anyone would act on them are governed by practice this article does not supply and does not replace.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Each law above is stated with its premises, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

- Kerr, R. P. (1963). Gravitational field of a spinning mass as an example of algebraically special metrics. *Physical Review Letters*, 11, 237–238.
- Boyer, R. H. & Lindquist, R. W. (1967). Maximal analytic extension of the Kerr metric. *Journal of Mathematical Physics*, 8, 265–281.
- Newman, E. T., Couch, E., Chinnapared, K., Exton, A., Prakash, A. & Torrence, R. (1965). Metric of a rotating, charged mass. *Journal of Mathematical Physics*, 6, 918–919.
- Bardeen, J. M., Press, W. H. & Teukolsky, S. A. (1972). Rotating black holes: locally nonrotating frames, energy extraction, and scalar synchrotron radiation. *Astrophysical Journal*, 178, 347–369.
- Penrose, R. (1969). Gravitational collapse: the role of general relativity. *Rivista del Nuovo Cimento*, 1, 252–276.
- Carter, B. (1968). Global structure of the Kerr family of gravitational fields. *Physical Review*, 174, 1559–1571.
- Schwarzschild, K. (1916). Über das Gravitationsfeld eines Massenpunktes nach der Einsteinschen Theorie. *Sitzungsberichte der Königlich Preußischen Akademie der Wissenschaften*, 189–196.
- Reissner, H. (1916). Über die Eigengravitation des elektrischen Feldes nach der Einsteinschen Theorie. *Annalen der Physik*, 50, 106–120.
- Nordström, G. (1918). On the energy of the gravitational field in Einstein's theory. *Koninklijke Nederlandse Akademie van Wetenschappen Proceedings*, 20, 1238–1245.
- Einstein, A. (1916). Die Grundlage der allgemeinen Relativitätstheorie. *Annalen der Physik*, 49, 769–822.
- Tsiolkovsky, K. E. (1903). Исследование мировых пространств реактивными приборами. *Nauchnoye Obozreniye*.
- Oberth, H. (1923). *Die Rakete zu den Planetenräumen*. R. Oldenbourg, Munich.
- Chandrasekhar, S. (1931). The maximum mass of ideal white dwarfs. *Astrophysical Journal*, 74, 81–82.
- Oppenheimer, J. R. & Volkoff, G. M. (1939). On massive neutron cores. *Physical Review*, 55, 374–381.
- Hessels, J. W. T., Ransom, S. M., Stairs, I. H., Freire, P. C. C., Kaspi, V. M. & Camilo, F. (2006). A radio pulsar spinning at 716 Hz. *Science*, 311, 1901–1904.
- Abbott, B. P. et al. (LIGO Scientific Collaboration and Virgo Collaboration) (2016). Observation of gravitational waves from a binary black hole merger. *Physical Review Letters*, 116, 061102.
- Prša, A. et al. (2016). Nominal values for selected solar and planetary quantities: IAU 2015 Resolution B3. *Astronomical Journal*, 152, 41.
- Bureau International des Poids et Mesures (2019). *The International System of Units (SI)*, 9th edition.
- Tiesinga, E., Mohr, P. J., Newell, D. B. & Taylor, B. N. (2021). CODATA recommended values of the fundamental physical constants: 2018. *Reviews of Modern Physics*, 93, 025010.
- Nobel Prize in Physics 1983 — S. Chandrasekhar and W. A. Fowler.
- Nobel Prize in Physics 2017 — R. Weiss, B. C. Barish and K. S. Thorne.
- Nobel Prize in Physics 2020 — R. Penrose; R. Genzel and A. Ghez.
- Trent, R. V. III. The Matched Radius: One Axis Carrying the Rocket Equation and the Schwarzschild Metric. ProofPress, Volume 1, Issue 9.
- Trent, R. V. III. The Propellant Law at the Matched Radius. ProofPress, Volume 1, Issue 9.
- Trent, R. V. III. One Corridor Across Exhaust Velocity, Mass Ratio and Nuclear Binding. ProofPress, Volume 1, Issue 9.
- Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Matched Surface Under Rotation — Spin as an Effective Charge and the Level Set g_tt = τ_A² − 1.* Zenodo, 2026. DOI 10.5281/zenodo.24062567.
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
- **[9,9,0,17]** Matched Radius Reduction, general-reader form — the matched radius, the equivalence, the phase map on radius, the well worth one e-fold
- **[9,9,0,17.1]** Matched Radius Reduction, specialist form — the square-root torsion operator and the closure over ℚ
- **[9,9,0,18]** Propellant Law and Compactness Reduction — the inversion, the saving bounded by e, the criterion, the level set, the Reissner–Nordström pair as a partition
- **[9,9,0,19]** This reduction — the level set g_tt = τ_A² − 1, spin as an effective charge, the matched surface under rotation

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska **DOI:** 10.5281/zenodo.18719748 **ORCID:** 0009-0005-5313-7443 **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_MatchedSurface_Rotation_Reduction.lean — [9,9,0,19](GRAV)

```lean
-- ============================================================
-- SNSFL_MatchedSurface_Rotation_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE MATCHED SURFACE UNDER ROTATION
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,19](GRAV) | Physics Ground — Gravitation
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, the conversion fraction, the
-- Schwarzschild radius, the matched ratio, the compactness and the whole
-- Reissner–Nordström apparatus are restated here at full precision, so that
-- a reader or a machine can close every proof without leaving the file. The
-- parent reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,0,18]   Propellant Law and Compactness — the level set, the criterion, the RN pair
--   [9,9,0,17]   Matched Radius Reduction       — r_match = r_s/τ_A², the mass canceling
--   [9,9,0,17.1] Matched Radius, specialist     — the square-root torsion operator
--   [9,9,2,0]    IVA Propulsion Reduction       — the two readings, the bridge, the gain cap
--   [9,9,0,1]    GR Reduction                   — r_s as the Pattern-lock threshold
--   [9,9,3,14]   Alpha Reduction                — α⁻¹ = Ω₀ × 100.1, TL = α⁻¹/1001
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   THE LEVEL SET IS THE TIME–TIME COMPONENT. For a static observer in any
--   stationary metric the locally measured escape fraction squared is
--   1 + g_tt and the dilation squared is −g_tt, so the two sum to one at
--   every point where such an observer exists, and the matched surface is
--
--       g_tt = τ_A² − 1
--
--   Spherical symmetry was sufficient for the parent's statement and was
--   never necessary; what is necessary is a static region. The rotating
--   metric has one everywhere outside its ergosphere, and every corridor
--   matched surface lies between 53 and 69 ergosphere radii clear of it.
--
--   SPIN IS AN EFFECTIVE CHARGE. Evaluated in the rotating metric the level
--   set is the quadratic τ_A² r² − r_s r + τ_A² a² cos²θ = 0, which is the
--   Reissner–Nordström quadratic under
--
--       q_eff = τ_A · ã · |cos θ|,    ã = a/r_s
--
--   so the root pair, the partition fraction, the partition and the charged
--   criterion all transfer with q replaced by q_eff. On the equator the
--   effective charge VANISHES, so the equatorial matched radius is exactly
--   the Schwarzschild matched radius at every spin. Off the equator the
--   surface is pinched toward the poles. At Reading A = 1 it is exactly the
--   ergosphere. Charge outweighs spin by exactly 1/τ_A² — the matched ratio
--   itself, which is also the margin by which the matched discriminant
--   clears the horizon-existence bound.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Exp

noncomputable section

namespace SNSFL_MatchedSurfaceRotation

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

/-- Reading A. The exhaust velocity against light speed. -/
def tau_A (w : ℝ) : ℝ := w / C_LIGHT

/-- The rest-mass conversion fraction: τ_A² = 2η. -/
def eta_of_tau (t : ℝ) : ℝ := t ^ 2 / 2

/-- The Schwarzschild radius of a body with gravitational parameter GM. -/
def r_s (GM : ℝ) : ℝ := 2 * GM / C_LIGHT ^ 2

/-- The matched radius in Schwarzschild units: 1/τ_A² = 1/(2η). -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

/-- The compactness of a body: its Schwarzschild radius over its radius. -/
def compactness (rs R : ℝ) : ℝ := rs / R

/-- The resonance gain acting as an exhaust-velocity multiplier. -/
def gained_tau (t g : ℝ) : ℝ := (1 + g) * t

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
-- α⁻¹ is a thousand bare steps plus one kinetic step.
theorem t5_bare_plus_kinetic :
    100 * SOVEREIGN_ANCHOR + TORSION_LIMIT = ALPHA_INV ∧
    1000 * TORSION_LIMIT + TORSION_LIMIT = ALPHA_INV := by
  constructor
  · simp only [SOVEREIGN_ANCHOR, TORSION_LIMIT, ALPHA_INV]; norm_num
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T6] :: {VER} | READING A SQUARED IS TWICE THE CONVERSION FRACTION
theorem t6_tau_sq_is_twice_eta (t : ℝ) : t ^ 2 = 2 * eta_of_tau t := by
  simp only [eta_of_tau]; ring

-- [T7] :: {VER} | THE MATCHED RATIO AT EACH CORRIDOR EDGE IS POSITIVE
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
-- SECTION 1: THE LEVEL SET IS THE TIME–TIME COMPONENT
-- For a static observer in any stationary metric: the escape
-- fraction squared is 1 + g_tt, the dilation squared is −g_tt,
-- and the matched surface is the level set g_tt = τ_A² − 1.
-- ============================================================

/-- The locally measured escape fraction squared, for a static observer. -/
def escape_sq (gtt : ℝ → ℝ) (r : ℝ) : ℝ := 1 + gtt r

/-- The gravitational dilation squared, for a static observer. -/
def dilation_sq (gtt : ℝ → ℝ) (r : ℝ) : ℝ := -(gtt r)

/-- The matched surface of a drive of Reading A t, in any stationary metric. -/
def matched_level (gtt : ℝ → ℝ) (t r : ℝ) : Prop := gtt r = t ^ 2 - 1

/-- The Schwarzschild time–time component. -/
def gtt_schwarzschild (rs : ℝ) : ℝ → ℝ := fun r => -(1 - rs / r)

/-- The Reissner–Nordström time–time component. -/
def gtt_rn (rs rQ : ℝ) : ℝ → ℝ := fun r => -(1 - rs / r + rQ ^ 2 / r ^ 2)

/-- The rotating metric's time–time component, with the polar angle entering
through cos θ. ρ² = r² + a² cos²θ. -/
def gtt_kerr (rs a cs : ℝ) : ℝ → ℝ :=
  fun r => -(1 - rs * r / (r ^ 2 + a ^ 2 * cs ^ 2))

/-- The charged rotating metric's time–time component. -/
def gtt_kn (rs a rQ cs : ℝ) : ℝ → ℝ :=
  fun r => -(1 - (rs * r - rQ ^ 2) / (r ^ 2 + a ^ 2 * cs ^ 2))

-- [T9] :: {INV} | THE QUADRATURE: ESCAPE AND DILATION SUM TO ONE
-- Holds at every point of every stationary metric where a static
-- observer exists. Nothing about symmetry enters.
theorem t9_quadrature (gtt : ℝ → ℝ) (r : ℝ) :
    escape_sq gtt r + dilation_sq gtt r = 1 := by
  simp only [escape_sq, dilation_sq]; ring

-- [T10] :: {INV} | THE MATCHED SURFACE IS THE LEVEL SET OF g_tt
theorem t10_level_set_form (gtt : ℝ → ℝ) (t r : ℝ) :
    matched_level gtt t r ↔ gtt r = t ^ 2 - 1 := Iff.rfl

-- [T11] :: {INV} | AT THE MATCHED SURFACE THE ESCAPE FRACTION SQUARED IS τ_A²
theorem t11_escape_at_matched (gtt : ℝ → ℝ) (t r : ℝ) (h : matched_level gtt t r) :
    escape_sq gtt r = t ^ 2 := by
  simp only [escape_sq, matched_level] at *
  rw [h]; ring

-- [T12] :: {INV} | AT THE MATCHED SURFACE THE DILATION SQUARED IS 1 − τ_A²
theorem t12_dilation_at_matched (gtt : ℝ → ℝ) (t r : ℝ) (h : matched_level gtt t r) :
    dilation_sq gtt r = 1 - t ^ 2 := by
  simp only [dilation_sq, matched_level] at *
  rw [h]; ring

-- [T13] :: {INV} | THE LEVEL SET ON THE CONVERSION FRACTION
theorem t13_level_set_on_eta (gtt : ℝ → ℝ) (t r : ℝ) :
    matched_level gtt t r ↔ gtt r = 2 * eta_of_tau t - 1 := by
  simp only [matched_level, eta_of_tau]
  constructor <;> intro h <;> linarith [h]

-- [T14] :: {INV} | THE ESCAPE FRACTION AT THE MATCHED SURFACE IS READING A
theorem t14_escape_fraction_is_reading_a (gtt : ℝ → ℝ) (t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level gtt t r) : Real.sqrt (escape_sq gtt r) = t := by
  rw [t11_escape_at_matched gtt t r h, Real.sqrt_sq ht]

-- [T15] :: {INV} | THE SCHWARZSCHILD INSTANCE
theorem t15_schwarzschild_instance (rs t r : ℝ) (hr : r ≠ 0) (ht : t ≠ 0) :
    matched_level (gtt_schwarzschild rs) t r ↔ r = rs / t ^ 2 := by
  simp only [matched_level, gtt_schwarzschild]
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  constructor
  · intro h
    have h1 : rs / r = t ^ 2 := by linarith
    rw [div_eq_iff hr] at h1
    rw [eq_div_iff ht2]
    linarith [h1]
  · intro h
    subst h
    have hrs : rs ≠ 0 := by
      intro h0
      rw [h0, zero_div] at hr
      exact hr rfl
    field_simp
    ring

-- [T16] :: {INV} | THE SCHWARZSCHILD MATCHED RADIUS IS THE MATCHED RATIO
theorem t16_schwarzschild_is_matched_ratio (t : ℝ) (ht : t ≠ 0) :
    (1:ℝ) / t ^ 2 = matched_ratio t := by
  simp only [matched_ratio]

-- ============================================================
-- SECTION 2: THE REISSNER–NORDSTRÖM APPARATUS
-- Restated in full, so the rotating results can be carried
-- across the effective-charge bridge of Section 4.
-- ============================================================

/-- The charge in units of the Schwarzschild radius. -/
def q_of (rs rQ : ℝ) : ℝ := rQ / rs

/-- The outer root of the charged matched condition, in units of r_s. -/
def rn_outer (q t : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / (2 * t ^ 2)

/-- The inner root of the charged matched condition, in units of r_s. -/
def rn_inner (q t : ℝ) : ℝ := (1 - Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / (2 * t ^ 2)

/-- The partition fraction: the outer root's share of the uncharged matched
radius. -/
def rn_factor (q t : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / 2

-- [T17] :: {VER} | THE CHARGED DISCRIMINANT IS NONNEGATIVE
theorem t17_rn_discriminant (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := by
  have hq2 : q ^ 2 ≤ 1 / 4 := by nlinarith
  have ht2 : t ^ 2 ≤ 1 := by nlinarith
  have hqn : (0:ℝ) ≤ 4 * q ^ 2 := by positivity
  nlinarith [hq2, ht2, hqn]

-- [T18] :: {INV} | BOTH CHARGED ROOTS SOLVE THE QUADRATIC
theorem t18_rn_roots_solve (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    t ^ 2 * rn_outer q t ^ 2 - rn_outer q t + q ^ 2 = 0 ∧
    t ^ 2 * rn_inner q t ^ 2 - rn_inner q t + q ^ 2 = 0 := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t17_rn_discriminant q t hq0 hq ht0 ht1
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_outer, rn_inner]
  set s := Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * q ^ 2 * t ^ 2 := Real.sq_sqrt hd
  constructor
  · field_simp
    linear_combination hs
  · field_simp
    linear_combination hs

-- [T19] :: {INV} | THE OUTER ROOT IS THE PARTITION FRACTION TIMES THE RATIO
theorem t19_rn_outer_factored (q t : ℝ) (ht : 0 < t) :
    rn_outer q t = matched_ratio t * rn_factor q t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_outer, rn_factor, matched_ratio]
  field_simp

-- [T20] :: {INV} | THE PAIR PARTITIONS THE UNCHARGED MATCHED RADIUS
theorem t20_rn_pair_partitions (q t : ℝ) (ht : 0 < t) :
    rn_outer q t + rn_inner q t = matched_ratio t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_outer, rn_inner, matched_ratio]
  field_simp
  ring

-- [T21] :: {INV} | THE PARTITION FRACTION IS AT MOST ONE
theorem t21_rn_factor_le_one (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) : rn_factor q t ≤ 1 := by
  have harg : (1:ℝ) - 4 * q ^ 2 * t ^ 2 ≤ 1 := by nlinarith [sq_nonneg (q * t)]
  have hle : Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) ≤ 1 := by
    calc Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) ≤ Real.sqrt 1 := Real.sqrt_le_sqrt harg
      _ = 1 := Real.sqrt_one
  simp only [rn_factor]
  linarith

-- [T22] :: {INV} | THE PARTITION FRACTION IS AT LEAST ONE HALF
theorem t22_rn_factor_ge_half (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) : 1/2 ≤ rn_factor q t := by
  have hsn : 0 ≤ Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) := Real.sqrt_nonneg _
  simp only [rn_factor]
  linarith

-- [T23] :: {INV} | THE CHARGE-FOR-SHIFT IDENTITY
theorem t23_charge_for_shift (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_factor q t * (1 - rn_factor q t) = q ^ 2 * t ^ 2 := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t17_rn_discriminant q t hq0 hq ht0 ht1
  simp only [rn_factor]
  set s := Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * q ^ 2 * t ^ 2 := Real.sq_sqrt hd
  linear_combination -hs / 4

-- [T24] :: {INV} | THE CHARGED AVAILABILITY CRITERION
theorem t24_charged_criterion (rs R q t : ℝ) (hR : 0 < R) (ht : 0 < t)
    (hF : 0 < rn_factor q t) :
    R < rs * rn_outer q t ↔ t ^ 2 / rn_factor q t < compactness rs R := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  simp only [compactness]
  rw [t19_rn_outer_factored q t ht]
  simp only [matched_ratio]
  rw [div_lt_div_iff₀ hF hR]
  have key : rs * (1 / t ^ 2 * rn_factor q t) = rs * rn_factor q t / t ^ 2 := by
    ring
  rw [key, lt_div_iff₀ ht2, mul_comm R (t ^ 2)]

-- ============================================================
-- SECTION 3: THE ROTATING METRIC
-- The level set evaluated in Boyer–Lindquist, with the polar
-- angle entering as a parameter through cos θ.
-- ============================================================

/-- The dimensionless spin, a/r_s. -/
def spin_ratio (rs a : ℝ) : ℝ := a / rs

/-- The outer root of the rotating matched condition, in units of r_s. -/
def kerr_outer (t atil cs : ℝ) : ℝ :=
  (1 + Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2)) / (2 * t ^ 2)

/-- The inner root of the rotating matched condition, in units of r_s. -/
def kerr_inner (t atil cs : ℝ) : ℝ :=
  (1 - Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2)) / (2 * t ^ 2)

/-- The rotating partition fraction. -/
def kerr_factor (t atil cs : ℝ) : ℝ :=
  (1 + Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2)) / 2

/-- The static limit surface, in units of r_s: the outer root of g_tt = 0. -/
def ergo_outer (atil cs : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * atil ^ 2 * cs ^ 2)) / 2

-- [T25] :: {INV} | ON THE EQUATOR THE ROTATING COMPONENT IS SCHWARZSCHILD'S
theorem t25_equatorial_is_schwarzschild (rs a r : ℝ) (hr : r ≠ 0) :
    gtt_kerr rs a 0 r = gtt_schwarzschild rs r := by
  simp only [gtt_kerr, gtt_schwarzschild]
  have h : r ^ 2 + a ^ 2 * (0:ℝ) ^ 2 = r ^ 2 := by ring
  have h2 : rs * r / r ^ 2 = rs / r := by
    rw [div_eq_div_iff (pow_ne_zero 2 hr) hr]
    ring
  rw [h, h2]

-- [T26] :: {INV} | THE ROTATING LEVEL SET IS A QUADRATIC IN THE RADIUS
theorem t26_kerr_quadratic (rs a cs t r : ℝ) (hrho : r ^ 2 + a ^ 2 * cs ^ 2 ≠ 0) :
    matched_level (gtt_kerr rs a cs) t r ↔
      t ^ 2 * r ^ 2 - rs * r + t ^ 2 * (a ^ 2 * cs ^ 2) = 0 := by
  simp only [matched_level, gtt_kerr]
  constructor
  · intro h
    have h1 : rs * r / (r ^ 2 + a ^ 2 * cs ^ 2) = t ^ 2 := by linarith
    rw [div_eq_iff hrho] at h1
    linarith [h1]
  · intro h
    have h2 : rs * r / (r ^ 2 + a ^ 2 * cs ^ 2) = t ^ 2 := by
      rw [div_eq_iff hrho]
      linarith
    linarith [h2]

-- [T27] :: {INV} | THE CHARGED ROTATING LEVEL SET CARRIES BOTH PARAMETERS
theorem t27_kn_quadratic (rs a rQ cs t r : ℝ) (hrho : r ^ 2 + a ^ 2 * cs ^ 2 ≠ 0) :
    matched_level (gtt_kn rs a rQ cs) t r ↔
      t ^ 2 * r ^ 2 - rs * r + (rQ ^ 2 + t ^ 2 * (a ^ 2 * cs ^ 2)) = 0 := by
  simp only [matched_level, gtt_kn]
  constructor
  · intro h
    have h1 : (rs * r - rQ ^ 2) / (r ^ 2 + a ^ 2 * cs ^ 2) = t ^ 2 := by linarith
    rw [div_eq_iff hrho] at h1
    linarith [h1]
  · intro h
    have h2 : (rs * r - rQ ^ 2) / (r ^ 2 + a ^ 2 * cs ^ 2) = t ^ 2 := by
      rw [div_eq_iff hrho]
      linarith
    linarith [h2]

-- ============================================================
-- SECTION 4: SPIN AS AN EFFECTIVE CHARGE
-- The bridge. Everything Section 2 proves transfers.
-- ============================================================

/-- The effective charge of rotation: q_eff = τ_A · ã · |cos θ|. -/
def q_eff (t atil cs : ℝ) : ℝ := t * atil * |cs|

/-- The combined effective charge of the charged rotating metric. -/
def q_eff_kn (q t atil cs : ℝ) : ℝ := Real.sqrt (q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2)

-- [T28] :: {INV} | THE EFFECTIVE CHARGE SQUARED
theorem t28_q_eff_sq (t atil cs : ℝ) :
    q_eff t atil cs ^ 2 = t ^ 2 * atil ^ 2 * cs ^ 2 := by
  simp only [q_eff]
  rw [mul_pow, mul_pow, sq_abs]

-- [T29] :: {INV} | THE EFFECTIVE CHARGE IS NONNEGATIVE ON THE PHYSICAL RANGE
theorem t29_q_eff_nonneg (t atil cs : ℝ) (ht : 0 ≤ t) (ha : 0 ≤ atil) :
    0 ≤ q_eff t atil cs := by
  simp only [q_eff]
  exact mul_nonneg (mul_nonneg ht ha) (abs_nonneg cs)

-- [T30] :: {INV} | THE TWO DISCRIMINANTS AGREE UNDER THE SUBSTITUTION
theorem t30_discriminants_agree (t atil cs : ℝ) :
    1 - 4 * q_eff t atil cs ^ 2 * t ^ 2 = 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 := by
  rw [t28_q_eff_sq]; ring

-- [T31] :: {MASTER} | THE BRIDGE: THE ROTATING ROOT IS THE CHARGED ROOT
theorem t31_kerr_is_rn (t atil cs : ℝ) :
    kerr_outer t atil cs = rn_outer (q_eff t atil cs) t ∧
    kerr_inner t atil cs = rn_inner (q_eff t atil cs) t ∧
    kerr_factor t atil cs = rn_factor (q_eff t atil cs) t := by
  have h := t30_discriminants_agree t atil cs
  refine ⟨?_, ?_, ?_⟩
  · simp only [kerr_outer, rn_outer]; rw [h]
  · simp only [kerr_inner, rn_inner]; rw [h]
  · simp only [kerr_factor, rn_factor]; rw [h]

-- [T32] :: {INV} | ON THE EQUATOR THE EFFECTIVE CHARGE VANISHES
theorem t32_equatorial_q_eff_zero (t atil : ℝ) : q_eff t atil 0 = 0 := by
  simp only [q_eff, abs_zero, mul_zero]

-- [T33] :: {MASTER} | THE EQUATORIAL MATCHED RADIUS IS SPIN-INDEPENDENT
-- It is exactly the Schwarzschild matched radius, at every spin.
theorem t33_equatorial_spin_blind (t atil : ℝ) (ht : t ≠ 0) :
    kerr_outer t atil 0 = matched_ratio t := by
  simp only [kerr_outer, matched_ratio]
  have h : 1 - 4 * t ^ 4 * atil ^ 2 * (0:ℝ) ^ 2 = 1 := by ring
  rw [h, Real.sqrt_one]
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp
  norm_num

-- [T34] :: {INV} | THE EQUATORIAL RESULT HOLDS FOR EVERY SPIN AT ONCE
theorem t34_equatorial_all_spins (t : ℝ) (ht : t ≠ 0) :
    ∀ atil : ℝ, kerr_outer t atil 0 = matched_ratio t :=
  fun atil => t33_equatorial_spin_blind t atil ht

-- [T35] :: {INV} | THE ROTATING PARTITION FRACTION IS ONE ON THE EQUATOR
theorem t35_kerr_factor_equatorial (t atil : ℝ) : kerr_factor t atil 0 = 1 := by
  simp only [kerr_factor]
  have h : 1 - 4 * t ^ 4 * atil ^ 2 * (0:ℝ) ^ 2 = 1 := by ring
  rw [h, Real.sqrt_one]; norm_num

-- [T36] :: {INV} | THE ROTATING OUTER ROOT IS THE FRACTION TIMES THE RATIO
theorem t36_kerr_outer_factored (t atil cs : ℝ) (ht : 0 < t) :
    kerr_outer t atil cs = matched_ratio t * kerr_factor t atil cs := by
  obtain ⟨h1, _, h3⟩ := t31_kerr_is_rn t atil cs
  rw [h1, h3]
  exact t19_rn_outer_factored (q_eff t atil cs) t ht

-- [T37] :: {MASTER} | THE ROTATING PAIR PARTITIONS THE MATCHED RADIUS
theorem t37_kerr_pair_partitions (t atil cs : ℝ) (ht : 0 < t) :
    kerr_outer t atil cs + kerr_inner t atil cs = matched_ratio t := by
  obtain ⟨h1, h2, _⟩ := t31_kerr_is_rn t atil cs
  rw [h1, h2]
  exact t20_rn_pair_partitions (q_eff t atil cs) t ht

-- [T38] :: {MASTER} | THE PAIR MULTIPLIES TO ã² cos²θ, READING A CANCELING
theorem t38_kerr_pair_product (t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    kerr_outer t atil cs * kerr_inner t atil cs = atil ^ 2 * cs ^ 2 := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [kerr_outer, kerr_inner]
  set s := Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 := Real.sq_sqrt hd
  field_simp
  linear_combination -hs

-- [T39] :: {INV} | THE ROTATING CHARGE-FOR-SHIFT IDENTITY
theorem t39_kerr_charge_for_shift (t atil cs : ℝ)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    kerr_factor t atil cs * (1 - kerr_factor t atil cs)
      = t ^ 4 * atil ^ 2 * cs ^ 2 := by
  simp only [kerr_factor]
  set s := Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 := Real.sq_sqrt hd
  linear_combination -hs / 4

-- [T40] :: {INV} | THE INNER ROOT IS THE COMPLEMENTARY SHARE
theorem t40_kerr_inner_share (t atil cs : ℝ) (ht : 0 < t) :
    kerr_inner t atil cs = (1 - kerr_factor t atil cs) * matched_ratio t := by
  have hsum := t37_kerr_pair_partitions t atil cs ht
  have houter := t36_kerr_outer_factored t atil cs ht
  have h : kerr_inner t atil cs = matched_ratio t - kerr_outer t atil cs := by
    linarith
  rw [h, houter]; ring

-- ============================================================
-- SECTION 5: THE SHAPE OF THE SURFACE
-- Oblate, with a closed form in the polar angle.
-- ============================================================

-- [T41] :: {INV} | THE ROTATING DISCRIMINANT IS NONNEGATIVE
theorem t41_kerr_discriminant (t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (ha0 : 0 ≤ atil) (ha : atil ≤ 1/2) (hc : cs ^ 2 ≤ 1) :
    0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 := by
  have ha2 : atil ^ 2 ≤ 1 / 4 := by nlinarith
  have ht2 : t ^ 2 ≤ 1 := by nlinarith
  have ht4 : t ^ 4 ≤ 1 := by nlinarith
  have hinner : t ^ 4 * atil ^ 2 ≤ 1 * (1/4) :=
    mul_le_mul ht4 ha2 (sq_nonneg atil) (by norm_num)
  have houter : t ^ 4 * atil ^ 2 * cs ^ 2 ≤ 1 * (1/4) * 1 :=
    mul_le_mul hinner hc (sq_nonneg cs) (by norm_num)
  linarith

-- [T42] :: {INV} | THE SURFACE IS ANTITONE IN cos²θ — OBLATE
theorem t42_oblate (t atil c1 c2 : ℝ) (ht : 0 < t)
    (hd2 : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * c2 ^ 2)
    (h : c1 ^ 2 < c2 ^ 2) (hat : 0 < t ^ 4 * atil ^ 2) :
    kerr_outer t atil c2 < kerr_outer t atil c1 := by
  have ht2 : (0:ℝ) < 2 * t ^ 2 := by positivity
  have harg : 1 - 4 * t ^ 4 * atil ^ 2 * c2 ^ 2 < 1 - 4 * t ^ 4 * atil ^ 2 * c1 ^ 2 := by
    nlinarith [mul_pos hat (sub_pos.mpr h)]
  have hs : Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * c2 ^ 2)
          < Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * c1 ^ 2) :=
    Real.sqrt_lt_sqrt hd2 harg
  simp only [kerr_outer]
  rw [div_lt_div_iff₀ ht2 ht2]
  nlinarith [hs, ht2]

-- [T43] :: {INV} | THE POLAR RADIUS IS AT MOST THE EQUATORIAL RADIUS
theorem t43_polar_le_equatorial (t atil cs : ℝ) (ht : 0 < t)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    kerr_outer t atil cs ≤ matched_ratio t := by
  have ht2 : (0:ℝ) < 2 * t ^ 2 := by positivity
  have harg : (1:ℝ) - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 ≤ 1 := by
    nlinarith [sq_nonneg (t ^ 2 * atil * cs)]
  have hle : Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) ≤ 1 := by
    calc Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) ≤ Real.sqrt 1 :=
          Real.sqrt_le_sqrt harg
      _ = 1 := Real.sqrt_one
  have ht2' : (0:ℝ) < t ^ 2 := by positivity
  simp only [kerr_outer, matched_ratio]
  rw [div_le_div_iff₀ ht2 ht2']
  nlinarith [hle, ht2']

-- [T44] :: {INV} | THE ROTATING PARTITION FRACTION IS AT MOST ONE
theorem t44_kerr_factor_le_one (t atil cs : ℝ)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    kerr_factor t atil cs ≤ 1 := by
  have harg : (1:ℝ) - 4 * t ^ 4 * atil ^ 2 * cs ^ 2 ≤ 1 := by
    nlinarith [sq_nonneg (t ^ 2 * atil * cs)]
  have hle : Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) ≤ 1 := by
    calc Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) ≤ Real.sqrt 1 :=
          Real.sqrt_le_sqrt harg
      _ = 1 := Real.sqrt_one
  simp only [kerr_factor]
  linarith

-- [T45] :: {INV} | THE ROTATING PARTITION FRACTION IS POSITIVE
theorem t45_kerr_factor_pos (t atil cs : ℝ) : 0 < kerr_factor t atil cs := by
  have hsn : 0 ≤ Real.sqrt (1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) := Real.sqrt_nonneg _
  simp only [kerr_factor]
  linarith

-- ============================================================
-- SECTION 6: READING A = 1 AND THE STATIC LIMIT SURFACE
-- ============================================================

-- [T46] :: {MASTER} | AT READING A = 1 THE MATCHED SURFACE IS THE ERGOSPHERE
theorem t46_cap_is_ergosphere (atil cs : ℝ) :
    kerr_outer 1 atil cs = ergo_outer atil cs := by
  simp only [kerr_outer, ergo_outer]
  have h : 1 - 4 * (1:ℝ) ^ 4 * atil ^ 2 * cs ^ 2 = 1 - 4 * atil ^ 2 * cs ^ 2 := by
    ring
  rw [h]
  norm_num

-- [T47] :: {INV} | ON THE EQUATOR THE STATIC LIMIT IS THE SCHWARZSCHILD RADIUS
theorem t47_ergo_equatorial (atil : ℝ) : ergo_outer atil 0 = 1 := by
  simp only [ergo_outer]
  have h : 1 - 4 * atil ^ 2 * (0:ℝ) ^ 2 = 1 := by ring
  rw [h, Real.sqrt_one]; norm_num

-- [T48] :: {INV} | AT EXTREMAL SPIN THE POLAR STATIC LIMIT IS THE HORIZON
theorem t48_ergo_polar_extremal : ergo_outer (1/2) 1 = 1/2 := by
  simp only [ergo_outer]
  have h : 1 - 4 * ((1:ℝ)/2) ^ 2 * (1:ℝ) ^ 2 = 0 := by norm_num
  rw [h, Real.sqrt_zero]; norm_num

-- [T49] :: {INV} | THE SCHWARZSCHILD CAP IS THE HORIZON
theorem t49_schwarzschild_cap_is_horizon : matched_ratio 1 = 1 := by
  simp only [matched_ratio]; norm_num

-- [T50] :: {INV} | BELOW THE CAP THE MATCHED SURFACE IS OUTSIDE THE STATIC LIMIT
theorem t50_matched_outside_ergosphere (t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) (he : ergo_outer atil cs ≤ 1) :
    ergo_outer atil cs ≤ matched_ratio t := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have hlt : t ^ 2 < 1 := by nlinarith
  have : (1:ℝ) < matched_ratio t := by
    simp only [matched_ratio]
    rw [lt_div_iff₀ ht2]
    linarith
  linarith

-- ============================================================
-- SECTION 7: ROTATION AGAINST CHARGE, AND THE MATCHED RATIO
-- ============================================================

-- [T51] :: {MASTER} | CHARGE OUTWEIGHS SPIN BY EXACTLY THE MATCHED RATIO
-- Give the charge parameter and the spin parameter the same value. The
-- ratio of their contributions to the effective charge squared is 1/τ_A²,
-- which is the matched ratio itself.
theorem t51_charge_outweighs_spin (t v : ℝ) (ht : t ≠ 0) (hv : v ≠ 0) :
    v ^ 2 / (t ^ 2 * v ^ 2 * 1 ^ 2) = matched_ratio t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  have hv2 : (v:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 hv
  simp only [matched_ratio]
  field_simp

-- [T52] :: {INV} | THE COMBINED EFFECTIVE CHARGE OF THE CHARGED ROTATING METRIC
theorem t52_kn_effective_charge (q t atil cs : ℝ)
    (h : 0 ≤ q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2) :
    q_eff_kn q t atil cs ^ 2 = q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2 := by
  simp only [q_eff_kn]
  exact Real.sq_sqrt h

-- [T53] :: {INV} | CHARGE ENTERS UNWEIGHTED, SPIN WEIGHTED BY READING A SQUARED
theorem t53_weighting_asymmetry (q t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (ha : atil ≠ 0) (hc : cs ^ 2 = 1) (hq : q = atil) :
    t ^ 2 * atil ^ 2 * cs ^ 2 < q ^ 2 := by
  rw [hq, hc, mul_one]
  have ha2 : (0:ℝ) < atil ^ 2 :=
    lt_of_le_of_ne (sq_nonneg atil) (Ne.symm (pow_ne_zero 2 ha))
  have htl : t ^ 2 < 1 := by nlinarith
  nlinarith [mul_pos ha2 (sub_pos.mpr htl)]

-- [T54] :: {MASTER} | THE MATCHED DISCRIMINANT CLEARS ITS BOUND BY THE RATIO
-- Over the physical range the quantity bounded by 1/4 is at most τ_A²/4,
-- so the margin is 1/τ_A² — the matched ratio, in a third role.
theorem t54_discriminant_margin (q t atil cs : ℝ) (ht0 : 0 < t) (ht1 : t < 1)
    (hq0 : 0 ≤ q) (ha0 : 0 ≤ atil) (hbudget : atil ^ 2 + q ^ 2 ≤ 1/4)
    (hc : cs ^ 2 ≤ 1) :
    (q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2) * t ^ 2 ≤ t ^ 2 / 4 := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have htl : t ^ 2 < 1 := by nlinarith
  have hts : t ^ 2 * cs ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg (sq_nonneg cs) (sub_nonneg.mpr htl.le)]
  have h1 : t ^ 2 * atil ^ 2 * cs ^ 2 ≤ atil ^ 2 := by
    nlinarith [mul_nonneg (sq_nonneg atil) (sub_nonneg.mpr hts)]
  have h2 : q ^ 2 + t ^ 2 * atil ^ 2 * cs ^ 2 ≤ 1/4 := by linarith
  nlinarith [h2, ht2]

-- [T55] :: {INV} | THE MARGIN IS THE MATCHED RATIO
theorem t55_margin_is_matched_ratio (t : ℝ) (ht : t ≠ 0) :
    (1/4 : ℝ) / (t ^ 2 / 4) = matched_ratio t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  simp only [matched_ratio]
  field_simp

-- ============================================================
-- SECTION 8: AVAILABILITY UNDER ROTATION
-- ============================================================

-- [T56] :: {INV} | THE CRITERION WITHOUT A METRIC
theorem t56_criterion_metric_free (rs R rmatch : ℝ) (hrs : 0 < rs) (hR : 0 < R)
    (hrm : 0 < rmatch) :
    R < rmatch ↔ rs / rmatch < compactness rs R := by
  simp only [compactness]
  rw [div_lt_div_iff₀ hrm hR]
  constructor
  · intro h; nlinarith [hrs, h]
  · intro h; nlinarith [hrs, h]

-- [T57] :: {INV} | THE SCHWARZSCHILD THRESHOLD IS READING A SQUARED
theorem t57_metric_free_recovers_tau_sq (rs t : ℝ) (hrs : rs ≠ 0) (ht : t ≠ 0) :
    rs / (rs * matched_ratio t) = t ^ 2 := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  simp only [matched_ratio]
  field_simp

-- [T58] :: {MASTER} | THE ROTATING AVAILABILITY CRITERION
theorem t58_rotating_criterion (rs R t atil cs : ℝ) (hR : 0 < R) (ht : 0 < t) :
    R < rs * kerr_outer t atil cs ↔
      t ^ 2 / kerr_factor t atil cs < compactness rs R := by
  obtain ⟨h1, _, h3⟩ := t31_kerr_is_rn t atil cs
  rw [h1, h3]
  exact t24_charged_criterion rs R (q_eff t atil cs) t hR ht
    (by rw [← h3]; exact t45_kerr_factor_pos t atil cs)

-- [T59] :: {MASTER} | THE EQUATORIAL CRITERION IS SPIN-FREE
theorem t59_equatorial_criterion (rs R t atil : ℝ) (hR : 0 < R) (ht : 0 < t) :
    R < rs * kerr_outer t atil 0 ↔ t ^ 2 < compactness rs R := by
  rw [t58_rotating_criterion rs R t atil 0 hR ht, t35_kerr_factor_equatorial, div_one]

-- [T60] :: {INV} | ROTATION TIGHTENS AVAILABILITY, NEVER LOOSENS IT
theorem t60_rotation_tightens (t atil cs : ℝ) (ht : 0 < t)
    (hd : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * cs ^ 2) :
    t ^ 2 ≤ t ^ 2 / kerr_factor t atil cs := by
  have hF := t45_kerr_factor_pos t atil cs
  have hle := t44_kerr_factor_le_one t atil cs hd
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  rw [le_div_iff₀ hF]
  nlinarith [ht2, hle]

-- [T61] :: {INV} | THE PENALTY IS MONOTONE IN cos²θ
theorem t61_penalty_monotone (t atil c1 c2 : ℝ) (ht : 0 < t)
    (hd2 : 0 ≤ 1 - 4 * t ^ 4 * atil ^ 2 * c2 ^ 2)
    (hlt : kerr_factor t atil c2 < kerr_factor t atil c1) :
    t ^ 2 / kerr_factor t atil c1 < t ^ 2 / kerr_factor t atil c2 := by
  have h2 := t45_kerr_factor_pos t atil c2
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  exact div_lt_div_of_pos_left ht2 h2 hlt

-- [T62] :: {INV} | THE GAIN ENTERS THROUGH READING A, QUADRATICALLY
theorem t62_gain_requirement_quadratic (t g : ℝ) :
    gained_tau t g ^ 2 = (1 + g) ^ 2 * t ^ 2 := by
  simp only [gained_tau]; ring

-- [T63] :: {INV} | A LARGER GAIN TIGHTENS THE REQUIREMENT
theorem t63_gain_tightens (t g₁ g₂ : ℝ) (ht : 0 < t) (h0 : 0 ≤ g₁) (h : g₁ < g₂) :
    gained_tau t g₁ ^ 2 < gained_tau t g₂ ^ 2 := by
  simp only [gained_tau]
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have h1 : (0:ℝ) < 1 + g₁ := by linarith
  have hsq : (1 + g₁) ^ 2 < (1 + g₂) ^ 2 := by nlinarith
  calc ((1 + g₁) * t) ^ 2 = (1 + g₁) ^ 2 * t ^ 2 := by ring
    _ < (1 + g₂) ^ 2 * t ^ 2 := mul_lt_mul_of_pos_right hsq ht2
    _ = ((1 + g₂) * t) ^ 2 := by ring

-- ============================================================
-- SECTION 9: THE BUDGET CARRIES NO METRIC
-- ============================================================

-- [T64] :: {MASTER} | THE ESCAPE FRACTION AT ANY MATCHED SURFACE IS READING A
-- This is T14 restated as the statement that the propellant budget sees no
-- metric: the equality that the Oberth multiplier, the propellant law and
-- the saving are built on holds in every stationary metric at once.
theorem t64_budget_sees_no_metric (gtt : ℝ → ℝ) (t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level gtt t r) : Real.sqrt (escape_sq gtt r) = t :=
  t14_escape_fraction_is_reading_a gtt t r ht h

-- [T65] :: {INV} | THE ROTATING INSTANCE OF THE BUDGET STATEMENT
theorem t65_budget_rotating (rs a cs t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level (gtt_kerr rs a cs) t r) :
    Real.sqrt (escape_sq (gtt_kerr rs a cs) r) = t :=
  t64_budget_sees_no_metric (gtt_kerr rs a cs) t r ht h

-- [T66] :: {INV} | THE CHARGED ROTATING INSTANCE
theorem t66_budget_charged_rotating (rs a rQ cs t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level (gtt_kn rs a rQ cs) t r) :
    Real.sqrt (escape_sq (gtt_kn rs a rQ cs) r) = t :=
  t64_budget_sees_no_metric (gtt_kn rs a rQ cs) t r ht h

-- [T67] :: {INV} | THE CHARGED INSTANCE
theorem t67_budget_charged (rs rQ t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level (gtt_rn rs rQ) t r) :
    Real.sqrt (escape_sq (gtt_rn rs rQ) r) = t :=
  t64_budget_sees_no_metric (gtt_rn rs rQ) t r ht h

-- [T68] :: {INV} | THE SCHWARZSCHILD INSTANCE
theorem t68_budget_schwarzschild (rs t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level (gtt_schwarzschild rs) t r) :
    Real.sqrt (escape_sq (gtt_schwarzschild rs) r) = t :=
  t64_budget_sees_no_metric (gtt_schwarzschild rs) t r ht h

-- [T69] :: {INV} | THE DILATION AT ANY MATCHED SURFACE IS √(1 − 2η)
theorem t69_dilation_at_matched_on_eta (gtt : ℝ → ℝ) (t r : ℝ)
    (h : matched_level gtt t r) :
    dilation_sq gtt r = 1 - 2 * eta_of_tau t := by
  rw [t12_dilation_at_matched gtt t r h]
  simp only [eta_of_tau]; ring

-- [T70] :: {INV} | THE PHASE OF THE DIMENSIONLESS SPIN IS WELL DEFINED
-- The phase map applies to any dimensionless ratio, and the spin is one.
theorem t70_spin_classifies (atil : ℝ) (h0 : 0 < atil) (h1 : atil < TL_IVA) :
    classify atil = Phase.Locked := by
  unfold classify
  rw [if_neg (ne_of_gt h0), if_pos h1]

-- ============================================================
-- MASTER
-- ============================================================

theorem MASTER_matched_surface_rotation :
    -- the quadrature, at every point of every stationary metric
    (∀ (gtt : ℝ → ℝ) (r : ℝ), escape_sq gtt r + dilation_sq gtt r = 1) ∧
    -- the matched surface is the level set of the time–time component
    (∀ (gtt : ℝ → ℝ) (t r : ℝ), matched_level gtt t r ↔ gtt r = t ^ 2 - 1) ∧
    (∀ (gtt : ℝ → ℝ) (t r : ℝ), matched_level gtt t r ↔
      gtt r = 2 * eta_of_tau t - 1) ∧
    -- and the escape fraction there is Reading A, so the budget sees no metric
    (∀ (gtt : ℝ → ℝ) (t r : ℝ), 0 ≤ t → matched_level gtt t r →
      Real.sqrt (escape_sq gtt r) = t) ∧
    -- on the equator the rotating component is Schwarzschild's
    (∀ rs a r : ℝ, r ≠ 0 → gtt_kerr rs a 0 r = gtt_schwarzschild rs r) ∧
    -- the rotating level set is a quadratic in the radius
    (∀ rs a cs t r : ℝ, r ^ 2 + a ^ 2 * cs ^ 2 ≠ 0 →
      (matched_level (gtt_kerr rs a cs) t r ↔
        t ^ 2 * r ^ 2 - rs * r + t ^ 2 * (a ^ 2 * cs ^ 2) = 0)) ∧
    -- spin is an effective charge, and the whole charged apparatus transfers
    (∀ t atil cs : ℝ, q_eff t atil cs ^ 2 = t ^ 2 * atil ^ 2 * cs ^ 2) ∧
    (∀ t atil cs : ℝ, kerr_outer t atil cs = rn_outer (q_eff t atil cs) t) ∧
    -- the equatorial matched radius is spin-independent, exactly
    (∀ t atil : ℝ, t ≠ 0 → kerr_outer t atil 0 = matched_ratio t) ∧
    -- the pair partitions the uncharged matched radius at every spin
    (∀ t atil cs : ℝ, 0 < t →
      kerr_outer t atil cs + kerr_inner t atil cs = matched_ratio t) ∧
    -- at Reading A = 1 the matched surface is the static limit surface
    (∀ atil cs : ℝ, kerr_outer 1 atil cs = ergo_outer atil cs) ∧
    -- charge outweighs spin by the matched ratio, which is also the
    -- margin by which the matched discriminant clears its bound
    (∀ t v : ℝ, t ≠ 0 → v ≠ 0 →
      v ^ 2 / (t ^ 2 * v ^ 2 * 1 ^ 2) = matched_ratio t) ∧
    (∀ t : ℝ, t ≠ 0 → (1/4 : ℝ) / (t ^ 2 / 4) = matched_ratio t) ∧
    -- availability: the criterion without a metric, under rotation, and
    -- on the equator where the spin drops out
    (∀ rs R rmatch : ℝ, 0 < rs → 0 < R → 0 < rmatch →
      (R < rmatch ↔ rs / rmatch < compactness rs R)) ∧
    (∀ rs R t atil cs : ℝ, 0 < R → 0 < t →
      (R < rs * kerr_outer t atil cs ↔
        t ^ 2 / kerr_factor t atil cs < compactness rs R)) ∧
    (∀ rs R t atil : ℝ, 0 < R → 0 < t →
      (R < rs * kerr_outer t atil 0 ↔ t ^ 2 < compactness rs R)) := by
  refine ⟨t9_quadrature, t10_level_set_form, t13_level_set_on_eta,
    fun gtt t r ht h => t64_budget_sees_no_metric gtt t r ht h,
    fun rs a r hr => t25_equatorial_is_schwarzschild rs a r hr,
    fun rs a cs t r hrho => t26_kerr_quadratic rs a cs t r hrho,
    t28_q_eff_sq,
    fun t atil cs => (t31_kerr_is_rn t atil cs).1,
    fun t atil ht => t33_equatorial_spin_blind t atil ht,
    fun t atil cs ht => t37_kerr_pair_partitions t atil cs ht,
    t46_cap_is_ergosphere,
    fun t v ht hv => t51_charge_outweighs_spin t v ht hv,
    fun t ht => t55_margin_is_matched_ratio t ht,
    fun rs R rmatch hrs hR hrm => t56_criterion_metric_free rs R rmatch hrs hR hrm,
    fun rs R t atil cs hR ht => t58_rotating_criterion rs R t atil cs hR ht,
    fun rs R t atil hR ht => t59_equatorial_criterion rs R t atil hR ht⟩

end SNSFL_MatchedSurfaceRotation

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that the matched surface is a level set of the
-- time–time component of the metric, g_tt = τ_A² − 1, for a static observer
-- in any stationary metric: the escape fraction squared is 1 + g_tt, the
-- dilation squared is −g_tt, and the two sum to one wherever such an
-- observer exists. Spherical symmetry is sufficient for that statement and
-- is not necessary. Evaluated in the rotating metric the level set is a
-- quadratic in the radius with the polar angle as a parameter, and it is the
-- Reissner–Nordström quadratic under the effective charge
-- q_eff = τ_A · ã · |cos θ| — so the root pair, the partition fraction, the
-- partition and the charged criterion all carry across. On the equator the
-- effective charge vanishes and the matched radius is exactly the
-- Schwarzschild matched radius at every spin; at Reading A = 1 the matched
-- surface is exactly the static limit surface; and charge outweighs spin by
-- exactly 1/τ_A², which is the matched ratio itself and is also the margin
-- by which the matched discriminant clears the horizon-existence bound.
--
-- THEOREMS : 70 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
```
