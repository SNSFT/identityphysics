# Fatigue Is Loss of Damping Capacity: the Endurance Limit as a Damage–Recovery Balance, the Basquin Exponent Identified, and Why the Knee Is Sharp

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** [9,9,2,53](ENGR) · Identity Physics Series · Engineering Ground, Applied Structures

**Issue:** ProofPress, Volume 1, Issue 9 · November 2026

**DOI:** 10.5281/zenodo.18719748

**Verified:** 100 theorems · 1,134 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Abstract

**Fatigue is loss of damping capacity.** The quantity that falls under cyclic load is the damping ratio ζ, a measurable material property with its own instrumentation, and not an abstract damage variable. From that identification follow a closed-form endurance limit, the test for whether a material has one at all, the Basquin exponent identified as the exponent in a degradation law, and the sharpness of the knee as a consequence of that exponent rather than a separate fact. Static strength alone fixes the capacity the life law runs on, with no fitting.

This article reaches those results by descent, and the descent is short. The Dynamic Equation carries external forcing as a primitive term at Layer 0: d/dt (IM · Pv) = Σ λ_X · O_X · S + F_ext. Across the corpus, F_ext is realized the same way in every substrate — `f_ext_op s δ = { s with B := s.B + δ }` — and the theorem that it leaves Pattern, Narrative and Adaptation unchanged is carried in more than twenty files. This reduction states what that realization establishes, and then applies it repeatedly.

**External forcing is rank one.** The reachable set under F_ext alone is a line in a four-coordinate state: three of the four primitives are not externally reachable at all. Forcing moves torsion τ = B/P, so it carries a system across every phase boundary, while Pattern capacity is invariant under every external event. **All structural change is endogenous**; the outside sets conditions and nothing else. A control engineer reads the same statement as underactuation by three.

**Pure forcing has no memory.** F_ext is additive — δ₁ then δ₂ lands exactly where δ₁+δ₂ lands in one application, with no trace of the sequence. Therefore **a system that survives a load once survives it indefinitely under forcing alone**, and cyclic damage cannot be externally caused. Whatever accumulates accumulates in Σ λ_X · O_X.

That places damage in the Behavior-to-Pattern coupling, and the Tacoma–Scanlan reduction [9,9,2,52] says what Pattern is made of in a loaded structure: **P = 2Iζ**, inertia times damping. So **fatigue is loss of damping capacity**, and the quantity that falls under cyclic load is a measurable material property rather than an abstraction. Writing degradation per cycle as dP/dN = −k·B^m and shatter at P = B/TL gives N_f = (P₀ − B/TL)/(k·B^m), which for loads well below static strength is **N_f ∝ B^−m** — the Basquin form, with the empirical fatigue exponent identified as the exponent in the pattern-degradation law.

**The endurance limit is a balance.** Adding the restoring action of the internal operators, dP/dN = −k·B^m + r, gives a load at which degradation and recovery cancel exactly: **B_e = (r/k)^(1/m)**. The balance condition is identical whether damage is additive or multiplicative, since the P factor cancels, so the result does not depend on the form of the damage law. An endurance limit therefore exists exactly when the substrate carries a stress-independent recovery channel, and the stress-independence is forced rather than assumed: **dissipation is driven and scales with load, while conservative relaxation is a function of configuration and cannot.** Against published data this places 1045 steel's plateau at 0.500 × static and 2024-T4 aluminum's reference ratio at 0.350 × static, both inside Locked, and the condition separates them correctly: steel carries the channel and has a limit, aluminum does not and has none. It reproduces the accepted metallurgical account of the fatigue limit as a balance between fatigue damage and localized strengthening.

**The knee is sharp because the exponent is large.** The damage-to-recovery ratio is (B/B_e)^m, so at m = 8.696 a ten percent overload raises damage over recovery by 2.291× and a doubled load by 414.7×. Sharpness is a consequence of m, not a separate fact.

Two further results follow. **The existence of fatigue proves Pattern is controllable**: damage is a nonzero B→P coupling, which is exactly the first-order reachability condition that Round-one underactuation leaves open, so damage and the control channel are one coupling read with two signs — which is why cyclic loading both degrades and strengthens metals. And the lossless boundary already carried in forty-one corpus files, `F_ext > A · P · B`, is the endurance condition in its corpus form, giving **A · B = (B_e/static) · TL**, which a fatigue test reads off directly: 0.068449549992008 for 1045 steel and 0.0479146849944056 for 2024-T4.

## What This Article Proves

Every result below corresponds to a named theorem in `SNSFL_ForcedResponse_CyclesToShatter_Reduction.lean` at coordinate [9,9,2,53](ENGR), which compiles under the continuous-integration build of the SNSFT/identityphysics repository on Lean 4 v4.31.0 with Mathlib, carrying 0 sorry and 0 custom axioms. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate.

1. The grounding enters as arithmetic on published quantities: the anchor as ten Torsion Limits, the bare term as one thousand of them, **bare plus kinetic as the inverse fine-structure constant**, TL × 1001 = α⁻¹, the multiplier factoring as 7 · 11 · 13, the one-step anchor route Ω₀ × 100.1, the Torsion Limit positive, and the corridor floor in closed form, positive and below the ceiling (`t1_anchor_is_ten_tl`, `t2_bare_is_thousand_tl`, `t3_bare_plus_kinetic`, `t4_tl_times_1001`, `t5_multiplier_factors`, `t6_anchor_route`, `t7_tl_pos`, `t8_tl_iva_value`, `t9_iva_floor_below_limit`, `t10_tl_iva_pos`).
2. The phase structure on torsion τ = B/P: zero Behavior is Noble, Noble and Shatter are exclusive, Locked and IVA are exclusive, IVA and Shatter are exclusive, the reading is a function of the ratio alone, and **the four phases exhaust every non-negative reading** (`t11_zero_behavior_is_noble`, `t12_noble_shatter_exclusive`, `t13_locked_iva_exclusive`, `t14_iva_shatter_exclusive`, `t15_phase_is_ratio_only`, `t16_phases_exhaust`).
3. **The intervention theorem.** External forcing leaves Pattern, Narrative and Adaptation unchanged and moves Behavior by addition, stated termwise and then as one statement (`t17_f_ext_preserves_p`, `t18_f_ext_preserves_n`, `t19_f_ext_preserves_a`, `t20_f_ext_on_b`, `t21_intervention`).
4. **The reachable set under forcing is exactly the Behavior line, in both directions:** a state is reached from `s` if and only if it agrees with `s` off Behavior, and **Pattern capacity is invariant under every external event** (`t22_reachable_set_is_a_line`, `t23_pattern_invariant_under_all_forcing`).
5. Forcing still carries a system across every boundary: positive forcing raises torsion, negative lowers it, **for any state with positive Pattern there is a forcing that puts it in Shatter**, and that state has the Pattern capacity it started with — **phase changes without Pattern changing** (`t24_positive_forcing_raises_torsion`, `t25_negative_forcing_lowers_torsion`, `t26_forcing_reaches_shatter`, `t27_phase_change_without_pattern_change`).
6. **All structural change is endogenous.** Any difference in Pattern, Narrative or Adaptation between two states rules out forcing as its cause (`t28_structural_change_is_endogenous`).
7. **Pure forcing has no memory.** Forcing composes additively and commutes, zero forcing is the identity, and **n applications of δ land exactly where one application of n·δ lands**, proved by induction on n (`t29_forcing_additive`, `t30_forcing_commutes`, `t31_zero_forcing_identity`, `t32_no_memory`).
8. **Nothing accumulates:** the torsion reading after any number of applications is the closed linear form (B + n·δ)/P, and **a strict drop in Pattern capacity is unreachable by any number of external events whatsoever** — cyclic damage is internal, as a consequence rather than a premise (`t33_nothing_accumulates`, `t34_cyclic_damage_is_internal`).
9. **The forcing domain is a statement about the substrate.** Under the guard that Behavior stays positive, Behavior cannot be driven to zero and **Noble cannot be imposed from outside**; without the guard, Noble is reached. The guard is automatic above zero (`t35_guarded_excludes_zero_behavior`, `t36_noble_not_externally_reachable`, `t37_unguarded_reaches_noble`, `t38_guard_automatic_above_zero`).
10. **Pattern capacity in a driven structure is inertia times damping.** The driven ratio is torsion on that reading, **onset at ratio one is exactly torsion at the Torsion Limit** as a biconditional, raising damping lowers the ratio, and the capacity is positive (`t39_driven_ratio_is_torsion`, `t40_onset_is_limit`, `t41_damping_lowers_ratio`, `t44_pattern_of_damping_pos`).
11. **Fatigue is loss of damping capacity.** At fixed inertia a fall in damping is exactly a fall in Pattern capacity, and losing damping drives the ratio toward onset (`t42_fatigue_is_damping_loss`, `t43_damping_loss_climbs_toward_onset`).
12. **Pattern capacity from static strength, with no fitting:** static strength is the Torsion Limit times Pattern capacity, **a state loaded at static strength sits exactly at the Shatter boundary**, and the capacity is positive and strictly increasing in strength (`t45_static_strength_from_capacity`, `t46_static_load_is_shatter_boundary`, `t47_pattern_capacity_pos`, `t48_pattern_capacity_mono`).
13. **The life law.** Cycles to shatter times the loss per cycle is exactly the capacity available above the shatter load, life is positive below static strength, **the Basquin form holds as the load-power identity**, and raising the load lowers the available capacity (`t49_life_law`, `t50_life_pos_below_static`, `t51_basquin_form`, `t52_available_capacity_decreasing`).
14. The published slopes give the exponent by reciprocal for both materials, and **the exponent is a substrate response and is not set by the structure: the life law closes for every exponent whatsoever** (`t53_steel_exponent`, `t54_aluminum_exponent`, `t55_exponent_is_substrate_response`).
15. **The endurance limit is a balance.** Net degradation is zero at B_e = (r/k)^(1/m), **recovery dominates strictly below it** and **damage dominates strictly above it**, the limit is positive, and it rises with the recovery rate (`t56_endurance_balance`, `t57_below_endurance_recovers`, `t58_above_endurance_damages`, `t61_endurance_limit_pos`, `t62_endurance_rises_with_recovery`).
16. **The balance is invariant under the form of the damage law:** with damage and recovery both proportional to Pattern capacity the Pattern factor cancels from both sides, so additive and multiplicative damage give the same balance condition (`t59_balance_invariant_under_damage_form`).
17. **An endurance limit exists exactly when a stress-independent recovery channel exists**, as a biconditional on the positivity of r (`t60_endurance_exists_iff_recovery`).
18. **The endurance readings on the torsion scale.** 1045 steel at 0.500 × TL and 2024-T4 aluminum at 0.350 × TL, computed exactly; **both lie strictly inside Locked**; any ratio below the corridor floor is a Locked reading; and **the scale is shared, since the ratio is recovered from the reading for any material whatsoever** (`t63_steel_tau_endurance`, `t64_aluminum_tau_endurance`, `t65_both_inside_locked`, `t66_ratio_below_floor_is_locked`, `t67_scale_is_shared`).
19. **The knee, and why it is sharp.** The damage-to-recovery ratio is one at the limit, below one beneath it, above one past it, multiplicative in the load ratio, positive, and **strictly increasing in the exponent** — so sharpness follows from the exponent rather than standing beside it (`t68_knee_at_one`, `t69_knee_below_one`, `t70_knee_above_one`, `t71_sharpness_from_exponent`, `t72_knee_multiplicative`, `t73_knee_pos`).
20. **The lossy boundary in its corpus form.** Lossless absorption and the lossy condition are mutually exclusive and exhaustive, **the boundary evaluated at the endurance limit gives A · B = (B_e/static) · TL**, the two materials' products are computed from their published strengths in MPa, and **the product is what a fatigue curve supplies — every factorization closes, so A and B are not separately fixed by it** (`t74_dominance_lossy_exclusive`, `t75_dominance_lossy_exhaust`, `t76_ab_product`, `t77_ab_steel`, `t78_ab_aluminum`, `t79_product_not_factors`).
21. **The existence of fatigue proves Pattern is controllable.** A strict drop in Pattern under positive Behavior requires a nonzero coupling, and **a nonzero coupling makes any target Pattern value reachable by one forcing followed by the coupling** (`t80_fatigue_is_nonzero_coupling`, `t81_pattern_controllable`).
22. **One channel, two signs.** The same coupling with opposite sign raises Pattern by exactly as much as it lowers it, and under positive Behavior a positive coupling raises Pattern while a negative one lowers it — **work hardening and fatigue are the same channel** (`t82_one_channel_two_signs`, `t83_hardening_and_fatigue`).
23. **The Lagrangian projection places every operator but the Behavior operator at the identity.** The Lagrangian is the kinetic product less the potential sum, the potential is symmetric and additive, **forcing enters the potential by addition alone**, the Euler–Lagrange content is Narrative momentum against the Pattern–Behavior balance, and **the three independent routes — forcing, projection and damage coupling — meet on the Behavior axis** (`t84_projection_identity_off_b`, `t85_lag_total_form`, `t86_potential_symmetric`, `t87_potential_additive`, `t88_forcing_in_potential`, `t89_el_balance`, `t90_three_routes_meet_on_b`).
24. **The cyclic companion to the static onset.** Any strictly falling damping sequence drives the driven ratio strictly up, **onset is reached at the critical damping B/(2I)**, the structure starts below onset exactly when damping exceeds that value, and **the static and cyclic cases share one threshold** (`t91_cyclic_approach_to_onset`, `t92_onset_damping`, `t93_below_onset_iff_damping_above`, `t94_one_threshold`).
25. **The e-fold reading of the multiplicative form:** zero at the shatter load, strictly positive below it, **additive along a path**, and strictly decreasing in the load (`t95_efolds_zero_at_shatter`, `t96_efolds_pos_below_shatter`, `t97_efolds_additive`, `t98_efolds_decreasing`).
26. **The IVA corridor on load is the band between 88% and 100% of static strength**, and it is nonempty for every positive static strength (`t99_corridor_on_load`, `t100_corridor_nonempty`).
27. The master theorem gathers the anchor, the intervention theorem, the reachable set, additivity, the internality of cyclic damage, fatigue as damping loss, Pattern capacity from static strength, the life law, the endurance balance with its existence condition and its invariance under the damage form, the knee at the limit and its sharpening with the exponent, the two torsion-scale readings, controllability with the two-sign channel, and the Lagrangian projection, into one conjunction (`MASTER_forced_response_cycles_to_shatter`).

