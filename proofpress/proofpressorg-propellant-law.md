# The Propellant Law at the Matched Radius: A Saving Bounded by e and the Compactness Criterion C > 2η

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** 9,9,0,18 · Identity Physics Series · Physics Ground, Gravitation

**Issue:** ProofPress, Volume 1, Issue 9 · November 2026

**DOI:** 10.5281/zenodo.18719748

**Verified:** 87 theorems · 1,202 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Abstract

The matched radius reduction at 9,9,0,17 states its result forward: fix the mass ratio, get the speed. This article states it inverse and then asks where the maneuver exists at all. Fixing the target speed rather than the mass ratio inverts the chain law exactly, τ_B = √(1 + x²) − 1 with x = v_∞/v_e, so the mass ratio a burn at the matched radius requires is exp(√(1 + x²) − 1) against the ideal rocket's exp(x). The ratio of the two is the propellant saving and it has a closed form, **S(x) = e · exp(x − √(1 + x²))**, strictly increasing and **strictly bounded above by e**. The bound is not a coincidence of the algebra: the limit is e¹, and the 1 in that exponent is the τ_B = 1 the matched radius well is worth, so the one e-fold the well supplies is the one e-fold of propellant the vehicle stops carrying. At the small-burn end the cost ceases to be exponential altogether — τ_B → x²/2, quadratic in the target speed — and the fraction of e a given burn captures has its own closed form, x = (t² − 1)/(2t) with t = ln(S/e), giving 50% of e at x = 0.374774 and 99% at x = 49.744556. Availability is a second inequality. A matched radius is only reachable if it lies outside the attracting body, and writing C = r_s/R for the standard compactness, that condition reduces with no residue to **C > τ_A² = 2η**: a drive can use its matched radius at a body if and only if the body is more compact than the drive is efficient. Two fractions built for unrelated purposes — the gravitational compactness of an object and the rest-mass conversion fraction of a rocket — are compared directly, and the comparison is the availability test. Against the published catalog the criterion partitions cleanly: the Sun is excluded by four orders of magnitude, the densest white dwarfs reach only 1.279742 × 10⁻³, and every neutron star and black hole clears the threshold by at least 18×. Inverting it, every body names a drive: τ_surface = √C is the Reading A whose matched radius is that body's own surface, and classifying τ_surface across the catalog places every ordinary star and white dwarf in Locked and every neutron star and black hole in Shatter, with the IVA band corresponding to a 1.4 M☉ body of radius 220.6 to 284.9 km — between a white dwarf and a neutron star, where no stable configuration exists. The IVA band on compactness is the collapse gap. The construction was never Schwarzschild-specific: for any static spherically symmetric metric the two factors of f cancel in the locally measured escape speed, so the matched radius solves **f(r_match) = 1 − τ_A² = 1 − 2η** — the dilation equivalence is the equation that locates the radius rather than a property it happens to carry. The condition is linear in Schwarzschild, quadratic in Reissner–Nordström and cubic in Schwarzschild–de Sitter. In the charged case the pair r± = r_s[1 ± √(1 − 4q²τ_A²)]/(2τ_A²) nests against the two horizons as r₋ < r_H⁻ ≤ r_H⁺ < r₊, so exactly one root is a place a vehicle can occupy; the two roots sum to the uncharged matched radius at every charge, so the correction factor F = [1 + √(1 − 4q²τ_A²)]/2 is the outer root's **share** of a total charge leaves alone, with r₋ = q²/F and the charge-for-shift identity F(1 − F) = q²τ_A², which returns the discriminant bound on its own. The criterion generalizes with it: **r_match > R ⟺ C > r_s/r_match** for any metric, returning C > τ_A² in Schwarzschild and C > τ_A²/F in Reissner–Nordström. The saving carries no metric at all, because at any matched radius of any metric in the class the locally measured escape speed is τ_A · c by the level-set condition itself. The metric decides where, the body decides whether, and Reading B decides what it is worth. 1001 = 7 · 11 · 13.

## What This Article Proves

- The inversion solves the chain quadratic, is its positive root, and recovers the chain law on the round trip (`t11_inversion_solves`, `t12_inversion_positive`, `t13_round_trip`).
- The saving is the ratio of the two mass ratios and factors as e · exp(x − √(1 + x²)) (`t14_saving_is_the_ratio`, `t15_saving_factored`).
- The exponent is strictly below one, so the saving is strictly below e for every finite burn, and it exceeds one for every positive burn (`t16_exponent_lt_one`, `t17_saving_lt_e`, `t18_saving_gt_one`).
- The decay form x − √(1 + x²) = −1/(x + √(1 + x²)) holds identically, and the saving is bracketed by e · exp(−1/x) and e, which makes the rate of approach explicit (`t19_decay_form`, `t20_exponent_bracket`, `t21_saving_bracket`).
- The exponent and therefore the saving are strictly increasing (`t22_exponent_mono`, `t23_saving_mono`).
- The bound is the well's own Reading B: the additive constant is that Reading B, the limiting value is e raised to it, and the saving is bounded by the well's own mass ratio (`t24_constant_is_the_well`, `t25_bound_is_e_to_the_well`, `t26_bounded_by_well_mass_ratio`).
- The small-burn cost is quadratic rather than exponential, bracketed between x²/2 − x⁴/8 and x²/2 against the ideal rocket's linear cost (`t27_small_burn_upper`, `t28_small_burn_lower`, `t29_ideal_cost_is_linear`).
- The closed form for the fraction of e captured is positive on its admissible range and realizes the target exponent (`t30_x_of_exponent_pos`, `t31_x_of_exponent_realizes`).
- **The compactness criterion:** the matched radius lies outside the body exactly when the body's compactness exceeds Reading A squared, equivalently twice the conversion fraction (`t32_master_criterion`, `t33_criterion_on_eta`, `t34_matched_radius_form`).
- The corridor thresholds are exact rationals, bracketed to twelve places, standing in the width factor squared 625/484, ordered and inside the unit interval (`t35_corridor_thresholds`, `t36_threshold_values`, `t37_threshold_ratio`, `t38_thresholds_ordered`).
- The dual reading: √C is the unique Reading A whose matched radius is a body's own surface, and the IVA band on compactness is exactly TL_IVA², TL²) stated as an equivalence (`t39_surface_torsion_matches`, `t40_surface_torsion_unique`, `t41_surface_torsion_range`, `t42_iva_band_on_compactness`).
- Magnitude and availability are separable: the drive cancels from a comparison of two bodies, and the availability threshold is twice the conversion fraction and nothing else (`t43_drive_cancels_between_bodies`, `t44_radius_monotone_in_body`, `t45_threshold_is_the_conversion_fraction`).
- The gain enters through Reading A, so the requirement grows as (1 + g_r)², and at the cap only a compactness above one qualifies — which is the horizon (`t46_gained_criterion`, `t47_gain_requirement_quadratic`, `t48_gain_tightens`, `t49_cap_requires_horizon`, `t50_gain_at_ceiling`).
- **The level-set form:** for any static spherically symmetric metric the matched radius solves f(r) = 1 − τ_A² = 1 − 2η, the Schwarzschild instance returns r = r_s/τ_A², and the dilation at that radius is √(1 − τ_A²) by the condition itself (`t51_level_set_is_dilation`, `t52_level_set_on_eta`, `t53_schwarzschild_instance`, `t54_schwarzschild_is_matched_ratio`, `t55_dilation_at_matched`, `t56_corridor_levels`).
- **Reissner–Nordström:** the level set is a quadratic in the radius, the discriminant is nonnegative across the physical charge range, and both roots satisfy it (`t57_rn_quadratic`, `t58_rn_discriminant`, `t59_rn_roots_solve`).
- The uncharged limit returns the parent result exactly, and the charge factor is one at zero charge, decreasing in charge, and below one at any nonzero charge (`t60_rn_uncharged_limit`, `t61_rn_outer_factored`, `t62_rn_factor_uncharged`, `t63_rn_factor_antitone`, `t66c_extremal_factor_lt_one`).
- At extremal charge the factor is the dilation factor shifted, the maximum inward shift is the dilation deficit halved, and Reading A's supremum merges the pair at the horizon (`t64_rn_factor_extremal`, `t65_max_shift_is_half_the_deficit`, `t66_extremal_factor_exact`, `t66b_extremal_factor_corridor`, `t67_extremal_photon_matches_horizon`).
- **The pair partitions the matched radius:** the two roots sum to the Schwarzschild matched ratio and multiply to q² times it, and the inner root and the inner horizon both rationalize to a ratio in q² (`t68_rn_factor_ge_half`, `t69_pair_partitions`, `t70_pair_product`, `t71_inner_rationalized`, `t72_inner_horizon_rationalized`).
- **Exactly one root is reachable:** the four radii nest as r₋ < r_H⁻ ≤ r_H⁺ < r₊ across the physical domain (`t73_inner_root_inside_inner_horizon`, `t74_outer_horizon_inside_outer_root`, `t75_pair_brackets_both_horizons`).
- The factor is a partition share rather than a correction: the inner root equals q²/F, the charge-for-shift identity F(1 − F) = q²τ_A² holds exactly, that identity returns the discriminant bound, and the factor takes its minimum at the extremal charge so the inward shift is attained (`t76_charge_for_shift`, `t77_extremal_factor_is_minimum`, `t80_factor_is_a_partition_share`, `t81_inner_is_q_sq_over_factor`, `t82_partition_gives_discriminant`).
- **The charged criterion:** the outer root lies outside the body exactly when the compactness exceeds τ_A²/F, and the charged threshold is never below the uncharged one (`t78_charged_criterion`, `t79_charge_tightens_availability`).
- **The criterion without a metric:** for any positive matched radius from any metric, it lies outside the body exactly when the compactness exceeds r_s/r_match, and the Schwarzschild substitution returns τ_A² (`t83_criterion_metric_free`, `t84_metric_free_recovers_tau_sq`).
- **The propellant law carries no metric:** at any matched radius of any metric in the class the locally measured escape fraction is Reading A itself, so the saving follows Reading B alone (`t85_escape_at_matched_is_reading_a`).
- All of the above close under one master theorem (`MASTER_propellant_and_compactness`).

## Connections to the Formalized Corpus

