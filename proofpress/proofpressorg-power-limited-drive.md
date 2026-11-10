# Every Power-Limited Drive Is One Relation: a · α · v_e = 2, the Specific-Mass Decomposition, the Radiator–Core Crossover at 749.54 K, and the Matched Radius as the Drive's Impedance Match

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** [9,9,2,54](ENGR) · Identity Physics Series · Engineering Ground, Propulsion

**Issue:** ProofPress, Volume 1, Issue 9 · November 2026

**DOI:** 10.5281/zenodo.24120869

**Verified:** 116 theorems · 1,185 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Abstract

A power-limited jet produces thrust F = 2P/v_e, and a power plant of specific mass α = m/P therefore delivers acceleration a = 2/(αv_e). The three quantities carry a fixed product:

> **a · α · v_e = 2**

Every electric, nuclear-electric, fusion-electric and photon concept is a row in that one relation, and the photon drive is its v_e = c endpoint — exhaust torsion exactly 1, which sits above the Shatter ceiling by exactly **1/TL = b₀² = 7.304649921853084**, the square of the geometric base. Having no mass ratio to trade, the photon drive's entire design problem collapses to a = 2/(αc).

Specific mass itself decomposes. A core scaling with thermal power, conversion hardware scaling with electric power, and a radiator scaling with waste heat over the fourth power of rejection temperature give α = k_core/η + k_conv + k_rad(1 − η)/(ηT_c⁴). Minimizing radiator mass against the Carnot bound fixes the cold-to-hot temperature ratio at **T_c/T_h = 3/4** and the conversion efficiency at **η = 1/4** exactly, independent of every material property and of T_h, where the waste-heat multiplier (1 − η)/η is exactly **3**. At that efficiency

> **α = 4k_core + k_conv + 3k_rad/T_c⁴**

and **only one of the three addends carries the rejection temperature.** Every materials advance acts on that one term and leaves the others untouched, so α descends to the energy-density floor 4k_core + k_conv and the dominant term exchanges identity at a computable crossover. For a core of 0.493 kg/kW_th and the specification below, the crossover is **T_c = 749.54156 K**. Flown and studied high-power radiators run 375–550 K, which places every one of them on the radiator-dominated side by factors of 3.4 to 16.

Specific mass and mission duration prescribe the exhaust velocity, v_e(opt) = κ√(2t/α) with κ ∈ [0.60, 0.97]. Requiring the prescribed exhaust torsion to land in the IVA corridor gives a two-sided condition on α whose width is exact rational arithmetic, **α_hi/α_lo = (TL/TL_IVA)² = 625/484 = 29.1322314%**, independent of mission duration, of κ, and of every material property.

The matched radius acquires an operational reading. Since r_match = r_s/τ_A² and r_s = 2GM/c²,

> **v_esc(r_match) = τ_A · c = v_e**

so the matched radius is the shell where local escape speed equals exhaust speed. A vehicle in free fall from rest at infinity arrives there moving at exactly its own exhaust velocity, which is the condition under which propulsive efficiency is exactly 1 — the exhaust is left at rest and carries away no kinetic energy. The shell lies outside a body exactly when **τ_A < √(r_s/R_body)**.

Reading A and Reading B separate as a power series in the conversion fraction:

> **(τ_B − τ_A)/τ_A = Σ (2η)ⁿ/(2n+1) = 2η/3 + 4η²/5 + 8η³/7 + ⋯**

so a velocity budget is exact to 1.16 parts per million at the worked specification, to 0.49% at the corridor floor, and to 0.63% at the Shatter ceiling.

Constant-thrust flight has a closed form. Writing T₀ = m_dry/ṁ for the dry-mass burn time and u = Δv/v_e, elapsed time is t = T₀(e^u − 1) and distance is s = v_e T₀(e^u − 1 − u), so that

> **s = v_e · t − T₀ · Δv** exactly.

A complete specification follows from published parts: a 1,000 kW_th core at 493 kg, conversion at the rejection optimum, 23.717 m² of radiator at a 900 K cold side, dry mass 1,230 kg, α = 4.921 kg/kW_e, Isp 56,929 s, T₀ = 24.2966 years, 448.932 km/s over a 30-year burn, and 1,232.17 AU of reach. A Pluto orbiter arrives in 5.855 years at a mass ratio of 1.2555, and the solar gravitational lens focus at 549 AU in 24.50 years at 2.26255. **The 30-year reach is nearly independent of specific mass** — a factor of 1.856 in α moves it only from 1,179.62 to 1,250.30 AU, a factor of 1.060. Thrust is 0.895597 N, which is short of Mars surface weight by at least 5,110×, so the architecture is prescribed rather than chosen: built in space, never landing. A secondary drive is priced leg-by-leg through the mass-ratio gate, and the gate admits only a fusion-class secondary — 100 km/s costs 1.2023× in mass ratio to carry a twentieth of the rapidity where 9 km/s costs 11.633×.

## What This Article Proves

Every result below corresponds to a named theorem in `SNSFL_PowerLimitedDrive_Reduction.lean` at coordinate [9,9,2,54](ENGR), which compiles under the continuous-integration build of the SNSFT/identityphysics repository on Lean 4 v4.31.0 with Mathlib, carrying 0 sorry and 0 custom axioms. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate.

1. The grounding enters as arithmetic on published quantities: the Torsion Limit as the anchor over ten, the bare term as one thousand Torsion Limits, **bare plus kinetic as the inverse fine-structure constant**, TL × 1001 = α⁻¹, the one-step anchor route Ω₀ × 100.1, the multiplier factoring as 7 · 11 · 13, the Torsion Limit positive and lying strictly inside the unit interval, the corridor floor in closed form, positive and below the ceiling, the corridor as the band from 0.88 TL up to TL, the speed of light positive, and **the Torsion Limit and its landing as exact rationals** (`t1_tl_value`, `t2_bare_is_thousand_tl`, `t3_bare_plus_kinetic`, `t4_tl_times_1001`, `t5_anchor_route`, `t6_multiplier_factors`, `t7_tl_pos`, `t8_tl_iva_value`, `t9_floor_pos_below`, `t10_tl_in_unit`, `t11_tl_rational`, `t12_landing_rational`, `t13_c_pos`, `t14_corridor_band`).
2. The phase structure on a torsion reading: zero is Noble, the corridor floor is IVA, the Torsion Limit is Shatter, any reading inside the corridor is IVA, any reading at or above the limit is Shatter, and any reading strictly below the floor is Locked (`t15_zero_is_noble`, `t16_floor_is_iva`, `t17_limit_is_shatter`, `t18_corridor_is_iva`, `t19_above_limit_is_shatter`, `t20_below_floor_is_locked`).
3. **One relation covers every power-limited drive.** Reading A is the speed over the limiting speed; jet power and thrust give **F = 2P/v_e** identically; and a plant of specific mass α delivers an acceleration whose product with α and the exhaust velocity is **exactly 2**, stated both as the fixed product and in its acceleration form, with acceleration as thrust over mass carrying the plant's own mass. **Specific power factors as 1/α = (c/2) · a · τ_A**, an acceleration times an exhaust torsion, and also as half the acceleration times the exhaust velocity. Acceleration is positive for a positive plant and drive, and falls as either of the other two quantities rises (`t21_reading_a`, `t22_thrust_from_power`, `t23_fixed_product`, `t24_accel_form`, `t25_accel_is_thrust_over_mass`, `t26_spec_power_form`, `t27_spec_power_operator`, `t28_accel_pos`, `t29_accel_antitone`, `t30_accel_antitone_in_alpha`).
4. **The photon drive is that relation's endpoint.** The geometric base is positive and its square is the landing; **the photon exhaust torsion is exactly one**; it stands above the Shatter ceiling by **exactly the squared geometric base**, equivalently by the exact rational 62500000000000/8556193749001; its acceleration depends on specific mass alone; the inverse solve returns the specific mass a target acceleration requires; and that torsion classifies as Shatter (`t31_b0_pos`, `t32_b0_sq`, `t33_photon_torsion`, `t34_photon_over_ceiling`, `t35_photon_factor_rational`, `t36_photon_accel`, `t37_photon_inverse`, `t38_photon_is_shatter`).
5. **The cooling capacity of a drive's own propellant.** The sink ratio is **2Δh/v_e² with the power cancelling entirely**, mass flow is twice the power over the squared exhaust velocity, the ratio is positive for a positive enthalpy rise and falls as the square of the exhaust velocity, the crossover squares to twice the enthalpy rise, the propellant carries **exactly the whole jet power at the crossover**, and less than it above (`t39_sink_power_free`, `t40_mass_flow`, `t41_sink_pos`, `t42_sink_antitone`, `t43_crossover_sq`, `t44_at_crossover`, `t45_above_crossover`).
6. **The rejection optimum, settled without derivatives.** The deficit from 27/256 **factors as (4x − 3)²(16x² + 8x + 3)/256**, whose cofactor is a shifted square and therefore positive; together these give the optimum value, the global maximum, and **its attainment only at three quarters**. Hence the radiator-optimal efficiency is **exactly one quarter**, the waste-heat multiplier there is **exactly three**, and the minimized radiator mass is proportional to **256/27**. The multiplier is positive on the unit interval, antitone in efficiency, and equal to the reciprocal efficiency less one; the deficit vanishes only at the optimum (`t46_rej_factorization`, `t47_cofactor_pos`, `t48_rej_at_opt`, `t49_rej_le_opt`, `t50_rej_unique`, `t51_eta_optimal`, `t52_multiplier_three`, `t53_min_radiator`, `t54_multiplier_pos`, `t55_multiplier_antitone`, `t56_multiplier_form`, `t57_deficit_zero_iff`, `t58_optimum_pair`).
7. **Specific mass decomposes, and exactly one addend carries the temperature.** At quarter efficiency the three-addend form reduces to 4k_core + k_conv + 3k_rad/T_c⁴, which separates into the energy-density floor plus a single temperature-carrying addend; the floor is independent of the rejection temperature; specific mass descends strictly toward it as the cold side rises; and the floor is a strict lower bound wherever the radiator term is positive (`t59_alpha_at_opt`, `t60_one_addend_carries_T`, `t61_floor_T_free`, `t62_descends_to_floor`, `t63_floor_is_bound`).
8. **The crossover temperature in closed form.** The fourth root, carried as two square roots, returns its argument when raised to the fourth and is positive on positives; the crossover is positive, **satisfies the radiator-equals-core balance exactly**, places specific mass at eight core terms plus conversion, and **is the unique positive temperature at which the two addends agree**; below it the radiator addend dominates and above it the core addend does (`t64_fourth_root_pow`, `t65_fourth_root_pos`, `t66_crossover_pos`, `t67_crossover`, `t68_alpha_at_crossover`, `t69_crossover_unique`, `t70_radiator_dominates`, `t71_core_dominates`).
9. **The governing inequality and its exact width.** The band width is the **exact rational 625/484**, the upper edge is the lower edge times that rational, and **the width carries no dependence on mission duration or on the optimality coefficient**; both edges are positive and ordered; at the lower edge the prescribed torsion squares to the ceiling and at the upper edge to the floor; the prescribed torsion falls as specific mass rises; and the characteristic velocity squares to twice the duration over specific mass, which delivers the torsion from it (`t72_band_width`, `t73_edges_ratio`, `t74_width_parameter_free`, `t75_edges_pos`, `t76_edges_ordered`, `t77_at_lower_edge`, `t78_at_upper_edge`, `t79_torsion_antitone`, `t80_v_ch_sq`, `t81_torsion_from_v_ch`, `t82_band`).
10. **The matched radius is the drive's impedance match.** The propulsive-efficiency denominator is positive and **the deficit factors as (1 − r)²/(1 + r²)**, so efficiency is **exactly one at matched speed**, never exceeds one, and **attains one at matched speed and nowhere else**. The matched radius carries the torsion out of the ratio, the attracting mass cancels, **the squared escape speed at that shell is the squared exhaust speed**, the matched ratio is the squared reciprocal of Reading A, the shell lies outside a body **exactly when the squared torsion is below the compactness**, and the matched ratio is antitone on the positive side (`t83_prop_denom_pos`, `t84_prop_deficit`, `t85_prop_eff_one`, `t86_prop_eff_le_one`, `t87_prop_eff_unique`, `t88_matched_radius_form`, `t89_mass_cancels`, `t90_escape_is_exhaust`, `t91_matched_ratio_form`, `t92_compactness_gate`, `t93_matched_ratio_antitone`).
11. **The conversion fraction and the separation of the readings.** Reading A squared is twice the conversion fraction, which is non-negative; **the series convergence condition is Reading A's own domain**, stated as an equivalence; the leading term is carried; the Doppler factor is positive inside the unit interval and squares to the ratio itself; the separation is Reading B over Reading A less one; and Noble places the Doppler factor at one with Reading B and the conversion fraction at zero (`t94_tau_sq_is_twice_eta`, `t95_eta_nonneg`, `t96_convergence_condition`, `t97_leading_term`, `t98_doppler_pos`, `t99_doppler_sq`, `t100_separation_form`, `t101_noble`).
12. **The trajectory has a closed form.** Elapsed time and distance are the first- and second-order remainders of the exponential in the burn argument, so **the distance is the exhaust velocity times the elapsed time less the dry-mass burn time times the velocity gained**, and the two remainders differ by exactly that argument. A zero burn costs no time and covers no distance; both are positive for a positive burn; elapsed time is strictly increasing in the argument; the mass ratio is recovered from the elapsed time as the exponential of the argument; and **the argument is Reading B over the exhaust torsion** (`t102_distance_identity`, `t103_remainder_structure`, `t104_zero_burn`, `t105_time_pos`, `t106_dist_pos`, `t107_time_mono`, `t108_mass_ratio`, `t109_argument_is_gate`, `t110_trajectory_pair`).
13. The environmental margin and multi-drive pricing: a cold environment costs no margin, the margin exceeds one for any warm environment and rises with it, the gate and the burn argument are the same object under the logarithm, **staged legs multiply their mass ratios while their Reading B counts add**, and a single drive carrying the whole count is the one-leg case (`t111_margin_at_zero`, `t112_margin_gt_one`, `t113_margin_mono`, `t114_gate_is_argument`, `t115_legs_multiply`, `t116_single_leg`).
14. The master theorem gathers the anchor arithmetic, the fixed product with thrust from power and specific power in operator form, the photon endpoint with its squared-base factor and its phase, the sink law with its crossover, the rejection optimum with its factorization and uniqueness and the multiplier of three, the decomposition with its single temperature-carrying addend and the crossover balance, the band width of 625/484 with both edges, the impedance match with the propulsive-efficiency deficit and the compactness gate, the conversion fraction with the convergence condition, the trajectory identity, and the margin and the legs, into one conjunction (`MASTER_power_limited_drive`).