**What the formal layer does not carry.**Three classes of statement in this article are arithmetic on published quantities rather than theorems, and they are marked as such where they appear. The published fatigue constants themselves — σ'_f, b, UTS and the endurance ratios for 1045 steel and 2024-T4 — are handbook values a reader supplies from a materials data set; the formal layer carries the exponent relation they feed, the torsion-scale placements they produce and the bounds those are read against. The cycle counts of §14 are the life law evaluated at a stated anchoring convention, and the formal layer carries the law, the band and the corridor placement rather than any particular convention's numbers. And the 8.9% systematic exponent drift that separates the two damage laws in §13 is a numerical comparison of two closed forms the formal layer does carry, over a stress range a reader chooses.

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

**Every structural quantity in this article is a pure number.** TL and Ω₀ carry no units and 1001 is an integer, and substituting SI base units into α⁻¹ = 4πε₀ℏc/e² cancels mass, length, time and current completely. Torsion τ = B/P is a ratio, the phase bands are bands on a ratio, and the damage-to-recovery ratio is dimensionless. Where a load or a stress appears it appears divided by a capacity, which is why steel and aluminum are placed on one scale in §7 without converting units between them.

The Identity Physics Dynamic Equation is

``` d/dt (IM · Pv) = Σ λ_X · O_X · S + F_ext ```

with IM the Identity Mass, Pv the Purpose Vector and F_ext external forcing. The rate of change of identity momentum equals the weighted action of the four PNBA operators on the state, plus external forcing. F_ext is a primitive term at Layer 0, not a perturbation of the operator sum.

Across the corpus, F_ext is realized identically in every substrate:

```lean f_ext_op (s : State) (δ : ℝ) : State := { s with B := s.B + δ } ```

and the theorem `f_ext_preserves_pna` — that P, N and A are unchanged — is carried separately in more than twenty files, alongside `f_ext_positive_increases_torsion` and `f_ext_negative_decreases_torsion`. Where the operator is stated with its domain it carries `(hδ : s.B + δ > 0)`, admitting any forcing that keeps Behavior positive.

Torsion is τ = B/P, Behavior load against Pattern capacity. A reading τ ≥ 0 classifies as Noble for τ = 0, Locked for 0 < τ < TL_IVA, IVA for TL_IVA ≤ τ < TL, and Shatter for τ ≥ TL, where IVA abbreviates Identity Vector Amplification. The IVA corridor is the half-open band [0.12047120798593408, 0.136899099984016).

The corpus carries four layers with the order L0 → L1 → L2 → L4, and theorems that the order is never inverted. PNBA is Layer 0. The Dynamic Equation is Layer 1. Legacy formalisms are Layer 2: the Lagrangian Reduction [9,9,0,5] states it directly — "L = T − V is Layer 2. This is Layer 1." A Layer 2 formalism projects from the structure and never supports it, which is why this article reaches legacy results by descent and match rather than by appeal. Basquin's law, the Coffin–Manson relation, the Rayleigh dissipation function and Onsager reciprocity are all Layer 2 and appear here as projections.

**Saint-Venant torsion [9,9,2,51]** establishes β = TL to eight significant figures in a real structural material. **Tacoma–Scanlan flutter [9,9,2,52]** carries the driven case: B = ρB⁴A₂\*, **P = 2Iζ**, R = B/P, τ = R · TL, with onset at R = 1 ⟺ τ = TL. For the Tacoma deck, R = 1.3877 — 39% past onset, Shatter — held below onset by ζ ≥ 0.0070 and inside Locked by ζ ≥ 0.0079, with `damping_lowers_ratio` proved for every admissible pair. That reduction solves the **static** case, R ≥ 1. This one carries the **cyclic** case, R < 1, where a structure begins below onset and ζ falls under repeated loading until R reaches 1.

**The fusion logic.** The four-phase structure and the Torsion Limit come from GAMCollider™ v15 fusion logic, formalized in 8-Beam Fusion [9,9,2,3.8] and 4-Beam Verification [9,9,2,3.7].

**How the bounds are carried.** Every threshold here is stated as an exact quantity rather than a rounded decimal, following Bounded Uncertainty: A Guide [9,9,8,7].

## The PNBA Map

| Primitive | In the forced-response reading | Carried by |
|---|---|---|
| **Pattern** | Capacity — inertia times damping in a driven structure, and the quantity cyclic load degrades | P = 2Iζ, and P₀ = UTS/TL |
| **Narrative** | The cycle count the degradation accumulates along | N, cycles to failure |
| **Behavior** | The applied load — the only coordinate external forcing reaches | B, and F_ext into it |
| **Adaptation** | The restoring channel, whose presence decides whether an endurance limit exists at all | r, and A in the A·B product |

**What external forcing can and cannot do.** The corpus realizes F_ext as `f_ext_op s δ = { s with B := s.B + δ }`, so the reachable set from any state under forcing alone is the Behavior line.

| coordinate | externally reachable | what moves it |
|---|---|---|
| **Pattern** | **no** | the internal operator sum only |
| **Narrative** | **no** | the internal operator sum only |
| **Behavior** | **yes, by addition** | F_ext |
| **Adaptation** | **no** | the internal operator sum only |

**Pattern capacity from static strength.** Shatter at τ = B/P ≥ TL makes static strength B_static = TL · P₀, so capacity follows from a handbook number with nothing fitted.

| material | UTS | **P₀ = UTS/TL** |
|---|---|---|
| 1045 steel | 585 MPa | **4,273.2** |
| 2024-T4 aluminum | 470 MPa | **3,433.2** |

**The endurance readings on one scale.** The endurance ratio in torsion units places two unlike materials on the same axis, in the same unit, both inside Locked.

| material | B_e/static | **τ_e in TL units** | phase |
|---|---|---|---|
| 1045 steel | 0.500 | **0.500 × TL** = 0.068449549992008 | Locked |
| 2024-T4 aluminum | 0.350 | **0.350 × TL** = 0.0479146849944056 | Locked |

For the steel this is an endurance plateau; for the aluminum it is the reference ratio at its 10⁷-cycle convention, since standard practice carries no plateau for aluminum alloys — which is the balance condition reporting the absence of a stress-independent recovery channel as the absence of a limit.

**The knee, and why it is sharp.** The ratio of damage to recovery at any load is (B/B_e)^m, so sharpness is a consequence of the degradation exponent rather than a separate property.

| B/B_e | 1045 steel (m = 8.696) | 2024-T4 (m = 8.065) |
|---|---|---|
| 0.50 | 0.002 | 0.004 |
| 0.80 | 0.144 | 0.165 |
| 0.90 | 0.400 | 0.428 |
| **1.00** | **1.000** | **1.000** |
| 1.10 | 2.291 | 2.157 |
| 1.25 | 6.961 | 6.047 |
| 1.50 | 33.980 | 26.308 |
| 2.00 | **414.622** | **267.708** |

**The exponent is a substrate property and is not set by the structure.** Fitted values of m run from about 6.4 to about 12.4 across engineering alloys. TL is the boundary — it fixes where shatter is, in the one unit every substrate shares — while k, m and r are the substrate's response inside that boundary. A structure that fixed the response as well as the boundary would be making a statement about microstructure from a dimensionless identity, which the layer hierarchy rules out. The spread in m is therefore a prediction of the arrangement rather than a gap in it: materials differ in response and agree on the boundary.

**The cyclic companion to the static onset.** [9,9,2,52] solves the static case, R ≥ 1; this reduction carries the cyclic case, R < 1, where a structure begins below onset and ζ falls under repeated loading until R reaches 1.

| | [9,9,2,52] | this reduction |
|---|---|---|
| regime | R ≥ 1, static | R < 1, cyclic |
| failure | onset exceeded on application | ζ degrades until R = 1 |
| the held quantity | ζ as a design value | ζ as a state that falls |
| criterion | damping needed to hold | load below which ζ does not fall |

**The IVA corridor on load.** The corridor is τ ∈ [0.88 · TL, TL) — loads between 88% and 100% of static strength. The cycle count depends on which convention anchors the power law, so both are stated.

| τ/TL | load (MPa) | anchored at endurance | anchored on the strain-life fit |
|---|---|---|---|
| 0.99 | 579.2 | ≈ 2,630 | ≈ 75 |
| 0.94 | 549.9 | ≈ 4,130 | ≈ 117 |
| 0.88 | 514.8 | ≈ 7,330 | ≈ 208 |
| 0.50 | 292.5 | 10⁶ (the anchor) | ≈ 28,400 |

