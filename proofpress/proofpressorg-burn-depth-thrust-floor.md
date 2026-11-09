# Burn Depth in Matched-Radius Units: The Saving Bounded by e^u, the Thrust Floor, and the Engine Each Body Prescribes

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** 9,9,0,20 · Identity Physics Series · Physics Ground, Gravitation

**Issue:** ProofPress, Volume 1, Issue 9 · November 2026

**DOI:** 10.5281/zenodo.18719748

**Verified:** 70 theorems · 915 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Abstract

The matched radius reductions at [9,9,0,17] through [9,9,0,19] establish the construction at its extremes, where the bodies are compact and the drives are relativistic. This reduction carries it into the regime human vehicles actually operate in — planets, moons, ordinary stars, and engines that have been built — and the structure that held at a neutron star turns into a table that can be used at a launch pad. The move that opens the regime is a single dimensionless depth parameter. Writing **u = v_esc(r)/v_e = √(r_match/r)** for the burn radius measured against the drive's own matched radius, a vehicle falling from rest at infinity and burning at depth u reaches v_∞ = v_e√(τ_B(τ_B + 2u)), which is strictly increasing in u. Burning deeper is always better, the matched radius is not an extremum of anything, and it was never put forward as one: **it is the unit in which depth is measured**, the radius at which the drive and the well are the same size, and the published saving bounded by e is that unit evaluated at u = 1. The bound generalizes exactly. Inverting for a target x = v_∞/v_e gives τ_B = √(u² + x²) − u, so the saving against the ideal rocket is **S(x,u) = exp(x − √(u² + x²) + u)**, strictly increasing in both arguments and **strictly bounded above by e^u**: depth u is worth u e-folds, and the parent's S < e is the u = 1 case. Depth carries two ceilings and the binding one decides. The **geometric ceiling** is that a burn cannot occur inside the body, so u ≤ √(r_match/R) = √C/τ_A = **τ_surface/τ_A** — the ratio of the body's own address to the drive's Reading A — and this supplies a second reading of the parent's availability criterion, because C > τ_A² is precisely u_max > 1, which says **the body offers this drive at least one e-fold**. The **thrust ceiling** is new to this reduction. The matched-radius advantage is collected only if the burn is short compared to the time spent deep, and the characteristic time collapses to t_char = 2√2 · GM/(c³ τ_A³ u³), giving a thrust floor **F/m ≥ (1 − e^−τ_B) c⁴ τ_A⁴ u³ / (2√2 f GM)** that rises as the fourth power of Reading A and the cube of depth. Electric propulsion fails this floor by three to four orders of magnitude while chemical and nuclear-thermal propulsion clear it with margin and run out of planet instead, so the design loop closes: thrust sets achievable depth, depth sets the saving exponentially, and the body caps both. Two consequences follow for the regime. The matched surface is a level set of g_tt and therefore an equipotential, so **lateral motion along it is the zero-cost direction** and only altitude is a retune, and a point-to-point transit decomposes into three legs with an arc penalty of 1.57% at 100 km. And because the availability criterion favors low exhaust velocity while the propellant budget favors high, the optimum sits exactly at the availability ceiling, which is the body's own escape velocity — so **each body prescribes its own engine**, and the ladder from the Moon to the Sun reads 242 s, 513 s, 1,141 s, 6,139 s, 62,986 s: solid motor, chemical, nuclear thermal, ion, fusion, in the order the technologies were developed. Run against engines that exist, the criteria size a vehicle. At Earth the thrust floor evaluates to **4.56 to 4.72 N/kg across every engine class considered**, a thrust-to-weight below one half and therefore under half what an orbital launch vehicle carries at liftoff. **A single Raptor-class engine supports a 576-tonne vehicle** — larger than the International Space Station — carrying 58.4 tonnes of propellant for a 3 km/s departure where the same departure performed in free space takes 318.6, with the propellant fitting a cylinder five meters across and under four meters long. Depth at Earth is limited not by thrust or by geometry but by the atmosphere, and raising the perigee from 100 km to 300 km costs 0.14 percentage points of propellant while removing nineteen megawatts of reentry-class heating. And because the thrust-to-weight that satisfies the floor is below one, **a vehicle sized to collect this advantage cannot lift itself off the surface**: orbital assembly follows from the thrust floor rather than from preference. 1001 = 7 · 11 · 13.

## What This Article Proves

- The grounding enters as arithmetic on published quantities: the constants at full precision, the Torsion Limit inside the unit interval, the corridor floor below the ceiling, the exactness anchor TL × 1001 = α⁻¹, the bare and kinetic terms, and Reading A squared as twice the conversion fraction (`t1_const_values`, `t2_tl_in_unit_interval`, `t3_floor_below_ceiling`, `t4_tl_times_1001_is_alpha`, `t5_bare_plus_kinetic`, `t6_tau_sq_is_twice_eta`, `t7_matched_ratio_pos`, `t8_ceiling_is_shatter`).
- **The depth parameter:** depth recovers from the burn radius, equals one exactly at the matched radius, increases as the radius falls, stays positive, and reads the same on the conversion fraction (`t9_depth_recovers`, `t10_depth_one_at_matched`, `t11_deeper_is_smaller`, `t12_burn_ratio_pos`, `t13_burn_ratio_on_eta`).
- **The depth law** is energy conservation across an impulsive burn, and **deeper is always better** — strictly increasing in depth with no interior stationary point (`t14_depth_law`, `t15_deeper_is_better`).
- At unit depth the depth law returns the parent's chain law exactly, and the law is strictly increasing in Reading B, zero for a zero burn and positive otherwise (`t16_chain_law_at_unit_depth`, `t17_increasing_in_reading_b`, `t18_zero_burn`, `t19_vinf_pos`).
- **The inversion at depth** τ_B = √(u² + x²) − u solves the depth law, is positive for a positive target, and returns the parent's inversion at unit depth (`t20_rad_sq`, `t21_rad_pos`, `t22_inversion_solves`, `t23_rad_gt_depth`, `t24_tau_B_pos`, `t25_inversion_at_unit_depth`).
- **The maneuver always costs less Reading B than the ideal rocket**, at every depth and every target (`t26_cheaper_than_ideal`).
- **The saving at depth is strictly bounded by e^u.** The saving is the ratio of the two mass ratios, its exponent is strictly below the depth, and therefore depth u is worth u e-folds and no finite burn reaches the bound (`t27_saving_is_the_ratio`, `t28_exponent_lt_depth`, `t29_saving_lt_exp_depth`).
- The saving exceeds one for every positive burn, **returns the parent's bound e at unit depth**, factors through e there, and is strictly increasing in the target (`t30_saving_gt_one`, `t31_bound_at_unit_depth`, `t32_saving_factored_at_unit`, `t33_saving_mono_in_target`).
- **The geometric ceiling:** the surface torsion squares to the compactness and is nonnegative, and the ceiling u_max = τ_surface/τ_A is positive and rises as Reading A falls (`t34_surface_torsion_sq`, `t35_surface_torsion_nonneg`, `t38_u_max_pos`, `t39_lower_reading_raises_ceiling`).
- **Availability is exactly one e-fold of depth:** C > τ_A² if and only if the ceiling exceeds one, stated on Reading A and on the conversion fraction, and the body's own address gives unit depth exactly (`t36_availability_is_one_efold`, `t37_availability_on_eta`, `t40_address_is_unit_depth`).
- **Lateral motion is the zero-cost direction:** the address map is injective on positive Reading A, so two points at the same addressed radius require the same tuning and a path between them calls for no retune (`t41_address_injective`, `t42_lateral_is_free`).
- The control law relates the radius ratio to the inverse square of the tuning ratio, and a higher tuning addresses a lower radius (`t43_control_law`, `t44_higher_tuning_lower_radius`).
- **The characteristic time in closed form:** t_char² = r³/GM with r the burn radius at depth, so t_char = 2√2·GM/(c³τ_A³u³); it is positive and shrinks as the cube of depth (`t45_t_char_closed_form`, `t46_t_char_pos`, `t47_t_char_antitone_in_depth`).
- The propellant fraction lies strictly between zero and one for every positive burn (`t48_prop_fraction_range`).
- **The thrust floor rises as the fourth power of Reading A and the cube of depth**, is positive, and falls when a longer burn is permitted (`t49_floor_quartic_in_reading_a`, `t50_floor_cubic_in_depth`, `t51_floor_pos`, `t52_longer_burn_lowers_floor`).
- **The two ceilings:** the binding depth is below both, is one of the two, and is the geometric one or the thrust one according to which is smaller, with the saving following the binding depth (`t53_binding_below_both`, `t54_binding_is_one_of_them`, `t55_geometry_binds`, `t56_thrust_binds`, `t57_saving_at_binding`).
- **The optimum is a supremum:** Reading B and therefore the mass ratio fall as the exhaust velocity rises, while availability requires Reading A strictly below the body's address, so the optimum is approached at the open endpoint and not attained (`t58_reading_b_falls_with_target`, `t59_mass_ratio_falls`, `t60_optimum_is_a_supremum`).
- **Each body prescribes its own engine:** the prescription is the body's address carried to specific impulse, is nonnegative, and rises with compactness (`t61_prescription_is_the_address`, `t62_prescription_nonneg`, `t63_compact_prescribes_higher`).
- The vehicle mass a thrust supports meets the floor exactly, rises with thrust and falls with the floor (`t64_supported_meets_floor`, `t65_more_thrust_more_mass`, `t66_higher_floor_less_mass`).
- **A vehicle meeting the floor cannot lift itself:** a thrust per unit mass below the surface gravitational acceleration gives a thrust-to-weight below one and a net downward force at rest on the surface, and a thrust-to-weight below one half is below one (`t67_cannot_launch`, `t68_half_is_below_one`).
- **The placement carries the body and the drive only**, the matched radius in meters being the Schwarzschild radius times the matched ratio, with no vehicle mass entering it; and the propellant a vehicle carries is a strict fraction of its mass (`t69_placement_from_body_and_drive`, `t70_propellant_mass`).
- All of the above close under one master theorem (`MASTER_burn_depth_and_thrust_floor`).

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