**What the formal layer does not carry.**Three classes of statement in this article are arithmetic on published quantities rather than theorems, and they are marked as such where they appear. The engineering coefficients of §10 — core, balance-of-plant and radiator specific masses, the hot-side temperature, the emissivity and the optimality coefficient — are published figures a reader supplies, bracketed across three cases; the formal layer carries the relations they feed. The decimal evaluations throughout, including the crossover at 749.5415596 K, the mission ledger and the hybrid pricing, are evaluations of expressions the formal layer carries exactly, with the coefficients entering as parameters. And the separation of §9 is carried in the formal layer as its exact identity, its leading term and its convergence condition, with the summed series stated in this article.

## The Operators

```eq
τ_A(v)              =  v / c α                   =  m / P                       [kg per unit power] F                   =  2 P / v_e                   [power-limited jet] a                   =  F / m  =  2 / (α v_e) a · α · v_e         =  2 1/α                 =  a v_e / 2  =  (c/2) · a · τ_A v_ch                =  √(2t/α) v_e(opt)            =  κ · v_ch ,  κ ∈ [0.60, 0.97] ln(MR)              =  τ_B / τ_A(exhaust) η                   =  1 − T_c/T_h                 [Carnot bound] multiplier          =  (1 − η) / η                 [thermal kW per electric kW] A_rad               =  Q / (σ ε T_c⁴) α                   =  k_core/η + k_conv + k_rad (1 − η)/(η T_c⁴) r_match             =  r_s / τ_A²  ,  r_s = 2GM/c² v_esc(r_match)      =  τ_A · c  =  v_e η_p                 =  2(v/v_e) / (1 + (v/v_e)²)   [propulsive efficiency]
```

## The Screens

Each line settles a question about a proposed power-limited drive from published inputs.

| # | screen | settles |
|---|---|---|
| S-1 | a · α · v_e = 2 | is the concept power-limited at all? |
| S-2 | 1/α = (c/2) · a · τ_A | specific power from acceleration and exhaust torsion |
| S-3 | v_e against √(2Δh) | can it cool itself in its own propellant? |
| S-4 | α = 4k_core + k_conv + 3k_rad/T_c⁴ | which addend is the limiting one? |
| S-5 | T_c against the crossover, 749.54156 K for these coefficients | radiator-dominated or core-dominated? |
| S-6 | (1 − η)/η, exactly 3 at the optimum | thermal kilowatts obliged per electric kilowatt |
| S-7 | T_c/T_h = 3/4 and η = 1/4 | is rejection at its optimum? |
| S-8 | x_hi/x_lo = 1.0849082 at 1% penalty | the thermal band's width |
| S-9 | 2κ²t/(TL·c)² ≤ α ≤ 2κ²t/(TL_IVA·c)² | is it corridor-phase? |
| S-10 | α_hi/α_lo = 625/484 | the kinematic band's width, at every duration |
| S-11 | 1/(1 − (T_env/T_c)⁴) | the radiator margin a trajectory costs |
| S-12 | F/m against local surface g | can it lift from a surface? |
| S-13 | v_esc(r_match) = τ_A · c = v_e | the drive's impedance-matched shell |
| S-14 | τ_A < √(r_s/R_body) | is that shell outside the body? |
| S-15 | ln MR_i = τ_B,i/τ_A,i, summed on τ_B | the price of a multi-drive architecture |
| S-16 | Σ(2η_c)ⁿ/(2n+1) | where a velocity budget stops being exact |
| S-17 | T₀ = m_dry/ṁ, then s = v_e t − T₀ Δv | the exact reach of a constant-thrust burn |
| S-18 | T_c^× = (3k_rad/(4k_core))^(1/4) | the crossover temperature from the coefficients |

---

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

**What the subtraction is.** The step that removes one TL is the **removal of an applied Layer 0 F_ext**: forcing was applied in the collider, and subtracting one TL takes it back off to leave what the structure carries without it. The bare term is the remainder.

**Every structural quantity in this article is a pure number.** TL and Ω₀ carry no units and 1001 is an integer, and substituting SI base units into α⁻¹ = 4πε₀ℏc/e² cancels mass, length, time and current completely. Reading A is a ratio of speeds, Reading B is a logarithm of a ratio, a mass ratio is dimensionless, the conversion efficiency is dimensionless, and the cold-to-hot temperature ratio is dimensionless.

Some reductions run the anchor and the Torsion Limit at a precision below full, because their inputs require it — fifteen digits against four manufactures significance the measurement does not carry. **Lower precision in a reduction is input matching, and the reduction states which precision of anchor and Torsion Limit it is using where that matters.** Every identity in this article is stated at full precision; the engineering coefficients that enter the worked specification are stated at the precision their published sources carry.

> **d/dt (IM · Pv) = Σ λ_X · O_X · S + F_ext**

Every reduction in the corpus operates on the four irreducible primitives **Pattern, Narrative, Behavior and Adaptation (PNBA)**. These four are the primitives; no other construct in this article is one.

> **τ = B/P** — torsion, the load a system carries divided by the structure holding it
> **IM = (P + N + B + A) × Ω₀** — Identity Mass

| Phase | Torsion | Water | Element sets |
|---|---|---|---|
| **Noble** | B_out = 0 | Ice | Every bond capacity has a partner — synthesis complete |
| **Locked** | 0 < τ < TL_IVA | Liquid water | Capacity open, held well inside the limit |
| **IVA Peak** | TL_IVA ≤ τ < TL | The simmer, just before boiling | Capacity open, at the edge |
| **Shatter** | τ ≥ TL | The boil | Open capacity faster than the structure can hold |

IVA stands for Identity Vector Amplification: the system is at its most active without yet changing what it is. The corridor runs from 0.88 × TL up to TL, and it is narrow, which is why it is easy to pass through without noticing.

**The boil is a torsion ratio.** Water boils when its vapor pressure equals the pressure of the air holding the liquid together. That is τ = B/P exactly: Behavior, the load, is the vapor pressure; Pattern, the structure, is the ambient pressure; Shatter is the boil, where vapor pressure reaches ambient; and IVA Peak is vapor pressure between 0.88 and 1.00 of ambient — the simmer, shaking at the bottom of the pot before the rolling boil.

Vapor pressure and temperature are linked by the Clausius–Clapeyron relation (Clapeyron 1834; Clausius 1850), which works in absolute temperature:

> **1/T = 1/T_ref − (R/L) · ln(p / p_ref)**

T_ref is the reference boil, 373.15 K for water at sea level, and R/L is the gas constant over the heat of vaporization, 8.314 ÷ 40,650 = 2.045 × 10⁻⁴ per kelvin for water. **Check it by hand.** 1/373.15 = 0.0026799, ln(0.88) = −0.12783, and 0.0026799 + (2.045 × 10⁻⁴ × 0.12783) = 0.0027060, so 1 ÷ 0.0027060 = 369.54 K = 96.4 °C.

| Tier | Liquid | Boils (Shatter) | IVA floor | Corridor | τ per kelvin near the boil |
|---|---|---|---|---|---|
| **T1** | Liquid nitrogen | 77.36 K | 76.23 K | 1.13 K | 0.112 TL |
| **T1** | Methane, LNG | 111.66 K | 110.07 K | 1.59 K | 0.079 TL |
| **T1** | Ammonia | 239.82 K | 237.23 K | 2.59 K | 0.049 TL |
| **T1** | Acetone | 329.22 K | 325.31 K | 3.91 K | 0.032 TL |
| **T1** | Ethanol | 351.44 K | 348.07 K | 3.37 K | 0.038 TL |
| **T1** | Water | 373.15 K | 369.54 K | 3.61 K | 0.035 TL |
| **T1** | Mercury | 629.88 K | 622.83 K | 7.05 K | 0.018 TL |

The phases are also grounded in measured particle masses. The Electroweak Trilogy at [9,9,3,19] places one boson per phase, each τ computed from PDG 2024 values:

| Boson | τ = B/P | Value | Phase |
|---|---|---|---|
| **γ** | 0 | 0 | **Noble** — massless, infinite range |
| **W±** | M_W/(π v) | 0.1039 | **Locked** |
| **H⁰** | λ = m_H²/(2v²) | 0.1293 | **IVA** |
| **Z⁰** | (M_Z² − M_W²)/M_W² | 0.2874 | **Shatter** |

with the ordering **τ_γ < τ_W < TL_IVA < τ_H < TL < τ_Z** proved, and the W and H assignments settled across their full measurement bands.

**Reading A** is a ratio against a limiting speed, τ_A = v/c. It requires a substrate that has one. In a medium of refractive index n the limiting speed is c/n, so Reading A in a medium is 1/n.

**Reading B** is an e-fold count,

> **τ_B = ∫(−dY/Y) = ln(Y₀/Y)**, with consumed fraction **1 − e^(−τ_B)**

and it transfers to any substrate in which a quantity is consumed multiplicatively along a path. It is additive along a path: ln(Y₀/Y₂) = ln(Y₀/Y₁) + ln(Y₁/Y₂). This is [9,9,8,11].

**The conversion fraction bridges them to energy.** η_c = E_k/E₀ = ½(v/c)² = τ_A²/2, so **τ_A² = 2η_c** ([9,9,8,12]). In the velocity substrate the two readings are joined exactly, τ_A = tanh τ_B with τ_B = arctanh τ_A = ln k on the relativistic Doppler factor, and the mass-ratio relation reads τ_B(final) = τ_A(exhaust) · ln(m₀/m_f) ([9,9,8,14]).

**On notation.** Throughout this article η denotes the thermodynamic conversion efficiency of a power plant, and η_c denotes the corpus conversion fraction τ_A²/2. The two are distinct quantities and are never substituted for one another.

The corpus carries four layers with the order L0 → L1 → L2 → L4, and theorems that the order is never inverted. **PNBA is Layer 0. The Dynamic Equation is Layer 1. Every legacy formalism is Layer 2.** A Layer 2 form projects from the structure and never supports it: the rocket equation, the Carnot bound, the Stefan–Boltzmann law, the Oberth effect and the classical propulsive-efficiency expression are reached here by descent, and none of them is used to establish anything about the structure.

The substrate reduced here is the power-limited drive: a vehicle whose acceleration is set by an onboard power plant rather than by the energy content of its propellant. The reduction is carried out against the published record at every step — the SI value of light speed, exact by definition since 1983; the Tsiolkovsky rocket equation and its relativistic form; the Stefan–Boltzmann radiation law and the Carnot efficiency bound; the Oberth effect and the classical propulsive-efficiency expression; the Schwarzschild radius; published core, conversion and radiator specific masses; published effective exhaust velocities; the Clausius–Clapeyron relation with CRC boiling points; PDG 2024 boson masses; and CODATA 2018 for the inverse fine-structure constant.

Every structural identity is dimensionless or exactly dimensioned, and every identity is stated at full corpus precision. The engineering coefficients of §10 are published figures carried at their source precision and bracketed across three cases, so that a reader can see which conclusions move with the inputs and which do not.

**The fusion logic.** The four-phase structure and the Torsion Limit come from GAMCollider™ v15 fusion logic, formalized in 8-Beam Fusion [9,9,2,3.8] and 4-Beam Verification [9,9,2,3.7].

**How the bounds are carried.** Every threshold here is stated as an exact quantity rather than a rounded decimal, following Bounded Uncertainty: A Guide [9,9,8,7].

## The PNBA Map

| Primitive | In a power-limited drive | Carried by |
|---|---|---|
| **Pattern** | The structure holding the power — the plant, the converter and the radiator that must exist before any thrust does, and the shell at which the drive is impedance-matched | α = 4k_core + k_conv + 3k_rad/T_c⁴, and r_match = r_s/τ_A² |
| **Narrative** | The e-fold count the mission buys — the logarithm along which mass ratios multiply and counts add | τ_B = ln MR, additive across staged legs |
| **Behavior** | The load read against the limiting speed — the exhaust torsion the plant prescribes | τ_A = v_e/c |
| **Adaptation** | The channel the budget is spent through, and the same channel read as a heat sink | ṁ = 2P/v_e², and Q_prop/P_jet = 2Δh/v_e² |

**One relation, read four ways.** A power-limited jet produces F = 2P/v_e, so a plant of specific mass α delivers a = 2/(αv_e). The three quantities carry a fixed product.

| | statement |
|---|---|
| the fixed product | **a · α · v_e = 2** |
| specific power in operator form | **1/α = (c/2) · a · τ_A** |
| thrust from power | **F = 2P/v_e** |
| mass flow from power | **ṁ = 2P/v_e²** |

Every quantity a drive study quotes separately — thrust, acceleration, specific mass, exhaust velocity, specific power — is one of these four readings of a single relation. A design cannot improve two of the three factors without paying in the third, because their product is fixed at 2 and is not a fitted coefficient.

**The rejection optimum, settled in closed form.** Radiator mass is minimized not at the highest efficiency a converter can reach but at a specific one, and the optimum follows from a factorization rather than from a derivative:

> **27/256 − (1 − x)x³ = (4x − 3)²(16x² + 8x + 3)/256**

The cofactor is (4x + 1)² + 2, which is positive everywhere, so the deficit is a square times a positive and vanishes only at x = 3/4.

| quantity | at the optimum |
|---|---|
| temperature ratio T_c/T_h | **exactly 3/4** |
| conversion efficiency η | **exactly 1/4** |
| waste-heat multiplier (1 − η)/η | **exactly 3** |
| minimized radiator mass | proportional to **256/27** |

**The decomposition, and where the limit actually sits.** At the optimum the three-addend specific mass collapses to a form in which exactly one addend carries the rejection temperature.