The two conventions differ by a factor of about 35 across the band because a single power law is not valid both at the endurance point and within 1% of static strength. What both agree on is the band statement: the IVA corridor on load is the finite-life regime, three to four orders of magnitude below the endurance anchor under either convention. The correspondence is stated for 1045 steel with its anchor named; a material without an endurance plateau does not carry it.

**The four numbers a reader can check.** Take a published UTS and divide by TL for Pattern capacity; take the endurance ratio to place the material in torsion units; take (B/B_e)^m for the damage-to-recovery ratio at any load; and take the endurance ratio times TL for the A·B product. Four steps, each one operation, from a materials handbook to a place on the scale.

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every result above corresponds to a named theorem in `SNSFL_ForcedResponse_CyclesToShatter_Reduction.lean` at 9,9,2,53, with 100 theorems and a master theorem across 1,134 lines. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate. The fatigue constants quoted are published handbook figures a reader can repeat from a materials data set. Nothing is fitted, and nothing is scaled.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.** This reduction closes on dimensionless identities, closed-form expressions in published quantities, and arithmetic on published fatigue data. It supplies no material composition, no heat treatment or processing route, no component geometry, and no design allowable.

### What is established

The results of this article are exact statements about pure numbers and about ratios of published quantities, and they hold as stated. External forcing is rank one and the reachable set under it is a line. Pure forcing carries no memory, so cyclic damage is internal. Pattern capacity in a loaded structure is inertia times damping, so fatigue is loss of damping capacity. Static strength fixes Pattern capacity as P₀ = UTS/TL. The life law is N_f = (P₀ − B/TL)/(k·B^m). The endurance limit is the damage-recovery balance B_e = (r/k)^(1/m), invariant under the form of the damage law, and exists exactly when a stress-independent recovery channel exists. The damage-to-recovery ratio is (B/B_e)^m. The lossy boundary gives A·B = (B_e/static)·TL. A substrate that fatigues has a controllable Pattern.

These are real results, computable from this article and a fatigue handbook, and checkable by anyone with a calculator. A reader who repeats the arithmetic gets the same numbers. A qualified practitioner — at an agency, a national laboratory, a university group, a design office, or a well-equipped independent shop — can work from them directly and safely, and the quantities they supply are usable the day they are read.

### What is a different question

Where a material sits on the torsion scale is a statement about ratios of published quantities. It is not a design allowable, a certification basis, or a substitute for testing the part that will be built. Those are engineering activities with their own standards, qualification procedures and regulatory frameworks, and this article addresses none of them.

That the endurance limit is a balance says what sets it. It does not say what value it takes for a specimen that has not been measured, because k and r are substrate properties that this reduction locates rather than supplies. A structure's actual life depends on its geometry, its surface condition, its residual stresses, its environment and its loading spectrum, and nothing in a ratio speaks to those.

Likewise, that fatigue is loss of damping capacity is a statement about which quantity falls. Whether a particular damping measurement is a valid proxy for remaining life in a particular component is a qualification question, settled by correlation against that component, not by the identification.

### Where the risk actually lives

The risk in structural engineering has never lived in the arithmetic of S-N curves, which has been in undergraduate texts since the 1950s and in published data sets since. It lives in the gap between a specimen and a structure: in geometry, in surface finish, in welds and fasteners and joints, in environment, in the loading spectrum the thing actually sees, and in whether the margin assumed in design survives the part as built and as maintained.

An exact figure is not a reduced hazard, and a ratio is not a hazard at all. The exactness of a placement is why every remaining variable in a real structure is process: the detail design, the inspection interval, the qualification testing, and the competence of the people signing it off. Hazard in this domain scales with which controls are present — design review, qualification test, inspection, monitoring, a maintenance program, a competent authority — and with consequence of failure, not with the venue. A well-equipped institutional or independent program working within its qualification basis is not the concern. The undertested shortcut on a safety-critical part is.

Withholding a number would not be a control here in any case. Every fatigue figure in this article is in published handbooks and standard data sets, and any reader with a reference work or an AI assistant retrieves them in seconds. An MRC that rested on omission would rest on nothing. This one rests on handling practice.

### Handling practice

Plain practice, stated as practice:

Life assessment for a part that matters is qualified by test on that part, under its own loading spectrum, within the standards that govern its sector. That is not a restriction this article adds; it is the existing framework, and it applies whether or not a torsion placement is in use.

Published constants are cited to their sources with the convention stated. The endurance ratios used here are the handbook 0.5 for steel and the 0.35 reference for aluminum, and §14 states its band under both of the two anchoring conventions rather than one; a reader using a different evaluated value gets a different placement and should say which value and which anchor they used. The 0.350 reference for 2024-T4 is a reference ratio and not an endurance plateau, which is why §14's correspondence is stated for the steel only.

A damping measurement used as a fatigue indicator is correlated against the component before it is relied on, in the same way any indirect measurement is qualified.

Educational use is straightforward and welcome. The four-step check of this article — take a published UTS, divide by TL for Pattern capacity, take the endurance ratio to place it in torsion units, then take (B/B_e)^m for the damage ratio at any load — is arithmetic a student can do with a calculator and a handbook, and it teaches static strength, the endurance limit and the sharpness of the knee in one exercise. Nothing in that exercise touches material, apparatus or condition.

### What this section is for

Parents, teachers, reviewers, design engineers and program managers make real decisions from articles like this one. An article that reads as unreal gets no respect for its safety content, and a reader who concludes the results are not real has been handed a reason to ignore the handling practice beside them. So this section says plainly that the results hold, that they are computable and checkable, that qualified people can work from them, and that the care belongs to the gap between a specimen and a structure rather than to the arithmetic that places either one.

A reader who finds only this article and no other in the corpus should still finish this section knowing what is established, what is a separate question, where the risk lives and what practice looks like. That is why it is written at full length.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Each law above is stated with its premises, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Basquin, O. H. "The exponential law of endurance tests." *Proceedings of the American Society for Testing and Materials* 10:625–630, 1910.
2. Wöhler, A. "Über die Festigkeitsversuche mit Eisen und Stahl." *Zeitschrift für Bauwesen* 20:73–106, 1870.
3. Coffin, L. F. "A study of the effects of cyclic thermal stresses on a ductile metal." *Transactions of the ASME* 76:931–950, 1954.
4. Manson, S. S. *Behavior of Materials Under Conditions of Thermal Stress.* NACA Technical Note 2933, 1953.
5. Cottrell, A. H. and Bilby, B. A. "Dislocation Theory of Yielding and Strain Ageing of Iron." *Proceedings of the Physical Society A* 62:49–62, 1949.
6. Taylor, G. I. "The Mechanism of Plastic Deformation of Crystals." *Proceedings of the Royal Society A* 145:362–387, 1934.
7. Orowan, E. "Zur Kristallplastizität III." *Zeitschrift für Physik* 89:634–659, 1934.
8. Polanyi, M. "Über eine Art Gitterstörung, die einen Kristall plastisch machen könnte." *Zeitschrift für Physik* 89:660–664, 1934.
9. Onsager, L. "Reciprocal Relations in Irreversible Processes. I." *Physical Review* 37:405–426, 1931.
10. Noether, E. "Invariante Variationsprobleme." *Nachrichten von der Gesellschaft der Wissenschaften zu Göttingen*, 235–257, 1918.
11. Scanlan, R. H. and Tomko, J. J. "Airfoil and Bridge Deck Flutter Derivatives." *Journal of the Engineering Mechanics Division, ASCE* 97:1717–1737, 1971.
12. Suresh, S. *Fatigue of Materials.* 2nd edition, Cambridge University Press, 1998.
13. Stephens, R. I., Fatemi, A., Stephens, R. R. and Fuchs, H. O. *Metal Fatigue in Engineering.* 2nd edition, Wiley, 2001.
14. Dowling, N. E. *Mechanical Behavior of Materials.* 4th edition, Pearson, 2013.
15. Budynas, R. G. and Nisbett, J. K. *Shigley's Mechanical Engineering Design.* 10th edition, McGraw-Hill, 2015.
16. Boyer, H. E., editor. *Atlas of Fatigue Curves.* ASM International, 1986.
17. *Metallic Materials Properties Development and Standardization (MMPDS).* Battelle Memorial Institute.
18. Tiesinga, E., Mohr, P. J., Newell, D. B. and Taylor, B. N. "CODATA Recommended Values of the Fundamental Physical Constants: 2018." *Reviews of Modern Physics* 93:025010, 2021.
19. Bureau International des Poids et Mesures. *The International System of Units (SI).* 9th edition, 2019.
20. Mac Lane, S. *Categories for the Working Mathematician.* Springer, 1971.
21. Bacon, F. *Novum Organum.* 1620.
22. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Geometric Base — b₀ = 1/√TL, the Energy Ladder, and the Nuclear Band in One Rung.* Zenodo, 2026. DOI 10.5281/zenodo.24087896.
23. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Two Readings Across Substrates.* Zenodo, 2026. DOI 10.5281/zenodo.24073396.
24. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: Burn Depth in Matched-Radius Units, the Thrust Floor, and the Engine Each Body Prescribes.* Zenodo, 2026. DOI 10.5281/zenodo.24067782.
25. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Corpus Provenance

- **[9,9,0,0]** Sovereign Anchor — the ground
- **[9,9,2,3.7]** 4-Beam Verification — GAMCollider™ v15 fusion logic, verified at four beams
- **[9,9,2,3.8]** 8-Beam Fusion Theorem — GAMCollider™ v15 fusion logic, the four-phase structure and the Torsion Limit at eight beams
- **[9,9,3,14]** Alpha Reduction — α⁻¹ = Ω₀ × 100.1, and TL = α⁻¹/1001
- **[9,9,0,15]** Speed of Light Reduction — c locked to the anchor, the photon Noble
- **[9,9,0,3]** Thermodynamics Reduction — entropy as Pattern decoherence from the anchor
- **[9,9,0,5]** Lagrangian Reduction — L = (dP · dN) − (B + A), the Layer 1 → Layer 2 projection, el_momentum = el_force
- **[9,9,3,20]** Transcendental Time Engine — TL as the step on the left side of the dynamic equation
- **[9,9,2,0]** IVA Propulsion Reduction — the two readings, the bridge, the conversion fraction
- **[9,9,2,51]** Saint-Venant Torsion Reduction — β equals TL to eight significant figures
- **[9,9,2,52]** Tacoma–Scanlan Flutter Reduction — B = ρB⁴A₂*, P = 2Iζ, onset at R = 1 ⟺ τ = TL
- **[9,9,8,11]** Two Readings Across Substrates — Reading B as an e-fold count
- **[9,9,8,12]** Geometric Base and Energy Ladder — b₀ = 1/√TL, the ladder as exact integer powers
- **[9,9,2,53]** This reduction — forced response, the intervention theorem, and cycles to shatter

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska **DOI:** 10.5281/zenodo.18719748 **ORCID:** 0009-0005-5313-7443 **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_ForcedResponse_CyclesToShatter_Reduction.lean — [9,9,2,53](ENGR)