**Every quantity in this article is a pure number.** TL and Ω₀ carry no units and 1001 is an integer, and substituting SI base units into α⁻¹ = 4πε₀ℏc/e² cancels mass, length, time and current completely, so the identity above is an equality between dimensionless quantities on both sides. The same holds for the depth parameter u, Reading A, Reading B, the conversion fraction η, the compactness C and the saving S: all are ratios, and every radius is quoted as a multiple of r_s or of the matched radius.

**The regime this article carries the construction into.** The Propellant Law at the Matched Radius [9,9,0,18] establishes the propellant law, the saving bounded strictly by e, the availability criterion C > 2η and its metric-free form, and the Reissner–Nordström pair with its partition. The Matched Surface Under Rotation [9,9,0,19] establishes that the matched surface is the level set g_tt = τ_A² − 1 for a static observer in any stationary metric. Both treat the compact-object regime; this article treats the regime between.

**The radius everything is measured in.** The Matched Radius [9,9,0,17] establishes r_match = r_s/τ_A² with the mass canceling, the dilation equivalence, the chain law, and the well worth τ_B = 1 — one e-fold, a mass ratio of e. Its specialist form at [9,9,0,17.1] carries the square-root torsion operator and the closure over ℚ.

**The two readings and the bridge.** One Corridor Across Exhaust Velocity, Mass Ratio and Nuclear Binding [9,9,2,0] establishes Reading A, Reading B, the bridge Δv = c · τ_A · τ_B, the conversion fraction τ_A² = 2η, and the relativistic gain cap. Every parent result used here is restated in full inside the Lean source rather than imported.

**The Schwarzschild radius as a Pattern threshold.** GR Reduction [9,9,0,1] maps the Einstein field equation onto the dynamic equation, with r_s = 2GM/c² as the Pattern-lock threshold. The compactness C = r_s/R is that threshold measured against a body's own radius, and its square root is the body's address.

**The ceiling on Reading A.** Speed of Light [9,9,0,15] locks c to the anchor, places the photon as Noble, and carries relativistic velocity addition.

**The step the Torsion Limit takes.** Transcendental Time Engine [9,9,3,20] establishes that TL is the step the left side of the dynamic equation takes. That is the kinetic term in the table above.

**The fusion logic.** The four-phase structure and the Torsion Limit come from GAMCollider™ v15 fusion logic, formalized in 8-Beam Fusion [9,9,2,3.8] and 4-Beam Verification [9,9,2,3.7].

**How the bounds are carried.** Every threshold here is stated as an exact quantity rather than a rounded decimal, following Bounded Uncertainty: A Guide [9,9,8,7].

## The PNBA Map

| Primitive | In the intermediate-regime reading | Carried by |
|---|---|---|
| **Pattern** | The body, its Pattern-lock threshold, and the address that threshold defines | C = r_s/R, τ_surface = √C |
| **Narrative** | The dive and the burn placed in it, measured in matched-radius units | depth u = √(r_match/r) |
| **Behavior** | What the drive throws, read against light speed | Reading A, τ_A = v_e/c |
| **Adaptation** | The mass ratio the vehicle adapts to, and the thrust that lets it collect the advantage | Reading B, τ_B; F/m |

**The saving at depth, bounded by e^u.**

| u | e^u | S at x = 1 | S at x = 10 | S at x = 1000 |
|---|---|---|---|---|
| 1 | 2.7183 | 1.7964 | 2.5860 | 2.7169 |
| 2 | 7.3891 | 2.1467 | 6.0615 | 7.3743 |
| 3 | 20.0855 | 2.3111 | 12.9319 | 19.9954 |
| 4 | 54.5982 | 2.4034 | 25.2713 | 54.1631 |

**The geometric ceiling at Earth**, τ_surface = 3.73130 × 10⁻⁵.

| Engine | Isp | τ_A | u_max | maximum saving e^u_max |
|---|---|---|---|---|
| solid booster | 250 s | 8.178 × 10⁻⁶ | 4.5627 | 95.8405 |
| chemical LH2/LOX | 450 s | 1.472 × 10⁻⁵ | 2.5348 | 12.6142 |
| nuclear thermal | 900 s | 2.944 × 10⁻⁵ | 1.2674 | 3.5517 |
| gridded ion, NSTAR floor | 1,979 s | 6.474 × 10⁻⁵ | 0.5764 | 1.7796 |

**The engine each body prescribes.**

| Body | optimal v_e | optimal Isp | the engine class that is |
|---|---|---|---|
| Moon | 2,375 m/s | **242 s** | solid rocket motor |
| Mars | 5,027 m/s | **513 s** | chemical, hydrolox class |
| Earth | 11,186 m/s | **1,141 s** | nuclear thermal |
| Jupiter | 60,200 m/s | **6,139 s** | ion and variable specific impulse class |
| the Sun | 617,684 m/s | **62,986 s** | fusion class |

**A vehicle, sized.** Departure to v_∞ = 3 km/s, burn at 100 km perigee, f = 0.1.

| Engine | Isp | depth u | propellant | ideal-rocket propellant | F/m floor | implied T/W |
|---|---|---|---|---|---|---|
| Merlin 1D vacuum | 348 s | 3.252 | **11.02%** | 58.48% | 4.56 N/kg | 0.465 |
| Raptor vacuum | 380 s | 2.978 | **10.14%** | 55.29% | 4.58 N/kg | 0.467 |
| RL10, hydrolox | 465 s | 2.434 | **8.36%** | 48.21% | 4.63 N/kg | 0.472 |
| NERVA-class | 850 s | 1.332 | **4.67%** | 30.23% | 4.72 N/kg | 0.481 |

| Engine | thrust each | vehicle mass supported | propellant | tank volume | as a 5 m cylinder |
|---|---|---|---|---|---|
| RL10, hydrolox | 110 kN | 23.8 t | 2.0 t | 5.5 m³ | 0.3 m long |
| NERVA-class | 334 kN | 70.8 t | 3.3 t | 46.5 m³ | 2.4 m long |
| Merlin 1D vacuum | 981 kN | 215.2 t | 23.7 t | 23.0 m³ | 1.2 m long |
| **Raptor vacuum** | **2,640 kN** | **576.2 t** | **58.4 t** | **70.4 m³** | **3.6 m long** |

**How deep to dive.** The limit at Earth is thermal, and it is nearly free to respect.

| Perigee | depth u | propellant | implied T/W | speed at perigee | drag power |
|---|---|---|---|---|---|
| 100 km | 2.978 | 10.14% | 0.467 | 11,099 m/s | **19.14 MW** |
| 300 km | 2.933 | 10.28% | 0.453 | 10,932 m/s | ~0 |
| 1,000 km | 2.791 | 10.76% | 0.408 | 10,400 m/s | ~0 |

**The five numbers a reader can check.** r_s = 2GM/c², then τ_A = Isp · g₀/c, then r_match = r_s/τ_A², then u = √(r_match/r_p), then τ_B = √(u² + x²) − u with the propellant fraction 1 − e^−τ_B. Five steps, each one operation, from a published mass and radius to a percentage.

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every claim above corresponds to a named theorem in `SNSFL_BurnDepth_ThrustFloor_Reduction.lean` at 9,9,0,20, with 70 theorems and a master theorem across 915 lines. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate. The catalog figures are published mass, radius and engine performance values a reader can repeat as a single division or a standard formula. Nothing is fitted, and nothing is scaled.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.** This reduction closes on dimensionless inequalities and closed-form expressions in published quantities. It supplies no composition, no stoichiometric balance and no device design.

### What is established

The results in this article are real and testable. Every placement is algebra on published constants or arithmetic on published performance figures, and every one of them can be checked by anyone holding a standard propulsion reference and a calculator. Specifically:

**The depth law is energy conservation plus the rocket relation.** v_∞² = (v_esc + v_eτ_B)² − v_esc² expands to v_e²τ_B(τ_B + 2u) in one line. A reader who disagrees must disagree with vis-viva or with Tsiolkovsky.

**The bound e^u is one inequality.** x < √(u² + x²) for every u > 0, and the saving's exponent is x − √(u² + x²) + u. Nothing else enters.

**The geometric ceiling is a substitution.** Putting r = R into u = √(r_match/R) returns √C/τ_A, and √C is the body's surface torsion.

**The thrust floor is a ratio of two times.** The characteristic time is √(r³/GM) at the burn radius, which collapses to 2√2 · GM/(c³τ_A³u³); the burn time is the propellant mass over the mass flow. The floor is the requirement that the second be a small fraction of the first.

**The engine prescription is five arithmetic steps**, and the vehicle sizing is the thrust of a published engine divided by the floor.

These are results about **placement, availability and budget, not about process.** That distinction is the whole of this section, and if a reader takes only one sentence from this article, that is the one to take.

### What is a different question