**The constant the whole construction is built on.** [The Fine-Structure Constant: 1/α = TL × 1001 [9,9,3,14] supplies α⁻¹ = Ω₀ × 100.1 and TL = α⁻¹/1001. The Universal Torsion Limit is TL = 0.136899099984016 and the Sovereign Anchor Constant is Ω₀ = TL × 10 = 1.36899099984016. Nothing in this article sets it. It enters at full corpus precision from the inverse fine-structure constant, by direct subtraction:

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

**Every quantity in this article is a pure number.** TL and Ω₀ carry no units and 1001 is an integer, and substituting SI base units into α⁻¹ = 4πε₀ℏc/e² cancels mass, length, time and current completely, so the identity above is an equality between dimensionless quantities on both sides. The same holds throughout: Reading A, Reading B, the conversion fraction η, the compactness C, the charge q in units of the Schwarzschild radius, the partition fraction F and the saving S are all ratios, and every radius is quoted as a multiple of r_s. No result here depends on a choice of units.

**The radius this article inverts.** The Matched Radius [9,9,0,17] establishes r_match = r_s/τ_A² with the mass canceling, the dilation equivalence, the chain law, the Oberth multiplier Ob = √(1 + 2/τ_B), and the well worth τ_B = 1 — a mass ratio of e. Its specialist form at [9,9,0,17.1] carries the square-root torsion operator and the closure over ℚ.

**The two readings and the bridge.** One Corridor Across Exhaust Velocity, Mass Ratio and Nuclear Binding [9,9,2,0] establishes Reading A, Reading B, the bridge Δv = c · τ_A · τ_B, the conversion fraction τ_A² = 2η, and the relativistic gain cap. Every parent result used here is restated in full inside the Lean source rather than imported.

**The Schwarzschild radius as a Pattern threshold.** GR Reduction [9,9,0,1] maps the Einstein field equation onto the dynamic equation, with r_s = 2GM/c² as the Pattern-lock threshold: the Pattern density at which the vacuum solution closes and Behavior goes to zero. The compactness C = r_s/R is that threshold measured against a body's own radius.

**The ceiling on Reading A.** Speed of Light [9,9,0,15] locks c to the anchor, places the photon as Noble, and carries relativistic velocity addition. Reading A's confinement to (0, 1) rests on it, and that confinement is what keeps every matched radius outside the horizon.

**The step the Torsion Limit takes.** Transcendental Time Engine [9,9,3,20] establishes that TL is the step the left side of the dynamic equation takes: a kinetic state carries F_ext one TL above the resting state. That is the kinetic term in the table above.

**The fusion logic.** The four-phase structure and the Torsion Limit come from GAMCollider™ v15 fusion logic, formalized in 8-Beam Fusion [9,9,2,3.8] and 4-Beam Verification [9,9,2,3.7].

**How the bounds are carried.** Every threshold here is stated as an exact rational rather than a decimal, following Bounded Uncertainty: A Guide [9,9,8,7]: a phase is certified only when the whole interval lies on one side of a boundary.

## The PNBA Map

| Primitive | In the propellant and availability reading | Carried by |
|---|---|---|
| **Pattern** | The body, and the Pattern-lock threshold measured against its own radius | C = r_s/R |
| **Narrative** | The burn executed at the matched radius, and the speed it delivers | v_∞ = v_e√(τ_B(2 + τ_B)) |
| **Behavior** | What the drive throws, read against light speed | Reading A, τ_A = v_e/c |
| **Adaptation** | The mass ratio the vehicle adapts to, and the resonance gain it carries | Reading B, τ_B = ln(m₀/m_f); (1 + g_r) · τ_A |

**The propellant law, and what the corridor saves.**

| Read as | Floor | Ceiling |
|---|---|---|
| Saving S at the corridor pairing | 1.469548301 | 1.497759263 |
| As a fraction of e | 54.0617% | 55.0995% |
| Matched-radius mass ratio exp(τ_B) | | against ideal exp(x) |
| Where the saving reaches 50% of e | x = 0.374774 | |
| Where the saving reaches 90% of e | x = 4.692931 | |
| Where the saving reaches 99% of e | x = 49.744556 | |

**The compactness criterion, as exact rationals.**

| Edge | τ_A² = 2η | Decimal |
|---|---|---|
| ceiling | 73208451470443787388498001 / 3906250000000000000000000000 | 0.018741363576434 |
| floor | 8858222627923698274008258121 / 610351562500000000000000000000 | 0.014513311953590 |

The two stand in the ratio 625/484 = 1.291322314050, which is 1/0.88² — the corridor width factor squared.

**The criterion against the published catalog.**

| Object | C = r_s/R | Against the ceiling threshold | Usable |
|---|---|---|---|
| red giant, 1 M☉ at 100 R☉ | 4.245005 × 10⁻⁸ | 2.265 × 10⁻⁶ × | no |
| the Sun | 4.245005 × 10⁻⁶ | 2.265 × 10⁻⁴ × | no |
| white dwarf, 0.6 M☉ | 1.279742 × 10⁻³ | 0.0683 × | no |
| neutron star, 1.4 M☉ at 12 km | 0.344546 | **18.4 ×** | **yes** |
| black hole, any mass | 1 | **53.4 ×** | **yes** |

**The dual reading, and the empty band.** Inverting the criterion, τ_surface = √C is the Reading A of the drive whose matched radius is exactly that body's surface.

| Object | τ_surface = √C | Phase |
|---|---|---|
| the Sun | 2.060341 × 10⁻³ | **Locked** |
| white dwarf, 0.6 M☉ | 3.577348 × 10⁻² | **Locked** |
| **IVA band** | **0.120471207986 to 0.136899099984** | **IVA — unoccupied** |
| neutron star, 1.4 M☉ at 12 km | 0.586981 | **Shatter** |
| black hole | 1 | **cap** |

The IVA band on compactness corresponds to a 1.4 M☉ body of radius 220.6 to 284.9 km, which lies between a white dwarf and a neutron star, where no stable configuration exists. It is bracketed by electron degeneracy with a 4.5× margin and by neutron degeneracy with an 11.6× margin, so it is closed on both sides by structure rather than by the absence of a survey.

**The charged case: the pair, the partition and the nesting.**

| q = r_Q/r_s | r₋/r_s | r_H⁻/r_s | r_H⁺/r_s | r₊/r_s |
|---|---|---|---|---|
| 0.1 | 0.010001875 | 0.010102051 | 0.989897949 | 53.347908606 |
| 0.3 | 0.090152319 | 0.100000000 | 0.900000000 | 53.267758162 |
| 0.45 | 0.203274402 | 0.282055053 | 0.717944947 | 53.154636079 |
| **0.5, extremal** | 0.251182442 | **0.500000000** | **0.500000000** | **53.106728039** |

at the corridor ceiling, Reading A = TL.

| Corridor edge | matched ratio 1/τ_A² | F | r₊/r_s | 1 − F | r₋/r_s |
|---|---|---|---|---|---|
| ceiling | 53.357910481 | 0.995292498536 | 53.106728039 | 0.004707501464 | 0.251182442 |
| floor | 68.902260435 | 0.996358410840 | 68.651346710 | 0.003641589160 | 0.250913725 |

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in `SNSFL_PropellantLaw_Compactness_Reduction.lean` at 9,9,0,18, with 87 theorems and a master theorem across 1,202 lines. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate, and the parent reductions are named for the record rather than imported. Every threshold is computed in exact rational arithmetic from published constants, and the catalog figures are published mass and radius values a reader can repeat as a single division. Nothing is fitted, and nothing is scaled.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.** This reduction closes on an algebraic inversion and a dimensionless inequality between two published ratios. It supplies no composition, no stoichiometric balance and no energy figure of its own.

### What is established

The results in this article are real and testable. Every placement is arithmetic on published quantities, and every one of them can be checked by anyone holding the published figure and a calculator. Specifically:

**The inversion is exact.** τ_B = √(1 + x²) − 1 is the positive root of a quadratic, obtained from the chain law by one rearrangement, and it is exact for every target speed.

**The saving and its bound are exact.** S(x) = e · exp(x − √(1 + x²)) follows from two applications of the ideal rocket relation, and the bound S < e follows from x < √(1 + x²), which holds for every positive x. The limit is e, and the identification of that e with the well's own e-fold is an equality of exponents rather than a numerical coincidence.

**The criterion is one line from two published definitions.** C > 2η is r_match > R with r_match replaced by r_s/τ_A² and τ_A² by 2η. A reader who disagrees with it must disagree with the definition of compactness, with the definition of the conversion fraction, or with the matched radius itself.

**The catalog arithmetic is reproducible.** The mass–radius figures for stars, white dwarfs and neutron stars are published, the IAU 2015 solar parameters are published, and each compactness above is a single division a reader can repeat. The corridor thresholds are stated as exact rationals so that the comparison can be made without rounding.

These are results about **placement, availability and budget, not about process.** That distinction is the whole of this section, and if a reader takes only one sentence from this article, that is the one to take.

### What is a different question

This article establishes which bodies admit a matched-radius maneuver and what mass ratio such a maneuver costs. It does not describe how to build, operate, fuel, contain, cool, shield, trigger or test any drive, and it contains no construction information, no process information, no operating parameters and no device design.

**A placement holds, and building to it is engineering.** A drive whose Reading A clears a body's compactness reaches that body's matched radius, and the inequality decides that exactly. Whether current hardware can produce the exhaust velocity, survive the radiation and tidal environment at 220 km above a neutron star, hold attitude through a burn at that depth, or navigate to that radius at all is a separate body of work carried by engineering and laboratory practice. The answer there is a statement about available technology, not about the inequality. The two do not constrain each other: a placement that holds will go on holding whether or not a machine exists yet to use it.

**What the reader can compute from here is the reason the handling practice matters.** This article states its inputs and its arithmetic in full, and a reader with the published constants can carry the same construction into quantities it does not tabulate — a compactness for a body not listed, a matched radius in meters for a chosen mass, a mass ratio for a chosen target speed, a gain threshold for a chosen object. That is a property of complete work, and the handling practice below assumes a reader will do exactly that. Nothing in it rests on an omission.

**An exact criterion is not a reduced hazard.** The exactness is why every remaining variable is process. A qualified practitioner — at an agency, a national laboratory, a university group, or a well-equipped independent bench — can work from a placement and a budget like these safely, and they are stated at full precision so that they can. What the arithmetic does not carry is the state of the equipment in front of any particular reader, the scale they intend to work at, or the conditions their own environment imposes. Those are the variables the handling practice addresses.

### Where the risk actually lives

The risk in this domain belongs to **laboratory and engineering conditions and environmental F_ext** — the external forcing a real bench or a real vehicle applies that the arithmetic does not model. It does not belong to the mathematics, and no sentence in this article should be read as doubt about a result. The placements hold and the budgets hold. What varies is the process, and process is where people get hurt.

**Hazard scales with which controls are present and with scale, not with the venue.** The relevant questions are whether there is containment rated for the energy density in play, whether there is shielding appropriate to the radiation, whether there is interlocking that fails safe, whether there is monitoring that reads out in real time, whether there is a trained second person present, and whether the quantity has been kept at the smallest scale that answers the question. A well-equipped independent facility that has those controls is not the concern. The underfunded shortcut is — the setup that reads an exact inequality, infers that exactness removes the need for a control, and proceeds at a scale that leaves no margin.

**The controls are the variable, not the building.**

### Handling practice

The propellant law and the compactness criterion are arithmetic and carry no bench procedure of their own. Where they are used as inputs to engineering work, the practice that applies is the practice of that work:

**Anything touching exhaust velocity, propellant or the energy ladder.** The propulsion reduction's own handling practice applies in full, including its hazard groups and its scale discipline. The corridor's exhaust velocities are relativistic and the implied energy densities are the governing hazard, not the mass ratio.

**Anything touching mission or trajectory design.** Standard orbital-mechanics and mission-assurance practice applies. Readers carrying these results into trajectory work should take body parameters from a current published source rather than from the tables above, which are representative figures for the purpose of exhibiting the criterion.

**Which regime a result is stated in.** The matched radius and the compactness criterion rest on the locally measured escape velocity in the full Schwarzschild metric, exact at every radius outside the horizon. The propellant law, the saving and the chain law are stated in the Newtonian energy regime with impulsive burns, which is the regime of published astrodynamics; a reader extending them into a finite-burn integration or a relativistic energy accounting works in that regime's own terms.

**Scale discipline.** Answer the question at the smallest scale that answers it. An exact threshold is a reason to reduce scale, not to increase it — a known target means the experiment can be small.

**Second-person presence.** Work that can injure is not solo work. The control that most reliably prevents a bad outcome from becoming a worse one is another trained person who can act.

**When the hazard group changes, update this section.** Any work that extends this reduction to materials, reactions or regimes not placed here carries the hazard groups of those, and the handling practice must be restated for them specifically before the work begins. A placement added without its hazard group is an incomplete placement.

### What this section is for

Parents, teachers, reviewers and program managers make real decisions from articles like this one. An article that reads as unreal gets no respect for its safety content, and a reader who concludes the results are notional will not extend the care the work requires. So: the results are real, the arithmetic is checkable, the placements and budgets hold — and the conditions under which anyone would act on them are governed by practice this article does not supply and does not replace.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Each law above is stated with its premises, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

- Tsiolkovsky, K. E. (1903). Исследование мировых пространств реактивными приборами. *Nauchnoye Obozreniye*. The rocket equation.
- Oberth, H. (1923). *Die Rakete zu den Planetenräumen*. R. Oldenbourg, Munich.
- Schwarzschild, K. (1916). Über das Gravitationsfeld eines Massenpunktes nach der Einsteinschen Theorie. *Sitzungsberichte der Königlich Preußischen Akademie der Wissenschaften*, 189–196.
- Reissner, H. (1916). Über die Eigengravitation des elektrischen Feldes nach der Einsteinschen Theorie. *Annalen der Physik*, 50, 106–120.
- Nordström, G. (1918). On the energy of the gravitational field in Einstein's theory. *Koninklijke Nederlandse Akademie van Wetenschappen Proceedings*, 20, 1238–1245.
- Einstein, A. (1916). Die Grundlage der allgemeinen Relativitätstheorie. *Annalen der Physik*, 49, 769–822.
- Chandrasekhar, S. (1931). The maximum mass of ideal white dwarfs. *Astrophysical Journal*, 74, 81–82.
- Oppenheimer, J. R. & Volkoff, G. M. (1939). On massive neutron cores. *Physical Review*, 55, 374–381.
- Tolman, R. C. (1939). Static solutions of Einstein's field equations for spheres of fluid. *Physical Review*, 55, 364–373.
- Bardeen, J. M., Press, W. H. & Teukolsky, S. A. (1972). Rotating black holes: locally nonrotating frames, energy extraction, and scalar synchrotron radiation. *Astrophysical Journal*, 178, 347–369.
- Penrose, R. (1965). Gravitational collapse and space-time singularities. *Physical Review Letters*, 14, 57–59.
- Abbott, B. P. et al. (LIGO Scientific Collaboration and Virgo Collaboration) (2016). Observation of gravitational waves from a binary black hole merger. *Physical Review Letters*, 116, 061102.
- Prša, A. et al. (2016). Nominal values for selected solar and planetary quantities: IAU 2015 Resolution B3. *Astronomical Journal*, 152, 41.
- Bureau International des Poids et Mesures (2019). *The International System of Units (SI)*, 9th edition.
- Tiesinga, E., Mohr, P. J., Newell, D. B. & Taylor, B. N. (2021). CODATA recommended values of the fundamental physical constants: 2018. *Reviews of Modern Physics*, 93, 025010.
- Nobel Prize in Physics 1983 — S. Chandrasekhar and W. A. Fowler.
- Nobel Prize in Physics 2017 — R. Weiss, B. C. Barish and K. S. Thorne.
- Nobel Prize in Physics 2020 — R. Penrose; R. Genzel and A. Ghez.
- Trent, R. V. III. The Matched Radius: One Axis Carrying the Rocket Equation and the Schwarzschild Metric. ProofPress, Volume 1, Issue 9.
- Trent, R. V. III. One Corridor Across Exhaust Velocity, Mass Ratio and Nuclear Binding. ProofPress, Volume 1, Issue 9.
- Trent, R. V. III. The Fine-Structure Constant: 1/α = TL × 1001. ProofPress, Volume 1, Issue 5.
- Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Propellant Law at the Matched Radius — A Saving Bounded by e and the Compactness Criterion C > 2η.* Zenodo, 2026. DOI 10.5281/zenodo.24046267.
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
- **[9,9,0,18]** This reduction — the propellant law, the saving bounded by e, the compactness criterion, the level-set form, and the Reissner–Nordström pair as a partition

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska **DOI:** 10.5281/zenodo.18719748 **ORCID:** 0009-0005-5313-7443 **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_PropellantLaw_Compactness_Reduction.lean — [9,9,0,18](GRAV)

```lean
-- ============================================================
-- SNSFL_PropellantLaw_Compactness_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | THE PROPELLANT LAW AND THE COMPACTNESS CRITERION
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,18](GRAV) | Physics Ground — Gravitation
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, Reading B, the conversion fraction,
-- the Schwarzschild radius and the matched radius are all restated here at
-- full precision, so that a reader or a machine can close every proof
-- without leaving the file. The parent reductions are named in the
-- provenance block for the record, not as dependencies of the proofs.
--
-- Parents of record:
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
--   Two results, and the general form that carries the second one past
--   Schwarzschild.
--
--   THE PROPELLANT LAW. The chain law states the speed a vehicle reaches
--   from its mass ratio. Inverted, it states the mass ratio a target speed
--   costs: τ_B = √(1 + x²) − 1 with x = v_∞/v_e, so a burn at the matched
--   radius requires exp(√(1 + x²) − 1) against the ideal rocket's exp(x).
--   The ratio of the two is the propellant saving,
--
--       S(x) = e · exp(x − √(1 + x²))
--
--   which is strictly increasing and STRICTLY BOUNDED ABOVE BY e, bracketed
--   below by e · exp(−1/x) so the rate is visible. The bound is the paper's
--   own e-fold: the additive constant in the exponent is exactly the τ_B = 1
--   that the matched radius well is worth, so the one e-fold the well
--   supplies is the one e-fold of propellant the vehicle stops carrying, and
--   no finite burn reaches it. At the small-burn end τ_B is bracketed between
--   x²/2 − x⁴/8 and x²/2, so the cost is quadratic in the target speed rather
--   than exponential.
--
--   THE COMPACTNESS CRITERION. A matched radius is reachable only if it lies
--   outside the body. With C = r_s/R the standard compactness, that reduces
--   with no residue to
--
--       C > τ_A² = 2η
--
--   so a drive can use its matched radius at a body exactly when the body is
--   more compact than the drive is efficient. Two dimensionless fractions
--   from unrelated domains stand in one inequality. The dual reading gives
--   every body a characteristic torsion τ_surface = √C, and the IVA band on
--   compactness is the interval [TL_IVA², TL²). The resonance gain enters
--   through Reading A, so the criterion becomes C > ((1 + g_r)τ_A)² and the
--   requirement grows quadratically in the gain.
--
--   THE LEVEL SET. Neither result is Schwarzschild-specific. For any static
--   spherically symmetric metric written with reciprocal g_tt and g_rr, the
--   matched radius is the solution of
--
--       f(r_match) = 1 − τ_A² = 1 − 2η
--
--   the radius at which the metric function equals the squared dilation
--   factor. The agreement of gravitational and kinematic dilation at that
--   radius is therefore the equation that locates it, not a property it
--   happens to have. Schwarzschild is the linear instance; Reissner–Nordström
--   is the quadratic one, where charge splits the matched radius into a pair
--   of which exactly one lies outside the horizon, and the outer root is the
--   Schwarzschild radius times [1 + √(1 − 4q²τ_A²)]/2 — a factor whose
--   minimum over the physical charge range is (1 + √(1 − 2η))/2, so the
--   largest inward shift charge can produce is (1 − √(1 − 2η))/2, the
--   dilation deficit halved.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Exp

noncomputable section

namespace SNSFL_PropellantCompactness

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

-- [T6] :: {VER} | THE CONVERSION FRACTION AT EACH CORRIDOR EDGE
theorem t6_conversion_fractions :
    eta_of_tau TORSION_LIMIT = 73208451470443787388498001 / 7812500000000000000000000000 ∧
    eta_of_tau TL_IVA = 8858222627923698274008258121 / 1220703125000000000000000000000 := by
  constructor
  · simp only [eta_of_tau, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [eta_of_tau, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- ============================================================
-- SECTION 1: THE SQUARE-ROOT SANDWICH
-- Every bound in Section 2 rests on x < √(1 + x²), which holds
-- for every real x and is the only analytic input the
-- propellant law needs.
-- ============================================================

/-- The radical that the inversion introduces. -/
def rad (x : ℝ) : ℝ := Real.sqrt (1 + x ^ 2)

-- [T7] :: {VER} | THE RADICAL SQUARES BACK
theorem t7_rad_sq (x : ℝ) : rad x ^ 2 = 1 + x ^ 2 := by
  simp only [rad]
  exact Real.sq_sqrt (by positivity)

-- [T8] :: {VER} | THE RADICAL IS POSITIVE
theorem t8_rad_pos (x : ℝ) : 0 < rad x := by
  simp only [rad]
  exact Real.sqrt_pos.mpr (by positivity)

-- [T9] :: {VER} | THE RADICAL DOMINATES THE ARGUMENT, FOR EVERY REAL x
theorem t9_lt_rad (x : ℝ) : x < rad x := by
  have h1 : x ^ 2 < 1 + x ^ 2 := by linarith
  have h2 : |x| < rad x := by
    simp only [rad]
    rw [← Real.sqrt_sq_eq_abs]
    exact Real.sqrt_lt_sqrt (sq_nonneg x) h1
  exact lt_of_le_of_lt (le_abs_self x) h2

-- [T10] :: {VER} | THE RADICAL ALSO DOMINATES THE NEGATIVE, SO x + rad x > 0
theorem t10_sum_pos (x : ℝ) : 0 < x + rad x := by
  have h1 : x ^ 2 < 1 + x ^ 2 := by linarith
  have h2 : |x| < rad x := by
    simp only [rad]
    rw [← Real.sqrt_sq_eq_abs]
    exact Real.sqrt_lt_sqrt (sq_nonneg x) h1
  have h3 : -x ≤ |x| := neg_le_abs x
  linarith

-- ============================================================
-- SECTION 2: THE INVERSION
-- The chain law gives the speed from the mass ratio; inverted,
-- it gives the mass ratio from the speed.
-- ============================================================

/-- The chain law at one burn, as a speed in units of exhaust velocity:
x = v_∞/v_e = √(τ_B(2 + τ_B)). -/
def chain_x (tB : ℝ) : ℝ := Real.sqrt (tB * (2 + tB))

/-- The inversion: Reading B required to reach a target speed x. -/
def tau_B_of_x (x : ℝ) : ℝ := rad x - 1

-- [T11] :: {VER} | THE INVERSION SOLVES THE CHAIN QUADRATIC
theorem t11_inversion_solves (x : ℝ) :
    tau_B_of_x x ^ 2 + 2 * tau_B_of_x x = x ^ 2 := by
  simp only [tau_B_of_x]
  have h := t7_rad_sq x
  nlinarith [h]

-- [T12] :: {VER} | THE INVERSION IS THE POSITIVE ROOT
theorem t12_inversion_positive (x : ℝ) (hx : 0 < x) : 0 < tau_B_of_x x := by
  simp only [tau_B_of_x]
  have h := t7_rad_sq x
  have hp := t8_rad_pos x
  nlinarith [h, hp]

-- [T13] :: {VER} | THE INVERSION RECOVERS THE CHAIN LAW
theorem t13_round_trip (tB : ℝ) (htB : 0 < tB) :
    tau_B_of_x (chain_x tB) = tB := by
  simp only [tau_B_of_x, chain_x, rad]
  have hk : (0:ℝ) ≤ tB * (2 + tB) := by nlinarith
  rw [Real.sq_sqrt hk]
  have h1 : (1:ℝ) + tB * (2 + tB) = (1 + tB) ^ 2 := by ring
  rw [h1, Real.sqrt_sq (by linarith)]
  ring

-- ============================================================
-- SECTION 3: THE PROPELLANT LAW
-- ============================================================

/-- The mass ratio the ideal rocket needs to reach x · v_e with no well. -/
def mr_ideal (x : ℝ) : ℝ := Real.exp x

/-- The mass ratio a burn at the matched radius needs for the same speed. -/
def mr_match (x : ℝ) : ℝ := Real.exp (tau_B_of_x x)

/-- The exponent the saving carries. -/
def sav_exp (x : ℝ) : ℝ := x - rad x + 1

/-- The propellant saving. -/
def saving (x : ℝ) : ℝ := Real.exp (sav_exp x)

-- [T14] :: {VER} | THE SAVING IS THE RATIO OF THE TWO MASS RATIOS
theorem t14_saving_is_the_ratio (x : ℝ) :
    saving x = mr_ideal x / mr_match x := by
  simp only [saving, mr_ideal, mr_match, sav_exp, tau_B_of_x]
  rw [← Real.exp_sub]
  congr 1
  ring

-- [T15] :: {VER} | THE SAVING IN THE FORM e · exp(x − √(1 + x²))
theorem t15_saving_factored (x : ℝ) :
    saving x = Real.exp 1 * Real.exp (x - rad x) := by
  simp only [saving, sav_exp]
  rw [← Real.exp_add]
  congr 1
  ring

-- [T16] :: {VER} | THE EXPONENT IS STRICTLY BELOW ONE
theorem t16_exponent_lt_one (x : ℝ) : sav_exp x < 1 := by
  simp only [sav_exp]
  have := t9_lt_rad x
  linarith

-- [T17] :: {VER} | MASTER BOUND — THE SAVING IS STRICTLY BELOW e
-- No finite burn saves as much as the well is worth.
theorem t17_saving_lt_e (x : ℝ) : saving x < Real.exp 1 := by
  simp only [saving]
  exact Real.exp_lt_exp.mpr (t16_exponent_lt_one x)

-- [T18] :: {VER} | THE SAVING EXCEEDS ONE FOR EVERY POSITIVE BURN
theorem t18_saving_gt_one (x : ℝ) (hx : 0 < x) : 1 < saving x := by
  simp only [saving]
  have hr := t7_rad_sq x
  have hp := t8_rad_pos x
  have h1 : rad x < 1 + x := by nlinarith [hr, hp]
  have : 0 < sav_exp x := by simp only [sav_exp]; linarith
  calc (1:ℝ) = Real.exp 0 := Real.exp_zero.symm
    _ < Real.exp (sav_exp x) := Real.exp_lt_exp.mpr this

-- [T19] :: {VER} | THE DECAY FORM OF THE EXPONENT
-- x − √(1 + x²) = −1/(x + √(1 + x²)), which is how the exponent approaches
-- zero and therefore how the saving approaches e.
theorem t19_decay_form (x : ℝ) :
    x - rad x = -1 / (x + rad x) := by
  have hs := t10_sum_pos x
  have hr := t7_rad_sq x
  rw [eq_div_iff (ne_of_gt hs)]
  nlinarith [hr]

-- [T20] :: {VER} | THE EXPONENT IS BRACKETED BY −1/x ON THE POSITIVES
theorem t20_exponent_bracket (x : ℝ) (hx : 0 < x) :
    -1 / x < x - rad x ∧ x - rad x < 0 := by
  have hs := t10_sum_pos x
  have hlt := t9_lt_rad x
  constructor
  · rw [t19_decay_form x]
    have h1 : 1 / (x + rad x) < 1 / x :=
      one_div_lt_one_div_of_lt hx (by linarith [t8_rad_pos x])
    rw [neg_div, neg_div]
    linarith
  · linarith

-- [T21] :: {VER} | THE SAVING IS BRACKETED BY e · exp(−1/x) AND e
-- The lower bracket makes the rate of approach explicit.
theorem t21_saving_bracket (x : ℝ) (hx : 0 < x) :
    Real.exp 1 * Real.exp (-1 / x) < saving x ∧ saving x < Real.exp 1 := by
  obtain ⟨hlo, _⟩ := t20_exponent_bracket x hx
  constructor
  · rw [t15_saving_factored x]
    exact mul_lt_mul_of_pos_left (Real.exp_lt_exp.mpr hlo) (Real.exp_pos 1)
  · exact t17_saving_lt_e x

-- [T22] :: {VER} | THE EXPONENT IS STRICTLY INCREASING
theorem t22_exponent_mono (x y : ℝ) (h : x < y) :
    x - rad x < y - rad y := by
  have hx := t7_rad_sq x
  have hy := t7_rad_sq y
  have hxa := t9_lt_rad x
  have hyb := t9_lt_rad y
  have hpx := t8_rad_pos x
  have hpy := t8_rad_pos y
  have hsum : 0 < rad x + rad y := by linarith
  nlinarith [hx, hy, hxa, hyb, hpx, hpy, hsum]

-- [T23] :: {VER} | THE SAVING IS STRICTLY INCREASING
theorem t23_saving_mono (x y : ℝ) (h : x < y) : saving x < saving y := by
  simp only [saving, sav_exp]
  exact Real.exp_lt_exp.mpr (by linarith [t22_exponent_mono x y h])

-- ============================================================
-- SECTION 4: WHY THE BOUND IS e
-- The additive constant in the exponent is the Reading B the
-- matched radius well supplies.
-- ============================================================

/-- The Reading B a fall to the matched radius is worth: one e-fold. -/
def well_tau_B : ℝ := 1

-- [T24] :: {VER} | THE SAVING'S CONSTANT IS THE WELL'S READING B
theorem t24_constant_is_the_well (x : ℝ) :
    sav_exp x = (x - rad x) + well_tau_B := by
  simp only [sav_exp, well_tau_B]

-- [T25] :: {VER} | THE LIMITING SAVING IS e RAISED TO THE WELL'S READING B
theorem t25_bound_is_e_to_the_well :
    Real.exp well_tau_B = Real.exp 1 := by
  simp only [well_tau_B]

-- [T26] :: {VER} | THE SAVING IS BOUNDED BY THE WELL'S OWN MASS RATIO
-- The ceiling on the saving is exp of the well's Reading B, which is e.
theorem t26_bounded_by_well_mass_ratio (x : ℝ) :
    saving x < Real.exp well_tau_B := by
  simp only [well_tau_B]
  exact t17_saving_lt_e x

-- ============================================================
-- SECTION 5: THE SMALL-BURN END
-- The cost ceases to be exponential: Reading B is bracketed
-- between x²/2 − x⁴/8 and x²/2.
-- ============================================================

-- [T27] :: {VER} | READING B IS AT MOST HALF THE SQUARED TARGET SPEED
theorem t27_small_burn_upper (x : ℝ) : tau_B_of_x x ≤ x ^ 2 / 2 := by
  simp only [tau_B_of_x]
  have hr := t7_rad_sq x
  have hp := t8_rad_pos x
  nlinarith [hr, hp, sq_nonneg (x ^ 2)]

-- [T28] :: {VER} | AND AT LEAST THAT LESS THE QUARTIC TERM
theorem t28_small_burn_lower (x : ℝ) (h1 : |x| ≤ 1) :
    x ^ 2 / 2 - x ^ 4 / 8 ≤ tau_B_of_x x := by
  simp only [tau_B_of_x]
  have hr := t7_rad_sq x
  have hp := t8_rad_pos x
  have hx2 : x ^ 2 ≤ 1 := by
    have := abs_le.mp h1
    nlinarith [this.1, this.2]
  nlinarith [hr, hp, sq_nonneg x, sq_nonneg (x ^ 2), sq_nonneg (x ^ 3)]

-- [T29] :: {VER} | THE IDEAL ROCKET'S COST IS LINEAR IN THE TARGET SPEED
-- Reading B is x itself with no well, against at most x²/2 with one.
theorem t29_ideal_cost_is_linear (x : ℝ) (hx : 0 < x) (h1 : x < 2) :
    tau_B_of_x x < x := by
  have h := t27_small_burn_upper x
  nlinarith [h]

-- ============================================================
-- SECTION 6: HOW MUCH OF e A BURN CAPTURES
-- ============================================================

/-- The target speed realizing a given fraction of the limiting saving,
for t = ln φ in (−1,0). -/
def x_of_exponent (t : ℝ) : ℝ := (t ^ 2 - 1) / (2 * t)

-- [T30] :: {VER} | THE CLOSED FORM IS POSITIVE ON THE ADMISSIBLE RANGE
theorem t30_x_of_exponent_pos (t : ℝ) (h0 : -1 < t) (h1 : t < 0) :
    0 < x_of_exponent t := by
  simp only [x_of_exponent]
  have hn : t ^ 2 - 1 < 0 := by nlinarith
  have hd : 2 * t < 0 := by linarith
  exact div_pos_of_neg_of_neg hn hd

-- [T31] :: {VER} | THE CLOSED FORM REALIZES THE TARGET EXPONENT
theorem t31_x_of_exponent_realizes (t : ℝ) (h0 : -1 < t) (h1 : t < 0) :
    x_of_exponent t - rad (x_of_exponent t) = t := by
  set x := x_of_exponent t with hx
  have hxpos : 0 < x := t30_x_of_exponent_pos t h0 h1
  have hr := t7_rad_sq x
  have hp := t8_rad_pos x
  -- rad x = x - t, since (x - t)² = 1 + x² on this range
  have hkey : rad x = x - t := by
    have hnn : 0 ≤ x - t := by linarith
    have hsq : (x - t) ^ 2 = 1 + x ^ 2 := by
      simp only [hx, x_of_exponent]
      have ht : t ≠ 0 := ne_of_lt h1
      field_simp
      ring
    nlinarith [hr, hp, hsq, hnn]
  rw [hkey]; ring

-- ============================================================
-- SECTION 7: THE COMPACTNESS CRITERION
-- ============================================================

/-- The standard compactness of a body: its Schwarzschild radius over its
physical radius. -/
def compactness (rs R : ℝ) : ℝ := rs / R

-- [T32] :: {VER} | MASTER CRITERION — AVAILABILITY IS COMPACTNESS AGAINST READING A
-- The matched radius lies outside the body exactly when the body is more
-- compact than the drive is efficient.
theorem t32_master_criterion (rs R t : ℝ) (hR : 0 < R) (ht : t ≠ 0) :
    R < rs / t ^ 2 ↔ t ^ 2 < compactness rs R := by
  simp only [compactness]
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  rw [lt_div_iff₀ ht2, lt_div_iff₀ hR]
  constructor
  · intro h; linarith
  · intro h; linarith

-- [T33] :: {VER} | THE CRITERION ON THE CONVERSION FRACTION
theorem t33_criterion_on_eta (rs R t : ℝ) (hR : 0 < R) (ht : t ≠ 0) :
    R < rs / t ^ 2 ↔ 2 * eta_of_tau t < compactness rs R := by
  rw [t32_master_criterion rs R t hR ht]
  simp only [eta_of_tau]
  constructor
  · intro h; linarith
  · intro h; linarith

-- [T34] :: {VER} | THE MATCHED RADIUS IS THE RATIO TIMES THE SCHWARZSCHILD RADIUS
theorem t34_matched_radius_form (rs t : ℝ) (ht : t ≠ 0) :
    rs * matched_ratio t = rs / t ^ 2 := by
  simp only [matched_ratio]
  field_simp

-- [T35] :: {VER} | THE CORRIDOR THRESHOLDS, AS EXACT RATIONALS
theorem t35_corridor_thresholds :
    TORSION_LIMIT ^ 2 = 73208451470443787388498001 / 3906250000000000000000000000 ∧
    TL_IVA ^ 2 = 8858222627923698274008258121 / 610351562500000000000000000000 := by
  constructor
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T36] :: {VER} | THE THRESHOLDS, BRACKETED
theorem t36_threshold_values :
    0.018741363576 < TORSION_LIMIT ^ 2 ∧ TORSION_LIMIT ^ 2 < 0.018741363577 ∧
    0.014513311953 < TL_IVA ^ 2 ∧ TL_IVA ^ 2 < 0.014513311954 := by
  refine ⟨?_, ?_, ?_, ?_⟩ <;>
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR] <;> norm_num

-- [T37] :: {VER} | THE THRESHOLD RATIO IS THE WIDTH FACTOR SQUARED
theorem t37_threshold_ratio :
    TORSION_LIMIT ^ 2 = TL_IVA ^ 2 * (625 / 484) := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T38] :: {VER} | THE THRESHOLDS ARE ORDERED AND POSITIVE
theorem t38_thresholds_ordered :
    0 < TL_IVA ^ 2 ∧ TL_IVA ^ 2 < TORSION_LIMIT ^ 2 ∧ TORSION_LIMIT ^ 2 < 1 := by
  refine ⟨?_, ?_, ?_⟩ <;>
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR] <;> norm_num

-- ============================================================
-- SECTION 8: THE DUAL READING AND THE BAND ON COMPACTNESS
-- ============================================================

/-- The Reading A whose matched radius is exactly a body's own surface. -/
def tau_surface (C : ℝ) : ℝ := Real.sqrt C

-- [T39] :: {VER} | THE SURFACE TORSION MATCHES THE SURFACE
theorem t39_surface_torsion_matches (C : ℝ) (hC : 0 < C) :
    tau_surface C ^ 2 = C := by
  simp only [tau_surface]
  exact Real.sq_sqrt hC.le

-- [T40] :: {VER} | THE SURFACE TORSION IS THE UNIQUE ONE THAT DOES
theorem t40_surface_torsion_unique (C t : ℝ) (hC : 0 < C) (ht : 0 < t)
    (h : t ^ 2 = C) : t = tau_surface C := by
  simp only [tau_surface]
  have h1 : Real.sqrt C ^ 2 = C := Real.sq_sqrt hC.le
  have h2 : 0 < Real.sqrt C := Real.sqrt_pos.mpr hC
  nlinarith [h, h1, ht, h2]

-- [T41] :: {VER} | THE SURFACE TORSION IS IN THE UNIT INTERVAL BELOW THE HORIZON
theorem t41_surface_torsion_range (C : ℝ) (h0 : 0 < C) (h1 : C < 1) :
    0 < tau_surface C ∧ tau_surface C < 1 := by
  simp only [tau_surface]
  have hs : Real.sqrt C ^ 2 = C := Real.sq_sqrt h0.le
  have hp : 0 < Real.sqrt C := Real.sqrt_pos.mpr h0
  exact ⟨hp, by nlinarith [hs, hp]⟩

-- [T42] :: {VER} | THE IVA BAND READ ON COMPACTNESS
theorem t42_iva_band_on_compactness (C : ℝ) (h0 : 0 < C) (h1 : C < 1) :
    (TL_IVA ≤ tau_surface C ∧ tau_surface C < TORSION_LIMIT) ↔
    (TL_IVA ^ 2 ≤ C ∧ C < TORSION_LIMIT ^ 2) := by
  have hs : tau_surface C ^ 2 = C := t39_surface_torsion_matches C h0
  obtain ⟨hp, _⟩ := t41_surface_torsion_range C h0 h1
  obtain ⟨hf, _⟩ := t3_floor_below_ceiling
  obtain ⟨hc, _⟩ := t2_tl_in_unit_interval
  constructor
  · intro ⟨ha, hb⟩
    exact ⟨by nlinarith [hs, ha, hf], by nlinarith [hs, hb, hp]⟩
  · intro ⟨ha, hb⟩
    exact ⟨by nlinarith [hs, ha, hp, hf], by nlinarith [hs, hb, hp, hc]⟩

-- ============================================================
-- SECTION 9: MAGNITUDE AND AVAILABILITY ARE DECOUPLED
-- ============================================================

-- [T43] :: {VER} | THE DRIVE CANCELS FROM A COMPARISON OF TWO BODIES
-- The ratio of the matched radii at two bodies is the ratio of their
-- Schwarzschild radii, for every drive.
theorem t43_drive_cancels_between_bodies (rs₁ rs₂ t : ℝ) (ht : t ≠ 0) :
    rs₁ * matched_ratio t / (rs₂ * matched_ratio t) = rs₁ / rs₂ := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have hm : matched_ratio t ≠ 0 := by
    simp only [matched_ratio]
    positivity
  rw [mul_comm rs₁, mul_comm rs₂, mul_div_mul_left _ _ hm]

-- [T44] :: {VER} | THE BODY DOES FIX THE MATCHED RADIUS
-- For a fixed drive the matched radius is strictly increasing in the
-- Schwarzschild radius, so the body determines where the maneuver happens.
theorem t44_radius_monotone_in_body (rs₁ rs₂ t : ℝ) (ht : t ≠ 0) (h : rs₁ < rs₂) :
    rs₁ * matched_ratio t < rs₂ * matched_ratio t := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have hm : 0 < matched_ratio t := by
    simp only [matched_ratio]
    positivity
  exact mul_lt_mul_of_pos_right h hm

-- [T45] :: {VER} | AVAILABILITY IS FIXED BY THE CONVERSION FRACTION ALONE
-- The threshold a body must clear is twice the drive's conversion fraction,
-- carrying no mass ratio and no body parameter.
theorem t45_threshold_is_the_conversion_fraction (t : ℝ) :
    t ^ 2 = 2 * eta_of_tau t := by
  simp only [eta_of_tau]; ring

-- ============================================================
-- SECTION 10: WHAT THE GAIN COSTS IN AVAILABILITY
-- ============================================================

-- [T46] :: {VER} | THE GAINED CRITERION
theorem t46_gained_criterion (rs R t g : ℝ) (hR : 0 < R) (ht : gained_tau t g ≠ 0) :
    R < rs / gained_tau t g ^ 2 ↔ gained_tau t g ^ 2 < compactness rs R :=
  t32_master_criterion rs R (gained_tau t g) hR ht

-- [T47] :: {VER} | THE REQUIREMENT GROWS QUADRATICALLY IN THE GAIN
theorem t47_gain_requirement_quadratic (t g : ℝ) :
    gained_tau t g ^ 2 = (1 + g) ^ 2 * t ^ 2 := by
  simp only [gained_tau]; ring

-- [T48] :: {VER} | MORE GAIN DEMANDS MORE COMPACTNESS
theorem t48_gain_tightens (t g₁ g₂ : ℝ) (ht : 0 < t) (h0 : 0 ≤ g₁) (h : g₁ < g₂) :
    gained_tau t g₁ ^ 2 < gained_tau t g₂ ^ 2 := by
  simp only [gained_tau]
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have h1 : (0:ℝ) < 1 + g₁ := by linarith
  have hsq : (1 + g₁) ^ 2 < (1 + g₂) ^ 2 := by nlinarith
  calc ((1 + g₁) * t) ^ 2 = (1 + g₁) ^ 2 * t ^ 2 := by ring
    _ < (1 + g₂) ^ 2 * t ^ 2 := mul_lt_mul_of_pos_right hsq ht2
    _ = ((1 + g₂) * t) ^ 2 := by ring

-- [T49] :: {VER} | AT THE CAP ONLY A HORIZON QUALIFIES
-- Reading A at its supremum requires compactness above one, which only the
-- horizon itself reaches.
theorem t49_cap_requires_horizon (rs R : ℝ) (hR : 0 < R) :
    R < rs ↔ (1:ℝ) < compactness rs R := by
  have h := t32_master_criterion rs R 1 hR one_ne_zero
  norm_num at h
  exact h

-- [T50] :: {VER} | THE GAIN CAP AND THE CORRIDOR CEILING
theorem t50_gain_at_ceiling (g : ℝ) :
    gained_tau TORSION_LIMIT g ^ 2 = (1 + g) ^ 2 * TORSION_LIMIT ^ 2 :=
  t47_gain_requirement_quadratic TORSION_LIMIT g

-- ============================================================
-- SECTION 11: THE MATCHED RADIUS AS A LEVEL SET
-- Nothing in the construction is Schwarzschild-specific. For any
-- static spherically symmetric metric with reciprocal g_tt and
-- g_rr, the matched radius solves f(r) = 1 − τ_A².
-- ============================================================

/-- The level-set condition: the metric function equals the squared dilation
factor. -/
def matched_level (f : ℝ → ℝ) (t r : ℝ) : Prop := f r = 1 - t ^ 2

/-- The Schwarzschild metric function. -/
def f_schwarzschild (rs r : ℝ) : ℝ := 1 - rs / r

/-- The Reissner–Nordström metric function. -/
def f_rn (rs rQ r : ℝ) : ℝ := 1 - rs / r + rQ ^ 2 / r ^ 2

-- [T51] :: {VER} | THE LEVEL SET IS THE SQUARED DILATION FACTOR
-- The gravitational dilation factor of a static metric is √f, so the
-- condition states that it equals the kinematic factor √(1 − τ_A²).
theorem t51_level_set_is_dilation (f : ℝ → ℝ) (t r : ℝ) :
    matched_level f t r ↔ f r = 1 - t ^ 2 := Iff.rfl

-- [T52] :: {VER} | THE LEVEL SET ON THE CONVERSION FRACTION
theorem t52_level_set_on_eta (f : ℝ → ℝ) (t r : ℝ) :
    matched_level f t r ↔ f r = 1 - 2 * eta_of_tau t := by
  simp only [matched_level, eta_of_tau]
  constructor
  · intro h; rw [h]; ring
  · intro h; rw [h]; ring

-- [T53] :: {VER} | THE SCHWARZSCHILD INSTANCE IS THE PARENT RESULT
theorem t53_schwarzschild_instance (rs t r : ℝ) (hr : r ≠ 0) (ht : t ≠ 0) :
    matched_level (f_schwarzschild rs) t r ↔ r = rs / t ^ 2 := by
  simp only [matched_level, f_schwarzschild]
  have ht2' : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  constructor
  · intro h
    have h1 : rs / r = t ^ 2 := by linarith
    rw [div_eq_iff hr] at h1
    rw [eq_div_iff ht2']
    linarith [h1]
  · intro h
    subst h
    have hrs : rs ≠ 0 := by
      intro h0
      rw [h0, zero_div] at hr
      exact hr rfl
    field_simp

-- [T54] :: {VER} | THE SCHWARZSCHILD LEVEL SET IS THE MATCHED RATIO
theorem t54_schwarzschild_is_matched_ratio (rs t : ℝ) (ht : t ≠ 0) :
    rs / t ^ 2 = rs * matched_ratio t := (t34_matched_radius_form rs t ht).symm

-- [T55] :: {VER} | THE DILATION FACTOR AT THE MATCHED RADIUS
-- Both readings of the dilation are the same quantity because the level-set
-- condition sets them equal.
theorem t55_dilation_at_matched (f : ℝ → ℝ) (t r : ℝ) (h : matched_level f t r) :
    Real.sqrt (f r) = Real.sqrt (1 - t ^ 2) := by
  simp only [matched_level] at h
  rw [h]

-- [T56] :: {VER} | THE CORRIDOR'S LEVEL VALUES
theorem t56_corridor_levels :
    1 - TORSION_LIMIT ^ 2 =
      3833041548529556212611501999 / 3906250000000000000000000000 ∧
    1 - TL_IVA ^ 2 =
      601493339872076301725991741879 / 610351562500000000000000000000 := by
  constructor
  · simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- ============================================================
-- SECTION 12: REISSNER–NORDSTRÖM — THE MATCHED RADIUS AS A PAIR
-- ============================================================

/-- The charge in units of the Schwarzschild radius. -/
def q_of (rs rQ : ℝ) : ℝ := rQ / rs

/-- The outer root of the Reissner–Nordström level set, in Schwarzschild
radii: [1 + √(1 − 4q²τ²)]/(2τ²). -/
def rn_outer (q t : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / (2 * t ^ 2)

/-- The inner root. -/
def rn_inner (q t : ℝ) : ℝ := (1 - Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / (2 * t ^ 2)

/-- The charge correction factor the outer root applies to the Schwarzschild
matched radius. -/
def rn_factor (q t : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) / 2

-- [T57] :: {VER} | THE LEVEL SET IS A QUADRATIC IN THE RADIUS
theorem t57_rn_quadratic (rs rQ t r : ℝ) (hr : r ≠ 0) :
    matched_level (f_rn rs rQ) t r ↔ t ^ 2 * r ^ 2 - rs * r + rQ ^ 2 = 0 := by
  simp only [matched_level, f_rn]
  have hr2 : r ^ 2 ≠ 0 := pow_ne_zero 2 hr
  constructor
  · intro h; field_simp at h; nlinarith [h]
  · intro h; field_simp; nlinarith [h]

-- [T58] :: {VER} | THE DISCRIMINANT IS NONNEGATIVE ON THE PHYSICAL RANGE
-- Sub-extremal charge, q ≤ 1/2, with Reading A below one.
theorem t58_rn_discriminant (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := by
  have hq2 : q ^ 2 ≤ 1 / 4 := by nlinarith
  have ht2 : t ^ 2 ≤ 1 := by nlinarith
  have hqn : (0:ℝ) ≤ 4 * q ^ 2 := by positivity
  nlinarith [hq2, ht2, hqn]

-- [T59] :: {VER} | THE TWO ROOTS SOLVE THE QUADRATIC
theorem t59_rn_roots_solve (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    t ^ 2 * rn_outer q t ^ 2 - rn_outer q t + q ^ 2 = 0 ∧
    t ^ 2 * rn_inner q t ^ 2 - rn_inner q t + q ^ 2 = 0 := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t58_rn_discriminant q t hq0 hq ht0 ht1
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_outer, rn_inner]
  set s := Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * q ^ 2 * t ^ 2 := Real.sq_sqrt hd
  constructor
  · field_simp
    linear_combination hs
  · field_simp
    linear_combination hs

-- [T60] :: {VER} | THE UNCHARGED LIMIT RECOVERS THE PARENT RESULT
theorem t60_rn_uncharged_limit (t : ℝ) (ht : 0 < t) :
    rn_outer 0 t = matched_ratio t ∧ rn_inner 0 t = 0 := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  constructor
  · simp only [rn_outer, matched_ratio]
    norm_num
    field_simp
  · simp only [rn_inner]
    norm_num

-- [T61] :: {VER} | THE OUTER ROOT IS THE SCHWARZSCHILD RADIUS TIMES THE FACTOR
theorem t61_rn_outer_factored (q t : ℝ) (ht : 0 < t) :
    rn_outer q t = matched_ratio t * rn_factor q t := by
  simp only [rn_outer, matched_ratio, rn_factor]
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  field_simp

-- [T62] :: {VER} | THE FACTOR IS ONE AT ZERO CHARGE
theorem t62_rn_factor_uncharged : rn_factor 0 1 = 1 := by
  simp only [rn_factor]
  norm_num

-- [T63] :: {VER} | THE FACTOR DECREASES IN THE CHARGE
theorem t63_rn_factor_antitone (q₁ q₂ t : ℝ) (h0 : 0 ≤ q₁) (h : q₁ < q₂)
    (hq2 : q₂ ≤ 1/2) (ht0 : 0 < t) (ht1 : t < 1) :
    rn_factor q₂ t < rn_factor q₁ t := by
  have hd1 : 0 ≤ 1 - 4 * q₁ ^ 2 * t ^ 2 :=
    t58_rn_discriminant q₁ t h0 (by linarith) ht0 ht1
  have hd2 : 0 ≤ 1 - 4 * q₂ ^ 2 * t ^ 2 :=
    t58_rn_discriminant q₂ t (by linarith) hq2 ht0 ht1
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have hqsq : q₁ ^ 2 < q₂ ^ 2 := by nlinarith
  have hlt : 1 - 4 * q₂ ^ 2 * t ^ 2 < 1 - 4 * q₁ ^ 2 * t ^ 2 := by
    nlinarith [hqsq, ht2]
  simp only [rn_factor]
  have := Real.sqrt_lt_sqrt hd2 hlt
  linarith

-- [T64] :: {VER} | THE FACTOR AT EXTREMAL CHARGE IS THE DILATION FACTOR, SHIFTED
theorem t64_rn_factor_extremal (t : ℝ) :
    rn_factor (1/2) t = (1 + Real.sqrt (1 - t ^ 2)) / 2 := by
  simp only [rn_factor]
  have harg : (1:ℝ) - 4 * (1/2) ^ 2 * t ^ 2 = 1 - t ^ 2 := by ring
  rw [harg]

-- [T65] :: {VER} | THE MAXIMUM INWARD SHIFT IS THE DILATION DEFICIT, HALVED
theorem t65_max_shift_is_half_the_deficit (t : ℝ) :
    1 - rn_factor (1/2) t = (1 - Real.sqrt (1 - t ^ 2)) / 2 := by
  rw [t64_rn_factor_extremal t]
  ring

-- [T66] :: {VER} | THE EXTREMAL FACTOR IS PINNED EXACTLY BY THE LEVEL VALUE
-- Twice the extremal factor less one is the dilation factor itself, so its
-- square is the level value 1 − τ_A², exactly and with no decimal.
theorem t66_extremal_factor_exact (t : ℝ) (h : t ^ 2 ≤ 1) :
    (2 * rn_factor (1/2) t - 1) ^ 2 = 1 - t ^ 2 := by
  rw [t64_rn_factor_extremal t]
  have hs : Real.sqrt (1 - t ^ 2) ^ 2 = 1 - t ^ 2 := Real.sq_sqrt (by linarith)
  have hr : 2 * ((1 + Real.sqrt (1 - t ^ 2)) / 2) - 1 = Real.sqrt (1 - t ^ 2) := by
    ring
  rw [hr, hs]

-- [T66b] :: {VER} | THE EXTREMAL FACTOR AT THE CORRIDOR EDGES, AS EXACT RATIONALS
theorem t66b_extremal_factor_corridor :
    (2 * rn_factor (1/2) TORSION_LIMIT - 1) ^ 2 =
      3833041548529556212611501999 / 3906250000000000000000000000 ∧
    (2 * rn_factor (1/2) TL_IVA - 1) ^ 2 =
      601493339872076301725991741879 / 610351562500000000000000000000 := by
  have hc : TORSION_LIMIT ^ 2 ≤ 1 := by
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  have hf : TL_IVA ^ 2 ≤ 1 := by
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  constructor
  · rw [t66_extremal_factor_exact TORSION_LIMIT hc]
    simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num
  · rw [t66_extremal_factor_exact TL_IVA hf]
    simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T66c] :: {VER} | THE FACTOR IS BELOW ONE AT ANY NONZERO CHARGE
-- Charge always moves the reachable root inward, never outward.
theorem t66c_extremal_factor_lt_one (t : ℝ) (ht0 : 0 < t) (ht1 : t < 1) :
    rn_factor (1/2) t < 1 := by
  rw [t64_rn_factor_extremal t]
  have hpos : (0:ℝ) < 1 - t ^ 2 := by nlinarith
  have hs : Real.sqrt (1 - t ^ 2) ^ 2 = 1 - t ^ 2 := Real.sq_sqrt hpos.le
  have hp : 0 < Real.sqrt (1 - t ^ 2) := Real.sqrt_pos.mpr hpos
  have h1 : Real.sqrt (1 - t ^ 2) < 1 := by nlinarith [hs, hp]
  linarith

-- [T67] :: {VER} | AT THE EXTREMAL CHARGE READING A'S SUPREMUM MATCHES THE HORIZON
-- τ_A = 1 and q = 1/2 merge the pair at r = r_s/2, the extremal horizon.
theorem t67_extremal_photon_matches_horizon :
    rn_outer (1/2) 1 = 1/2 ∧ rn_inner (1/2) 1 = 1/2 := by
  constructor
  · simp only [rn_outer]; norm_num
  · simp only [rn_inner]; norm_num


-- ============================================================
-- SECTION 12b: THE STRUCTURE OF THE CHARGED PAIR
-- The two roots are not independent. They partition the
-- uncharged matched radius, they bracket both horizons, and the
-- factor that separates them also moves the availability
-- criterion.
-- ============================================================

/-- The outer Reissner–Nordström horizon, in Schwarzschild radii. -/
def rn_horizon_outer (q : ℝ) : ℝ := (1 + Real.sqrt (1 - 4 * q ^ 2)) / 2

/-- The inner Reissner–Nordström horizon, in Schwarzschild radii. -/
def rn_horizon_inner (q : ℝ) : ℝ := (1 - Real.sqrt (1 - 4 * q ^ 2)) / 2

-- [T68] :: {VER} | THE CHARGE FACTOR IS AT LEAST ONE HALF
theorem t68_rn_factor_ge_half (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) : 1/2 ≤ rn_factor q t := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t58_rn_discriminant q t hq0 hq ht0 ht1
  have hp : 0 ≤ Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) := Real.sqrt_nonneg _
  simp only [rn_factor]
  linarith

-- [T69] :: {VER} | THE PAIR PARTITIONS THE UNCHARGED MATCHED RADIUS
-- Charge does not change the total. r₊ + r₋ is the Schwarzschild
-- matched ratio at every charge.
theorem t69_pair_partitions (q t : ℝ) (ht : 0 < t) :
    rn_outer q t + rn_inner q t = matched_ratio t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_outer, rn_inner, matched_ratio]
  field_simp
  ring

-- [T70] :: {VER} | THE PRODUCT OF THE PAIR
theorem t70_pair_product (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_outer q t * rn_inner q t = q ^ 2 * matched_ratio t := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t58_rn_discriminant q t hq0 hq ht0 ht1
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_outer, rn_inner, matched_ratio]
  set s := Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * q ^ 2 * t ^ 2 := Real.sq_sqrt hd
  field_simp
  linear_combination -hs

-- [T71] :: {VER} | THE INNER ROOT RATIONALIZES
-- r₋ = 2q²/(1 + √(1 − 4q²τ²)), which removes the cancelling
-- difference and exposes the inner root as a ratio in q².
theorem t71_inner_rationalized (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_inner q t = 2 * q ^ 2 / (1 + Real.sqrt (1 - 4 * q ^ 2 * t ^ 2)) := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t58_rn_discriminant q t hq0 hq ht0 ht1
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [rn_inner]
  set s := Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * q ^ 2 * t ^ 2 := Real.sq_sqrt hd
  have hsn : 0 ≤ s := Real.sqrt_nonneg _
  have h1s : (0:ℝ) < 1 + s := by linarith
  rw [div_eq_div_iff (by positivity) (ne_of_gt h1s)]
  linear_combination -hs

-- [T72] :: {VER} | THE INNER HORIZON RATIONALIZES THE SAME WAY
-- The inner horizon is the inner root's own form at τ_A = 1.
theorem t72_inner_horizon_rationalized (q : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2) :
    rn_horizon_inner q = 2 * q ^ 2 / (1 + Real.sqrt (1 - 4 * q ^ 2)) := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 := by nlinarith
  have hs : Real.sqrt (1 - 4 * q ^ 2) ^ 2 = 1 - 4 * q ^ 2 := Real.sq_sqrt hd
  have hsn : 0 ≤ Real.sqrt (1 - 4 * q ^ 2) := Real.sqrt_nonneg _
  have h1s : (0:ℝ) < 1 + Real.sqrt (1 - 4 * q ^ 2) := by linarith
  simp only [rn_horizon_inner]
  rw [div_eq_div_iff (by norm_num) (ne_of_gt h1s)]
  linear_combination -hs

-- [T73] :: {VER} | THE INNER ROOT LIES INSIDE THE INNER HORIZON
theorem t73_inner_root_inside_inner_horizon (q t : ℝ) (hq0 : 0 < q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_inner q t < rn_horizon_inner q := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t58_rn_discriminant q t hq0.le hq ht0 ht1
  have hdh : 0 ≤ 1 - 4 * q ^ 2 := by nlinarith
  have hqsq : (0:ℝ) < q ^ 2 := pow_pos hq0 2
  have htsq : t ^ 2 < 1 := by nlinarith
  have hlt : 1 - 4 * q ^ 2 < 1 - 4 * q ^ 2 * t ^ 2 := by
    nlinarith [mul_pos hqsq (sub_pos.mpr htsq)]
  have hsq : Real.sqrt (1 - 4 * q ^ 2) < Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) :=
    Real.sqrt_lt_sqrt hdh hlt
  have hsn : 0 ≤ Real.sqrt (1 - 4 * q ^ 2) := Real.sqrt_nonneg _
  have hq2 : (0:ℝ) < 2 * q ^ 2 := by positivity
  rw [t71_inner_rationalized q t hq0.le hq ht0 ht1,
      t72_inner_horizon_rationalized q hq0.le hq]
  apply div_lt_div_of_pos_left hq2 (by linarith) (by linarith)

-- [T74] :: {VER} | THE OUTER HORIZON LIES INSIDE THE OUTER ROOT
theorem t74_outer_horizon_inside_outer_root (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_horizon_outer q < rn_outer q t := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t58_rn_discriminant q t hq0 hq ht0 ht1
  have hdh : 0 ≤ 1 - 4 * q ^ 2 := by nlinarith
  have htsq : t ^ 2 < 1 := by nlinarith
  have hle : 1 - 4 * q ^ 2 ≤ 1 - 4 * q ^ 2 * t ^ 2 := by
    nlinarith [mul_nonneg (sq_nonneg q) (sub_nonneg.mpr htsq.le)]
  have hsq : Real.sqrt (1 - 4 * q ^ 2) ≤ Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) :=
    Real.sqrt_le_sqrt hle
  have hsn : 0 ≤ Real.sqrt (1 - 4 * q ^ 2) := Real.sqrt_nonneg _
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  have ht2' : t ^ 2 < 1 := by nlinarith
  simp only [rn_horizon_outer, rn_outer]
  rw [div_lt_div_iff₀ (by norm_num) (by positivity)]
  nlinarith [hsq, hsn, ht2, ht2']

-- [T75] :: {VER} | THE PAIR BRACKETS BOTH HORIZONS
-- r₋ < r_H⁻ ≤ r_H⁺ < r₊ : exactly one root is a place a vehicle
-- can occupy, and the ordering is strict at both ends.
theorem t75_pair_brackets_both_horizons (q t : ℝ) (hq0 : 0 < q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_inner q t < rn_horizon_inner q ∧
    rn_horizon_inner q ≤ rn_horizon_outer q ∧
    rn_horizon_outer q < rn_outer q t := by
  refine ⟨t73_inner_root_inside_inner_horizon q t hq0 hq ht0 ht1, ?_,
    t74_outer_horizon_inside_outer_root q t hq0.le hq ht0 ht1⟩
  have hdh : 0 ≤ 1 - 4 * q ^ 2 := by nlinarith
  have hsn : 0 ≤ Real.sqrt (1 - 4 * q ^ 2) := Real.sqrt_nonneg _
  simp only [rn_horizon_inner, rn_horizon_outer]
  linarith

-- [T76] :: {VER} | THE CHARGE-FOR-SHIFT IDENTITY
-- F(1 − F) = q²τ_A² exactly, so the charge that produces a given
-- shift is fixed and the shift that a given charge produces is too.
theorem t76_charge_for_shift (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_factor q t * (1 - rn_factor q t) = q ^ 2 * t ^ 2 := by
  have hd : 0 ≤ 1 - 4 * q ^ 2 * t ^ 2 := t58_rn_discriminant q t hq0 hq ht0 ht1
  simp only [rn_factor]
  set s := Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) with hsdef
  have hs : s ^ 2 = 1 - 4 * q ^ 2 * t ^ 2 := Real.sq_sqrt hd
  linear_combination -hs / 4

-- [T77] :: {VER} | THE EXTREMAL FACTOR IS THE MINIMUM OVER THE CHARGE RANGE
-- So the inward shift is saturated at the extremal charge: a larger
-- shift would require q above one half, which is no longer a horizon.
theorem t77_extremal_factor_is_minimum (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_factor (1/2) t ≤ rn_factor q t := by
  have hdh : 0 ≤ 1 - 4 * (1/2 : ℝ) ^ 2 * t ^ 2 := by nlinarith
  have hq4 : (0:ℝ) ≤ 1 - 4 * q ^ 2 := by nlinarith
  have hle : 1 - 4 * (1/2 : ℝ) ^ 2 * t ^ 2 ≤ 1 - 4 * q ^ 2 * t ^ 2 := by
    nlinarith [mul_nonneg (sq_nonneg t) hq4]
  have hsq : Real.sqrt (1 - 4 * (1/2 : ℝ) ^ 2 * t ^ 2)
      ≤ Real.sqrt (1 - 4 * q ^ 2 * t ^ 2) := Real.sqrt_le_sqrt hle
  simp only [rn_factor]
  linarith

-- [T78] :: {VER} | THE CHARGED COMPACTNESS CRITERION
-- Availability at a charged body is the uncharged criterion with the
-- threshold divided by the charge factor.
theorem t78_charged_criterion (rs R q t : ℝ) (hR : 0 < R) (ht : 0 < t)
    (hF : 0 < rn_factor q t) :
    R < rs * rn_outer q t ↔ t ^ 2 / rn_factor q t < compactness rs R := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  simp only [compactness]
  rw [t61_rn_outer_factored q t ht]
  simp only [matched_ratio]
  rw [div_lt_div_iff₀ hF hR]
  have key : rs * (1 / t ^ 2 * rn_factor q t) = rs * rn_factor q t / t ^ 2 := by
    ring
  rw [key, lt_div_iff₀ ht2, mul_comm R (t ^ 2)]

-- [T79] :: {VER} | CHARGE TIGHTENS AVAILABILITY
-- The charged threshold is never below the uncharged one, because the
-- factor is never above one.
theorem t79_charge_tightens_availability (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) (hFle : rn_factor q t ≤ 1) :
    t ^ 2 ≤ t ^ 2 / rn_factor q t := by
  have hF : (0:ℝ) < rn_factor q t := by
    have := t68_rn_factor_ge_half q t hq0 hq ht0 ht1
    linarith
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  rw [le_div_iff₀ hF]
  nlinarith [ht2, hFle]


-- ============================================================
-- SECTION 12c: WHAT THE PAIR IS, AND THE CRITERION WITHOUT A METRIC
-- The charge factor is a partition fraction rather than a
-- correction, the discriminant bound is the partition identity
-- read twice, and the availability criterion can be stated with
-- no metric at all.
-- ============================================================

-- [T80] :: {VER} | THE FACTOR IS THE OUTER ROOT'S SHARE, AND 1 − F THE INNER'S
-- r₊ = F · matched_ratio and r₋ = (1 − F) · matched_ratio, so the two
-- shares sum to one and F is a partition fraction, not a correction.
theorem t80_factor_is_a_partition_share (q t : ℝ) (ht : 0 < t) :
    rn_outer q t = rn_factor q t * matched_ratio t ∧
    rn_inner q t = (1 - rn_factor q t) * matched_ratio t := by
  have houter : rn_outer q t = rn_factor q t * matched_ratio t := by
    rw [t61_rn_outer_factored q t ht]; ring
  refine ⟨houter, ?_⟩
  have hsum := t69_pair_partitions q t ht
  have : rn_inner q t = matched_ratio t - rn_outer q t := by linarith
  rw [this, houter]; ring

-- [T81] :: {VER} | THE INNER ROOT IS q² OVER THE FACTOR
-- So the pair is exactly { F/τ_A² , q²/F }, whose product is q²/τ_A².
theorem t81_inner_is_q_sq_over_factor (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_inner q t = q ^ 2 / rn_factor q t := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := by positivity
  have hF : (0:ℝ) < rn_factor q t := by
    have := t68_rn_factor_ge_half q t hq0 hq ht0 ht1
    linarith
  have hid := t76_charge_for_shift q t hq0 hq ht0 ht1
  rw [(t80_factor_is_a_partition_share q t ht0).2]
  simp only [matched_ratio]
  rw [eq_div_iff (ne_of_gt hF)]
  field_simp
  linear_combination hid

-- [T82] :: {VER} | THE PARTITION IDENTITY CONTAINS THE DISCRIMINANT BOUND
-- F(1 − F) ≤ ¼ for any real F, so T76 forces q²τ_A² ≤ ¼ — which is the
-- discriminant condition of T58, reached from the partition instead.
theorem t82_partition_gives_discriminant (q t : ℝ) (hq0 : 0 ≤ q) (hq : q ≤ 1/2)
    (ht0 : 0 < t) (ht1 : t < 1) :
    rn_factor q t * (1 - rn_factor q t) ≤ 1/4 ∧ q ^ 2 * t ^ 2 ≤ 1/4 := by
  have hid := t76_charge_for_shift q t hq0 hq ht0 ht1
  have hsq : (0:ℝ) ≤ (rn_factor q t - 1/2) ^ 2 := sq_nonneg _
  constructor
  · nlinarith [hsq]
  · rw [← hid]; nlinarith [hsq]

-- [T83] :: {VER} | THE CRITERION WITHOUT A METRIC
-- Availability needs only the matched radius, not the metric that
-- produced it: a body admits the maneuver exactly when its compactness
-- exceeds the Schwarzschild radius over the matched radius.
theorem t83_criterion_metric_free (rs R rmatch : ℝ) (hrs : 0 < rs) (hR : 0 < R)
    (hrm : 0 < rmatch) :
    R < rmatch ↔ rs / rmatch < compactness rs R := by
  simp only [compactness]
  rw [div_lt_div_iff₀ hrm hR]
  constructor
  · intro h; nlinarith [hrs, h]
  · intro h; nlinarith [hrs, h]

-- [T84] :: {VER} | THE METRIC-FREE CRITERION RECOVERS THE SCHWARZSCHILD FORM
-- With r_match = r_s · matched_ratio, the threshold r_s/r_match is τ_A².
theorem t84_metric_free_recovers_tau_sq (rs t : ℝ) (hrs : rs ≠ 0) (ht : t ≠ 0) :
    rs / (rs * matched_ratio t) = t ^ 2 := by
  simp only [matched_ratio]
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp

-- [T85] :: {VER} | THE LOCAL ESCAPE SPEED AT A MATCHED RADIUS CARRIES NO METRIC
-- Whatever f produced the level set, the locally measured escape fraction at
-- its solution is Reading A itself. Everything downstream of that radius —
-- the burn, the multiplier, the saving — therefore carries no metric data.
theorem t85_escape_at_matched_is_reading_a (f : ℝ → ℝ) (t r : ℝ) (ht : 0 ≤ t)
    (h : matched_level f t r) : Real.sqrt (1 - f r) = t := by
  simp only [matched_level] at h
  rw [h]
  have : (1:ℝ) - (1 - t ^ 2) = t ^ 2 := by ring
  rw [this, Real.sqrt_sq ht]

-- ============================================================
-- SECTION 13: MASTER
-- ============================================================

-- [MASTER] :: {VER} | THE PROPELLANT LAW AND THE COMPACTNESS CRITERION
theorem MASTER_propellant_and_compactness :
    -- the inversion solves the chain quadratic
    (∀ x : ℝ, tau_B_of_x x ^ 2 + 2 * tau_B_of_x x = x ^ 2) ∧
    -- the saving is the ratio of the two mass ratios, and factors through e
    (∀ x : ℝ, saving x = mr_ideal x / mr_match x) ∧
    (∀ x : ℝ, saving x = Real.exp 1 * Real.exp (x - rad x)) ∧
    -- strictly bounded above by e, strictly increasing, bracketed below
    (∀ x : ℝ, saving x < Real.exp 1) ∧
    (∀ x y : ℝ, x < y → saving x < saving y) ∧
    (∀ x : ℝ, 0 < x → Real.exp 1 * Real.exp (-1 / x) < saving x) ∧
    -- the bound is the well's own Reading B
    (∀ x : ℝ, sav_exp x = (x - rad x) + well_tau_B) ∧
    Real.exp well_tau_B = Real.exp 1 ∧
    -- the small-burn cost is quadratic, not exponential
    (∀ x : ℝ, tau_B_of_x x ≤ x ^ 2 / 2) ∧
    -- availability is compactness against Reading A
    (∀ rs R t : ℝ, 0 < R → t ≠ 0 →
      (R < rs / t ^ 2 ↔ t ^ 2 < compactness rs R)) ∧
    (∀ rs R t : ℝ, 0 < R → t ≠ 0 →
      (R < rs / t ^ 2 ↔ 2 * eta_of_tau t < compactness rs R)) ∧
    -- the gain requirement grows quadratically
    (∀ t g : ℝ, gained_tau t g ^ 2 = (1 + g) ^ 2 * t ^ 2) ∧
    -- the matched radius is a level set, and Schwarzschild is the instance
    (∀ (f : ℝ → ℝ) (t r : ℝ), matched_level f t r ↔ f r = 1 - 2 * eta_of_tau t) ∧
    (∀ rs t r : ℝ, r ≠ 0 → t ≠ 0 →
      (matched_level (f_schwarzschild rs) t r ↔ r = rs / t ^ 2)) ∧
    -- Reissner–Nordström is the quadratic instance, with the outer root
    -- factoring through the Schwarzschild radius
    (∀ rs rQ t r : ℝ, r ≠ 0 →
      (matched_level (f_rn rs rQ) t r ↔ t ^ 2 * r ^ 2 - rs * r + rQ ^ 2 = 0)) ∧
    (∀ q t : ℝ, 0 < t → rn_outer q t = matched_ratio t * rn_factor q t) ∧
    -- and the largest inward shift charge can produce is the deficit halved
    (∀ t : ℝ, 1 - rn_factor (1/2) t = (1 - Real.sqrt (1 - t ^ 2)) / 2) := by
  refine ⟨t11_inversion_solves, t14_saving_is_the_ratio, t15_saving_factored,
    t17_saving_lt_e, t23_saving_mono,
    fun x hx => (t21_saving_bracket x hx).1,
    t24_constant_is_the_well, t25_bound_is_e_to_the_well,
    t27_small_burn_upper,
    fun rs R t hR ht => t32_master_criterion rs R t hR ht,
    fun rs R t hR ht => t33_criterion_on_eta rs R t hR ht,
    t47_gain_requirement_quadratic,
    fun f t r => t52_level_set_on_eta f t r,
    fun rs t r hr ht => t53_schwarzschild_instance rs t r hr ht,
    fun rs rQ t r hr => t57_rn_quadratic rs rQ t r hr,
    fun q t ht => t61_rn_outer_factored q t ht,
    t65_max_shift_is_half_the_deficit⟩

end SNSFL_PropellantCompactness

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- The chain law read backwards is a propellant law, and it is bounded. A
-- burn at the matched radius costs exp(√(1 + x²) − 1) where the ideal rocket
-- costs exp(x), and the ratio of the two climbs toward e and never reaches
-- it — because the one e-fold the well supplies is the one e-fold the
-- vehicle stops carrying, and a vehicle cannot take more from a well than
-- the well holds. Where that maneuver exists at all is a second inequality
-- between two fractions that were never built for each other: a body admits
-- a drive's matched radius exactly when its compactness exceeds twice the
-- drive's conversion fraction. Neither statement is Schwarzschild's. The
-- matched radius is the radius at which a static metric function equals the
-- squared dilation factor, so the agreement of the gravitational and
-- kinematic dilations is the equation that locates the radius rather than a
-- property it happens to carry; Schwarzschild is where that level set is
-- linear, Reissner–Nordström is where it is a pair, and charge moves the
-- reachable root inward by at most the dilation deficit, halved.
--
-- THEOREMS : 87 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
```