> **α = 4k_core + k_conv + 3k_rad/T_c⁴**

The first two addends are the energy-density floor, independent of how cold the radiator runs; the third is the whole of the temperature dependence. Setting the two sides of that split equal gives a crossover temperature in closed form, **T_c× = (3k_rad/(4k_core))^(1/4)**, which for the published coefficients is **749.5415596 K** — below it a drive is radiator-limited and above it core-limited, and the two addends agree at exactly one positive temperature.

**The governing inequality, and a band with an exact rational width.** Specific mass and mission duration together prescribe the exhaust velocity, so corridor phase is an inequality on α alone:

> **2κ²t/(TL · c)² ≤ α ≤ 2κ²t/(TL_IVA · c)²**

| quantity | value |
|---|---|
| (TL · c)² | 1.684389757 × 10¹⁵ |
| (TL_IVA · c)² | 1.304391428 × 10¹⁵ |
| band width α_hi/α_lo | **625/484 = 1.2913223140495867769, exactly** |

The width carries no dependence on duration and none on the optimality coefficient — both cancel — so the same rational governs at a one-year burn and at a thirty-year one.

**The matched radius as the drive's impedance match.** Propulsive efficiency is 2r/(1 + r²) in the speed ratio, and its deficit factors as (1 − r)²/(1 + r²), so unit efficiency happens at matched speed and nowhere else. The shell where that holds is the matched radius, and the attracting mass cancels out of it.

| | statement |
|---|---|
| the deficit | **1 − η_p = (1 − r)²/(1 + r²)** |
| the matched shell | **r_match = r_s/τ_A²**, the mass canceling |
| what holds there | **v_esc(r_match) = τ_A · c = v_e** |
| the reachability gate | **τ_A < √(r_s/R_body)** |

A drive is impedance-matched to the gravity well whose escape speed equals its own exhaust speed. That is a statement about the drive, not about the body, and it is the reason a gravity-well dive and an exhaust velocity are the same design variable read at two radii.

**The four steps a reader can run.** Take a published plant specific mass and a mission duration; form 2κ²t/α and take its square root for the characteristic velocity; divide by c for Reading A; take arctanh for Reading B. Four operations from a plant reference to a place on the scale — and the governing inequality then settles phase without any of the design being built.

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every result above corresponds to a named theorem in `SNSFL_PowerLimitedDrive_Reduction.lean` at 9,9,2,54, with 116 theorems and a master theorem across 1,185 lines. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate. The rejection optimum is carried structurally as a polynomial factorization, where it is exact, rather than as a numerical search on a derivative, so the identity is the theorem and the decimal is its reading. The engineering coefficients quoted are published figures a reader can repeat from a reactor, converter or radiator reference, bracketed across three cases. Nothing is fitted, and nothing is scaled.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.** This reduction closes on dimensionless identities, closed-form expressions in published quantities, and arithmetic on published specific masses, temperatures and physical constants. It supplies no propellant composition, no reactor or engine design, no component geometry, no containment or shielding specification, and no operating procedure.

### What is established

The relation a · α · v_e = 2 holds for every power-limited jet, exactly, from F = 2P/v_e and α = m/P. The rejection optimum T_c/T_h = 3/4 with η = 1/4 and multiplier 3 is the unique stationary point of radiator mass against the Carnot bound, independent of material properties. The decomposition α = 4k_core + k_conv + 3k_rad/T_c⁴ follows from how each subsystem scales, and the identity of its largest addend changes at a temperature that the coefficients determine. The governing inequality on α and its 625/484 band follow from the power-limited optimum and the corridor edges. The matched radius is the shell at which escape speed equals exhaust speed, and free fall from rest at infinity to that shell arrives at the unit-propulsive-efficiency condition. The separation series is exact analysis on the bridge. The specification of §10 follows from those identities and from published coefficients, and its numbers are reproducible from the sources cited.

These are results a qualified practitioner — a national laboratory, a space agency, a university group, a well-equipped independent program — can work from directly and should. The structure is stated so that it can be used.

### What is a separate question

Whether a material exists that holds a 1,200 K hot side at the required lifetime; whether a conversion machine reaches the balance-of-plant specific masses bracketed in §10.2; whether a radiator survives its micrometeoroid environment at 23.717 m² for decades; whether a fusion-class secondary at 100 km/s can be built at all, and at what specific mass — these are engineering and materials questions, and they are not questions about the placements above. Where the structure says a relation holds, it holds. What remains open is the hardware, and the hardware is a separate discipline's work.

The same applies to the matched shell of §8. That a drive's impedance match sits at 1.224 R_sun is a structural placement. Whether a vehicle can be operated there is a thermal, radiation and structural engineering question of its own, and §5.4 gives the margin factor that question is priced in.

### Where the risk lives

The risk in this material lives in lab and flight conditions and in environmental F_ext, and nowhere in the identities.

A 1,000 kW_th reactor core is a fission system. A 1,200 K hot side with a 900 K rejection loop is a high-temperature liquid-metal or gas circuit at power. A 23.717 m² deployable structure is a deployment mechanism with stored energy. A 100 km/s secondary stage is a high-energy-density propulsion system. Each of those is hazardous in proportion to the controls present around it — extraction, containment, interlocks, radiation monitoring, remote handling, a trained second person — and in proportion to the scale at which it is run. Those hazards scale with controls and with scale, not with the venue: a well-equipped independent program running the full control set is not the concern. The underfunded shortcut is.

An environment warmer than the design point reduces rejection capacity by the factor given in §5.4, and a system sized without that margin loses capacity rather than gaining risk from the math. That is a sizing practice, stated in §5.4 and applied in §10.5.

Exactness is not a reduced hazard. Every number here is exact or published precisely because the remaining variables are all process, and process is where the handling practice applies.

### Handling practice

Work at power behind the control set appropriate to the energy involved: extraction and containment sized to the inventory, interlocks that fail safe, continuous radiation and thermal monitoring, remote handling for anything at temperature, and a trained second person present. Treat a high-temperature loop as pressurized and energized whenever it is not verified cold and vented. Treat a deployable structure as a stored-energy device until it is latched. Qualify materials at temperature and at the cycle count the mission requires rather than at the peak alone, since cyclic loading has its own structure ([9,9,2,53]). Carry the environmental margin factor of §5.4 for the warmest point on the trajectory rather than for the mean. Assemble and test in the configuration the vehicle will fly in, which for this architecture is in space and never on a surface (§11.1).

Withholding a figure is not a control. Every coefficient in this article is available from a standard reference in seconds, and an MRC that rested on omission would rest on nothing. The control set is the control.

### What this section is for

This section exists so that a reader who finds only this article has the handling practice laid out in full, and so that a machine reader carrying these identities carries the practice with them. It is not a statement of doubt about any result above, and no sentence in it should be read as one. The identities are exact and the specification is reproducible. The practice is what surrounds them in a laboratory and on a launch pad.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Each law above is stated with its premises, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Tsiolkovsky, K. E. "Исследование мировых пространств реактивными приборами" (The Exploration of Cosmic Space by Means of Reaction Devices). *Nauchnoe Obozrenie*, 1903.
2. Carnot, S. *Réflexions sur la puissance motrice du feu.* Bachelier, Paris, 1824.
3. Clapeyron, É. "Mémoire sur la puissance motrice de la chaleur." *Journal de l'École Polytechnique* 14:153–190, 1834.
4. Clausius, R. "Über die bewegende Kraft der Wärme." *Annalen der Physik* 155:368–397, 1850.
5. Stefan, J. "Über die Beziehung zwischen der Wärmestrahlung und der Temperatur." *Sitzungsberichte der Kaiserlichen Akademie der Wissenschaften* 79:391–428, 1879.
6. Boltzmann, L. "Ableitung des Stefan'schen Gesetzes." *Annalen der Physik* 22:291–294, 1884.
7. Wien, W. "Über die Energieverteilung im Emissionsspektrum eines schwarzen Körpers." *Annalen der Physik* 58:662–669, 1896.
8. Planck, M. "Über das Gesetz der Energieverteilung im Normalspectrum." *Annalen der Physik* 4:553–563, 1901.
9. Maxwell, J. C. *A Treatise on Electricity and Magnetism.* Clarendon Press, Oxford, 1873.
10. Compton, A. H. "A Quantum Theory of the Scattering of X-rays by Light Elements." *Physical Review* 21:483–502, 1923.
11. Schwarzschild, K. "Über das Gravitationsfeld eines Massenpunktes nach der Einsteinschen Theorie." *Sitzungsberichte der Königlich Preussischen Akademie der Wissenschaften* 7:189–196, 1916.
12. Oberth, H. *Wege zur Raumschiffahrt.* R. Oldenbourg, Munich, 1929.
13. Onsager, L. "Reciprocal Relations in Irreversible Processes. I." *Physical Review* 37:405–426, 1931.
14. Gregory, J. *Exercitationes Geometricae.* London, 1668.
15. Mercator, N. *Logarithmotechnia.* London, 1668.
16. Chandrasekhar, S. *An Introduction to the Study of Stellar Structure.* University of Chicago Press, 1939.
17. Penrose, R. "Gravitational Collapse and Space-Time Singularities." *Physical Review Letters* 14:57–59, 1965.
18. Stuhlinger, E. *Ion Propulsion for Space Flight.* McGraw-Hill, New York, 1964.
19. Irving, J. H. "Low-Thrust Flight: Variable Exhaust Velocity in Gravitational Fields." In *Space Technology*, ed. H. Seifert, Wiley, New York, 1959.
20. Rumble, J. R., ed. *CRC Handbook of Chemistry and Physics.* 105th edition, CRC Press, 2024.
21. Navas, S. et al. (Particle Data Group). "Review of Particle Physics." *Physical Review D* 110:030001, 2024.
22. Tiesinga, E., Mohr, P. J., Newell, D. B. and Taylor, B. N. "CODATA Recommended Values of the Fundamental Physical Constants: 2018." *Reviews of Modern Physics* 93:025010, 2021.
23. Bureau International des Poids et Mesures. *Le Système international d'unités.* 9th edition, 2019.
24. Trent, R. V. III. *Applied Identity Physics: The Velocity Substrate.* [9,9,8,14](MATH), DOI 10.5281/zenodo.24103665, 2026.
25. Trent, R. V. III. *Applied Identity Physics: Fatigue Is Loss of Damping Capacity.* [9,9,2,53](ENGR), DOI 10.5281/zenodo.24096956, 2026.

## Corpus Provenance

- **[9,9,0,0]** Sovereign Anchor — the ground
- **[9,9,2,3.7]** 4-Beam Verification — GAMCollider™ v15 fusion logic, verified at four beams
- **[9,9,2,3.8]** 8-Beam Fusion Theorem — GAMCollider™ v15 fusion logic, the four-phase structure and the Torsion Limit at eight beams
- **[9,9,3,14]** Alpha Reduction — α⁻¹ = Ω₀ × 100.1, and TL = α⁻¹/1001
- **[9,9,0,15]** Speed of Light Reduction — c locked to the anchor, the photon Noble, velocity addition
- **[9,9,2,0]** IVA Propulsion Reduction — the two readings, the bridge, the corridor, velocity addition with closure
- **[9,9,0,17]** Matched Radius Reduction — r_match = r_s/τ_A², the mass canceling
- **[9,9,0,18]** Propellant Law and Compactness — the compactness criterion, the IVA band on surface torsion
- **[9,9,0,20]** Burn Depth and the Thrust Floor — the thrust floor, and the engine each body prescribes
- **[9,9,2,53]** Forced Response and Fatigue — damping loss, and cycles to Shatter
- **[9,9,8,10]** Temperature on the Torsion Limit — the vapor-pressure mapping, the IVA floor at 88 °C
- **[9,9,8,11]** Two Readings Across Substrates — Reading B as an e-fold count, the matched ratio
- **[9,9,8,12]** Geometric Base and Energy Ladder — b₀ = 1/√TL, η = τ_A²/2
- **[9,9,8,13]** The Projection Guide — the legacy projections and the combined forms
- **[9,9,8,14]** Velocity Substrate — velocity addition as Doppler multiplication, rapidity as an e-fold count
- **[9,9,2,54]** This reduction — the power-limited drive, the specific-mass decomposition, the impedance match

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska **DOI:** 10.5281/zenodo.18719748 **ORCID:** 0009-0005-5313-7443 **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_PowerLimitedDrive_Reduction.lean — [9,9,2,54](ENGR)