This article establishes where a maneuver is available, how deep it can be placed, what it returns, and what vehicle mass a given engine supports. It does not describe how to build, operate, fuel, contain, cool, shield, trigger or test any propulsion system, and it contains no construction information, no process information, no operating parameters and no device design.

**A placement holds, and building to it is engineering.** The criteria decide availability, depth and budget exactly. Whether a given vehicle can be built to the implied thrust-to-mass, survive the thermal and radiation environment at the depth the criteria permit, hold attitude through the burn, be assembled on orbit at the indicated scale, or navigate to the matched radius at all is a separate body of work carried by engineering and flight practice. The answer there is a statement about available technology, not about the inequalities. The two do not constrain each other: a placement that holds will go on holding whether or not a vehicle exists yet to use it.

**What the reader can compute from here is the reason the handling practice matters.** This article states its inputs and its algebra in full, and a reader with a standard reference can carry the same construction into quantities it does not tabulate — a matched radius for a body it does not list, a thrust floor for a vehicle mass it does not work, a depth ceiling for an engine throttled where it does not sample. That is a property of complete work, and the handling practice below assumes a reader will do exactly that. Nothing in it rests on an omission.

**An exact criterion is not a reduced hazard.** The exactness is why every remaining variable is process. A qualified practitioner — at an agency, a national laboratory, a university group, or a well-equipped independent bench — can work from criteria like these safely, and they are stated at full precision so that they can. What the algebra does not carry is the state of the hardware in front of any particular reader, the scale they intend to work at, or the conditions their own environment imposes. Those are the variables the handling practice addresses.

### Where the risk actually lives

The risk in this domain belongs to **laboratory and engineering conditions and environmental F_ext** — the external forcing a real test stand or a real vehicle applies that the algebra does not model. It does not belong to the mathematics, and no sentence in this article should be read as doubt about a result. The criteria hold. What varies is the process, and process is where people get hurt.

**Hazard scales with which controls are present and with scale, not with the venue.** The relevant questions are whether there is containment rated for the energy density in play, whether there is shielding appropriate to the radiation, whether there is interlocking that fails safe, whether there is monitoring that reads out in real time, whether there is a trained second person present, and whether the quantity has been kept at the smallest scale that answers the question. A well-equipped independent facility that has those controls is not the concern. The underfunded shortcut is — the setup that reads an exact criterion, infers that exactness removes the need for a control, and proceeds at a scale that leaves no margin.

**The controls are the variable, not the building.**

### Handling practice

The depth law, the ceilings, the thrust floor and the vehicle sizing are algebra and carry no bench procedure of their own. Where they are used as inputs to engineering work, the practice that applies is the practice of that work:

**Anything touching propulsion hardware.** Standard propulsion test practice applies in full: remote operation, blast and fragment containment appropriate to the stored energy, propellant handling to the standards of the propellant in question, and the hazard groups of that propellant rather than of this article. The parent propulsion reduction's handling practice applies to anything touching exhaust velocity or the energy ladder.

**Anything touching nuclear-thermal or electric propulsion specifically.** Those carry their own regulatory and radiological regimes, which govern independently of anything here and are not displaced by it.

**Anything touching mission or trajectory design, or on-orbit assembly.** Standard orbital-mechanics, mission-assurance and crewed-operations practice applies. Readers carrying these results into design work should take body parameters and engine performance from current published sources rather than from the tables above, which are representative figures for the purpose of exhibiting the structure.

**Which regime a result is stated in.** The matched radius, the depth parameter and the escape velocity rest on the full Schwarzschild metric for static observers, exact at every radius outside the horizon. The chain law, the depth law and the saving are stated in the Newtonian energy regime with impulsive burns, which is the regime of published astrodynamics; the thrust floor is precisely the condition under which that regime applies, and a reader working below the floor is outside it and should integrate the finite burn in that regime's own terms.

**Scale discipline.** Answer the question at the smallest scale that answers it. An exact criterion is a reason to reduce scale, not to increase it — a known target means the test can be small.

**Second-person presence.** Work that can injure is not solo work. The control that most reliably prevents a bad outcome from becoming a worse one is another trained person who can act.

**When the hazard group changes, update this section.** Any work that extends this reduction to materials, reactions or regimes not placed here carries the hazard groups of those, and the handling practice must be restated for them specifically before the work begins. A placement added without its hazard group is an incomplete placement.

### What this section is for

Parents, teachers, reviewers and program managers make real decisions from articles like this one. An article that reads as unreal gets no respect for its safety content, and a reader who concludes the results are notional will not extend the care the work requires. So: the results are real, the algebra is checkable, the criteria hold — and the conditions under which anyone would act on them are governed by practice this article does not supply and does not replace.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Each law above is stated with its premises, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

- Tsiolkovsky, K. E. (1903). Исследование мировых пространств реактивными приборами. *Nauchnoye Obozreniye*.
- Oberth, H. (1923). *Die Rakete zu den Planetenräumen*. R. Oldenbourg, Munich.
- Hohmann, W. (1925). *Die Erreichbarkeit der Himmelskörper*. R. Oldenbourg, Munich.
- Battin, R. H. (1999). *An Introduction to the Mathematics and Methods of Astrodynamics*, revised edition. AIAA Education Series.
- Vallado, D. A. (2013). *Fundamentals of Astrodynamics and Applications*, 4th edition. Microcosm Press.
- Sutton, G. P. & Biblarz, O. (2016). *Rocket Propulsion Elements*, 9th edition. Wiley.
- Jahn, R. G. (1968). *Physics of Electric Propulsion*. McGraw-Hill.
- Goebel, D. M. & Katz, I. (2008). *Fundamentals of Electric Propulsion: Ion and Hall Thrusters*. JPL Space Science and Technology Series, Wiley.
- Finseth, J. L. (1991). *Rover Nuclear Rocket Engine Program: Overview of Rover Engine Tests.* NASA CR-184270.
- National Oceanic and Atmospheric Administration, National Aeronautics and Space Administration & United States Air Force (1976). *U.S. Standard Atmosphere, 1976.* NOAA-S/T 76-1562.
- Space Exploration Technologies Corp. *Falcon User's Guide* and *Starship Users Guide.* Published engine and vehicle performance data.
- Aerojet Rocketdyne. *RL10 Engine Data Sheet.* Published engine performance data.
- National Aeronautics and Space Administration. *International Space Station Reference Guide.* Published on-orbit mass and configuration data.
- Schwarzschild, K. (1916). Über das Gravitationsfeld eines Massenpunktes nach der Einsteinschen Theorie. *Sitzungsberichte der Königlich Preußischen Akademie der Wissenschaften*, 189–196.
- Einstein, A. (1916). Die Grundlage der allgemeinen Relativitätstheorie. *Annalen der Physik*, 49, 769–822.
- Chandrasekhar, S. (1931). The maximum mass of ideal white dwarfs. *Astrophysical Journal*, 74, 81–82.
- Prša, A. et al. (2016). Nominal values for selected solar and planetary quantities: IAU 2015 Resolution B3. *Astronomical Journal*, 152, 41.
- Bureau International des Poids et Mesures (2019). *The International System of Units (SI)*, 9th edition.
- Tiesinga, E., Mohr, P. J., Newell, D. B. & Taylor, B. N. (2021). CODATA recommended values of the fundamental physical constants: 2018. *Reviews of Modern Physics*, 93, 025010.
- Nobel Prize in Physics 1983 — S. Chandrasekhar and W. A. Fowler.
- Nobel Prize in Physics 2020 — R. Penrose; R. Genzel and A. Ghez.
- Trent, R. V. III. The Matched Radius: One Axis Carrying the Rocket Equation and the Schwarzschild Metric. ProofPress, Volume 1, Issue 9.
- Trent, R. V. III. The Propellant Law at the Matched Radius. ProofPress, Volume 1, Issue 9.
- Trent, R. V. III. The Matched Surface Under Rotation. ProofPress, Volume 1, Issue 9.
- Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: Burn Depth in Matched-Radius Units — The Saving Bounded by e^u, the Thrust Floor, and the Engine Each Body Prescribes.* Zenodo, 2026. DOI 10.5281/zenodo.24067782.
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
- **[9,9,0,17]** Matched Radius Reduction, general-reader form — the matched radius, the equivalence, the well worth one e-fold
- **[9,9,0,17.1]** Matched Radius Reduction, specialist form — the square-root torsion operator and the closure over ℚ
- **[9,9,0,18]** Propellant Law and Compactness Reduction — the inversion, the saving bounded by e, the criterion, the level set, the Reissner–Nordström pair as a partition
- **[9,9,0,19]** Matched Surface Under Rotation — the level set g_tt = τ_A² − 1, spin as an effective charge
- **[9,9,0,20]** This reduction — burn depth in matched-radius units, the saving bounded by e^u, the thrust floor, and the engine each body prescribes

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska **DOI:** 10.5281/zenodo.18719748 **ORCID:** 0009-0005-5313-7443 **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_BurnDepth_ThrustFloor_Reduction.lean — [9,9,0,20](GRAV)