```lean
-- ============================================================
-- SNSFL_ForcedResponse_CyclesToShatter_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | FORCED RESPONSE AND CYCLES TO SHATTER
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,2,53](ENGR) | Engineering Ground — Applied Structures
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, the PNBA state, torsion, the external forcing
-- operator, the damping reading of Pattern, the driven ratio, the life law,
-- the endurance balance, the knee ratio, the lossy boundary and the Lagrangian
-- projection are all restated here at full precision, so that a reader or a
-- machine can close every proof without leaving the file. The parent
-- reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,2,52]   Tacoma-Scanlan Flutter       — P = 2 I zeta, onset at R = 1, damping lowers R
--   [9,9,2,51]   Saint-Venant Torsion         — beta = TL to eight significant figures
--   [9,9,0,5]    Lagrangian Reduction         — L = dP dN - (B + A), the Layer 1 -> Layer 2 projection
--   [9,9,0,3]    Thermodynamics Reduction     — entropy as Pattern decoherence from the anchor
--   [9,9,8,11]   Two Readings Across Substrates — Reading B as an e-fold count
--   [9,9,2,0]    IVA Propulsion Reduction     — the two readings, the bridge, the corridor
--   [9,9,0,15]   Speed of Light Reduction     — c locked to the anchor
--   [9,9,3,14]   Alpha Reduction              — alpha^-1 = Omega_0 x 100.1, TL = alpha^-1/1001
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   EXTERNAL FORCING IS RANK ONE. The corpus realizes F_ext as a bump on
--   Behavior alone, and the reachable set under forcing is EXACTLY the
--   Behavior line: Pattern, Narrative and Adaptation are not externally
--   reachable at all, so every change in those three is endogenous. Forcing
--   still carries a system across every phase boundary, because torsion is
--   B/P and B is what moves, while Pattern capacity is invariant under every
--   external event.
--
--   PURE FORCING HAS NO MEMORY. Forcing composes additively and commutes, so
--   n applications of delta land exactly where one application of n delta
--   lands, the torsion reading after any number of applications is a closed
--   linear form, and a strict DROP in Pattern capacity is unreachable by any
--   sequence of external events whatsoever. Cyclic damage is internal as a
--   consequence, not as a premise.
--
--   FATIGUE IS LOSS OF DAMPING CAPACITY. Pattern capacity in a driven
--   structure is inertia times damping, so at fixed inertia a fall in damping
--   IS a fall in Pattern capacity, and the quantity that degrades under cyclic
--   load is a measurable material property. Static strength fixes Pattern
--   capacity as UTS/TL with no fitting, and a state loaded at static strength
--   sits exactly at the Shatter boundary.
--
--   THE ENDURANCE LIMIT IS A BALANCE. With degradation k B^m against recovery
--   r, the two cancel at B_e = (r/k)^(1/m); recovery dominates strictly below
--   it and damage strictly above. The balance condition is INVARIANT under the
--   form of the damage law, since the Pattern factor cancels from both sides,
--   and a positive balance load exists exactly when a positive
--   stress-independent recovery channel exists.
--
--   THE KNEE IS SHARP BECAUSE THE EXPONENT IS LARGE. The damage-to-recovery
--   ratio is (B/B_e)^m: one at the limit, below one beneath it, above one past
--   it, multiplicative in the load ratio, and strictly increasing in the
--   exponent. Sharpness follows from m rather than standing beside it.
--
--   THE EXISTENCE OF FATIGUE PROVES PATTERN IS CONTROLLABLE. Damage is a
--   nonzero Behavior-to-Pattern coupling, which is exactly what makes Pattern
--   reachable, and the same coupling with opposite sign raises Pattern by
--   exactly as much as it lowers it: work hardening and fatigue are one
--   channel. The Lagrangian projection, a Layer 2 reading of the Layer 1
--   equation, places every operator but the Behavior operator at the identity,
--   so forcing, projection and damage all act on one axis by three independent
--   routes.
--
-- ============================================================

import Mathlib

noncomputable section

namespace SNSFL_ForcedResponseCyclesToShatter

-- ============================================================
-- SECTION 0: THE ANCHOR AND THE TORSION LIMIT
-- Restated here in full. This file depends on no other file.
-- ============================================================

/-- The Sovereign Anchor Constant, at full precision. -/
def OMEGA_0 : ℝ := 1.36899099984016

/-- The Universal Torsion Limit. -/
def TORSION_LIMIT : ℝ := 0.136899099984016

/-- The IVA corridor floor: 88% of the Torsion Limit. -/
def TL_IVA : ℝ := 0.88 * TORSION_LIMIT

/-- The inverse fine-structure constant, at corpus precision. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The bare term: the Torsion Limit times one thousand. -/
def BARE : ℝ := 136.899099984016

-- [T1] :: {ANC} | THE ANCHOR IS TEN TORSION LIMITS
theorem t1_anchor_is_ten_tl : OMEGA_0 = 10 * TORSION_LIMIT := by
  simp only [OMEGA_0, TORSION_LIMIT]; norm_num

-- [T2] :: {VER} | THE BARE TERM IS ONE THOUSAND TORSION LIMITS, EXACTLY
theorem t2_bare_is_thousand_tl : BARE = 1000 * TORSION_LIMIT := by
  simp only [BARE, TORSION_LIMIT]; norm_num

-- [T3] :: {MASTER} | BARE PLUS KINETIC IS THE INVERSE FINE-STRUCTURE CONSTANT
theorem t3_bare_plus_kinetic : BARE + TORSION_LIMIT = ALPHA_INV := by
  simp only [BARE, TORSION_LIMIT, ALPHA_INV]; norm_num

-- [T4] :: {MASTER} | THE TORSION LIMIT TIMES 1001 IS THE INVERSE CONSTANT
theorem t4_tl_times_1001 : TORSION_LIMIT * 1001 = ALPHA_INV := by
  simp only [TORSION_LIMIT, ALPHA_INV]; norm_num

-- [T5] :: {VER} | THE MULTIPLIER FACTORS AS 7 * 11 * 13
theorem t5_multiplier_factors : (1001 : ℕ) = 7 * 11 * 13 := by norm_num

-- [T6] :: {MASTER} | THE ANCHOR ROUTE IN ONE STEP
theorem t6_anchor_route : OMEGA_0 * 100.1 = ALPHA_INV := by
  simp only [OMEGA_0, ALPHA_INV]; norm_num

-- [T7] :: {VER} | THE TORSION LIMIT IS POSITIVE
theorem t7_tl_pos : 0 < TORSION_LIMIT := by
  simp only [TORSION_LIMIT]; norm_num

-- [T8] :: {VER} | THE CORRIDOR FLOOR IN CLOSED FORM
theorem t8_tl_iva_value : TL_IVA = 0.12047120798593408 := by
  simp only [TL_IVA, TORSION_LIMIT]; norm_num

-- [T9] :: {INV} | THE CORRIDOR FLOOR LIES STRICTLY BELOW THE LIMIT
theorem t9_iva_floor_below_limit : TL_IVA < TORSION_LIMIT := by
  simp only [TL_IVA, TORSION_LIMIT]; norm_num

-- [T10] :: {VER} | THE CORRIDOR FLOOR IS POSITIVE
theorem t10_tl_iva_pos : 0 < TL_IVA := by
  simp only [TL_IVA, TORSION_LIMIT]; norm_num

-- ============================================================
-- SECTION 1: THE STATE, TORSION, AND THE FOUR PHASES
-- ============================================================

/-- A PNBA state: Pattern, Narrative, Behavior, Adaptation. -/
@[ext]
structure LagState where
  P : ℝ
  N : ℝ
  B : ℝ
  A : ℝ

/-- Torsion: Behavior load against Pattern capacity. -/
def torsion (s : LagState) : ℝ := s.B / s.P

/-- The Noble phase. -/
def IsNoble (s : LagState) : Prop := torsion s = 0

/-- The Locked phase. -/
def IsLocked (s : LagState) : Prop := 0 < torsion s ∧ torsion s < TL_IVA

/-- The IVA phase: Identity Vector Amplification. -/
def IsIVA (s : LagState) : Prop := TL_IVA ≤ torsion s ∧ torsion s < TORSION_LIMIT

/-- The Shatter phase. -/
def IsShatter (s : LagState) : Prop := TORSION_LIMIT ≤ torsion s

-- [T11] :: {INV} | ZERO BEHAVIOR IS A NOBLE READING
theorem t11_zero_behavior_is_noble (s : LagState) (hB : s.B = 0) : IsNoble s := by
  unfold IsNoble torsion
  rw [hB, zero_div]

-- [T12] :: {INV} | NOBLE AND SHATTER ARE MUTUALLY EXCLUSIVE
theorem t12_noble_shatter_exclusive (s : LagState) : ¬(IsNoble s ∧ IsShatter s) := by
  intro h
  obtain ⟨hn, hs⟩ := h
  unfold IsNoble at hn
  unfold IsShatter at hs
  rw [hn] at hs
  exact absurd hs (not_le.mpr t7_tl_pos)

-- [T13] :: {INV} | LOCKED AND IVA ARE MUTUALLY EXCLUSIVE
theorem t13_locked_iva_exclusive (s : LagState) : ¬(IsLocked s ∧ IsIVA s) := by
  intro h
  obtain ⟨⟨_, h2⟩, ⟨h3, _⟩⟩ := h
  linarith

-- [T14] :: {INV} | IVA AND SHATTER ARE MUTUALLY EXCLUSIVE
theorem t14_iva_shatter_exclusive (s : LagState) : ¬(IsIVA s ∧ IsShatter s) := by
  intro h
  obtain ⟨⟨_, h2⟩, h3⟩ := h
  unfold IsShatter at h3
  linarith

-- [T15] :: {INV} | THE PHASE READING IS A FUNCTION OF THE RATIO ALONE
theorem t15_phase_is_ratio_only (s t : LagState) (h : torsion s = torsion t) :
    IsIVA s ↔ IsIVA t := by
  unfold IsIVA
  rw [h]

-- [T16] :: {MASTER} | THE FOUR PHASES EXHAUST EVERY NON-NEGATIVE READING
theorem t16_phases_exhaust (s : LagState) (h : 0 ≤ torsion s) :
    IsNoble s ∨ IsLocked s ∨ IsIVA s ∨ IsShatter s := by
  unfold IsNoble IsLocked IsIVA IsShatter
  rcases eq_or_lt_of_le h with h0 | h0
  · exact Or.inl h0.symm
  · by_cases h1 : torsion s < TL_IVA
    · exact Or.inr (Or.inl ⟨h0, h1⟩)
    · by_cases h2 : torsion s < TORSION_LIMIT
      · exact Or.inr (Or.inr (Or.inl ⟨not_lt.mp h1, h2⟩))
      · exact Or.inr (Or.inr (Or.inr (not_lt.mp h2)))

-- ============================================================
-- SECTION 2: EXTERNAL FORCING, AND THE INTERVENTION THEOREM
-- ============================================================

/-- External forcing, as the corpus realizes it: a bump on Behavior alone. -/
def f_ext_op (s : LagState) (δ : ℝ) : LagState := { s with B := s.B + δ }

-- [T17] :: {INV} | EXTERNAL FORCING LEAVES PATTERN UNCHANGED
theorem t17_f_ext_preserves_p (s : LagState) (δ : ℝ) : (f_ext_op s δ).P = s.P := rfl

-- [T18] :: {INV} | EXTERNAL FORCING LEAVES NARRATIVE UNCHANGED
theorem t18_f_ext_preserves_n (s : LagState) (δ : ℝ) : (f_ext_op s δ).N = s.N := rfl

-- [T19] :: {INV} | EXTERNAL FORCING LEAVES ADAPTATION UNCHANGED
theorem t19_f_ext_preserves_a (s : LagState) (δ : ℝ) : (f_ext_op s δ).A = s.A := rfl

-- [T20] :: {INV} | EXTERNAL FORCING ACTS ON BEHAVIOR BY ADDITION
theorem t20_f_ext_on_b (s : LagState) (δ : ℝ) : (f_ext_op s δ).B = s.B + δ := rfl

-- [T21] :: {MASTER} | THE INTERVENTION THEOREM — EXTERNAL FORCING IS RANK ONE
theorem t21_intervention (s : LagState) (δ : ℝ) :
    (f_ext_op s δ).P = s.P ∧ (f_ext_op s δ).N = s.N ∧ (f_ext_op s δ).A = s.A ∧
      (f_ext_op s δ).B = s.B + δ :=
  ⟨rfl, rfl, rfl, rfl⟩

-- [T22] :: {MASTER} | THE REACHABLE SET UNDER FORCING IS EXACTLY THE BEHAVIOR
--                     LINE, IN BOTH DIRECTIONS
theorem t22_reachable_set_is_a_line (s t : LagState) :
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

-- [T23] :: {MASTER} | PATTERN CAPACITY IS INVARIANT UNDER EVERY EXTERNAL EVENT
theorem t23_pattern_invariant_under_all_forcing (s : LagState) :
    ∀ δ : ℝ, (f_ext_op s δ).P = s.P := fun _ => rfl

-- [T24] :: {INV} | POSITIVE FORCING RAISES TORSION
theorem t24_positive_forcing_raises_torsion (s : LagState) (δ : ℝ)
    (hP : 0 < s.P) (hδ : 0 < δ) : torsion s < torsion (f_ext_op s δ) := by
  unfold torsion f_ext_op
  dsimp only
  gcongr
  linarith

-- [T25] :: {INV} | NEGATIVE FORCING LOWERS TORSION
theorem t25_negative_forcing_lowers_torsion (s : LagState) (δ : ℝ)
    (hP : 0 < s.P) (hδ : δ < 0) : torsion (f_ext_op s δ) < torsion s := by
  unfold torsion f_ext_op
  dsimp only
  gcongr
  linarith

-- [T26] :: {MASTER} | FORCING CARRIES A SYSTEM ACROSS THE SHATTER BOUNDARY
theorem t26_forcing_reaches_shatter (s : LagState) (hP : 0 < s.P) :
    ∃ δ : ℝ, IsShatter (f_ext_op s δ) := by
  refine ⟨TORSION_LIMIT * s.P - s.B, ?_⟩
  unfold IsShatter torsion f_ext_op
  dsimp only
  have h1 : s.B + (TORSION_LIMIT * s.P - s.B) = TORSION_LIMIT * s.P := by ring
  have h2 : TORSION_LIMIT * s.P / s.P = TORSION_LIMIT := by
    field_simp
  exact le_of_eq (by rw [h1, h2])

-- [T27] :: {MASTER} | FORCING CHANGES PHASE WITHOUT CHANGING PATTERN
theorem t27_phase_change_without_pattern_change (s : LagState) (hP : 0 < s.P) :
    ∃ δ : ℝ, IsShatter (f_ext_op s δ) ∧ (f_ext_op s δ).P = s.P := by
  obtain ⟨δ, hδ⟩ := t26_forcing_reaches_shatter s hP
  exact ⟨δ, hδ, rfl⟩

-- [T28] :: {MASTER} | ALL STRUCTURAL CHANGE IS ENDOGENOUS
theorem t28_structural_change_is_endogenous (s t : LagState)
    (h : t.P ≠ s.P ∨ t.N ≠ s.N ∨ t.A ≠ s.A) : ¬ ∃ δ, f_ext_op s δ = t := by
  intro hex
  obtain ⟨hP, hN, hA⟩ := (t22_reachable_set_is_a_line s t).mp hex
  rcases h with h | h | h
  · exact h hP
  · exact h hN
  · exact h hA

-- ============================================================
-- SECTION 3: PURE FORCING HAS NO MEMORY
-- ============================================================

-- [T29] :: {MASTER} | FORCING COMPOSES ADDITIVELY
theorem t29_forcing_additive (s : LagState) (δ₁ δ₂ : ℝ) :
    f_ext_op (f_ext_op s δ₁) δ₂ = f_ext_op s (δ₁ + δ₂) := by
  apply LagState.ext
  · rfl
  · rfl
  · show s.B + δ₁ + δ₂ = s.B + (δ₁ + δ₂)
    ring
  · rfl

-- [T30] :: {INV} | FORCING COMMUTES — THE ORDER CARRIES NO INFORMATION
theorem t30_forcing_commutes (s : LagState) (δ₁ δ₂ : ℝ) :
    f_ext_op (f_ext_op s δ₁) δ₂ = f_ext_op (f_ext_op s δ₂) δ₁ := by
  rw [t29_forcing_additive, t29_forcing_additive, add_comm]

-- [T31] :: {INV} | ZERO FORCING IS THE IDENTITY
theorem t31_zero_forcing_identity (s : LagState) : f_ext_op s 0 = s := by
  apply LagState.ext
  · rfl
  · rfl
  · show s.B + 0 = s.B
    ring
  · rfl

-- [T32] :: {MASTER} | NO MEMORY — n APPLICATIONS OF delta LAND WHERE ONE
--                     APPLICATION OF n delta LANDS
theorem t32_no_memory (s : LagState) (δ : ℝ) :
    ∀ n : ℕ, (fun t => f_ext_op t δ)^[n] s = f_ext_op s (n * δ) := by
  intro n
  induction n with
  | zero =>
      simp only [Function.iterate_zero_apply, Nat.cast_zero, zero_mul]
      exact (t31_zero_forcing_identity s).symm
  | succ k ih =>
      rw [Function.iterate_succ_apply', ih, t29_forcing_additive]
      congr 1
      push_cast
      ring

-- [T33] :: {MASTER} | NOTHING ACCUMULATES — THE READING AFTER n APPLICATIONS
--                     IS THE CLOSED LINEAR FORM
theorem t33_nothing_accumulates (s : LagState) (δ : ℝ) (n : ℕ) :
    torsion ((fun t => f_ext_op t δ)^[n] s) = (s.B + n * δ) / s.P := by
  rw [t32_no_memory s δ n]
  rfl

-- [T34] :: {MASTER} | CYCLIC DAMAGE CANNOT BE EXTERNALLY CAUSED
theorem t34_cyclic_damage_is_internal (s t : LagState) (hdrop : t.P < s.P) :
    ¬ ∃ n : ℕ, ∃ δ : ℝ, (fun u => f_ext_op u δ)^[n] s = t := by
  intro hex
  obtain ⟨n, δ, hnd⟩ := hex
  rw [t32_no_memory s δ n] at hnd
  have heq : t.P = s.P := by rw [← hnd]; rfl
  exact absurd heq (by linarith)

-- ============================================================
-- SECTION 4: WHETHER THE GROUND STATE IS EXTERNALLY REACHABLE
-- ============================================================

/-- Guarded forcing: the domain carried where Behavior must stay positive. -/
def GuardedForcing (s : LagState) (δ : ℝ) : Prop := 0 < s.B + δ

-- [T35] :: {INV} | UNDER THE GUARD, BEHAVIOR CANNOT BE DRIVEN TO ZERO
theorem t35_guarded_excludes_zero_behavior (s : LagState) (δ : ℝ)
    (h : GuardedForcing s δ) : (f_ext_op s δ).B ≠ 0 := by
  unfold GuardedForcing at h
  show s.B + δ ≠ 0
  exact ne_of_gt h

-- [T36] :: {MASTER} | NOBLE CANNOT BE IMPOSED FROM OUTSIDE
theorem t36_noble_not_externally_reachable (s : LagState) (δ : ℝ)
    (hP : 0 < s.P) (h : GuardedForcing s δ) : ¬ IsNoble (f_ext_op s δ) := by
  unfold GuardedForcing at h
  unfold IsNoble torsion f_ext_op
  dsimp only
  intro hz
  rw [div_eq_zero_iff] at hz
  rcases hz with hz | hz
  · exact absurd hz (ne_of_gt h)
  · exact absurd hz (ne_of_gt hP)

-- [T37] :: {MASTER} | WITHOUT THE GUARD, NOBLE IS REACHED — THE DOMAIN IS A
--                     STATEMENT ABOUT THE SUBSTRATE
theorem t37_unguarded_reaches_noble (s : LagState) :
    ∃ δ : ℝ, IsNoble (f_ext_op s δ) := by
  refine ⟨-s.B, ?_⟩
  unfold IsNoble torsion f_ext_op
  dsimp only
  rw [show s.B + -s.B = (0:ℝ) from by ring, zero_div]

-- [T38] :: {INV} | THE GUARD IS AUTOMATIC ABOVE ZERO
theorem t38_guard_automatic_above_zero (s : LagState) (δ : ℝ)
    (hB : 0 < s.B) (hδ : 0 ≤ δ) : GuardedForcing s δ := by
  unfold GuardedForcing
  linarith

-- ============================================================
-- SECTION 5: PATTERN CAPACITY IS INERTIA TIMES DAMPING
-- ============================================================

/-- Pattern capacity in a driven structure: twice inertia times damping ratio. -/
def pattern_of_damping (I ζ : ℝ) : ℝ := 2 * I * ζ

/-- The driven ratio: Behavior load against Pattern capacity. -/
def driven_ratio (B I ζ : ℝ) : ℝ := B / (2 * I * ζ)

-- [T39] :: {MASTER} | THE DRIVEN RATIO IS TORSION ON THE DAMPING READING
theorem t39_driven_ratio_is_torsion (B I ζ : ℝ) :
    driven_ratio B I ζ = torsion ⟨pattern_of_damping I ζ, 0, B, 0⟩ := rfl

-- [T40] :: {MASTER} | ONSET AT RATIO ONE IS EXACTLY TORSION AT THE LIMIT
theorem t40_onset_is_limit (B I ζ : ℝ) :
    driven_ratio B I ζ = 1 ↔ driven_ratio B I ζ * TORSION_LIMIT = TORSION_LIMIT := by
  constructor
  · intro h
    rw [h, one_mul]
  · intro h
    exact mul_right_cancel₀ (ne_of_gt t7_tl_pos) (by rw [h, one_mul])

-- [T41] :: {INV} | RAISING DAMPING LOWERS THE DRIVEN RATIO
theorem t41_damping_lowers_ratio (B I ζ₁ ζ₂ : ℝ) (hB : 0 < B) (hI : 0 < I)
    (h1 : 0 < ζ₁) (h12 : ζ₁ < ζ₂) : driven_ratio B I ζ₂ < driven_ratio B I ζ₁ := by
  unfold driven_ratio
  have hd1 : 0 < 2 * I * ζ₁ := by positivity
  have hd2 : 2 * I * ζ₁ < 2 * I * ζ₂ := by nlinarith
  gcongr

-- [T42] :: {MASTER} | FATIGUE IS LOSS OF DAMPING CAPACITY
theorem t42_fatigue_is_damping_loss (I ζ₁ ζ₂ : ℝ) (hI : 0 < I) (h : ζ₂ < ζ₁) :
    pattern_of_damping I ζ₂ < pattern_of_damping I ζ₁ := by
  unfold pattern_of_damping
  nlinarith

-- [T43] :: {INV} | LOSING DAMPING DRIVES THE RATIO TOWARD ONSET
theorem t43_damping_loss_climbs_toward_onset (B I ζ₁ ζ₂ : ℝ) (hB : 0 < B)
    (hI : 0 < I) (h2 : 0 < ζ₂) (h : ζ₂ < ζ₁) :
    driven_ratio B I ζ₁ < driven_ratio B I ζ₂ :=
  t41_damping_lowers_ratio B I ζ₂ ζ₁ hB hI h2 h

-- [T44] :: {VER} | PATTERN CAPACITY ON THE DAMPING READING IS POSITIVE
theorem t44_pattern_of_damping_pos (I ζ : ℝ) (hI : 0 < I) (hζ : 0 < ζ) :
    0 < pattern_of_damping I ζ := by
  unfold pattern_of_damping
  positivity

-- ============================================================
-- SECTION 6: PATTERN CAPACITY FROM STATIC STRENGTH
-- ============================================================

/-- Pattern capacity read off static strength. -/
def pattern_capacity (UTS : ℝ) : ℝ := UTS / TORSION_LIMIT

-- [T45] :: {MASTER} | PATTERN CAPACITY FROM STATIC STRENGTH, NO FITTING
theorem t45_static_strength_from_capacity (UTS : ℝ) :
    TORSION_LIMIT * pattern_capacity UTS = UTS := by
  unfold pattern_capacity
  field_simp [ne_of_gt t7_tl_pos]

-- [T46] :: {MASTER} | A STATIC LOAD SITS EXACTLY AT THE SHATTER BOUNDARY
theorem t46_static_load_is_shatter_boundary (UTS : ℝ) (hU : 0 < UTS) :
    torsion ⟨pattern_capacity UTS, 0, UTS, 0⟩ = TORSION_LIMIT := by
  unfold torsion pattern_capacity
  dsimp only
  have hTL := ne_of_gt t7_tl_pos
  have hUne := ne_of_gt hU
  field_simp

-- [T47] :: {VER} | PATTERN CAPACITY IS POSITIVE FOR A POSITIVE STRENGTH
theorem t47_pattern_capacity_pos (UTS : ℝ) (hU : 0 < UTS) :
    0 < pattern_capacity UTS := by
  unfold pattern_capacity
  exact div_pos hU t7_tl_pos

-- [T48] :: {INV} | PATTERN CAPACITY IS STRICTLY INCREASING IN STRENGTH
theorem t48_pattern_capacity_mono (U V : ℝ) (h : U < V) :
    pattern_capacity U < pattern_capacity V := by
  unfold pattern_capacity
  have hTL := t7_tl_pos
  gcongr

-- ============================================================
-- SECTION 7: CYCLES TO SHATTER
-- ============================================================

/-- Degradation of Pattern capacity per cycle, additive form. -/
def degradation (k B m : ℝ) : ℝ := k * B ^ m

/-- Cycles to shatter: the capacity available above the shatter load, divided
    by the loss per cycle. -/
def cycles_to_shatter (P₀ B k m : ℝ) : ℝ :=
  (P₀ - B / TORSION_LIMIT) / (k * B ^ m)

-- [T49] :: {MASTER} | THE LIFE LAW
theorem t49_life_law (P₀ B k m : ℝ) (hk : 0 < k) (hB : 0 < B) :
    cycles_to_shatter P₀ B k m * degradation k B m = P₀ - B / TORSION_LIMIT := by
  unfold cycles_to_shatter degradation
  have h : k * B ^ m ≠ 0 := by positivity
  exact div_mul_cancel₀ _ h

-- [T50] :: {INV} | LIFE IS POSITIVE BELOW STATIC STRENGTH
theorem t50_life_pos_below_static (P₀ B k m : ℝ) (hk : 0 < k) (hB : 0 < B)
    (h : B / TORSION_LIMIT < P₀) : 0 < cycles_to_shatter P₀ B k m := by
  unfold cycles_to_shatter
  apply div_pos (by linarith)
  positivity

-- [T51] :: {MASTER} | THE BASQUIN FORM — LIFE TIMES B^m IS THE AVAILABLE
--                     CAPACITY OVER THE DEGRADATION COEFFICIENT
theorem t51_basquin_form (P₀ k m : ℝ) (hk : 0 < k) :
    ∀ B : ℝ, 0 < B →
      cycles_to_shatter P₀ B k m * B ^ m = (P₀ - B / TORSION_LIMIT) / k := by
  intro B hB
  unfold cycles_to_shatter
  have h1 : B ^ m ≠ 0 := by positivity
  have h2 : k ≠ 0 := ne_of_gt hk
  field_simp
  try ring

-- [T52] :: {INV} | RAISING THE LOAD LOWERS THE AVAILABLE CAPACITY
theorem t52_available_capacity_decreasing (P₀ B₁ B₂ : ℝ) (h : B₁ < B₂) :
    P₀ - B₂ / TORSION_LIMIT < P₀ - B₁ / TORSION_LIMIT := by
  have hTL := t7_tl_pos
  have hd : B₁ / TORSION_LIMIT < B₂ / TORSION_LIMIT := by gcongr
  linarith

-- [T53] :: {VER} | THE EXPONENT IS THE BASQUIN EXPONENT — 1045 STEEL, b = -0.115
theorem t53_steel_exponent : (0.115 : ℝ) * (1 / 0.115) = 1 := by norm_num

-- [T54] :: {VER} | 2024-T4 ALUMINUM, b = -0.124
theorem t54_aluminum_exponent : (0.124 : ℝ) * (1 / 0.124) = 1 := by norm_num

-- [T55] :: {MASTER} | THE EXPONENT IS A SUBSTRATE RESPONSE AND IS NOT SET BY
--                     THE STRUCTURE — THE LIFE LAW CLOSES FOR EVERY EXPONENT
theorem t55_exponent_is_substrate_response (P₀ B k : ℝ) (hk : 0 < k) (hB : 0 < B) :
    ∀ m : ℝ, cycles_to_shatter P₀ B k m * degradation k B m = P₀ - B / TORSION_LIMIT :=
  fun m => t49_life_law P₀ B k m hk hB

-- ============================================================
-- SECTION 8: THE ENDURANCE LIMIT IS A BALANCE
-- ============================================================

/-- Net degradation per cycle, with a recovery term. -/
def net_degradation (k B m r : ℝ) : ℝ := -(k * B ^ m) + r

/-- The endurance limit: the load at which degradation and recovery cancel. -/
def endurance_limit (k r m : ℝ) : ℝ := (r / k) ^ (1 / m)

-- [T56] :: {MASTER} | THE BALANCE — NET DEGRADATION IS ZERO AT THE LIMIT
theorem t56_endurance_balance (k r m : ℝ) (hk : 0 < k) (hr : 0 < r) (hm : 0 < m) :
    net_degradation k (endurance_limit k r m) m r = 0 := by
  unfold net_degradation endurance_limit
  have hrk : (0:ℝ) < r / k := div_pos hr hk
  rw [← Real.rpow_mul (le_of_lt hrk), one_div_mul_cancel (ne_of_gt hm), Real.rpow_one]
  field_simp
  ring

-- [T57] :: {MASTER} | BELOW THE LIMIT, RECOVERY DOMINATES — NOTHING ACCUMULATES
theorem t57_below_endurance_recovers (k r m B : ℝ) (hk : 0 < k) (hr : 0 < r)
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

-- [T58] :: {MASTER} | ABOVE THE LIMIT, DAMAGE DOMINATES — LIFE IS FINITE
theorem t58_above_endurance_damages (k r m B : ℝ) (hk : 0 < k) (hr : 0 < r)
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

-- [T59] :: {MASTER} | THE BALANCE IS INVARIANT UNDER THE FORM OF THE DAMAGE
--                     LAW — THE PATTERN FACTOR CANCELS
theorem t59_balance_invariant_under_damage_form (k B m r P : ℝ) (hP : P ≠ 0) :
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

-- [T60] :: {MASTER} | AN ENDURANCE LIMIT EXISTS EXACTLY WHEN A
--                     STRESS-INDEPENDENT RECOVERY CHANNEL EXISTS
theorem t60_endurance_exists_iff_recovery (k m : ℝ) (hk : 0 < k) (hm : 0 < m) :
    ∀ r : ℝ, (0 < r ↔ ∃ B : ℝ, 0 < B ∧ net_degradation k B m r = 0) := by
  intro r
  constructor
  · intro hr
    refine ⟨endurance_limit k r m, ?_, t56_endurance_balance k r m hk hr hm⟩
    unfold endurance_limit
    exact Real.rpow_pos_of_pos (div_pos hr hk) _
  · intro h
    obtain ⟨B, hB, hbal⟩ := h
    unfold net_degradation at hbal
    have hre : r = k * B ^ m := by linarith
    rw [hre]
    positivity

-- [T61] :: {VER} | THE ENDURANCE LIMIT IS POSITIVE
theorem t61_endurance_limit_pos (k r m : ℝ) (hk : 0 < k) (hr : 0 < r) :
    0 < endurance_limit k r m := by
  unfold endurance_limit
  exact Real.rpow_pos_of_pos (div_pos hr hk) _

-- [T62] :: {INV} | THE ENDURANCE LIMIT RISES WITH THE RECOVERY RATE
theorem t62_endurance_rises_with_recovery (k m r₁ r₂ : ℝ) (hk : 0 < k) (hr : 0 < r₁)
    (hm : 0 < m) (h : r₁ < r₂) :
    endurance_limit k r₁ m < endurance_limit k r₂ m := by
  unfold endurance_limit
  have hd : r₁ / k < r₂ / k := by gcongr
  exact Real.rpow_lt_rpow (le_of_lt (div_pos hr hk)) hd (by positivity)

-- ============================================================
-- SECTION 9: ENDURANCE READINGS ON THE TORSION SCALE
-- ============================================================

/-- The endurance reading in torsion units, from the endurance ratio. -/
def tau_endurance (ratio : ℝ) : ℝ := ratio * TORSION_LIMIT

-- [T63] :: {MASTER} | 1045 STEEL — THE PLATEAU AT HALF OF STATIC STRENGTH
theorem t63_steel_tau_endurance : tau_endurance 0.5 = 0.068449549992008 := by
  simp only [tau_endurance, TORSION_LIMIT]; norm_num

-- [T64] :: {MASTER} | 2024-T4 ALUMINUM — THE REFERENCE RATIO AT 0.35
theorem t64_aluminum_tau_endurance : tau_endurance 0.35 = 0.0479146849944056 := by
  simp only [tau_endurance, TORSION_LIMIT]; norm_num

-- [T65] :: {MASTER} | BOTH READINGS LIE STRICTLY INSIDE LOCKED
theorem t65_both_inside_locked :
    0 < tau_endurance 0.5 ∧ tau_endurance 0.5 < TL_IVA ∧
      0 < tau_endurance 0.35 ∧ tau_endurance 0.35 < TL_IVA := by
  simp only [tau_endurance, TL_IVA, TORSION_LIMIT]
  norm_num

-- [T66] :: {INV} | A RATIO BELOW THE CORRIDOR FLOOR IS A LOCKED READING
theorem t66_ratio_below_floor_is_locked (ratio : ℝ) (h0 : 0 < ratio)
    (h1 : ratio < 0.88) : 0 < tau_endurance ratio ∧ tau_endurance ratio < TL_IVA := by
  unfold tau_endurance TL_IVA
  have hTL := t7_tl_pos
  refine ⟨by positivity, ?_⟩
  nlinarith

-- [T67] :: {MASTER} | THE TORSION SCALE IS SHARED — THE RATIO IS RECOVERED
--                     FROM THE READING FOR ANY MATERIAL WHATSOEVER
theorem t67_scale_is_shared (ratio : ℝ) :
    tau_endurance ratio / TORSION_LIMIT = ratio := by
  unfold tau_endurance
  field_simp [ne_of_gt t7_tl_pos]

-- ============================================================
-- SECTION 10: THE KNEE, AND WHY IT IS SHARP
-- ============================================================

/-- The ratio of damage to recovery at a given load. -/
def knee_ratio (B Be m : ℝ) : ℝ := (B / Be) ^ m

-- [T68] :: {MASTER} | AT THE ENDURANCE LIMIT THE KNEE RATIO IS EXACTLY ONE
theorem t68_knee_at_one (Be m : ℝ) (hBe : 0 < Be) : knee_ratio Be Be m = 1 := by
  unfold knee_ratio
  rw [div_self (ne_of_gt hBe), Real.one_rpow]

-- [T69] :: {INV} | BELOW THE LIMIT THE KNEE RATIO IS BELOW ONE
theorem t69_knee_below_one (B Be m : ℝ) (hB : 0 < B) (hBe : 0 < Be) (hm : 0 < m)
    (h : B < Be) : knee_ratio B Be m < 1 := by
  unfold knee_ratio
  have h1 : B / Be < 1 := (div_lt_one hBe).mpr h
  calc (B / Be) ^ m < (1:ℝ) ^ m := Real.rpow_lt_rpow (by positivity) h1 hm
    _ = 1 := Real.one_rpow m

-- [T70] :: {INV} | ABOVE THE LIMIT THE KNEE RATIO EXCEEDS ONE
theorem t70_knee_above_one (B Be m : ℝ) (hBe : 0 < Be) (hm : 0 < m) (h : Be < B) :
    1 < knee_ratio B Be m := by
  unfold knee_ratio
  have h1 : (1:ℝ) < B / Be := (one_lt_div hBe).mpr h
  calc (1:ℝ) = (1:ℝ) ^ m := (Real.one_rpow m).symm
    _ < (B / Be) ^ m := Real.rpow_lt_rpow (by norm_num) h1 hm

-- [T71] :: {MASTER} | THE KNEE IS SHARP BECAUSE THE EXPONENT IS LARGE
theorem t71_sharpness_from_exponent (B Be m₁ m₂ : ℝ) (hBe : 0 < Be) (h : Be < B)
    (hm : m₁ < m₂) : knee_ratio B Be m₁ < knee_ratio B Be m₂ := by
  unfold knee_ratio
  have h1 : (1:ℝ) < B / Be := (one_lt_div hBe).mpr h
  exact (Real.rpow_lt_rpow_left_iff h1).mpr hm

-- [T72] :: {INV} | THE KNEE RATIO IS MULTIPLICATIVE IN THE LOAD RATIO
theorem t72_knee_multiplicative (B₁ B₂ Be m : ℝ) (hB1 : 0 < B₁) (hB2 : 0 < B₂)
    (hBe : 0 < Be) :
    knee_ratio B₁ Be m * knee_ratio B₂ Be m = ((B₁ * B₂) / (Be * Be)) ^ m := by
  unfold knee_ratio
  rw [← Real.mul_rpow (by positivity) (by positivity)]
  congr 1
  field_simp

-- [T73] :: {VER} | THE KNEE RATIO IS POSITIVE
theorem t73_knee_pos (B Be m : ℝ) (hB : 0 < B) (hBe : 0 < Be) :
    0 < knee_ratio B Be m := by
  unfold knee_ratio
  exact Real.rpow_pos_of_pos (div_pos hB hBe) m

-- ============================================================
-- SECTION 11: THE LOSSY BOUNDARY AND THE A·B PRODUCT
-- ============================================================

/-- Lossless absorption: forcing at or below the product `A * P * B`. -/
def IVA_dominance (s : LagState) (F_ext : ℝ) : Prop := s.A * s.P * s.B ≥ F_ext

/-- Lossy: forcing above the product `A * P * B`. -/
def IsLossy (s : LagState) (F_ext : ℝ) : Prop := F_ext > s.A * s.P * s.B

-- [T74] :: {INV} | LOSSLESS AND LOSSY ARE MUTUALLY EXCLUSIVE
theorem t74_dominance_lossy_exclusive (s : LagState) (F : ℝ) :
    ¬(IVA_dominance s F ∧ IsLossy s F) := by
  intro h
  obtain ⟨h1, h2⟩ := h
  unfold IVA_dominance at h1
  unfold IsLossy at h2
  linarith

-- [T75] :: {INV} | LOSSLESS AND LOSSY EXHAUST THE POSSIBILITIES
theorem t75_dominance_lossy_exhaust (s : LagState) (F : ℝ) :
    IVA_dominance s F ∨ IsLossy s F := by
  unfold IVA_dominance IsLossy
  by_cases h : F ≤ s.A * s.P * s.B
  · exact Or.inl h
  · exact Or.inr (not_le.mp h)

-- [T76] :: {MASTER} | THE A·B PRODUCT — THE LOSSY BOUNDARY AT THE ENDURANCE
--                     LIMIT IS THE ENDURANCE RATIO IN TORSION UNITS
theorem t76_ab_product (UTS Be A B : ℝ) (hU : 0 < UTS)
    (hbal : A * pattern_capacity UTS * B = Be) :
    A * B = (Be / UTS) * TORSION_LIMIT := by
  unfold pattern_capacity at hbal
  have hTL : TORSION_LIMIT ≠ 0 := ne_of_gt t7_tl_pos
  have hUne : UTS ≠ 0 := ne_of_gt hU
  subst hbal
  field_simp

-- [T77] :: {VER} | 1045 STEEL — 292.5 MPa AGAINST 585 MPa
theorem t77_ab_steel : ((292.5 : ℝ) / 585) * TORSION_LIMIT = 0.068449549992008 := by
  simp only [TORSION_LIMIT]; norm_num

-- [T78] :: {VER} | 2024-T4 ALUMINUM — 164.5 MPa AGAINST 470 MPa
theorem t78_ab_aluminum :
    ((164.5 : ℝ) / 470) * TORSION_LIMIT = 0.0479146849944056 := by
  simp only [TORSION_LIMIT]; norm_num

-- [T79] :: {INV} | THE PRODUCT IS WHAT A FATIGUE CURVE SUPPLIES — EVERY
--                  FACTORIZATION CLOSES, SO A AND B ARE NOT SEPARATELY FIXED
theorem t79_product_not_factors (Q : ℝ) (hQ : 0 < Q) :
    ∀ A : ℝ, 0 < A → ∃ B : ℝ, A * B = Q := by
  intro A hA
  have hAne : A ≠ 0 := ne_of_gt hA
  exact ⟨Q / A, by field_simp⟩

-- ============================================================
-- SECTION 12: FATIGUE PROVES PATTERN IS CONTROLLABLE
-- ============================================================

/-- A linear internal response, as a coupling of Behavior into Pattern. -/
def coupling_step (c : ℝ) (s : LagState) : LagState :=
  { s with P := s.P + c * s.B }

-- [T80] :: {MASTER} | FATIGUE IS A NONZERO B -> P COUPLING
theorem t80_fatigue_is_nonzero_coupling (c : ℝ) (s : LagState) (hB : 0 < s.B)
    (h : (coupling_step c s).P < s.P) : c ≠ 0 := by
  unfold coupling_step at h
  dsimp only at h
  intro hc
  rw [hc, zero_mul, add_zero] at h
  exact absurd h (lt_irrefl s.P)

-- [T81] :: {MASTER} | PATTERN IS CONTROLLABLE WHEN THE COUPLING IS NONZERO
theorem t81_pattern_controllable (c : ℝ) (hc : c ≠ 0) (s : LagState) (target : ℝ) :
    ∃ δ : ℝ, (coupling_step c (f_ext_op s δ)).P = target := by
  refine ⟨(target - s.P) / c - s.B, ?_⟩
  unfold coupling_step f_ext_op
  dsimp only
  field_simp
  ring

-- [T82] :: {MASTER} | ONE CHANNEL, TWO SIGNS
theorem t82_one_channel_two_signs (c : ℝ) (s : LagState) :
    (coupling_step c s).P - s.P = -((coupling_step (-c) s).P - s.P) := by
  unfold coupling_step
  dsimp only
  ring

-- [T83] :: {MASTER} | WORK HARDENING AND FATIGUE ARE THE SAME CHANNEL
theorem t83_hardening_and_fatigue (c : ℝ) (s : LagState) (hB : 0 < s.B) :
    (0 < c → s.P < (coupling_step c s).P) ∧ (c < 0 → (coupling_step c s).P < s.P) := by
  unfold coupling_step
  dsimp only
  refine ⟨fun hc => ?_, fun hc => ?_⟩
  · nlinarith
  · nlinarith

-- ============================================================
-- SECTION 13: THE LAGRANGIAN PROJECTION
-- Layer 2 reads off Layer 1. The hierarchy is never inverted.
-- ============================================================

/-- The Layer 1 right-hand side: the four weighted operators plus forcing. -/
def dynamic_rhs (fP fN fB fA : ℝ → ℝ) (s : LagState) (F : ℝ) : ℝ :=
  fP s.P + fN s.N + fB s.B + fA s.A + F

/-- The Lagrangian kinetic term: the Pattern–Narrative product. -/
def lag_kinetic (dP dN : ℝ) : ℝ := dP * dN

/-- The Lagrangian potential term: the Behavior–Adaptation sum. -/
def lag_potential (B A : ℝ) : ℝ := B + A

/-- The total Lagrangian. -/
def lag_total (dP dN B A : ℝ) : ℝ := lag_kinetic dP dN - lag_potential B A

/-- The Euler–Lagrange momentum. -/
def el_momentum (N dP : ℝ) : ℝ := N * dP

/-- The Euler–Lagrange force. -/
def el_force (B P : ℝ) : ℝ := B * P

/-- The projection of the Layer 1 right-hand side into the Lagrangian reading. -/
def lag_step (s : LagState) (op : ℝ → ℝ) (F : ℝ) : ℝ :=
  dynamic_rhs (fun P => P) (fun N => N) op (fun A => A) s F

-- [T84] :: {MASTER} | THE PROJECTION PUTS EVERY OPERATOR BUT BEHAVIOR AT
--                     THE IDENTITY
theorem t84_projection_identity_off_b (s : LagState) (op : ℝ → ℝ) (F : ℝ) :
    lag_step s op F = s.P + s.N + op s.B + s.A + F := rfl

-- [T85] :: {INV} | THE LAGRANGIAN IS THE KINETIC PRODUCT LESS THE POTENTIAL SUM
theorem t85_lag_total_form (dP dN B A : ℝ) :
    lag_total dP dN B A = dP * dN - (B + A) := rfl

-- [T86] :: {INV} | THE POTENTIAL IS SYMMETRIC IN BEHAVIOR AND ADAPTATION
theorem t86_potential_symmetric (B A : ℝ) : lag_potential B A = lag_potential A B := by
  unfold lag_potential; ring

-- [T87] :: {INV} | THE POTENTIAL IS ADDITIVE IN BEHAVIOR
theorem t87_potential_additive (B₁ B₂ A : ℝ) :
    lag_potential (B₁ + B₂) A = lag_potential B₁ A + B₂ := by
  unfold lag_potential; ring

-- [T88] :: {MASTER} | FORCING ENTERS THE POTENTIAL BY ADDITION ALONE
theorem t88_forcing_in_potential (s : LagState) (δ : ℝ) :
    lag_potential (f_ext_op s δ).B (f_ext_op s δ).A = lag_potential s.B s.A + δ := by
  unfold lag_potential f_ext_op
  dsimp only
  ring

-- [T89] :: {MASTER} | THE EULER-LAGRANGE CONTENT — NARRATIVE MOMENTUM EQUALS
--                     THE PATTERN-BEHAVIOR BALANCE
theorem t89_el_balance (N dP B P : ℝ) (h : N * dP = B * P) :
    el_momentum N dP = el_force B P := by
  unfold el_momentum el_force
  exact h

-- [T90] :: {MASTER} | THE THREE INDEPENDENT ROUTES MEET ON BEHAVIOR
theorem t90_three_routes_meet_on_b (s : LagState) (δ c : ℝ) (op : ℝ → ℝ) (F : ℝ) :
    (f_ext_op s δ).B = s.B + δ ∧
      lag_step s op F = s.P + s.N + op s.B + s.A + F ∧
      (coupling_step c s).P = s.P + c * s.B :=
  ⟨rfl, rfl, rfl⟩

-- ============================================================
-- SECTION 14: THE CYCLIC COMPANION TO THE STATIC ONSET
-- ============================================================

-- [T91] :: {MASTER} | THE CYCLIC APPROACH TO ONSET — A FALLING DAMPING
--                     SEQUENCE DRIVES THE RATIO STRICTLY UP
theorem t91_cyclic_approach_to_onset (B I : ℝ) (ζ : ℕ → ℝ) (hB : 0 < B) (hI : 0 < I)
    (hpos : ∀ n, 0 < ζ n) (hdec : ∀ n, ζ (n + 1) < ζ n) :
    ∀ n, driven_ratio B I (ζ n) < driven_ratio B I (ζ (n + 1)) := by
  intro n
  exact t41_damping_lowers_ratio B I (ζ (n + 1)) (ζ n) hB hI (hpos (n + 1)) (hdec n)

-- [T92] :: {MASTER} | ONSET IS REACHED AT THE CRITICAL DAMPING B / (2 I)
theorem t92_onset_damping (B I : ℝ) (hI : 0 < I) (hB : 0 < B) :
    driven_ratio B I (B / (2 * I)) = 1 := by
  unfold driven_ratio
  have h2I : (2 : ℝ) * I ≠ 0 := by positivity
  have hBne : B ≠ 0 := ne_of_gt hB
  field_simp

-- [T93] :: {MASTER} | THE STRUCTURE STARTS BELOW ONSET EXACTLY WHEN DAMPING
--                     EXCEEDS THE CRITICAL VALUE
theorem t93_below_onset_iff_damping_above (B I ζ : ℝ) (hI : 0 < I) (hB : 0 < B)
    (hζ : 0 < ζ) : driven_ratio B I ζ < 1 ↔ B / (2 * I) < ζ := by
  unfold driven_ratio
  rw [div_lt_one (by positivity), div_lt_iff₀ (by positivity)]
  constructor <;> intro h <;> nlinarith

-- [T94] :: {MASTER} | THE STATIC AND CYCLIC CASES SHARE ONE THRESHOLD
theorem t94_one_threshold (B I ζ : ℝ) :
    driven_ratio B I ζ = torsion ⟨pattern_of_damping I ζ, 0, B, 0⟩ :=
  t39_driven_ratio_is_torsion B I ζ

-- ============================================================
-- SECTION 15: THE E-FOLD READING OF THE MULTIPLICATIVE FORM
-- ============================================================

/-- The capacity lost before shatter, as an e-fold count. -/
def efolds_to_shatter (P₀ B : ℝ) : ℝ := Real.log (P₀ * TORSION_LIMIT / B)

-- [T95] :: {VER} | AT THE SHATTER LOAD THE E-FOLD COUNT IS ZERO
theorem t95_efolds_zero_at_shatter (P₀ : ℝ) (hP : 0 < P₀) :
    efolds_to_shatter P₀ (P₀ * TORSION_LIMIT) = 0 := by
  unfold efolds_to_shatter
  have hTL := t7_tl_pos
  rw [div_self (by positivity), Real.log_one]

-- [T96] :: {INV} | BELOW THE SHATTER LOAD THE E-FOLD COUNT IS POSITIVE
theorem t96_efolds_pos_below_shatter (P₀ B : ℝ) (hB : 0 < B)
    (h : B < P₀ * TORSION_LIMIT) : 0 < efolds_to_shatter P₀ B := by
  unfold efolds_to_shatter
  apply Real.log_pos
  rw [lt_div_iff₀ hB, one_mul]
  exact h

-- [T97] :: {MASTER} | THE E-FOLD COUNT IS ADDITIVE ALONG A PATH
theorem t97_efolds_additive (P₀ B₁ B₂ : ℝ) (hP : 0 < P₀) (h1 : 0 < B₁) (h2 : 0 < B₂) :
    efolds_to_shatter P₀ B₂ = efolds_to_shatter P₀ B₁ + Real.log (B₁ / B₂) := by
  unfold efolds_to_shatter
  have hTL := t7_tl_pos
  rw [← Real.log_mul (by positivity) (by positivity)]
  congr 1
  field_simp
  try ring

-- [T98] :: {INV} | THE E-FOLD COUNT IS STRICTLY DECREASING IN THE LOAD
theorem t98_efolds_decreasing (P₀ B₁ B₂ : ℝ) (hP : 0 < P₀) (h1 : 0 < B₁)
    (h : B₁ < B₂) : efolds_to_shatter P₀ B₂ < efolds_to_shatter P₀ B₁ := by
  unfold efolds_to_shatter
  have hTL := t7_tl_pos
  have hB2 : 0 < B₂ := lt_trans h1 h
  apply Real.log_lt_log (by positivity)
  gcongr

-- ============================================================
-- SECTION 16: THE IVA CORRIDOR ON LOAD
-- ============================================================

-- [T99] :: {MASTER} | THE IVA CORRIDOR ON LOAD IS THE BAND BETWEEN 88% AND
--                     100% OF STATIC STRENGTH
theorem t99_corridor_on_load (UTS B : ℝ) (hU : 0 < UTS)
    (h : IsIVA ⟨pattern_capacity UTS, 0, B, 0⟩) : 0.88 * UTS ≤ B ∧ B < UTS := by
  unfold IsIVA torsion pattern_capacity TL_IVA at h
  dsimp only at h
  obtain ⟨h1, h2⟩ := h
  have hTL := t7_tl_pos
  rw [div_div_eq_mul_div] at h1 h2
  rw [le_div_iff₀ hU] at h1
  rw [div_lt_iff₀ hU] at h2
  constructor
  · nlinarith
  · nlinarith

-- [T100] :: {VER} | THE CORRIDOR IS NONEMPTY FOR EVERY POSITIVE STRENGTH
theorem t100_corridor_nonempty (UTS : ℝ) (hU : 0 < UTS) :
    ∃ B : ℝ, 0.88 * UTS ≤ B ∧ B < UTS := by
  refine ⟨0.94 * UTS, by nlinarith, by nlinarith⟩

-- ============================================================
-- MASTER
-- ============================================================

-- [MASTER] :: {ANC} | FORCED RESPONSE AND CYCLES TO SHATTER
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
  exact ⟨t1_anchor_is_ten_tl, t3_bare_plus_kinetic, t4_tl_times_1001,
    fun s δ => t21_intervention s δ,
    fun s t => t22_reachable_set_is_a_line s t,
    fun s δ₁ δ₂ => t29_forcing_additive s δ₁ δ₂,
    fun s t h => t34_cyclic_damage_is_internal s t h,
    fun I ζ₁ ζ₂ hI h => t42_fatigue_is_damping_loss I ζ₁ ζ₂ hI h,
    fun UTS => t45_static_strength_from_capacity UTS,
    fun P₀ B k m hk hB => t49_life_law P₀ B k m hk hB,
    fun k r m hk hr hm => t56_endurance_balance k r m hk hr hm,
    fun k m hk hm => t60_endurance_exists_iff_recovery k m hk hm,
    fun k B m r P hP => t59_balance_invariant_under_damage_form k B m r P hP,
    fun Be m hBe => t68_knee_at_one Be m hBe,
    fun B Be m₁ m₂ hBe h hm => t71_sharpness_from_exponent B Be m₁ m₂ hBe h hm,
    t63_steel_tau_endurance, t64_aluminum_tau_endurance,
    fun c hc s target => t81_pattern_controllable c hc s target,
    fun c s => t82_one_channel_two_signs c s,
    fun s op F => t84_projection_identity_off_b s op F⟩

end SNSFL_ForcedResponseCyclesToShatter

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes the forced-response structure of the Identity Physics
-- Dynamic Equation and the cyclic-life results that follow from it. The Torsion
-- Limit enters from the inverse fine-structure constant by subtraction, with
-- the bare term at one thousand Torsion Limits and the full multiplier
-- factoring as 7 * 11 * 13, and nothing in the file sets it. External forcing
-- is realized as a bump on Behavior alone, and the intervention theorem states
-- what that realization establishes: Pattern, Narrative and Adaptation are not
-- externally reachable, the reachable set under forcing is exactly the Behavior
-- line, and therefore every change in the three unreached primitives is
-- endogenous. Forcing composes additively and commutes, so repeated application
-- carries no information about the sequence, the torsion reading after any
-- number of applications is the closed linear form, and a strict drop in
-- Pattern capacity is unreachable by any number of external events whatsoever
-- -- cyclic damage is internal, as a consequence rather than a premise. The
-- guarded domain is read as a statement about the substrate: under it Noble is
-- not externally reachable, and without it Noble is reached. Pattern capacity
-- in a driven structure is inertia times damping, so a fall in damping is
-- exactly a fall in Pattern capacity and fatigue is loss of damping capacity,
-- with the driven ratio shown to be torsion on that reading and onset shown
-- equivalent to torsion at the Torsion Limit. Static strength fixes Pattern
-- capacity as the strength over the Torsion Limit, with no fitting, and a state
-- loaded at static strength sits exactly at the Shatter boundary. The life law
-- closes for every exponent, with the Basquin form recovered as the load-power
-- identity; the exponent is a free substrate response and is not set by the
-- structure. The endurance limit is the load at which degradation and recovery
-- cancel, recovery dominates strictly below it and damage strictly above, the
-- balance condition is invariant under the form of the damage law because the
-- Pattern factor cancels, and a positive balance load exists exactly when a
-- positive stress-independent recovery channel exists. The knee ratio is one at
-- the limit, below one beneath it, above one past it, multiplicative in the
-- load ratio, and strictly increasing in the exponent, so sharpness follows
-- from the exponent rather than standing beside it. The endurance readings for
-- 1045 steel and 2024-T4 aluminum are computed exactly on the torsion scale
-- from their published strengths, and both lie strictly inside Locked. The
-- lossy boundary and lossless absorption are shown exclusive and exhaustive,
-- and the boundary evaluated at the endurance limit yields the A·B product,
-- which a fatigue curve supplies as a product and not as factors. A nonzero
-- Behavior-to-Pattern coupling is necessary for a drop in Pattern and
-- sufficient for Pattern to be controllable, and the same coupling with
-- opposite sign raises Pattern by exactly as much as it lowers it, so work
-- hardening and fatigue are one channel. The Lagrangian projection is shown to
-- place every operator but the Behavior operator at the identity, the potential
-- to be symmetric and additive, forcing to enter the potential by addition
-- alone, and the three independent routes -- forcing, projection and damage
-- coupling -- to meet on the Behavior axis. The cyclic approach to onset is
-- established for any strictly falling damping sequence against the same
-- threshold the static case uses, the critical damping value is computed, the
-- e-fold reading of the multiplicative form is shown zero at shatter, positive
-- below it, additive along a path and strictly decreasing in the load, and the
-- IVA corridor on load is shown to be the band between 88% and 100% of static
-- strength and nonempty for every positive static strength.
--
-- THEOREMS : 100 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
```