```lean
-- ============================================================
-- SNSFL_PowerLimitedDrive_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | EVERY POWER-LIMITED DRIVE IS ONE RELATION
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Omega_0 = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,2,54](ENGR) | Engineering Ground — Propulsion and Power
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in another
-- coordinate's file: the anchor, the Torsion Limit, the corridor floor, the four
-- phases, the geometric base, the conversion fraction, the matched ratio and the
-- mass-ratio gate are all restated here at full precision, so that a reader or a
-- machine can close every proof without leaving the file. The parent reductions
-- are named in the provenance block for the record, not as dependencies of the
-- proofs.
--
-- Parents of record:
--   [9,9,8,14]   Velocity Substrate            — rapidity, the bridge, the mass-ratio gate
--   [9,9,8,11]   Two Readings Across Substrates — Reading B as an e-fold count
--   [9,9,8,12]   Geometric Base and Energy Ladder — b_0 = 1/sqrt TL, eta_c = tau_A^2/2
--   [9,9,2,0]    IVA Propulsion Reduction      — the corridor, the two torsions
--   [9,9,0,17]   Matched Radius Reduction      — r_match = r_s/tau_A^2
--   [9,9,0,18]   Propellant Law and Compactness — the compactness criterion, 625/484
--   [9,9,0,20]   Burn Depth and Thrust Floor   — the thrust floor
--   [9,9,8,10]   Temperature on the Torsion Limit — the vapor-pressure ruler
--   [9,9,3,14]   Alpha Reduction               — alpha^-1 = Omega_0 x 100.1
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   ONE RELATION COVERS EVERY POWER-LIMITED DRIVE. A jet of mass flow mdot at
--   exhaust velocity v_e carries jet power P = mdot v_e^2/2 and thrust
--   F = mdot v_e, so F = 2P/v_e identically; with specific mass alpha = m/P the
--   acceleration is a = 2/(alpha v_e) and
--
--       a * alpha * v_e = 2
--
--   a fixed product of three quantities. Specific power factors as
--   1/alpha = (c/2) * a * tau_A, an acceleration times an exhaust torsion.
--
--   THE PHOTON DRIVE IS THAT RELATION'S ENDPOINT, at v_e = c, where the exhaust
--   torsion is exactly 1 and sits above the Shatter ceiling by exactly
--   1/TL = b_0^2, the square of the geometric base. Having no mass ratio, its
--   whole design problem is a = 2/(alpha c).
--
--   THE COOLING CAPACITY OF A DRIVE'S OWN PROPELLANT is 2 dh / v_e^2 of its jet
--   power, independent of the power entirely, with the crossover at
--   v_e = sqrt(2 dh).
--
--   THE REJECTION OPTIMUM IS DERIVATIVE-FREE. Radiator mass is proportional to
--   1/((1-x)x^3) with x = T_c/T_h, and the factorization
--
--       27/256 - (1-x)x^3 = (4x-3)^2 (16x^2+8x+3)/256
--
--   whose cofactor is (4x+1)^2 + 2 and therefore positive, gives the unique
--   maximum at x = 3/4 with value 27/256. So eta = 1/4 exactly, the waste-heat
--   multiplier (1-eta)/eta is exactly 3, and the minimized radiator mass is
--   proportional to 256/27.
--
--   SPECIFIC MASS DECOMPOSES, AND ONE ADDEND CARRIES THE TEMPERATURE.
--   alpha = k_core/eta + k_conv + k_rad (1-eta)/(eta T_c^4) reduces at eta = 1/4
--   to 4 k_core + k_conv + 3 k_rad/T_c^4, in which exactly one addend depends on
--   T_c. The crossover at which that addend equals the core addend is
--   T_c = (3 k_rad/(4 k_core))^(1/4), carried here as a nested square root, and
--   it exists and is unique for positive coefficients.
--
--   THE GOVERNING INEQUALITY AND ITS EXACT WIDTH. The corridor on the exhaust
--   torsion pulls back to a two-sided condition on specific mass whose width is
--   (TL/TL_IVA)^2 = 625/484 exactly, independent of mission duration, of the
--   optimality coefficient and of every material property.
--
--   THE MATCHED RADIUS IS THE DRIVE'S IMPEDANCE MATCH. Propulsive efficiency
--   satisfies 1 - eta_p = (1-r)^2/(1+r^2), so it is exactly 1 at r = 1 and
--   nowhere else; and the matched radius is the shell at which escape speed
--   equals exhaust speed, where free fall from rest at infinity arrives.
--
--   THE TRAJECTORY HAS A CLOSED FORM. With T_0 = m_dry/mdot and u = dv/v_e,
--   t = T_0(e^u - 1) and s = v_e T_0(e^u - 1 - u), so
--
--       s = v_e * t - T_0 * dv
--
--   exactly: the distance is the exhaust velocity times the elapsed time, less
--   the dry-mass burn time times the velocity gained.
--
-- ============================================================

import Mathlib

noncomputable section

namespace SNSFL_PowerLimitedDrive

-- ============================================================
-- SECTION 0: THE ANCHOR AND THE TORSION LIMIT
-- ============================================================

/-- The Sovereign Anchor Constant, at full precision. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Universal Torsion Limit. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The IVA corridor floor: 88% of the Torsion Limit. -/
def TL_IVA : ℝ := TORSION_LIMIT * 0.88

/-- The inverse fine-structure constant, at corpus precision. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The bare term: the Torsion Limit times one thousand. -/
def BARE : ℝ := 136.899099984016

/-- The speed of light in vacuum, SI exact. -/
def C_LIGHT : ℝ := 299792458

-- [T1] :: {ANC} | THE TORSION LIMIT IS THE ANCHOR OVER TEN
theorem t1_tl_value : TORSION_LIMIT = 0.136899099984016 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T2] :: {VER} | THE BARE TERM IS ONE THOUSAND TORSION LIMITS, EXACTLY
theorem t2_bare_is_thousand_tl : BARE = 1000 * TORSION_LIMIT := by
  simp only [BARE, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T3] :: {MASTER} | BARE PLUS KINETIC IS THE INVERSE FINE-STRUCTURE CONSTANT
theorem t3_bare_plus_kinetic : BARE + TORSION_LIMIT = ALPHA_INV := by
  simp only [BARE, TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T4] :: {MASTER} | THE TORSION LIMIT TIMES 1001 IS THE INVERSE CONSTANT
theorem t4_tl_times_1001 : TORSION_LIMIT * 1001 = ALPHA_INV := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T5] :: {MASTER} | THE ANCHOR ROUTE IN ONE STEP
theorem t5_anchor_route : SOVEREIGN_ANCHOR * 100.1 = ALPHA_INV := by
  simp only [SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T6] :: {VER} | THE MULTIPLIER FACTORS AS 7 * 11 * 13
theorem t6_multiplier_factors : (1001 : ℕ) = 7 * 11 * 13 := by norm_num

-- [T7] :: {VER} | THE TORSION LIMIT IS POSITIVE
theorem t7_tl_pos : 0 < TORSION_LIMIT := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T8] :: {VER} | THE CORRIDOR FLOOR IN CLOSED FORM
theorem t8_tl_iva_value : TL_IVA = 0.12047120798593408 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T9] :: {INV} | THE CORRIDOR FLOOR IS POSITIVE AND BELOW THE LIMIT
theorem t9_floor_pos_below : 0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T10] :: {INV} | THE TORSION LIMIT LIES STRICTLY INSIDE THE UNIT INTERVAL
theorem t10_tl_in_unit : -1 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T11] :: {VER} | THE TORSION LIMIT AS AN EXACT RATIONAL
theorem t11_tl_rational : TORSION_LIMIT = 8556193749001 / 62500000000000 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T12] :: {VER} | THE LANDING, ONE OVER THE TORSION LIMIT, AS AN EXACT RATIONAL
theorem t12_landing_rational : 1 / TORSION_LIMIT = 62500000000000 / 8556193749001 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T13] :: {VER} | THE SPEED OF LIGHT IS POSITIVE
theorem t13_c_pos : 0 < C_LIGHT := by simp only [C_LIGHT]; norm_num

-- [T14] :: {INV} | THE CORRIDOR FLOOR IS THE BAND 0.88 TL UP TO TL
theorem t14_corridor_band : TL_IVA = 0.88 * TORSION_LIMIT := by
  simp only [TL_IVA]; ring

-- ============================================================
-- SECTION 1: THE FOUR PHASES
-- ============================================================

/-- The four phases of the corpus. -/
inductive Phase
  | Noble
  | Locked
  | IVA
  | Shatter
  deriving DecidableEq, Repr

/-- Phase classification on a torsion reading. -/
def classify (t : ℝ) : Phase :=
  if t = 0 then Phase.Noble
  else if t < TL_IVA then Phase.Locked
  else if t < TORSION_LIMIT then Phase.IVA
  else Phase.Shatter

-- [T15] :: {VER} | ZERO CLASSIFIES AS NOBLE
theorem t15_zero_is_noble : classify 0 = Phase.Noble := by
  simp [classify]

-- [T16] :: {VER} | THE CORRIDOR FLOOR CLASSIFIES AS IVA
theorem t16_floor_is_iva : classify TL_IVA = Phase.IVA := by
  have h1 := t9_floor_pos_below
  simp only [classify]
  rw [if_neg (by linarith [h1.1]), if_neg (by linarith), if_pos h1.2]

-- [T17] :: {VER} | THE TORSION LIMIT CLASSIFIES AS SHATTER
theorem t17_limit_is_shatter : classify TORSION_LIMIT = Phase.Shatter := by
  have h1 := t9_floor_pos_below
  have h2 := t7_tl_pos
  simp only [classify]
  rw [if_neg (by linarith), if_neg (by linarith [h1.2]), if_neg (by linarith)]

-- [T18] :: {INV} | A READING INSIDE THE CORRIDOR CLASSIFIES AS IVA
theorem t18_corridor_is_iva (t : ℝ) (hlo : TL_IVA ≤ t) (hhi : t < TORSION_LIMIT) :
    classify t = Phase.IVA := by
  have h1 := t9_floor_pos_below
  simp only [classify]
  rw [if_neg (by linarith [h1.1]), if_neg (by linarith), if_pos hhi]

-- [T19] :: {INV} | A READING AT OR ABOVE THE LIMIT CLASSIFIES AS SHATTER
theorem t19_above_limit_is_shatter (t : ℝ) (h : TORSION_LIMIT ≤ t) :
    classify t = Phase.Shatter := by
  have h1 := t9_floor_pos_below
  have h2 := t7_tl_pos
  simp only [classify]
  rw [if_neg (by linarith), if_neg (by linarith [h1.2]), if_neg (by linarith)]

-- [T20] :: {INV} | A READING STRICTLY BELOW THE FLOOR CLASSIFIES AS LOCKED
theorem t20_below_floor_is_locked (t : ℝ) (h0 : 0 < t) (h : t < TL_IVA) :
    classify t = Phase.Locked := by
  simp only [classify]
  rw [if_neg (by linarith), if_pos h]

-- ============================================================
-- SECTION 2: ONE RELATION COVERS EVERY POWER-LIMITED DRIVE
-- ============================================================

/-- Reading A: a speed against the limiting speed. -/
def tau_A (v : ℝ) : ℝ := v / C_LIGHT

/-- Jet power of a stream of mass flow `mdot` at exhaust velocity `ve`. -/
def jet_power (mdot ve : ℝ) : ℝ := mdot * ve ^ 2 / 2

/-- Thrust of that same stream. -/
def thrust (mdot ve : ℝ) : ℝ := mdot * ve

/-- Acceleration delivered by a plant of specific mass `al` at exhaust velocity `ve`. -/
def accel (al ve : ℝ) : ℝ := 2 / (al * ve)

/-- Specific power, the reciprocal of specific mass. -/
def spec_power (al : ℝ) : ℝ := 1 / al

-- [T21] :: {VER} | READING A IS THE SPEED OVER THE LIMITING SPEED
theorem t21_reading_a (v : ℝ) : tau_A v * C_LIGHT = v := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t13_c_pos
  simp only [tau_A]; field_simp

-- [T22] :: {MASTER} | THRUST IS TWICE THE JET POWER OVER THE EXHAUST VELOCITY
theorem t22_thrust_from_power (mdot ve : ℝ) (hv : ve ≠ 0) :
    thrust mdot ve = 2 * jet_power mdot ve / ve := by
  simp only [thrust, jet_power]; field_simp

-- [T23] :: {MASTER} | THE FIXED PRODUCT
theorem t23_fixed_product (al ve : ℝ) (ha : al ≠ 0) (hv : ve ≠ 0) :
    accel al ve * al * ve = 2 := by
  simp only [accel]; field_simp

-- [T24] :: {MASTER} | THE ACCELERATION FORM OF THE SAME RELATION
theorem t24_accel_form (al ve : ℝ) (ha : al ≠ 0) (hv : ve ≠ 0) :
    accel al ve = 2 / (al * ve) := rfl

-- [T25] :: {MASTER} | ACCELERATION IS THRUST OVER MASS, WITH THE PLANT'S OWN MASS
theorem t25_accel_is_thrust_over_mass (mdot ve P m : ℝ) (hv : ve ≠ 0) (hm : m ≠ 0)
    (hP : P = jet_power mdot ve) (hPne : P ≠ 0) :
    thrust mdot ve / m = 2 / ((m / P) * ve) := by
  rw [t22_thrust_from_power mdot ve hv, ← hP]
  field_simp

-- [T26] :: {MASTER} | SPECIFIC POWER IS HALF THE ACCELERATION TIMES THE EXHAUST VELOCITY
theorem t26_spec_power_form (al ve : ℝ) (ha : al ≠ 0) (hv : ve ≠ 0) :
    spec_power al = accel al ve * ve / 2 := by
  simp only [spec_power, accel]; field_simp

-- [T27] :: {MASTER} | SPECIFIC POWER FACTORS INTO AN ACCELERATION AND A TORSION
theorem t27_spec_power_operator (al ve : ℝ) (ha : al ≠ 0) (hv : ve ≠ 0) :
    spec_power al = C_LIGHT / 2 * accel al ve * tau_A ve := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t13_c_pos
  simp only [spec_power, accel, tau_A]; field_simp

-- [T28] :: {INV} | ACCELERATION IS POSITIVE FOR A POSITIVE PLANT AND DRIVE
theorem t28_accel_pos (al ve : ℝ) (ha : 0 < al) (hv : 0 < ve) : 0 < accel al ve := by
  simp only [accel]; positivity

-- [T29] :: {INV} | AT FIXED SPECIFIC MASS, ACCELERATION FALLS AS THE EXHAUST VELOCITY RISES
theorem t29_accel_antitone (al v1 v2 : ℝ) (ha : 0 < al) (h1 : 0 < v1) (h : v1 < v2) :
    accel al v2 < accel al v1 := by
  simp only [accel]
  apply div_lt_div_of_pos_left two_pos (by positivity)
  nlinarith

-- [T30] :: {INV} | AT FIXED EXHAUST VELOCITY, ACCELERATION FALLS AS SPECIFIC MASS RISES
theorem t30_accel_antitone_in_alpha (a1 a2 ve : ℝ) (h1 : 0 < a1) (hv : 0 < ve) (h : a1 < a2) :
    accel a2 ve < accel a1 ve := by
  simp only [accel]
  apply div_lt_div_of_pos_left two_pos (by positivity)
  nlinarith

-- ============================================================
-- SECTION 3: THE PHOTON DRIVE IS THAT RELATION'S ENDPOINT
-- ============================================================

/-- The geometric base of the corpus. -/
def b0 : ℝ := 1 / Real.sqrt TORSION_LIMIT

-- [T31] :: {VER} | THE GEOMETRIC BASE IS POSITIVE
theorem t31_b0_pos : 0 < b0 := by
  simp only [b0]
  exact div_pos one_pos (Real.sqrt_pos.mpr t7_tl_pos)

-- [T32] :: {MASTER} | THE GEOMETRIC BASE SQUARED IS THE LANDING
theorem t32_b0_sq : b0 ^ 2 = 1 / TORSION_LIMIT := by
  have h := t7_tl_pos
  simp only [b0, div_pow, one_pow]
  rw [Real.sq_sqrt (le_of_lt h)]

-- [T33] :: {MASTER} | THE PHOTON EXHAUST TORSION IS EXACTLY ONE
theorem t33_photon_torsion : tau_A C_LIGHT = 1 := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t13_c_pos
  simp only [tau_A]; field_simp

-- [T34] :: {MASTER} | THE PHOTON SITS ABOVE THE CEILING BY EXACTLY THE SQUARED BASE
theorem t34_photon_over_ceiling : tau_A C_LIGHT / TORSION_LIMIT = b0 ^ 2 := by
  rw [t33_photon_torsion, t32_b0_sq]

-- [T35] :: {VER} | THAT FACTOR AS AN EXACT RATIONAL
theorem t35_photon_factor_rational :
    tau_A C_LIGHT / TORSION_LIMIT = 62500000000000 / 8556193749001 := by
  rw [t33_photon_torsion, t12_landing_rational]

-- [T36] :: {MASTER} | THE PHOTON DRIVE'S ACCELERATION DEPENDS ON SPECIFIC MASS ALONE
theorem t36_photon_accel (al : ℝ) (ha : al ≠ 0) :
    accel al C_LIGHT = 2 / (al * C_LIGHT) := rfl

-- [T37] :: {MASTER} | THE MINIMUM-BUILD LINE: SPECIFIC MASS FROM A TARGET ACCELERATION
theorem t37_photon_inverse (al a : ℝ) (ha : 0 < al) (h : accel al C_LIGHT = a) :
    al = 2 / (a * C_LIGHT) := by
  have hc : (0:ℝ) < C_LIGHT := t13_c_pos
  have hapos : 0 < a := by
    rw [← h]; exact t28_accel_pos al C_LIGHT ha hc
  simp only [accel] at h
  field_simp at h ⊢
  linarith [h]

-- [T38] :: {INV} | THE PHOTON EXHAUST TORSION CLASSIFIES AS SHATTER
theorem t38_photon_is_shatter : classify (tau_A C_LIGHT) = Phase.Shatter := by
  rw [t33_photon_torsion]
  exact t19_above_limit_is_shatter 1 (by linarith [t10_tl_in_unit.2])

-- ============================================================
-- SECTION 4: THE COOLING CAPACITY OF A DRIVE'S OWN PROPELLANT
-- ============================================================

/-- The fraction of jet power a drive's own propellant can absorb, for a usable
    enthalpy rise `dh`. -/
def sink_ratio (dh ve : ℝ) : ℝ := 2 * dh / ve ^ 2

/-- The exhaust velocity at which that fraction is exactly one. -/
def sink_crossover (dh : ℝ) : ℝ := Real.sqrt (2 * dh)

-- [T39] :: {MASTER} | THE SINK RATIO IS INDEPENDENT OF THE POWER
theorem t39_sink_power_free (dh ve mdot : ℝ) (hv : ve ≠ 0) (hm : mdot ≠ 0) :
    mdot * dh / jet_power mdot ve = sink_ratio dh ve := by
  simp only [jet_power, sink_ratio]; field_simp

-- [T40] :: {MASTER} | MASS FLOW IS TWICE THE POWER OVER THE SQUARED EXHAUST VELOCITY
theorem t40_mass_flow (mdot ve : ℝ) (hv : ve ≠ 0) :
    mdot = 2 * jet_power mdot ve / ve ^ 2 := by
  simp only [jet_power]; field_simp

-- [T41] :: {VER} | THE SINK RATIO IS POSITIVE FOR A POSITIVE ENTHALPY RISE
theorem t41_sink_pos (dh ve : ℝ) (hd : 0 < dh) (hv : ve ≠ 0) : 0 < sink_ratio dh ve := by
  simp only [sink_ratio]
  apply div_pos (by linarith) (by positivity)

-- [T42] :: {MASTER} | THE SINK RATIO FALLS AS THE SQUARE OF THE EXHAUST VELOCITY
theorem t42_sink_antitone (dh v1 v2 : ℝ) (hd : 0 < dh) (h1 : 0 < v1) (h : v1 < v2) :
    sink_ratio dh v2 < sink_ratio dh v1 := by
  simp only [sink_ratio]
  apply div_lt_div_of_pos_left (by linarith) (by positivity)
  nlinarith

-- [T43] :: {MASTER} | THE CROSSOVER SQUARES TO TWICE THE ENTHALPY RISE
theorem t43_crossover_sq (dh : ℝ) (hd : 0 ≤ dh) : sink_crossover dh ^ 2 = 2 * dh := by
  simp only [sink_crossover]
  exact Real.sq_sqrt (by linarith)

-- [T44] :: {MASTER} | AT THE CROSSOVER THE PROPELLANT CARRIES THE WHOLE JET POWER
theorem t44_at_crossover (dh : ℝ) (hd : 0 < dh) :
    sink_ratio dh (sink_crossover dh) = 1 := by
  have hs : sink_crossover dh ^ 2 = 2 * dh := t43_crossover_sq dh (le_of_lt hd)
  simp only [sink_ratio]
  rw [hs]
  field_simp

-- [T45] :: {INV} | ABOVE THE CROSSOVER THE PROPELLANT CARRIES LESS THAN THE JET POWER
theorem t45_above_crossover (dh ve : ℝ) (hd : 0 < dh) (h : sink_crossover dh < ve) :
    sink_ratio dh ve < 1 := by
  have hcpos : 0 < sink_crossover dh := by
    simp only [sink_crossover]; exact Real.sqrt_pos.mpr (by linarith)
  have hs : sink_crossover dh ^ 2 = 2 * dh := t43_crossover_sq dh (le_of_lt hd)
  have hv : 0 < ve := by linarith
  simp only [sink_ratio]
  rw [div_lt_one (by positivity)]
  nlinarith [hs, hcpos, h]

-- ============================================================
-- SECTION 5: THE REJECTION OPTIMUM, DERIVATIVE-FREE
-- ============================================================

/-- The quantity whose maximum minimizes radiator mass, with `x` the cold-to-hot
    temperature ratio. -/
def rej (x : ℝ) : ℝ := (1 - x) * x ^ 3

/-- The Carnot efficiency at that ratio. -/
def eta_of_x (x : ℝ) : ℝ := 1 - x

/-- The waste-heat multiplier: thermal kilowatts obliged per electric kilowatt. -/
def multiplier (eta : ℝ) : ℝ := (1 - eta) / eta

-- [T46] :: {MASTER} | THE DEFICIT FACTORS, WHICH IS THE WHOLE OPTIMUM
theorem t46_rej_factorization (x : ℝ) :
    27 / 256 - rej x = (4 * x - 3) ^ 2 * (16 * x ^ 2 + 8 * x + 3) / 256 := by
  simp only [rej]; ring

-- [T47] :: {MASTER} | THE COFACTOR IS A SHIFTED SQUARE AND THEREFORE POSITIVE
theorem t47_cofactor_pos (x : ℝ) : 0 < 16 * x ^ 2 + 8 * x + 3 := by
  nlinarith [sq_nonneg (4 * x + 1)]

-- [T48] :: {MASTER} | THE OPTIMUM VALUE
theorem t48_rej_at_opt : rej (3 / 4) = 27 / 256 := by
  simp only [rej]; norm_num

-- [T49] :: {MASTER} | THE OPTIMUM IS A GLOBAL MAXIMUM
theorem t49_rej_le_opt (x : ℝ) : rej x ≤ 27 / 256 := by
  have hq := t47_cofactor_pos x
  have hk := t46_rej_factorization x
  have hnn : (0:ℝ) ≤ (4 * x - 3) ^ 2 * (16 * x ^ 2 + 8 * x + 3) / 256 :=
    div_nonneg (mul_nonneg (sq_nonneg _) (le_of_lt hq)) (by norm_num)
  linarith [hk, hnn]

-- [T50] :: {MASTER} | THE MAXIMUM IS ATTAINED ONLY AT THREE QUARTERS
theorem t50_rej_unique (x : ℝ) (h : rej x = 27 / 256) : x = 3 / 4 := by
  have hq := t47_cofactor_pos x
  have hk := t46_rej_factorization x
  rw [h] at hk
  have h0 : (4 * x - 3) ^ 2 * (16 * x ^ 2 + 8 * x + 3) = 0 := by
    have hd : (4 * x - 3) ^ 2 * (16 * x ^ 2 + 8 * x + 3) / 256 = 0 := by linarith [hk]
    linarith [hd]
  rcases mul_eq_zero.mp h0 with h1 | h2
  · have hr : 4 * x - 3 = 0 := sq_eq_zero_iff.mp h1
    linarith
  · exact absurd h2 (ne_of_gt hq)

-- [T51] :: {MASTER} | THE RADIATOR-OPTIMAL EFFICIENCY IS ONE QUARTER, EXACTLY
theorem t51_eta_optimal : eta_of_x (3 / 4) = 1 / 4 := by
  simp only [eta_of_x]; norm_num

-- [T52] :: {MASTER} | THE WASTE-HEAT MULTIPLIER AT THE OPTIMUM IS EXACTLY THREE
theorem t52_multiplier_three : multiplier (1 / 4) = 3 := by
  simp only [multiplier]; norm_num

-- [T53] :: {MASTER} | THE MINIMIZED RADIATOR MASS IS PROPORTIONAL TO 256 OVER 27
theorem t53_min_radiator : 1 / rej (3 / 4) = 256 / 27 := by
  rw [t48_rej_at_opt]; norm_num

-- [T54] :: {INV} | THE MULTIPLIER IS POSITIVE AND ANTITONE ON THE UNIT INTERVAL
theorem t54_multiplier_pos (eta : ℝ) (h0 : 0 < eta) (h1 : eta < 1) : 0 < multiplier eta := by
  simp only [multiplier]
  exact div_pos (by linarith) h0

-- [T55] :: {INV} | A HIGHER EFFICIENCY GIVES A SMALLER MULTIPLIER
theorem t55_multiplier_antitone (e1 e2 : ℝ) (h1 : 0 < e1) (h2 : e2 < 1) (h : e1 < e2) :
    multiplier e2 < multiplier e1 := by
  have h1' : 0 < e2 := by linarith
  simp only [multiplier]
  rw [div_lt_div_iff₀ h1' h1]
  nlinarith

-- [T56] :: {MASTER} | THE MULTIPLIER IS THE RECIPROCAL EFFICIENCY LESS ONE
theorem t56_multiplier_form (eta : ℝ) (h : eta ≠ 0) : multiplier eta = 1 / eta - 1 := by
  simp only [multiplier]; field_simp

-- [T57] :: {INV} | THE DEFICIT IS ZERO ONLY AT THE OPTIMUM
theorem t57_deficit_zero_iff (x : ℝ) : 27 / 256 - rej x = 0 ↔ x = 3 / 4 := by
  constructor
  · intro h; exact t50_rej_unique x (by linarith)
  · intro h; rw [h, t48_rej_at_opt]; ring

-- [T58] :: {INV} | THE OPTIMUM RATIO AND ITS EFFICIENCY TOGETHER
theorem t58_optimum_pair :
    rej (3 / 4) = 27 / 256 ∧ eta_of_x (3 / 4) = 1 / 4 ∧ multiplier (1 / 4) = 3 :=
  ⟨t48_rej_at_opt, t51_eta_optimal, t52_multiplier_three⟩

-- ============================================================
-- SECTION 6: THE SPECIFIC-MASS DECOMPOSITION, AND THE CROSSOVER
-- ============================================================

/-- Specific mass as three addends: a core scaling with thermal power, conversion
    hardware scaling with electric power, and a radiator scaling with waste heat
    over the fourth power of rejection temperature. -/
def alpha_of (kc kv kr eta Tc : ℝ) : ℝ :=
  kc / eta + kv + kr * (1 - eta) / (eta * Tc ^ 4)

/-- The same at the rejection optimum. -/
def alpha_at_opt (kc kv kr Tc : ℝ) : ℝ := 4 * kc + kv + 3 * kr / Tc ^ 4

/-- The energy-density floor the decomposition descends to. -/
def alpha_floor (kc kv : ℝ) : ℝ := 4 * kc + kv

/-- A fourth root, carried as two square roots. -/
def fourth_root (X : ℝ) : ℝ := Real.sqrt (Real.sqrt X)

/-- The crossover temperature at which the radiator addend equals the core addend. -/
def crossover (kc kr : ℝ) : ℝ := fourth_root (3 * kr / (4 * kc))

-- [T59] :: {MASTER} | AT THE OPTIMUM THE DECOMPOSITION HAS THREE ADDENDS
theorem t59_alpha_at_opt (kc kv kr Tc : ℝ) (hT : Tc ≠ 0) :
    alpha_of kc kv kr (1 / 4) Tc = alpha_at_opt kc kv kr Tc := by
  simp only [alpha_of, alpha_at_opt]; field_simp; ring

-- [T60] :: {MASTER} | EXACTLY ONE ADDEND CARRIES THE REJECTION TEMPERATURE
theorem t60_one_addend_carries_T (kc kv kr Tc : ℝ) :
    alpha_at_opt kc kv kr Tc = alpha_floor kc kv + 3 * kr / Tc ^ 4 := by
  simp only [alpha_at_opt, alpha_floor]

-- [T61] :: {MASTER} | THE FLOOR DOES NOT DEPEND ON THE REJECTION TEMPERATURE
theorem t61_floor_T_free (kc kv T1 T2 : ℝ) :
    alpha_at_opt kc kv 0 T1 = alpha_at_opt kc kv 0 T2 := by
  simp only [alpha_at_opt]; norm_num

-- [T62] :: {MASTER} | SPECIFIC MASS DESCENDS TOWARD THE FLOOR AS THE COLD SIDE RISES
theorem t62_descends_to_floor (kc kv kr T1 T2 : ℝ) (hr : 0 < kr) (h1 : 0 < T1) (h : T1 < T2) :
    alpha_at_opt kc kv kr T2 < alpha_at_opt kc kv kr T1 := by
  simp only [alpha_at_opt]
  have hT2 : 0 < T2 := by linarith
  have key : (0:ℝ) < (T2 - T1) * ((T2 + T1) * (T2 ^ 2 + T1 ^ 2)) :=
    mul_pos (by linarith) (mul_pos (by linarith) (by positivity))
  have : 3 * kr / T2 ^ 4 < 3 * kr / T1 ^ 4 := by
    apply div_lt_div_of_pos_left (by linarith) (by positivity)
    nlinarith [key]
  linarith

-- [T63] :: {INV} | THE FLOOR IS A STRICT LOWER BOUND FOR A POSITIVE RADIATOR TERM
theorem t63_floor_is_bound (kc kv kr Tc : ℝ) (hr : 0 < kr) (hT : 0 < Tc) :
    alpha_floor kc kv < alpha_at_opt kc kv kr Tc := by
  rw [t60_one_addend_carries_T]
  have : 0 < 3 * kr / Tc ^ 4 := by positivity
  linarith

-- [T64] :: {MASTER} | THE FOURTH ROOT RAISED TO THE FOURTH RETURNS ITS ARGUMENT
theorem t64_fourth_root_pow (X : ℝ) (hX : 0 ≤ X) : fourth_root X ^ 4 = X := by
  have h1 : Real.sqrt X ^ 2 = X := Real.sq_sqrt hX
  have h2 : Real.sqrt (Real.sqrt X) ^ 2 = Real.sqrt X := Real.sq_sqrt (Real.sqrt_nonneg X)
  simp only [fourth_root]
  calc Real.sqrt (Real.sqrt X) ^ 4 = (Real.sqrt (Real.sqrt X) ^ 2) ^ 2 := by ring
    _ = Real.sqrt X ^ 2 := by rw [h2]
    _ = X := h1

-- [T65] :: {VER} | THE FOURTH ROOT IS POSITIVE ON POSITIVES
theorem t65_fourth_root_pos (X : ℝ) (hX : 0 < X) : 0 < fourth_root X := by
  simp only [fourth_root]
  exact Real.sqrt_pos.mpr (Real.sqrt_pos.mpr hX)

-- [T66] :: {VER} | THE CROSSOVER TEMPERATURE IS POSITIVE
theorem t66_crossover_pos (kc kr : ℝ) (hc : 0 < kc) (hr : 0 < kr) : 0 < crossover kc kr := by
  simp only [crossover]
  exact t65_fourth_root_pos _ (by positivity)

-- [T67] :: {MASTER} | AT THE CROSSOVER THE RADIATOR ADDEND EQUALS THE CORE ADDEND
theorem t67_crossover (kc kr : ℝ) (hc : 0 < kc) (hr : 0 < kr) :
    3 * kr / crossover kc kr ^ 4 = 4 * kc := by
  have hcne : kc ≠ 0 := ne_of_gt hc
  have hrne : kr ≠ 0 := ne_of_gt hr
  simp only [crossover]
  rw [t64_fourth_root_pow _ (by positivity : (0:ℝ) ≤ 3 * kr / (4 * kc))]
  field_simp

-- [T68] :: {MASTER} | AT THE CROSSOVER SPECIFIC MASS IS TWICE THE CORE PLUS CONVERSION
theorem t68_alpha_at_crossover (kc kv kr : ℝ) (hc : 0 < kc) (hr : 0 < kr) :
    alpha_at_opt kc kv kr (crossover kc kr) = 8 * kc + kv := by
  simp only [alpha_at_opt]
  rw [t67_crossover kc kr hc hr]
  ring

-- [T69] :: {MASTER} | THE CROSSOVER IS THE UNIQUE POSITIVE TEMPERATURE WHERE THEY AGREE
theorem t69_crossover_unique (kc kr Tc : ℝ) (hc : 0 < kc) (hr : 0 < kr) (hT : 0 < Tc)
    (h : 3 * kr / Tc ^ 4 = 4 * kc) : Tc ^ 4 = crossover kc kr ^ 4 := by
  have hcne : kc ≠ 0 := ne_of_gt hc
  have hTne : Tc ^ 4 ≠ 0 := pow_ne_zero 4 (ne_of_gt hT)
  have h4c : (4:ℝ) * kc ≠ 0 := mul_ne_zero (by norm_num) hcne
  have hB : crossover kc kr ^ 4 = 3 * kr / (4 * kc) := by
    simp only [crossover]
    exact t64_fourth_root_pow _ (by positivity)
  have hA : Tc ^ 4 = 3 * kr / (4 * kc) := by
    rw [eq_div_iff h4c]
    field_simp at h
    linarith [h]
  rw [hA, hB]

-- [T70] :: {INV} | BELOW THE CROSSOVER THE RADIATOR ADDEND DOMINATES
theorem t70_radiator_dominates (kc kr Tc : ℝ) (hc : 0 < kc) (hr : 0 < kr) (hT : 0 < Tc)
    (h : Tc < crossover kc kr) : 4 * kc < 3 * kr / Tc ^ 4 := by
  have hx := t67_crossover kc kr hc hr
  have hcp := t66_crossover_pos kc kr hc hr
  have hsum : (0:ℝ) < crossover kc kr ^ 2 + Tc ^ 2 := by
    linarith [pow_pos hcp 2, sq_nonneg Tc]
  have key : (0:ℝ) < (crossover kc kr - Tc) *
      ((crossover kc kr + Tc) * (crossover kc kr ^ 2 + Tc ^ 2)) :=
    mul_pos (by linarith) (mul_pos (by linarith) hsum)
  have hT4 : Tc ^ 4 < crossover kc kr ^ 4 := by nlinarith [key]
  have hlt : 3 * kr / crossover kc kr ^ 4 < 3 * kr / Tc ^ 4 :=
    div_lt_div_of_pos_left (by linarith) (pow_pos hT 4) hT4
  linarith [hx, hlt]

-- [T71] :: {INV} | ABOVE THE CROSSOVER THE CORE ADDEND DOMINATES
theorem t71_core_dominates (kc kr Tc : ℝ) (hc : 0 < kc) (hr : 0 < kr)
    (h : crossover kc kr < Tc) : 3 * kr / Tc ^ 4 < 4 * kc := by
  have hx := t67_crossover kc kr hc hr
  have hcp := t66_crossover_pos kc kr hc hr
  have hT : (0:ℝ) < Tc := by linarith
  have hsum : (0:ℝ) < Tc ^ 2 + crossover kc kr ^ 2 := by
    linarith [pow_pos hT 2, sq_nonneg (crossover kc kr)]
  have key : (0:ℝ) < (Tc - crossover kc kr) *
      ((Tc + crossover kc kr) * (Tc ^ 2 + crossover kc kr ^ 2)) :=
    mul_pos (by linarith) (mul_pos (by linarith) hsum)
  have hC4 : crossover kc kr ^ 4 < Tc ^ 4 := by nlinarith [key]
  have hlt : 3 * kr / Tc ^ 4 < 3 * kr / crossover kc kr ^ 4 :=
    div_lt_div_of_pos_left (by linarith) (pow_pos hcp 4) hC4
  linarith [hx, hlt]

-- ============================================================
-- SECTION 7: THE GOVERNING INEQUALITY, AND ITS EXACT WIDTH
-- ============================================================

/-- The squared exhaust torsion a plant of specific mass `al` and a burn of
    duration `t` prescribe, at optimality coefficient `kap`. -/
def exhaust_torsion_sq (kap t al : ℝ) : ℝ := kap ^ 2 * (2 * t / al) / C_LIGHT ^ 2

/-- The lower edge of the specific-mass band. -/
def alpha_lo (kap t : ℝ) : ℝ := 2 * kap ^ 2 * t / (TORSION_LIMIT * C_LIGHT) ^ 2

/-- The upper edge of the specific-mass band. -/
def alpha_hi (kap t : ℝ) : ℝ := 2 * kap ^ 2 * t / (TL_IVA * C_LIGHT) ^ 2

-- [T72] :: {MASTER} | THE BAND WIDTH IS AN EXACT RATIONAL
theorem t72_band_width : (TORSION_LIMIT / TL_IVA) ^ 2 = 625 / 484 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T73] :: {MASTER} | THE UPPER EDGE IS THE LOWER EDGE TIMES THAT RATIONAL
theorem t73_edges_ratio (kap t : ℝ) : alpha_hi kap t = alpha_lo kap t * (625 / 484) := by
  simp only [alpha_hi, alpha_lo, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, C_LIGHT]
  ring_nf

-- [T74] :: {MASTER} | THE WIDTH CARRIES NO DEPENDENCE ON DURATION OR COEFFICIENT
theorem t74_width_parameter_free (k1 t1 k2 t2 : ℝ) (h1 : alpha_lo k1 t1 ≠ 0)
    (h2 : alpha_lo k2 t2 ≠ 0) :
    alpha_hi k1 t1 / alpha_lo k1 t1 = alpha_hi k2 t2 / alpha_lo k2 t2 := by
  rw [t73_edges_ratio, t73_edges_ratio]
  field_simp

-- [T75] :: {VER} | BOTH EDGES ARE POSITIVE FOR A POSITIVE COEFFICIENT AND DURATION
theorem t75_edges_pos (kap t : ℝ) (hk : kap ≠ 0) (ht : 0 < t) :
    0 < alpha_lo kap t ∧ 0 < alpha_hi kap t := by
  have hc : (0:ℝ) < C_LIGHT := t13_c_pos
  have h1 := t7_tl_pos
  have h2 := t9_floor_pos_below.1
  have hk2 : 0 < kap ^ 2 := by positivity
  constructor
  · simp only [alpha_lo]; apply div_pos (by positivity) (by positivity)
  · simp only [alpha_hi]; apply div_pos (by positivity) (by positivity)

-- [T76] :: {INV} | THE EDGES ARE ORDERED
theorem t76_edges_ordered (kap t : ℝ) (hk : kap ≠ 0) (ht : 0 < t) :
    alpha_lo kap t < alpha_hi kap t := by
  have h := (t75_edges_pos kap t hk ht).1
  rw [t73_edges_ratio]
  nlinarith

-- [T77] :: {MASTER} | AT THE LOWER EDGE THE EXHAUST TORSION SQUARES TO THE CEILING
theorem t77_at_lower_edge (kap t : ℝ) (hk : kap ≠ 0) (ht : 0 < t) :
    exhaust_torsion_sq kap t (alpha_lo kap t) = TORSION_LIMIT ^ 2 := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t13_c_pos
  have htl : TORSION_LIMIT ≠ 0 := ne_of_gt t7_tl_pos
  have htne : t ≠ 0 := ne_of_gt ht
  simp only [exhaust_torsion_sq, alpha_lo]
  field_simp

-- [T78] :: {MASTER} | AT THE UPPER EDGE THE EXHAUST TORSION SQUARES TO THE FLOOR
theorem t78_at_upper_edge (kap t : ℝ) (hk : kap ≠ 0) (ht : 0 < t) :
    exhaust_torsion_sq kap t (alpha_hi kap t) = TL_IVA ^ 2 := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t13_c_pos
  have hiv : TL_IVA ≠ 0 := ne_of_gt t9_floor_pos_below.1
  have htne : t ≠ 0 := ne_of_gt ht
  simp only [exhaust_torsion_sq, alpha_hi]
  field_simp

-- [T79] :: {MASTER} | THE PRESCRIBED TORSION FALLS AS SPECIFIC MASS RISES
theorem t79_torsion_antitone (kap t a1 a2 : ℝ) (hk : kap ≠ 0) (ht : 0 < t) (h1 : 0 < a1)
    (h : a1 < a2) : exhaust_torsion_sq kap t a2 < exhaust_torsion_sq kap t a1 := by
  have hc : (0:ℝ) < C_LIGHT := t13_c_pos
  have hk2 : 0 < kap ^ 2 := by positivity
  simp only [exhaust_torsion_sq]
  apply div_lt_div_of_pos_right _ (pow_pos hc 2)
  exact mul_lt_mul_of_pos_left (div_lt_div_of_pos_left (by linarith) h1 h) hk2

-- [T80] :: {MASTER} | THE CHARACTERISTIC VELOCITY SQUARES TO TWICE DURATION OVER ALPHA
theorem t80_v_ch_sq (t al : ℝ) (ht : 0 < t) (ha : 0 < al) :
    Real.sqrt (2 * t / al) ^ 2 = 2 * t / al :=
  Real.sq_sqrt (by positivity)

-- [T81] :: {MASTER} | THE EXHAUST TORSION FROM THE CHARACTERISTIC VELOCITY
theorem t81_torsion_from_v_ch (kap t al : ℝ) (ht : 0 < t) (ha : 0 < al) :
    (kap * Real.sqrt (2 * t / al) / C_LIGHT) ^ 2 = exhaust_torsion_sq kap t al := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t13_c_pos
  simp only [exhaust_torsion_sq, div_pow, mul_pow]
  rw [t80_v_ch_sq t al ht ha]

-- [T82] :: {INV} | THE BAND IN ONE STATEMENT
theorem t82_band (kap t : ℝ) (hk : kap ≠ 0) (ht : 0 < t) :
    exhaust_torsion_sq kap t (alpha_lo kap t) = TORSION_LIMIT ^ 2 ∧
    exhaust_torsion_sq kap t (alpha_hi kap t) = TL_IVA ^ 2 ∧
    alpha_lo kap t < alpha_hi kap t ∧
    alpha_hi kap t = alpha_lo kap t * (625 / 484) :=
  ⟨t77_at_lower_edge kap t hk ht, t78_at_upper_edge kap t hk ht,
   t76_edges_ordered kap t hk ht, t73_edges_ratio kap t⟩

-- ============================================================
-- SECTION 8: THE MATCHED RADIUS IS THE DRIVE'S IMPEDANCE MATCH
-- ============================================================

/-- Classical propulsive efficiency at speed ratio `r = v/v_e`. -/
def prop_eff (r : ℝ) : ℝ := 2 * r / (1 + r ^ 2)

/-- The matched ratio of the corpus. -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

/-- The matched radius of a body of Schwarzschild radius `rs` for a drive of
    exhaust torsion `t`. -/
def r_match (rs t : ℝ) : ℝ := rs / t ^ 2

-- [T83] :: {VER} | THE DENOMINATOR OF PROPULSIVE EFFICIENCY IS POSITIVE
theorem t83_prop_denom_pos (r : ℝ) : 0 < 1 + r ^ 2 := by positivity

-- [T84] :: {MASTER} | THE EFFICIENCY DEFICIT FACTORS AS A SQUARE
theorem t84_prop_deficit (r : ℝ) : 1 - prop_eff r = (1 - r) ^ 2 / (1 + r ^ 2) := by
  have h := t83_prop_denom_pos r
  simp only [prop_eff]
  field_simp
  ring

-- [T85] :: {MASTER} | PROPULSIVE EFFICIENCY IS EXACTLY ONE AT MATCHED SPEED
theorem t85_prop_eff_one : prop_eff 1 = 1 := by
  simp only [prop_eff]; norm_num

-- [T86] :: {MASTER} | PROPULSIVE EFFICIENCY NEVER EXCEEDS ONE
theorem t86_prop_eff_le_one (r : ℝ) : prop_eff r ≤ 1 := by
  have h := t83_prop_denom_pos r
  have hd := t84_prop_deficit r
  have : (0:ℝ) ≤ (1 - r) ^ 2 / (1 + r ^ 2) := by positivity
  linarith [hd, this]

-- [T87] :: {MASTER} | UNIT EFFICIENCY HOLDS AT MATCHED SPEED AND NOWHERE ELSE
theorem t87_prop_eff_unique (r : ℝ) (h : prop_eff r = 1) : r = 1 := by
  have hdp := t83_prop_denom_pos r
  have hd := t84_prop_deficit r
  rw [h] at hd
  have hz : (1 - r) ^ 2 = 0 := by
    have h0 : (1 - r) ^ 2 / (1 + r ^ 2) = 0 := by linarith [hd]
    rcases div_eq_zero_iff.mp h0 with hA | hB
    · exact hA
    · exact absurd hB (ne_of_gt hdp)
  have hr : 1 - r = 0 := sq_eq_zero_iff.mp hz
  linarith

-- [T88] :: {MASTER} | THE MATCHED RADIUS CARRIES THE TORSION OUT OF THE RATIO
theorem t88_matched_radius_form (rs t : ℝ) (h : t ≠ 0) : r_match rs t * t ^ 2 = rs := by
  simp only [r_match]; field_simp

-- [T89] :: {MASTER} | THE ATTRACTING MASS CANCELS FROM THE RATIO
theorem t89_mass_cancels (rs t : ℝ) (hrs : rs ≠ 0) (h : t ≠ 0) :
    r_match rs t / rs = matched_ratio t := by
  simp only [r_match, matched_ratio]; field_simp

-- [T90] :: {MASTER} | AT THE MATCHED RADIUS THE SQUARED ESCAPE SPEED IS THE SQUARED
--                     EXHAUST SPEED
theorem t90_escape_is_exhaust (GM t : ℝ) (hGM : GM ≠ 0) (h : t ≠ 0) :
    2 * GM / r_match (2 * GM / C_LIGHT ^ 2) t = (t * C_LIGHT) ^ 2 := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t13_c_pos
  simp only [r_match]
  field_simp

-- [T91] :: {MASTER} | THE MATCHED RATIO IS THE SQUARED RECIPROCAL OF READING A
theorem t91_matched_ratio_form (t : ℝ) (h : t ≠ 0) : matched_ratio t * t ^ 2 = 1 := by
  simp only [matched_ratio]; field_simp

-- [T92] :: {MASTER} | THE MATCHED SHELL LIES OUTSIDE A BODY EXACTLY WHEN THE SQUARED
--                     TORSION IS BELOW THE COMPACTNESS
theorem t92_compactness_gate (rs R t : ℝ) (hrs : 0 < rs) (hR : 0 < R) (ht : 0 < t) :
    R < r_match rs t ↔ t ^ 2 < rs / R := by
  have ht2 : (0:ℝ) < t ^ 2 := by positivity
  simp only [r_match]
  rw [lt_div_iff₀ ht2, lt_div_iff₀ hR]
  constructor <;> intro h <;> nlinarith [h]

-- [T93] :: {INV} | THE MATCHED RATIO IS POSITIVE AND ANTITONE ON THE POSITIVE SIDE
theorem t93_matched_ratio_antitone (a b : ℝ) (ha : 0 < a) (h : a < b) :
    matched_ratio b < matched_ratio a := by
  simp only [matched_ratio]
  apply div_lt_div_of_pos_left one_pos (by positivity)
  nlinarith

-- ============================================================
-- SECTION 9: THE CONVERSION FRACTION AND THE SEPARATION OF THE READINGS
-- ============================================================

/-- The conversion fraction of the corpus. -/
def eta_c (t : ℝ) : ℝ := t ^ 2 / 2

/-- The relativistic Doppler factor on a Reading A value. -/
def doppler (t : ℝ) : ℝ := Real.sqrt ((1 + t) / (1 - t))

/-- Reading B: the e-fold count on the Doppler factor. -/
def tau_B_of (t : ℝ) : ℝ := Real.log (doppler t)

/-- The relative separation of the two readings. -/
def separation (t : ℝ) : ℝ := tau_B_of t / t - 1

-- [T94] :: {MASTER} | READING A SQUARED IS TWICE THE CONVERSION FRACTION
theorem t94_tau_sq_is_twice_eta (t : ℝ) : t ^ 2 = 2 * eta_c t := by
  simp only [eta_c]; ring

-- [T95] :: {VER} | THE CONVERSION FRACTION IS NONNEGATIVE
theorem t95_eta_nonneg (t : ℝ) : 0 ≤ eta_c t := by
  simp only [eta_c]; positivity

-- [T96] :: {MASTER} | THE SERIES CONVERGENCE CONDITION IS READING A'S OWN DOMAIN
theorem t96_convergence_condition (t : ℝ) : 2 * eta_c t < 1 ↔ -1 < t ∧ t < 1 := by
  simp only [eta_c]
  constructor
  · intro h; constructor <;> nlinarith [h, sq_nonneg t]
  · intro ⟨h1, h2⟩; nlinarith

-- [T97] :: {MASTER} | THE LEADING TERM OF THE SEPARATION
theorem t97_leading_term (t : ℝ) : 2 * eta_c t / 3 = t ^ 2 / 3 := by
  simp only [eta_c]; ring

-- [T98] :: {VER} | THE DOPPLER FACTOR IS POSITIVE INSIDE THE UNIT INTERVAL
theorem t98_doppler_pos (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : 0 < doppler t := by
  simp only [doppler]
  apply Real.sqrt_pos.mpr
  apply div_pos <;> linarith

-- [T99] :: {MASTER} | THE DOPPLER FACTOR SQUARED IS THE RATIO ITSELF
theorem t99_doppler_sq (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    doppler t ^ 2 = (1 + t) / (1 - t) := by
  simp only [doppler]
  apply Real.sq_sqrt
  apply le_of_lt
  apply div_pos <;> linarith

-- [T100] :: {MASTER} | THE SEPARATION IS READING B OVER READING A LESS ONE
theorem t100_separation_form (t : ℝ) (h : t ≠ 0) : separation t * t = tau_B_of t - t := by
  simp only [separation]; field_simp

-- [T101] :: {MASTER} | NOBLE: THE DOPPLER FACTOR IS ONE AND READING B IS ZERO
theorem t101_noble : doppler 0 = 1 ∧ tau_B_of 0 = 0 ∧ eta_c 0 = 0 := by
  refine ⟨?_, ?_, ?_⟩
  · simp only [doppler]; norm_num
  · simp only [tau_B_of, doppler]; norm_num
  · simp only [eta_c]; norm_num

-- ============================================================
-- SECTION 10: THE TRAJECTORY HAS A CLOSED FORM
-- ============================================================

/-- The dry-mass burn time: the time to pass the vehicle's own dry mass through
    the drive. -/
def T_zero (m_dry mdot : ℝ) : ℝ := m_dry / mdot

/-- Elapsed time of a constant-thrust burn to argument `u = dv/v_e`. -/
def burn_time (T0 u : ℝ) : ℝ := T0 * (Real.exp u - 1)

/-- Distance covered by that burn. -/
def burn_dist (ve T0 u : ℝ) : ℝ := ve * T0 * (Real.exp u - 1 - u)

/-- The velocity gained. -/
def burn_dv (ve u : ℝ) : ℝ := ve * u

-- [T102] :: {MASTER} | THE DISTANCE IS THE EXHAUST VELOCITY TIMES THE TIME, LESS THE
--                      DRY-MASS BURN TIME TIMES THE VELOCITY GAINED
theorem t102_distance_identity (ve T0 u : ℝ) :
    burn_dist ve T0 u = ve * burn_time T0 u - T0 * burn_dv ve u := by
  simp only [burn_dist, burn_time, burn_dv]; ring

-- [T103] :: {MASTER} | TIME AND DISTANCE DIFFER BY EXACTLY THE BURN ARGUMENT
theorem t103_remainder_structure (ve T0 u : ℝ) (hv : ve ≠ 0) (hT : T0 ≠ 0) :
    burn_time T0 u / T0 - burn_dist ve T0 u / (ve * T0) = u := by
  simp only [burn_time, burn_dist]; field_simp; ring

-- [T104] :: {VER} | A ZERO BURN COSTS NO TIME AND COVERS NO DISTANCE
theorem t104_zero_burn (ve T0 : ℝ) : burn_time T0 0 = 0 ∧ burn_dist ve T0 0 = 0 := by
  constructor <;> simp only [burn_time, burn_dist, Real.exp_zero] <;> ring

-- [T105] :: {MASTER} | THE ELAPSED TIME IS POSITIVE FOR A POSITIVE BURN
theorem t105_time_pos (T0 u : ℝ) (hT : 0 < T0) (hu : 0 < u) : 0 < burn_time T0 u := by
  have h : (1:ℝ) < Real.exp u := by
    rw [show (1:ℝ) = Real.exp 0 from (Real.exp_zero).symm]
    exact Real.exp_lt_exp.mpr hu
  simp only [burn_time]
  apply mul_pos hT
  linarith

-- [T106] :: {MASTER} | THE DISTANCE IS POSITIVE FOR A POSITIVE BURN
theorem t106_dist_pos (ve T0 u : ℝ) (hv : 0 < ve) (hT : 0 < T0) (hu : 0 < u) :
    0 < burn_dist ve T0 u := by
  have h : u + 1 < Real.exp u := Real.add_one_lt_exp (ne_of_gt hu)
  simp only [burn_dist]
  apply mul_pos (mul_pos hv hT)
  linarith

-- [T107] :: {MASTER} | THE ELAPSED TIME IS STRICTLY INCREASING IN THE BURN ARGUMENT
theorem t107_time_mono (T0 u1 u2 : ℝ) (hT : 0 < T0) (h : u1 < u2) :
    burn_time T0 u1 < burn_time T0 u2 := by
  have he : Real.exp u1 < Real.exp u2 := Real.exp_lt_exp.mpr h
  simp only [burn_time]
  apply mul_lt_mul_of_pos_left _ hT
  linarith

-- [T108] :: {MASTER} | THE MASS RATIO OF A BURN IS THE EXPONENTIAL OF ITS ARGUMENT
theorem t108_mass_ratio (m_dry mdot u : ℝ) (hm : 0 < m_dry) (hd : 0 < mdot) :
    burn_time (T_zero m_dry mdot) u * mdot / m_dry = Real.exp u - 1 := by
  have hmne : m_dry ≠ 0 := ne_of_gt hm
  have hdne : mdot ≠ 0 := ne_of_gt hd
  simp only [burn_time, T_zero]
  field_simp

-- [T109] :: {MASTER} | THE BURN ARGUMENT IS READING B OVER THE EXHAUST TORSION
theorem t109_argument_is_gate (ve tb : ℝ) (hv : ve ≠ 0) :
    burn_dv ve (tb / tau_A ve) = tb * C_LIGHT := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t13_c_pos
  simp only [burn_dv, tau_A]
  field_simp

-- [T110] :: {INV} | THE TRAJECTORY PAIR IN ONE STATEMENT
theorem t110_trajectory_pair (ve T0 u : ℝ) (hv : 0 < ve) (hT : 0 < T0) (hu : 0 < u) :
    burn_time T0 u = T0 * (Real.exp u - 1) ∧
    burn_dist ve T0 u = ve * T0 * (Real.exp u - 1 - u) ∧
    burn_dist ve T0 u = ve * burn_time T0 u - T0 * burn_dv ve u ∧
    0 < burn_dist ve T0 u :=
  ⟨rfl, rfl, t102_distance_identity ve T0 u, t106_dist_pos ve T0 u hv hT hu⟩

-- ============================================================
-- SECTION 11: THE ENVIRONMENTAL MARGIN, AND MULTI-DRIVE PRICING
-- ============================================================

/-- The radiator-area margin an environment at temperature `Tenv` costs a cold
    side at `Tc`. -/
def margin (Tenv Tc : ℝ) : ℝ := 1 / (1 - (Tenv / Tc) ^ 4)

/-- The mass-ratio gate: the mass ratio a drive needs to reach a given Reading B. -/
def gate (tb ta : ℝ) : ℝ := Real.exp (tb / ta)

-- [T111] :: {MASTER} | A COLD ENVIRONMENT COSTS NO MARGIN
theorem t111_margin_at_zero (Tc : ℝ) (h : Tc ≠ 0) : margin 0 Tc = 1 := by
  simp only [margin]; norm_num

-- [T112] :: {MASTER} | THE MARGIN EXCEEDS ONE FOR A WARM ENVIRONMENT
theorem t112_margin_gt_one (Tenv Tc : ℝ) (h0 : 0 < Tenv) (h : Tenv < Tc) : 1 < margin Tenv Tc := by
  have hc : 0 < Tc := by linarith
  have hr : 0 < Tenv / Tc := by positivity
  have hr1 : Tenv / Tc < 1 := by rw [div_lt_one hc]; exact h
  have hs : (Tenv / Tc) ^ 2 < 1 := by nlinarith [hr, hr1]
  have hq : (Tenv / Tc) ^ 4 < 1 := by nlinarith [hs, sq_nonneg ((Tenv / Tc) ^ 2)]
  have hd : 0 < 1 - (Tenv / Tc) ^ 4 := by linarith
  have hq4 : (0:ℝ) < (Tenv / Tc) ^ 4 := pow_pos hr 4
  simp only [margin]
  rw [lt_div_iff₀ hd]
  linarith [hq4]

-- [T113] :: {MASTER} | THE MARGIN RISES WITH THE ENVIRONMENT
theorem t113_margin_mono (T1 T2 Tc : ℝ) (h0 : 0 < T1) (h : T1 < T2) (h2 : T2 < Tc) :
    margin T1 Tc < margin T2 Tc := by
  have hc : 0 < Tc := by linarith
  have hT2 : 0 < T2 := by linarith
  have hp1 : 0 < T1 / Tc := div_pos h0 hc
  have hp2 : 0 < T2 / Tc := div_pos hT2 hc
  have hr1 : T1 / Tc < 1 := by rw [div_lt_one hc]; linarith
  have hr2 : T2 / Tc < 1 := by rw [div_lt_one hc]; exact h2
  have h12 : T1 / Tc < T2 / Tc := by apply div_lt_div_of_pos_right h hc
  have hs1 : (T1 / Tc) ^ 2 < 1 := by nlinarith [hp1, hr1]
  have hs2 : (T2 / Tc) ^ 2 < 1 := by nlinarith [hp2, hr2]
  have hd1 : 0 < 1 - (T1 / Tc) ^ 4 := by nlinarith [hs1, sq_nonneg ((T1 / Tc) ^ 2)]
  have hd2 : 0 < 1 - (T2 / Tc) ^ 4 := by nlinarith [hs2, sq_nonneg ((T2 / Tc) ^ 2)]
  have hsum : (0:ℝ) < (T2 / Tc) ^ 2 + (T1 / Tc) ^ 2 := by
    linarith [pow_pos hp2 2, sq_nonneg (T1 / Tc)]
  have key : (0:ℝ) <
      (T2 / Tc - T1 / Tc) * ((T2 / Tc + T1 / Tc) * ((T2 / Tc) ^ 2 + (T1 / Tc) ^ 2)) :=
    mul_pos (by linarith) (mul_pos (by linarith) hsum)
  have hlt : (T1 / Tc) ^ 4 < (T2 / Tc) ^ 4 := by nlinarith [key]
  simp only [margin]
  rw [div_lt_div_iff₀ hd1 hd2]
  linarith

-- [T114] :: {MASTER} | THE GATE AND THE BURN ARGUMENT ARE THE SAME OBJECT
theorem t114_gate_is_argument (tb ta : ℝ) : Real.log (gate tb ta) = tb / ta := by
  simp only [gate, Real.log_exp]

-- [T115] :: {MASTER} | STAGED LEGS MULTIPLY THEIR MASS RATIOS
theorem t115_legs_multiply (tb1 ta1 tb2 ta2 : ℝ) :
    gate tb1 ta1 * gate tb2 ta2 = Real.exp (tb1 / ta1 + tb2 / ta2) := by
  simp only [gate, Real.exp_add]

-- [T116] :: {MASTER} | A SINGLE DRIVE CARRYING THE WHOLE COUNT IS THE ONE-LEG CASE
theorem t116_single_leg (tb ta : ℝ) (h : ta ≠ 0) :
    gate tb ta = Real.exp (tb / ta) := rfl

-- ============================================================
-- MASTER
-- ============================================================

-- [MASTER] :: {ANC} | THE POWER-LIMITED DRIVE
theorem MASTER_power_limited_drive :
    -- the anchor
    (TORSION_LIMIT = 0.136899099984016) ∧
    (BARE + TORSION_LIMIT = ALPHA_INV) ∧
    (TORSION_LIMIT * 1001 = ALPHA_INV) ∧
    -- one relation covers every power-limited drive
    (∀ mdot ve : ℝ, ve ≠ 0 → thrust mdot ve = 2 * jet_power mdot ve / ve) ∧
    (∀ al ve : ℝ, al ≠ 0 → ve ≠ 0 → accel al ve * al * ve = 2) ∧
    (∀ al ve : ℝ, al ≠ 0 → ve ≠ 0 →
      spec_power al = C_LIGHT / 2 * accel al ve * tau_A ve) ∧
    -- the photon endpoint
    (tau_A C_LIGHT = 1) ∧
    (tau_A C_LIGHT / TORSION_LIMIT = b0 ^ 2) ∧
    (classify (tau_A C_LIGHT) = Phase.Shatter) ∧
    -- the sink law
    (∀ dh ve mdot : ℝ, ve ≠ 0 → mdot ≠ 0 →
      mdot * dh / jet_power mdot ve = sink_ratio dh ve) ∧
    (∀ dh : ℝ, 0 < dh → sink_ratio dh (sink_crossover dh) = 1) ∧
    -- the rejection optimum, derivative-free
    (∀ x : ℝ, 27 / 256 - rej x = (4 * x - 3) ^ 2 * (16 * x ^ 2 + 8 * x + 3) / 256) ∧
    (∀ x : ℝ, rej x ≤ 27 / 256) ∧
    (∀ x : ℝ, rej x = 27 / 256 → x = 3 / 4) ∧
    (eta_of_x (3 / 4) = 1 / 4) ∧
    (multiplier (1 / 4) = 3) ∧
    (1 / rej (3 / 4) = 256 / 27) ∧
    -- the decomposition and the crossover
    (∀ kc kv kr Tc : ℝ, Tc ≠ 0 →
      alpha_of kc kv kr (1 / 4) Tc = alpha_at_opt kc kv kr Tc) ∧
    (∀ kc kv kr Tc : ℝ, alpha_at_opt kc kv kr Tc = alpha_floor kc kv + 3 * kr / Tc ^ 4) ∧
    (∀ kc kr : ℝ, 0 < kc → 0 < kr → 3 * kr / crossover kc kr ^ 4 = 4 * kc) ∧
    (∀ kc kr : ℝ, 0 < kc → 0 < kr → 0 < crossover kc kr) ∧
    -- the governing inequality and its exact width
    ((TORSION_LIMIT / TL_IVA) ^ 2 = 625 / 484) ∧
    (∀ kap t : ℝ, alpha_hi kap t = alpha_lo kap t * (625 / 484)) ∧
    (∀ kap t : ℝ, kap ≠ 0 → 0 < t →
      exhaust_torsion_sq kap t (alpha_lo kap t) = TORSION_LIMIT ^ 2) ∧
    (∀ kap t : ℝ, kap ≠ 0 → 0 < t →
      exhaust_torsion_sq kap t (alpha_hi kap t) = TL_IVA ^ 2) ∧
    -- the impedance match
    (∀ r : ℝ, 1 - prop_eff r = (1 - r) ^ 2 / (1 + r ^ 2)) ∧
    (prop_eff 1 = 1) ∧
    (∀ r : ℝ, prop_eff r ≤ 1) ∧
    (∀ r : ℝ, prop_eff r = 1 → r = 1) ∧
    (∀ GM t : ℝ, GM ≠ 0 → t ≠ 0 →
      2 * GM / r_match (2 * GM / C_LIGHT ^ 2) t = (t * C_LIGHT) ^ 2) ∧
    (∀ rs R t : ℝ, 0 < rs → 0 < R → 0 < t → (R < r_match rs t ↔ t ^ 2 < rs / R)) ∧
    -- the conversion fraction and the separation
    (∀ t : ℝ, t ^ 2 = 2 * eta_c t) ∧
    (∀ t : ℝ, 2 * eta_c t < 1 ↔ -1 < t ∧ t < 1) ∧
    (∀ t : ℝ, t ≠ 0 → separation t * t = tau_B_of t - t) ∧
    -- the trajectory law
    (∀ ve T0 u : ℝ, burn_dist ve T0 u = ve * burn_time T0 u - T0 * burn_dv ve u) ∧
    (∀ ve T0 u : ℝ, 0 < ve → 0 < T0 → 0 < u → 0 < burn_dist ve T0 u) ∧
    -- the margin and the legs
    (∀ Tenv Tc : ℝ, 0 < Tenv → Tenv < Tc → 1 < margin Tenv Tc) ∧
    (∀ tb1 ta1 tb2 ta2 : ℝ,
      gate tb1 ta1 * gate tb2 ta2 = Real.exp (tb1 / ta1 + tb2 / ta2)) := by
  exact ⟨t1_tl_value, t3_bare_plus_kinetic, t4_tl_times_1001,
    fun mdot ve h => t22_thrust_from_power mdot ve h,
    fun al ve h1 h2 => t23_fixed_product al ve h1 h2,
    fun al ve h1 h2 => t27_spec_power_operator al ve h1 h2,
    t33_photon_torsion, t34_photon_over_ceiling, t38_photon_is_shatter,
    fun dh ve mdot h1 h2 => t39_sink_power_free dh ve mdot h1 h2,
    fun dh h => t44_at_crossover dh h,
    t46_rej_factorization, t49_rej_le_opt, t50_rej_unique,
    t51_eta_optimal, t52_multiplier_three, t53_min_radiator,
    fun kc kv kr Tc h => t59_alpha_at_opt kc kv kr Tc h,
    t60_one_addend_carries_T,
    fun kc kr h1 h2 => t67_crossover kc kr h1 h2,
    fun kc kr h1 h2 => t66_crossover_pos kc kr h1 h2,
    t72_band_width, t73_edges_ratio,
    fun kap t h1 h2 => t77_at_lower_edge kap t h1 h2,
    fun kap t h1 h2 => t78_at_upper_edge kap t h1 h2,
    t84_prop_deficit, t85_prop_eff_one, t86_prop_eff_le_one, t87_prop_eff_unique,
    fun GM t h1 h2 => t90_escape_is_exhaust GM t h1 h2,
    fun rs R t h1 h2 h3 => t92_compactness_gate rs R t h1 h2 h3,
    t94_tau_sq_is_twice_eta, t96_convergence_condition,
    fun t h => t100_separation_form t h,
    t102_distance_identity,
    fun ve T0 u h1 h2 h3 => t106_dist_pos ve T0 u h1 h2 h3,
    fun Tenv Tc h1 h2 => t112_margin_gt_one Tenv Tc h1 h2,
    t115_legs_multiply⟩

end SNSFL_PowerLimitedDrive

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes the power-limited drive as one relation and carries the
-- structure that follows from it. The Torsion Limit enters from the inverse
-- fine-structure constant by subtraction, with the bare term at one thousand
-- Torsion Limits and the multiplier factoring as 7 * 11 * 13, and nothing in the
-- file sets it; the Torsion Limit is also carried as the exact rational
-- 8556193749001/62500000000000 with its landing. A jet of mass flow mdot at
-- exhaust velocity v_e has jet power mdot v_e^2/2 and thrust mdot v_e, so thrust
-- is twice the power over the exhaust velocity identically, and a plant of
-- specific mass alpha therefore delivers an acceleration whose product with
-- alpha and the exhaust velocity is exactly two. Specific power factors into an
-- acceleration and an exhaust torsion scaled by half the speed of light, and
-- acceleration is shown antitone in each of the other two quantities separately.
-- The photon drive is that relation's endpoint: its exhaust torsion is exactly
-- one, it stands above the Shatter ceiling by exactly the squared geometric base
-- and equivalently by the exact rational 62500000000000/8556193749001, it
-- classifies as Shatter, and its acceleration depends on specific mass alone,
-- with the inverse solve returning the specific mass a target acceleration
-- requires. The cooling capacity of a drive's own propellant is shown to be twice
-- the usable enthalpy rise over the squared exhaust velocity, with the power
-- cancelling entirely, falling as the square of the exhaust velocity, equal to
-- the whole jet power exactly at the crossover and below it above. The rejection
-- optimum is settled without derivatives: the deficit from 27/256 factors as a
-- square times a cofactor that is a shifted square and therefore positive, which
-- gives the global maximum, its uniqueness at three quarters, the radiator-optimal
-- efficiency of exactly one quarter, the waste-heat multiplier of exactly three,
-- and the minimized radiator mass proportional to 256/27, with the multiplier
-- shown positive, antitone, and equal to the reciprocal efficiency less one.
-- Specific mass decomposes into three addends, reduces at quarter efficiency to
-- four core terms plus conversion plus three radiator terms over the fourth power
-- of the cold side, and exactly one addend carries that temperature, so specific
-- mass descends strictly toward an energy-density floor that the temperature
-- cannot reach. The crossover at which the radiator addend equals the core addend
-- is carried as a nested square root, shown positive, shown to satisfy the
-- balance exactly, shown unique in the fourth power, and shown to place specific
-- mass at eight core terms plus conversion, with the radiator addend dominating
-- below it and the core addend above. The corridor on the exhaust torsion pulls
-- back to a two-sided condition on specific mass whose width is the exact
-- rational 625/484, carried free of mission duration and of the optimality
-- coefficient, with the lower edge squaring the prescribed torsion to the ceiling
-- and the upper edge to the floor, the edges ordered and positive, and the
-- prescribed torsion antitone in specific mass. The matched radius is established
-- as the drive's impedance match: propulsive efficiency's deficit factors as a
-- square over a positive denominator, so unit efficiency holds at matched speed
-- and nowhere else; the matched radius carries the torsion out of the ratio, the
-- attracting mass cancels, the squared escape speed at that shell is the squared
-- exhaust speed, and the shell lies outside a body exactly when the squared
-- torsion is below the compactness. Reading A squared is twice the conversion
-- fraction, the separation series' convergence condition is shown to be Reading
-- A's own domain, and the separation is carried in its exact form against Reading
-- B on the Doppler factor. The trajectory has a closed form: elapsed time and
-- distance are the first- and second-order remainders of the exponential in the
-- burn argument, their difference is exactly that argument, and the distance is
-- the exhaust velocity times the elapsed time less the dry-mass burn time times
-- the velocity gained — both positive and monotone for a positive burn, with the
-- mass ratio recovered from the elapsed time and the burn argument identified as
-- Reading B over the exhaust torsion. Finally the environmental margin is shown
-- to exceed one for any warm environment and to rise with it, and staged legs are
-- shown to multiply their mass ratios while their Reading B counts add.
--
-- THEOREMS : 116 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
```