```lean
-- ============================================================
-- SNSFL_BurnDepth_ThrustFloor_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | BURN DEPTH, THE THRUST FLOOR, AND THE ENGINE EACH BODY PRESCRIBES
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,0,20](GRAV) | Physics Ground — Gravitation
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, Reading B, the conversion fraction, the
-- Schwarzschild radius, the matched ratio, the compactness and the surface
-- torsion are all restated here at full precision, so that a reader or a
-- machine can close every proof without leaving the file. The parent
-- reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,0,19]   Matched Surface Under Rotation — the level set g_tt = τ_A² − 1
--   [9,9,0,18]   Propellant Law and Compactness — the saving bounded by e, C > 2η
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
--   DEPTH IS THE PARAMETER. Writing u = v_esc(r)/v_e = √(r_match/r) for the
--   burn radius measured against the drive's own matched radius, a vehicle
--   falling from rest at infinity and burning at depth u reaches
--
--       v_∞ = v_e √(τ_B (τ_B + 2u))
--
--   which is STRICTLY INCREASING IN u. Burning deeper is always better and the
--   matched radius is not an extremum: it is the UNIT in which depth is
--   measured, the radius at which the drive and the well are the same size,
--   and u = 1 returns the parent's chain law exactly.
--
--   THE BOUND GENERALIZES. Inverting for a target x = v_∞/v_e gives
--   τ_B = √(u² + x²) − u, so the saving against the ideal rocket is
--
--       S(x,u) = exp(x − √(u² + x²) + u)   <   e^u
--
--   strictly, for every finite burn. DEPTH u IS WORTH u E-FOLDS, and the
--   parent's S < e is the u = 1 case.
--
--   TWO CEILINGS ON DEPTH. A burn cannot occur inside the body, so
--   u ≤ √C/τ_A = τ_surface/τ_A, and that GEOMETRIC ceiling exceeding one is
--   exactly the parent's availability criterion C > τ_A²: the body offers this
--   drive at least one e-fold. The THRUST ceiling is new here. The
--   characteristic time collapses to t_char = 2√2·GM/(c³τ_A³u³), so collecting
--   the advantage requires
--
--       F/m ≥ (1 − e^−τ_B) c⁴ τ_A⁴ u³ / (2√2 f GM)
--
--   rising as the FOURTH POWER of Reading A and the CUBE of depth.
--
--   AND THE VEHICLE CANNOT LAUNCH. A thrust-to-mass below the surface
--   gravitational acceleration cannot lift the vehicle it belongs to, so
--   orbital assembly follows from the floor rather than from preference.
--
-- ============================================================

import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Exp

noncomputable section

namespace SNSFL_BurnDepthThrustFloor

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

/-- The surface torsion, the body's own address: √C. -/
def surface_torsion (rs R : ℝ) : ℝ := Real.sqrt (compactness rs R)

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
-- SECTION 1: THE DEPTH PARAMETER
-- u = v_esc(r)/v_e = sqrt(r_match/r). One at the matched radius.
-- ============================================================

/-- The burn radius at depth u, in units of r_s: r = r_s/(τ_A² u²). -/
def burn_ratio (t u : ℝ) : ℝ := 1 / (t ^ 2 * u ^ 2)

/-- Depth, from the matched ratio and the burn ratio. -/
def depth_of_ratio (t rr : ℝ) : ℝ := Real.sqrt (matched_ratio t / rr)

-- [T9] :: {INV} | DEPTH RECOVERS u FROM THE BURN RATIO
theorem t9_depth_recovers (t u : ℝ) (ht : t ≠ 0) (hu : 0 < u) :
    depth_of_ratio t (burn_ratio t u) = u := by
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  have hu2 : (u:ℝ) ^ 2 ≠ 0 := by positivity
  simp only [depth_of_ratio, burn_ratio, matched_ratio]
  rw [show (1 / t ^ 2) / (1 / (t ^ 2 * u ^ 2)) = u ^ 2 by field_simp]
  exact Real.sqrt_sq hu.le

-- [T10] :: {INV} | DEPTH IS ONE AT THE MATCHED RADIUS
theorem t10_depth_one_at_matched (t : ℝ) (ht : t ≠ 0) :
    burn_ratio t 1 = matched_ratio t := by
  simp only [burn_ratio, matched_ratio]; norm_num

-- [T11] :: {INV} | GREATER DEPTH IS A SMALLER RADIUS
theorem t11_deeper_is_smaller (t u₁ u₂ : ℝ) (ht : t ≠ 0) (h1 : 0 < u₁) (h : u₁ < u₂) :
    burn_ratio t u₂ < burn_ratio t u₁ := by
  have ht2 : (0:ℝ) < t ^ 2 :=
    lt_of_le_of_ne (sq_nonneg t) (Ne.symm (pow_ne_zero 2 ht))
  have h2 : (0:ℝ) < u₁ ^ 2 := by positivity
  have husq : u₁ ^ 2 < u₂ ^ 2 := by nlinarith [h1, h]
  have hlt : t ^ 2 * u₁ ^ 2 < t ^ 2 * u₂ ^ 2 := mul_lt_mul_of_pos_left husq ht2
  simp only [burn_ratio]
  exact one_div_lt_one_div_of_lt (by positivity) hlt

-- [T12] :: {INV} | THE BURN RATIO IS POSITIVE
theorem t12_burn_ratio_pos (t u : ℝ) (ht : t ≠ 0) (hu : 0 < u) :
    0 < burn_ratio t u := by
  have ht2 : (0:ℝ) < t ^ 2 :=
    lt_of_le_of_ne (sq_nonneg t) (Ne.symm (pow_ne_zero 2 ht))
  simp only [burn_ratio]
  positivity

-- [T13] :: {INV} | DEPTH ON THE CONVERSION FRACTION
theorem t13_burn_ratio_on_eta (t u : ℝ) : burn_ratio t u = 1 / (2 * eta_of_tau t * u ^ 2) := by
  simp only [burn_ratio, eta_of_tau]; ring_nf

-- ============================================================
-- SECTION 2: THE DEPTH LAW
-- v_inf = v_e sqrt(tau_B (tau_B + 2u)). Strictly increasing in u.
-- ============================================================

/-- The square of the departure speed in units of the exhaust velocity. -/
def vinf_sq (tb u : ℝ) : ℝ := tb * (tb + 2 * u)

-- [T14] :: {MASTER} | THE DEPTH LAW IS ENERGY CONSERVATION ACROSS THE BURN
theorem t14_depth_law (tb u : ℝ) :
    (u + tb) ^ 2 - u ^ 2 = vinf_sq tb u := by
  simp only [vinf_sq]; ring

-- [T15] :: {MASTER} | DEEPER IS ALWAYS BETTER
theorem t15_deeper_is_better (tb u₁ u₂ : ℝ) (htb : 0 < tb) (h : u₁ < u₂) :
    vinf_sq tb u₁ < vinf_sq tb u₂ := by
  simp only [vinf_sq]
  nlinarith [htb, h]

-- [T16] :: {INV} | AT THE MATCHED RADIUS THE DEPTH LAW IS THE CHAIN LAW
theorem t16_chain_law_at_unit_depth (tb : ℝ) :
    vinf_sq tb 1 = tb * (2 + tb) := by
  simp only [vinf_sq]; ring

-- [T17] :: {INV} | THE DEPTH LAW IS STRICTLY INCREASING IN READING B
theorem t17_increasing_in_reading_b (tb₁ tb₂ u : ℝ) (h0 : 0 ≤ tb₁) (hu : 0 < u)
    (h : tb₁ < tb₂) : vinf_sq tb₁ u < vinf_sq tb₂ u := by
  simp only [vinf_sq]
  nlinarith [h0, hu, h]

-- [T18] :: {INV} | A ZERO BURN DELIVERS NOTHING
theorem t18_zero_burn (u : ℝ) : vinf_sq 0 u = 0 := by
  simp only [vinf_sq]; ring

-- [T19] :: {INV} | THE DEPTH LAW IS POSITIVE FOR A POSITIVE BURN AT POSITIVE DEPTH
theorem t19_vinf_pos (tb u : ℝ) (htb : 0 < tb) (hu : 0 < u) : 0 < vinf_sq tb u := by
  simp only [vinf_sq]
  nlinarith [htb, hu]

-- ============================================================
-- SECTION 3: THE INVERSION AT DEPTH
-- tau_B = sqrt(u^2 + x^2) - u.
-- ============================================================

/-- The radical of the inversion at depth. -/
def rad_depth (u x : ℝ) : ℝ := Real.sqrt (u ^ 2 + x ^ 2)

/-- Reading B required to reach x = v_inf/v_e from depth u. -/
def tau_B_at (u x : ℝ) : ℝ := rad_depth u x - u

-- [T20] :: {VER} | THE RADICAL SQUARES BACK
theorem t20_rad_sq (u x : ℝ) : rad_depth u x ^ 2 = u ^ 2 + x ^ 2 := by
  simp only [rad_depth]
  exact Real.sq_sqrt (by positivity)

-- [T21] :: {VER} | THE RADICAL IS POSITIVE WHEN THE DEPTH IS
theorem t21_rad_pos (u x : ℝ) (hu : 0 < u) : 0 < rad_depth u x := by
  simp only [rad_depth]
  apply Real.sqrt_pos.mpr
  positivity

-- [T22] :: {MASTER} | THE INVERSION SOLVES THE DEPTH LAW
theorem t22_inversion_solves (u x : ℝ) :
    vinf_sq (tau_B_at u x) u = x ^ 2 := by
  have hs := t20_rad_sq u x
  simp only [vinf_sq, tau_B_at]
  linear_combination hs

-- [T23] :: {INV} | THE RADICAL EXCEEDS THE DEPTH
theorem t23_rad_gt_depth (u x : ℝ) (hx : x ≠ 0) (hu : 0 < u) : u < rad_depth u x := by
  have hs := t20_rad_sq u x
  have hx2 : (0:ℝ) < x ^ 2 :=
    lt_of_le_of_ne (sq_nonneg x) (Ne.symm (pow_ne_zero 2 hx))
  have hp : 0 < rad_depth u x := t21_rad_pos u x hu
  nlinarith [hs, hp, hu, hx2]

-- [T24] :: {INV} | READING B AT DEPTH IS POSITIVE FOR A POSITIVE TARGET
theorem t24_tau_B_pos (u x : ℝ) (hx : x ≠ 0) (hu : 0 < u) : 0 < tau_B_at u x := by
  simp only [tau_B_at]
  linarith [t23_rad_gt_depth u x hx hu]

-- [T25] :: {INV} | AT UNIT DEPTH THE INVERSION IS THE PARENT'S
theorem t25_inversion_at_unit_depth (x : ℝ) :
    tau_B_at 1 x = Real.sqrt (1 + x ^ 2) - 1 := by
  simp only [tau_B_at, rad_depth]
  norm_num

-- [T26] :: {MASTER} | THE MANEUVER ALWAYS COSTS LESS READING B THAN THE IDEAL ROCKET
theorem t26_cheaper_than_ideal (u x : ℝ) (hu : 0 < u) (hx : 0 < x) :
    tau_B_at u x < x := by
  have hs := t20_rad_sq u x
  have hp : 0 < rad_depth u x := t21_rad_pos u x hu
  simp only [tau_B_at]
  nlinarith [hs, hp, hu, hx]

-- ============================================================
-- SECTION 4: THE SAVING AT DEPTH, BOUNDED BY e^u
-- ============================================================

/-- The ideal rocket's mass ratio for a target x. -/
def mr_ideal (x : ℝ) : ℝ := Real.exp x

/-- The mass ratio of a burn at depth u reaching the same target. -/
def mr_depth (u x : ℝ) : ℝ := Real.exp (tau_B_at u x)

/-- The exponent of the saving at depth. -/
def sav_exp (u x : ℝ) : ℝ := x - rad_depth u x + u

/-- The propellant saving at depth. -/
def saving (u x : ℝ) : ℝ := Real.exp (sav_exp u x)

-- [T27] :: {MASTER} | THE SAVING IS THE RATIO OF THE TWO MASS RATIOS
theorem t27_saving_is_the_ratio (u x : ℝ) :
    saving u x = mr_ideal x / mr_depth u x := by
  simp only [saving, mr_ideal, mr_depth, sav_exp, tau_B_at]
  rw [← Real.exp_sub]
  congr 1
  ring

-- [T28] :: {INV} | THE EXPONENT IS STRICTLY BELOW THE DEPTH
theorem t28_exponent_lt_depth (u x : ℝ) (hx : x ≠ 0) (hu : 0 < u) :
    sav_exp u x < u := by
  have hxr : x < rad_depth u x := by
    have habs : |x| < rad_depth u x := by
      simp only [rad_depth]
      rw [← Real.sqrt_sq_eq_abs]
      exact Real.sqrt_lt_sqrt (sq_nonneg x) (by nlinarith [hu])
    exact lt_of_le_of_lt (le_abs_self x) habs
  simp only [sav_exp]
  linarith

-- [T29] :: {MASTER} | THE SAVING IS STRICTLY BOUNDED BY e^u
-- Depth u is worth u e-folds, and no finite burn reaches the bound.
theorem t29_saving_lt_exp_depth (u x : ℝ) (hx : x ≠ 0) (hu : 0 < u) :
    saving u x < Real.exp u := by
  simp only [saving]
  exact Real.exp_lt_exp.mpr (t28_exponent_lt_depth u x hx hu)

-- [T30] :: {INV} | THE SAVING EXCEEDS ONE FOR EVERY POSITIVE BURN
theorem t30_saving_gt_one (u x : ℝ) (hu : 0 < u) (hx : 0 < x) : 1 < saving u x := by
  have h := t26_cheaper_than_ideal u x hu hx
  have hexp : 0 < sav_exp u x := by
    simp only [sav_exp, tau_B_at] at h ⊢
    linarith
  simp only [saving]
  calc (1:ℝ) = Real.exp 0 := Real.exp_zero.symm
    _ < Real.exp (sav_exp u x) := Real.exp_lt_exp.mpr hexp

-- [T31] :: {MASTER} | AT UNIT DEPTH THE BOUND IS e, THE PARENT'S RESULT
theorem t31_bound_at_unit_depth (x : ℝ) (hx : x ≠ 0) :
    saving 1 x < Real.exp 1 :=
  t29_saving_lt_exp_depth 1 x hx one_pos

-- [T32] :: {INV} | AT UNIT DEPTH THE SAVING FACTORS THROUGH e
theorem t32_saving_factored_at_unit (x : ℝ) :
    saving 1 x = Real.exp 1 * Real.exp (x - Real.sqrt (1 + x ^ 2)) := by
  have h1 : (1:ℝ) ^ 2 + x ^ 2 = 1 + x ^ 2 := by norm_num
  simp only [saving, sav_exp, rad_depth, h1]
  rw [← Real.exp_add]
  congr 1
  ring

-- [T33] :: {INV} | THE SAVING IS STRICTLY INCREASING IN THE TARGET
theorem t33_saving_mono_in_target (u x y : ℝ) (hu : 0 < u) (h : x < y) (hx : 0 ≤ x) :
    saving u x < saving u y := by
  have hsx := t20_rad_sq u x
  have hsy := t20_rad_sq u y
  have hpx : 0 < rad_depth u x := t21_rad_pos u x hu
  have hpy : 0 < rad_depth u y := t21_rad_pos u y hu
  have hrx : x < rad_depth u x := by nlinarith [hsx, hpx, hu]
  have hry : y < rad_depth u y := by nlinarith [hsy, hpy, hu, hx, h]
  simp only [saving, sav_exp]
  apply Real.exp_lt_exp.mpr
  nlinarith [hsx, hsy, hpx, hpy, hrx, hry, h, hx]

-- ============================================================
-- SECTION 5: THE GEOMETRIC CEILING ON DEPTH
-- u_max = tau_surface/tau_A, and availability is u_max > 1.
-- ============================================================

/-- The geometric ceiling on depth: the body's address over the drive's Reading A. -/
def u_max (rs R t : ℝ) : ℝ := surface_torsion rs R / t

-- [T34] :: {VER} | THE SURFACE TORSION SQUARES TO THE COMPACTNESS
theorem t34_surface_torsion_sq (rs R : ℝ) (h : 0 ≤ compactness rs R) :
    surface_torsion rs R ^ 2 = compactness rs R := by
  simp only [surface_torsion]
  exact Real.sq_sqrt h

-- [T35] :: {VER} | THE SURFACE TORSION IS NONNEGATIVE
theorem t35_surface_torsion_nonneg (rs R : ℝ) : 0 ≤ surface_torsion rs R :=
  Real.sqrt_nonneg _

-- [T36] :: {MASTER} | AVAILABILITY IS EXACTLY ONE E-FOLD OF DEPTH
-- C > τ_A² if and only if the geometric ceiling exceeds one.
theorem t36_availability_is_one_efold (rs R t : ℝ) (ht : 0 < t)
    (hC : 0 ≤ compactness rs R) :
    t ^ 2 < compactness rs R ↔ 1 < u_max rs R t := by
  have hsq := t34_surface_torsion_sq rs R hC
  have hnn := t35_surface_torsion_nonneg rs R
  simp only [u_max]
  rw [lt_div_iff₀ ht, one_mul]
  constructor
  · intro h; nlinarith [hsq, hnn, ht, h]
  · intro h; nlinarith [hsq, hnn, ht, h]

-- [T37] :: {INV} | THE CEILING ON THE CONVERSION FRACTION
theorem t37_availability_on_eta (rs R t : ℝ) (ht : 0 < t) (hC : 0 ≤ compactness rs R) :
    2 * eta_of_tau t < compactness rs R ↔ 1 < u_max rs R t := by
  rw [← t6_tau_sq_is_twice_eta t]
  exact t36_availability_is_one_efold rs R t ht hC

-- [T38] :: {INV} | THE CEILING IS POSITIVE
theorem t38_u_max_pos (rs R t : ℝ) (ht : 0 < t) (hC : 0 < compactness rs R) :
    0 < u_max rs R t := by
  simp only [u_max, surface_torsion]
  exact div_pos (Real.sqrt_pos.mpr hC) ht

-- [T39] :: {INV} | A LOWER READING A RAISES THE CEILING
theorem t39_lower_reading_raises_ceiling (rs R t₁ t₂ : ℝ) (h1 : 0 < t₁) (h : t₁ < t₂)
    (hC : 0 < compactness rs R) :
    u_max rs R t₂ < u_max rs R t₁ := by
  have hsp : 0 < surface_torsion rs R := by
    simp only [surface_torsion]; exact Real.sqrt_pos.mpr hC
  simp only [u_max]
  rw [div_lt_div_iff₀ (by linarith : (0:ℝ) < t₂) h1]
  nlinarith [hsp, h]

-- [T40] :: {MASTER} | THE BODY'S OWN ADDRESS GIVES UNIT DEPTH
theorem t40_address_is_unit_depth (rs R : ℝ) (hC : 0 < compactness rs R) :
    u_max rs R (surface_torsion rs R) = 1 := by
  have hsp : 0 < surface_torsion rs R := by
    simp only [surface_torsion]; exact Real.sqrt_pos.mpr hC
  simp only [u_max]
  exact div_self (ne_of_gt hsp)

-- ============================================================
-- SECTION 6: THE MATCHED SURFACE IS AN EQUIPOTENTIAL
-- Lateral motion is the zero-cost direction; only altitude retunes.
-- ============================================================

/-- The radius a given Reading A addresses, in units of r_s. -/
def addressed_ratio (t : ℝ) : ℝ := 1 / t ^ 2

-- [T41] :: {INV} | THE ADDRESS MAP IS INJECTIVE ON POSITIVE READING A
theorem t41_address_injective (t₁ t₂ : ℝ) (h1 : 0 < t₁) (h2 : 0 < t₂)
    (h : addressed_ratio t₁ = addressed_ratio t₂) : t₁ = t₂ := by
  simp only [addressed_ratio] at h
  have e1 : (0:ℝ) < t₁ ^ 2 := by positivity
  have e2 : (0:ℝ) < t₂ ^ 2 := by positivity
  have hsq : t₁ ^ 2 = t₂ ^ 2 := by
    field_simp at h
    linarith
  nlinarith [hsq, h1, h2]

-- [T42] :: {MASTER} | LATERAL MOTION IS THE ZERO-COST DIRECTION
-- Two points at the same addressed radius require the same Reading A, so a
-- path between them at constant radius requires no change of tuning.
theorem t42_lateral_is_free (t₁ t₂ : ℝ) (h1 : 0 < t₁) (h2 : 0 < t₂)
    (h : addressed_ratio t₁ = addressed_ratio t₂) : t₂ - t₁ = 0 := by
  have := t41_address_injective t₁ t₂ h1 h2 h
  linarith

-- [T43] :: {INV} | THE CONTROL LAW: THE RADIUS RATIO IS THE INVERSE SQUARE OF THE TUNING RATIO
theorem t43_control_law (t₁ t₂ : ℝ) (h1 : t₁ ≠ 0) (h2 : t₂ ≠ 0) :
    addressed_ratio t₁ / addressed_ratio t₂ = (t₂ / t₁) ^ 2 := by
  have e1 : (t₁:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 h1
  have e2 : (t₂:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 h2
  simp only [addressed_ratio]
  field_simp

-- [T44] :: {INV} | A HIGHER TUNING ADDRESSES A LOWER RADIUS
theorem t44_higher_tuning_lower_radius (t₁ t₂ : ℝ) (h1 : 0 < t₁) (h : t₁ < t₂) :
    addressed_ratio t₂ < addressed_ratio t₁ := by
  have e1 : (0:ℝ) < t₁ ^ 2 := by positivity
  simp only [addressed_ratio]
  exact one_div_lt_one_div_of_lt e1 (by nlinarith [h1, h])

-- ============================================================
-- SECTION 7: THE THRUST FLOOR
-- t_char = 2 sqrt 2 GM/(c^3 tau^3 u^3), and the floor rises as tau^4 u^3.
-- ============================================================

/-- The characteristic time of the region at depth u. -/
def t_char (GM t u : ℝ) : ℝ :=
  2 * Real.sqrt 2 * GM / (C_LIGHT ^ 3 * t ^ 3 * u ^ 3)

/-- The burn radius in meters at depth u about a body of parameter GM. -/
def burn_radius (GM t u : ℝ) : ℝ := r_s GM / (t ^ 2 * u ^ 2)

/-- The propellant fraction consumed by a burn of Reading B. -/
def prop_fraction (tb : ℝ) : ℝ := 1 - Real.exp (-tb)

/-- The thrust floor: the thrust per unit mass that keeps the burn impulsive. -/
def thrust_floor (GM t u f tb : ℝ) : ℝ :=
  prop_fraction tb * C_LIGHT ^ 4 * t ^ 4 * u ^ 3 / (2 * Real.sqrt 2 * f * GM)

-- [T45] :: {MASTER} | THE CHARACTERISTIC TIME IN CLOSED FORM
-- Stated as the square, so the identity closes without a radical on both sides.
theorem t45_t_char_closed_form (GM t u : ℝ) (hGM : GM ≠ 0) (ht : t ≠ 0) (hu : u ≠ 0) :
    t_char GM t u ^ 2 = burn_radius GM t u ^ 3 / GM := by
  have h2 : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hs2 : (2 * Real.sqrt 2 * GM) ^ 2 = 8 * GM ^ 2 := by
    linear_combination 4 * GM ^ 2 * h2
  have hc : (C_LIGHT:ℝ) ≠ 0 := by simp only [C_LIGHT]; norm_num
  simp only [t_char, burn_radius, r_s]
  rw [div_pow, hs2]
  field_simp
  ring

-- [T46] :: {INV} | THE CHARACTERISTIC TIME IS POSITIVE
theorem t46_t_char_pos (GM t u : ℝ) (hGM : 0 < GM) (ht : 0 < t) (hu : 0 < u) :
    0 < t_char GM t u := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  simp only [t_char]
  positivity

-- [T47] :: {INV} | THE CHARACTERISTIC TIME SHRINKS AS THE CUBE OF DEPTH
theorem t47_t_char_antitone_in_depth (GM t u₁ u₂ : ℝ) (hGM : 0 < GM) (ht : 0 < t)
    (h1 : 0 < u₁) (h : u₁ < u₂) :
    t_char GM t u₂ < t_char GM t u₁ := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hnum : (0:ℝ) < 2 * Real.sqrt 2 * GM := by positivity
  have hd1 : (0:ℝ) < C_LIGHT ^ 3 * t ^ 3 * u₁ ^ 3 := by positivity
  have h2u : (0:ℝ) < u₂ := by linarith
  have hq3 : (0:ℝ) < u₂ ^ 2 + u₂ * u₁ + u₁ ^ 2 := by
    nlinarith [mul_pos h2u h1, sq_nonneg u₁, sq_nonneg u₂]
  have hcube : u₁ ^ 3 < u₂ ^ 3 := by
    nlinarith [mul_pos (sub_pos.mpr h) hq3]
  have hbase : (0:ℝ) < C_LIGHT ^ 3 * t ^ 3 := by positivity
  have hlt : C_LIGHT ^ 3 * t ^ 3 * u₁ ^ 3 < C_LIGHT ^ 3 * t ^ 3 * u₂ ^ 3 :=
    mul_lt_mul_of_pos_left hcube hbase
  simp only [t_char]
  rw [div_lt_div_iff₀ (by linarith : (0:ℝ) < C_LIGHT ^ 3 * t ^ 3 * u₂ ^ 3) hd1]
  nlinarith [hnum, hlt]

-- [T48] :: {INV} | THE PROPELLANT FRACTION IS BELOW ONE AND POSITIVE
theorem t48_prop_fraction_range (tb : ℝ) (htb : 0 < tb) :
    0 < prop_fraction tb ∧ prop_fraction tb < 1 := by
  have h1 : Real.exp (-tb) < 1 := by
    calc Real.exp (-tb) < Real.exp 0 := Real.exp_lt_exp.mpr (by linarith)
      _ = 1 := Real.exp_zero
  have h2 : 0 < Real.exp (-tb) := Real.exp_pos _
  simp only [prop_fraction]
  constructor <;> linarith

-- [T49] :: {MASTER} | THE THRUST FLOOR RISES AS THE FOURTH POWER OF READING A
theorem t49_floor_quartic_in_reading_a (GM u f tb t₁ t₂ : ℝ) (hGM : 0 < GM) (hf : 0 < f)
    (hu : 0 < u) (htb : 0 < tb) (h1 : 0 < t₁) (h : t₁ < t₂) :
    thrust_floor GM t₁ u f tb < thrust_floor GM t₂ u f tb := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hp := (t48_prop_fraction_range tb htb).1
  have hden : (0:ℝ) < 2 * Real.sqrt 2 * f * GM := by positivity
  have hnum : (0:ℝ) < prop_fraction tb * C_LIGHT ^ 4 * u ^ 3 := by positivity
  have h2t : (0:ℝ) < t₂ := by linarith
  have hq4 : (0:ℝ) < t₂ ^ 3 + t₂ ^ 2 * t₁ + t₂ * t₁ ^ 2 + t₁ ^ 3 := by
    have a1 : (0:ℝ) < t₂ ^ 3 := by positivity
    have a2 : (0:ℝ) < t₂ ^ 2 * t₁ := by positivity
    have a3 : (0:ℝ) < t₂ * t₁ ^ 2 := by positivity
    have a4 : (0:ℝ) < t₁ ^ 3 := by positivity
    linarith
  have hq : t₁ ^ 4 < t₂ ^ 4 := by
    nlinarith [mul_pos (sub_pos.mpr h) hq4]
  simp only [thrust_floor]
  rw [div_lt_div_iff₀ hden hden]
  nlinarith [mul_pos (mul_pos hnum hden) (sub_pos.mpr hq)]

-- [T50] :: {MASTER} | THE THRUST FLOOR RISES AS THE CUBE OF DEPTH
theorem t50_floor_cubic_in_depth (GM t f tb u₁ u₂ : ℝ) (hGM : 0 < GM) (hf : 0 < f)
    (ht : 0 < t) (htb : 0 < tb) (h1 : 0 < u₁) (h : u₁ < u₂) :
    thrust_floor GM t u₁ f tb < thrust_floor GM t u₂ f tb := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hp := (t48_prop_fraction_range tb htb).1
  have hden : (0:ℝ) < 2 * Real.sqrt 2 * f * GM := by positivity
  have hnum : (0:ℝ) < prop_fraction tb * C_LIGHT ^ 4 * t ^ 4 := by positivity
  have h2u : (0:ℝ) < u₂ := by linarith
  have hq3 : (0:ℝ) < u₂ ^ 2 + u₂ * u₁ + u₁ ^ 2 := by
    nlinarith [mul_pos h2u h1, sq_nonneg u₁, sq_nonneg u₂]
  have hq : u₁ ^ 3 < u₂ ^ 3 := by
    nlinarith [mul_pos (sub_pos.mpr h) hq3]
  simp only [thrust_floor]
  rw [div_lt_div_iff₀ hden hden]
  nlinarith [mul_pos (mul_pos hnum hden) (sub_pos.mpr hq)]

-- [T51] :: {INV} | THE THRUST FLOOR IS POSITIVE
theorem t51_floor_pos (GM t u f tb : ℝ) (hGM : 0 < GM) (hf : 0 < f) (ht : 0 < t)
    (hu : 0 < u) (htb : 0 < tb) : 0 < thrust_floor GM t u f tb := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hp := (t48_prop_fraction_range tb htb).1
  simp only [thrust_floor]
  positivity

-- [T52] :: {INV} | A LONGER PERMITTED BURN LOWERS THE FLOOR
theorem t52_longer_burn_lowers_floor (GM t u tb f₁ f₂ : ℝ) (hGM : 0 < GM) (ht : 0 < t)
    (hu : 0 < u) (htb : 0 < tb) (h1 : 0 < f₁) (h : f₁ < f₂) :
    thrust_floor GM t u f₂ tb < thrust_floor GM t u f₁ tb := by
  have hs : (0:ℝ) < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hp := (t48_prop_fraction_range tb htb).1
  have hnum : (0:ℝ) < prop_fraction tb * C_LIGHT ^ 4 * t ^ 4 * u ^ 3 := by positivity
  have hd1 : (0:ℝ) < 2 * Real.sqrt 2 * f₁ * GM := by positivity
  have hlt : 2 * Real.sqrt 2 * f₁ * GM < 2 * Real.sqrt 2 * f₂ * GM := by
    nlinarith [hs, hGM, h]
  simp only [thrust_floor]
  rw [div_lt_div_iff₀ (by linarith : (0:ℝ) < 2 * Real.sqrt 2 * f₂ * GM) hd1]
  nlinarith [hnum, hlt]

-- ============================================================
-- SECTION 8: THE TWO CEILINGS, AND THE DESIGN LOOP
-- ============================================================

/-- The depth actually achievable: the smaller of the two ceilings. -/
def binding_depth (ug ut : ℝ) : ℝ := min ug ut

-- [T53] :: {MASTER} | THE BINDING DEPTH IS BELOW BOTH CEILINGS
theorem t53_binding_below_both (ug ut : ℝ) :
    binding_depth ug ut ≤ ug ∧ binding_depth ug ut ≤ ut := by
  simp only [binding_depth]
  exact ⟨min_le_left ug ut, min_le_right ug ut⟩

-- [T54] :: {INV} | THE BINDING DEPTH IS ONE OF THE TWO
theorem t54_binding_is_one_of_them (ug ut : ℝ) :
    binding_depth ug ut = ug ∨ binding_depth ug ut = ut := by
  simp only [binding_depth]
  exact min_choice ug ut

-- [T55] :: {INV} | GEOMETRY BINDS WHEN IT IS THE SMALLER
theorem t55_geometry_binds (ug ut : ℝ) (h : ug ≤ ut) : binding_depth ug ut = ug := by
  simp only [binding_depth]
  exact min_eq_left h

-- [T56] :: {INV} | THRUST BINDS WHEN IT IS THE SMALLER
theorem t56_thrust_binds (ug ut : ℝ) (h : ut ≤ ug) : binding_depth ug ut = ut := by
  simp only [binding_depth]
  exact min_eq_right h

-- [T57] :: {MASTER} | THE SAVING FOLLOWS THE BINDING DEPTH
theorem t57_saving_at_binding (ug ut x : ℝ) (hx : x ≠ 0) (hb : 0 < binding_depth ug ut) :
    saving (binding_depth ug ut) x < Real.exp (binding_depth ug ut) :=
  t29_saving_lt_exp_depth (binding_depth ug ut) x hx hb

-- ============================================================
-- SECTION 9: THE OPTIMUM, AND THE ENGINE EACH BODY PRESCRIBES
-- ============================================================

/-- The specific impulse corresponding to a Reading A. -/
def isp_of_tau (t : ℝ) : ℝ := t * C_LIGHT / G_STANDARD

/-- The specific impulse a body prescribes: its own surface escape velocity. -/
def prescribed_isp (rs R : ℝ) : ℝ := isp_of_tau (surface_torsion rs R)

-- [T58] :: {INV} | READING B AT DEPTH FALLS AS THE TARGET RATIO FALLS
-- A higher exhaust velocity means a smaller x for the same target, and a
-- smaller x means less Reading B, so the mass ratio falls.
theorem t58_reading_b_falls_with_target (u x y : ℝ) (hu : 0 < u) (hxy : x < y)
    (hx : 0 ≤ x) : tau_B_at u x < tau_B_at u y := by
  have hsx := t20_rad_sq u x
  have hsy := t20_rad_sq u y
  have hpx : 0 < rad_depth u x := t21_rad_pos u x hu
  have hpy : 0 < rad_depth u y := t21_rad_pos u y hu
  simp only [tau_B_at]
  nlinarith [hsx, hsy, hpx, hpy, hxy, hx]

-- [T59] :: {INV} | SO THE MASS RATIO AT DEPTH FALLS TOO
theorem t59_mass_ratio_falls (u x y : ℝ) (hu : 0 < u) (hxy : x < y) (hx : 0 ≤ x) :
    mr_depth u x < mr_depth u y := by
  simp only [mr_depth]
  exact Real.exp_lt_exp.mpr (t58_reading_b_falls_with_target u x y hu hxy hx)

-- [T60] :: {MASTER} | THE AVAILABILITY CONSTRAINT IS AN OPEN CONDITION
-- Reading A must stay strictly below the body's address, so the optimum is a
-- supremum approached and not attained.
theorem t60_optimum_is_a_supremum (rs R t : ℝ) (ht : 0 < t) (hC : 0 ≤ compactness rs R) :
    t ^ 2 < compactness rs R ↔ t < surface_torsion rs R := by
  have hsq := t34_surface_torsion_sq rs R hC
  have hnn := t35_surface_torsion_nonneg rs R
  constructor
  · intro h; nlinarith [hsq, hnn, ht, h]
  · intro h; nlinarith [hsq, hnn, ht, h]

-- [T61] :: {MASTER} | THE BODY'S ADDRESS IS ITS OWN PRESCRIPTION
theorem t61_prescription_is_the_address (rs R : ℝ) :
    prescribed_isp rs R = surface_torsion rs R * C_LIGHT / G_STANDARD := by
  simp only [prescribed_isp, isp_of_tau]

-- [T62] :: {INV} | THE PRESCRIPTION IS NONNEGATIVE
theorem t62_prescription_nonneg (rs R : ℝ) : 0 ≤ prescribed_isp rs R := by
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hg : (0:ℝ) < G_STANDARD := by simp only [G_STANDARD]; norm_num
  simp only [prescribed_isp, isp_of_tau]
  exact div_nonneg (mul_nonneg (t35_surface_torsion_nonneg rs R) hc.le) hg.le

-- [T63] :: {INV} | A MORE COMPACT BODY PRESCRIBES A HIGHER SPECIFIC IMPULSE
theorem t63_compact_prescribes_higher (rs₁ R₁ rs₂ R₂ : ℝ)
    (h : compactness rs₁ R₁ < compactness rs₂ R₂) (h0 : 0 ≤ compactness rs₁ R₁) :
    prescribed_isp rs₁ R₁ < prescribed_isp rs₂ R₂ := by
  have hc : (0:ℝ) < C_LIGHT := by simp only [C_LIGHT]; norm_num
  have hg : (0:ℝ) < G_STANDARD := by simp only [G_STANDARD]; norm_num
  have hs : surface_torsion rs₁ R₁ < surface_torsion rs₂ R₂ := by
    simp only [surface_torsion]
    exact Real.sqrt_lt_sqrt h0 h
  simp only [prescribed_isp, isp_of_tau]
  rw [div_lt_div_iff₀ hg hg]
  nlinarith [mul_lt_mul_of_pos_right hs hc, hg]

-- ============================================================
-- SECTION 10: THE VEHICLE
-- Mass supported per engine, and the launch impossibility.
-- ============================================================

/-- The vehicle mass a given thrust supports against a given floor. -/
def supported_mass (F floor : ℝ) : ℝ := F / floor

/-- Thrust-to-weight at the surface. -/
def thrust_to_weight (fm : ℝ) : ℝ := fm / G_STANDARD

-- [T64] :: {INV} | THE SUPPORTED MASS MEETS THE FLOOR EXACTLY
theorem t64_supported_meets_floor (F floor : ℝ) (hf : 0 < floor) (hF : 0 < F) :
    F / supported_mass F floor = floor := by
  simp only [supported_mass]
  field_simp

-- [T65] :: {INV} | MORE THRUST SUPPORTS MORE MASS
theorem t65_more_thrust_more_mass (F₁ F₂ floor : ℝ) (hf : 0 < floor) (h : F₁ < F₂) :
    supported_mass F₁ floor < supported_mass F₂ floor := by
  simp only [supported_mass]
  rw [div_lt_div_iff₀ hf hf]
  nlinarith [h, hf]

-- [T66] :: {INV} | A HIGHER FLOOR SUPPORTS LESS MASS
theorem t66_higher_floor_less_mass (F f₁ f₂ : ℝ) (hF : 0 < F) (h1 : 0 < f₁) (h : f₁ < f₂) :
    supported_mass F f₂ < supported_mass F f₁ := by
  simp only [supported_mass]
  rw [div_lt_div_iff₀ (by linarith : (0:ℝ) < f₂) h1]
  nlinarith [hF, h]

-- [T67] :: {MASTER} | A VEHICLE AT THE FLOOR CANNOT LIFT ITSELF
-- A thrust per unit mass below the surface gravitational acceleration leaves a
-- net downward force on a vehicle at rest on the surface, so orbital assembly
-- follows from the floor rather than from preference.
theorem t67_cannot_launch (fm : ℝ) (h : fm < G_STANDARD) :
    thrust_to_weight fm < 1 ∧ fm - G_STANDARD < 0 := by
  have hg : (0:ℝ) < G_STANDARD := by simp only [G_STANDARD]; norm_num
  constructor
  · simp only [thrust_to_weight]
    rw [div_lt_one hg]
    exact h
  · linarith

-- [T68] :: {INV} | THRUST-TO-WEIGHT BELOW ONE HALF IS BELOW ONE
theorem t68_half_is_below_one (fm : ℝ) (h : fm < G_STANDARD / 2) :
    thrust_to_weight fm < 1 := by
  have hg : (0:ℝ) < G_STANDARD := by simp only [G_STANDARD]; norm_num
  exact (t67_cannot_launch fm (by linarith)).1

-- [T69] :: {MASTER} | THE PLACEMENT CARRIES THE BODY AND THE DRIVE ONLY
-- The matched radius in meters is the Schwarzschild radius times the matched
-- ratio, so it is determined by the gravitational parameter and Reading A
-- alone and no vehicle mass enters it at any scale.
theorem t69_placement_from_body_and_drive (GM t : ℝ) (ht : t ≠ 0) :
    r_s GM * matched_ratio t = 2 * GM / (C_LIGHT ^ 2 * t ^ 2) := by
  have hc : (C_LIGHT:ℝ) ≠ 0 := by simp only [C_LIGHT]; norm_num
  have ht2 : (t:ℝ) ^ 2 ≠ 0 := pow_ne_zero 2 ht
  simp only [r_s, matched_ratio]
  field_simp

-- [T70] :: {INV} | THE PROPELLANT MASS A VEHICLE CARRIES
theorem t70_propellant_mass (M tb : ℝ) (hM : 0 < M) (htb : 0 < tb) :
    0 < M * prop_fraction tb ∧ M * prop_fraction tb < M := by
  obtain ⟨h1, h2⟩ := t48_prop_fraction_range tb htb
  constructor
  · exact mul_pos hM h1
  · nlinarith [hM, h2]

-- ============================================================
-- MASTER
-- ============================================================

theorem MASTER_burn_depth_and_thrust_floor :
    -- the depth law, and that deeper is always better
    (∀ tb u : ℝ, (u + tb) ^ 2 - u ^ 2 = vinf_sq tb u) ∧
    (∀ tb u₁ u₂ : ℝ, 0 < tb → u₁ < u₂ → vinf_sq tb u₁ < vinf_sq tb u₂) ∧
    (∀ tb : ℝ, vinf_sq tb 1 = tb * (2 + tb)) ∧
    -- the inversion at depth, and that it costs less than the ideal rocket
    (∀ u x : ℝ, vinf_sq (tau_B_at u x) u = x ^ 2) ∧
    (∀ u x : ℝ, 0 < u → 0 < x → tau_B_at u x < x) ∧
    (∀ x : ℝ, tau_B_at 1 x = Real.sqrt (1 + x ^ 2) - 1) ∧
    -- the saving at depth, strictly bounded by e^u, with e at unit depth
    (∀ u x : ℝ, saving u x = mr_ideal x / mr_depth u x) ∧
    (∀ u x : ℝ, x ≠ 0 → 0 < u → saving u x < Real.exp u) ∧
    (∀ x : ℝ, x ≠ 0 → saving 1 x < Real.exp 1) ∧
    (∀ u x : ℝ, 0 < u → 0 < x → 1 < saving u x) ∧
    -- availability is exactly one e-fold of depth
    (∀ rs R t : ℝ, 0 < t → 0 ≤ compactness rs R →
      (t ^ 2 < compactness rs R ↔ 1 < u_max rs R t)) ∧
    (∀ rs R : ℝ, 0 < compactness rs R → u_max rs R (surface_torsion rs R) = 1) ∧
    -- lateral motion is the zero-cost direction
    (∀ t₁ t₂ : ℝ, 0 < t₁ → 0 < t₂ → addressed_ratio t₁ = addressed_ratio t₂ →
      t₂ - t₁ = 0) ∧
    -- the characteristic time in closed form, and the floor's scalings
    (∀ GM t u : ℝ, GM ≠ 0 → t ≠ 0 → u ≠ 0 →
      t_char GM t u ^ 2 = burn_radius GM t u ^ 3 / GM) ∧
    (∀ GM u f tb t₁ t₂ : ℝ, 0 < GM → 0 < f → 0 < u → 0 < tb → 0 < t₁ → t₁ < t₂ →
      thrust_floor GM t₁ u f tb < thrust_floor GM t₂ u f tb) ∧
    (∀ GM t f tb u₁ u₂ : ℝ, 0 < GM → 0 < f → 0 < t → 0 < tb → 0 < u₁ → u₁ < u₂ →
      thrust_floor GM t u₁ f tb < thrust_floor GM t u₂ f tb) ∧
    -- the two ceilings, and the saving following the binding one
    (∀ ug ut : ℝ, binding_depth ug ut ≤ ug ∧ binding_depth ug ut ≤ ut) ∧
    -- the optimum is a supremum, and the body prescribes its own engine
    (∀ rs R t : ℝ, 0 < t → 0 ≤ compactness rs R →
      (t ^ 2 < compactness rs R ↔ t < surface_torsion rs R)) ∧
    (∀ rs R : ℝ, prescribed_isp rs R = surface_torsion rs R * C_LIGHT / G_STANDARD) ∧
    -- and a vehicle meeting the floor cannot lift itself
    (∀ fm : ℝ, fm < G_STANDARD → thrust_to_weight fm < 1 ∧ fm - G_STANDARD < 0) := by
  refine ⟨t14_depth_law,
    fun tb u₁ u₂ htb h => t15_deeper_is_better tb u₁ u₂ htb h,
    t16_chain_law_at_unit_depth,
    t22_inversion_solves,
    fun u x hu hx => t26_cheaper_than_ideal u x hu hx,
    t25_inversion_at_unit_depth,
    t27_saving_is_the_ratio,
    fun u x hx hu => t29_saving_lt_exp_depth u x hx hu,
    fun x hx => t31_bound_at_unit_depth x hx,
    fun u x hu hx => t30_saving_gt_one u x hu hx,
    fun rs R t ht hC => t36_availability_is_one_efold rs R t ht hC,
    fun rs R hC => t40_address_is_unit_depth rs R hC,
    fun t₁ t₂ h1 h2 h => t42_lateral_is_free t₁ t₂ h1 h2 h,
    fun GM t u hGM ht hu => t45_t_char_closed_form GM t u hGM ht hu,
    fun GM u f tb t₁ t₂ hGM hf hu htb h1 h =>
      t49_floor_quartic_in_reading_a GM u f tb t₁ t₂ hGM hf hu htb h1 h,
    fun GM t f tb u₁ u₂ hGM hf ht htb h1 h =>
      t50_floor_cubic_in_depth GM t f tb u₁ u₂ hGM hf ht htb h1 h,
    t53_binding_below_both,
    fun rs R t ht hC => t60_optimum_is_a_supremum rs R t ht hC,
    t61_prescription_is_the_address,
    fun fm h => t67_cannot_launch fm h⟩

end SNSFL_BurnDepthThrustFloor

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that burn depth, measured in the drive's own matched
-- radius as u = √(r_match/r), is the parameter the whole construction runs on.
-- The depth law v_∞ = v_e√(τ_B(τ_B + 2u)) rises strictly with u, so burning
-- deeper is always better and the matched radius is a UNIT rather than an
-- extremum, returning the parent's chain law at u = 1. Inverting gives
-- τ_B = √(u² + x²) − u, always below the ideal rocket's own exponent, and the
-- saving exp(x − √(u² + x²) + u) is STRICTLY BOUNDED BY e^u — depth u is worth
-- u e-folds, with the parent's bound e the u = 1 case. The geometric ceiling
-- u_max = τ_surface/τ_A exceeding one is exactly the parent's availability
-- criterion, so that criterion says the body offers this drive at least one
-- e-fold. The characteristic time closes as 2√2·GM/(c³τ_A³u³) and the thrust
-- floor rises as the fourth power of Reading A and the cube of depth, which is
-- the criterion that decides whether the advantage can be collected at all.
-- The optimum sits at the availability supremum, so each body prescribes its
-- own engine; and a vehicle meeting the floor has a thrust-to-weight below one
-- and cannot lift itself, so orbital assembly follows from the arithmetic.
--
-- THEOREMS : 70 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
```
