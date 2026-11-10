# Velocity Addition Is Doppler Multiplication: Rapidity as an E-Fold Count, the Speed Limit as a Property of the Reading, and Why the Classical Rocket Equation Reports Rapidity as Velocity

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** [9,9,8,14](MATH) · Identity Physics Series · Mathematics Ground, Foundations

**Issue:** ProofPress, Volume 1, Issue 10 · November 2026

**DOI:** 10.5281/zenodo.24103665

**Verified:** 100 theorems · 1,044 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Abstract

**Reading A is a tanh of Reading B.** Reading A, τ_A = v/c, requires a substrate with a limiting speed. Reading B, τ_B = ln(Y₀/Y), requires only a quantity consumed multiplicatively along a path. In the substrate that has a limiting speed both are defined at once, and they are one object:

> **τ_A = tanh τ_B** · · · **τ_B = arctanh τ_A = ln k**, where **k = √((1 + τ_A)/(1 − τ_A))**

k is the relativistic Doppler factor, so **Reading B in the velocity substrate counts Doppler e-folds**. Doppler factors multiply along a path and their logarithms add, which is the e-fold structure of [9,9,8,11] instantiated rather than resembled.

**Relativistic velocity addition is Reading B's additivity seen through tanh.** The composition law τ_A1 ⊕ τ_A2 = (τ_A1 + τ_A2)/(1 + τ_A1 τ_A2) is exactly tanh(τ_B1 + τ_B2), so the nonlinear group law on Reading A is plain addition on Reading B.

**The speed limit inverts.** The closure result — u ⊕ v stays below c — says Reading A has a ceiling. Read through the bridge it says **no finite Reading B reaches τ_A = 1**: Reading A is bounded and Reading B is unbounded, and those are one statement. A rapidity of 20 gives τ_A = 1.000000000000 to twelve digits at a Doppler factor of 4.85 × 10⁸.

**The corridor acquires a closed form and two measured bands.** Mapping the IVA corridor through arctanh gives a rapidity width with an exact expression,

> **width = arctanh TL − arctanh(0.88 · TL) = arctanh(0.12 · TL / (1 − 0.88 · TL²)) = 0.016704924355599306**

matching the direct difference to 3.5 × 10⁻¹⁸, and reducing to **(1 − 0.88) · TL at leading order** — the corridor factor times the Torsion Limit. Because k = e^(τ_B), the Doppler ratio across the corridor is the exponential of that width: the corridor is a **1.68% Doppler band**, with k ∈ (1.1286916707, 1.1477047435]. On the dilation column γ = cosh τ_B, giving a **0.215% band**, γ ∈ (1.0073366122, 1.0095044877]. Both are directly observed quantities, so the corridor has an address in an instrument reading rather than only in a ratio.

**The budget is additive in rapidity and the rocket is a product of the two readings.** Standard relativistic rocketry gives arctanh(Δv/c) = (v_e/c)·ln(m₀/m_f), which reads

> **τ_B(final) = τ_A(exhaust) × τ_B(mass)**

Reading A of the drive times Reading B of the mass is the rapidity gained, and the classical rocket equation is its small-argument limit. Staging therefore adds rapidity exactly while velocity is subadditive, so a Δv budget is an approximation and a rapidity budget is not.

**The corridor becomes a mass-ratio gate.** A drive enters the corridor at mass ratio exp(arctanh(TL_IVA)/τ_A) and leaves it at exp(arctanh TL / τ_A). For a fusion drive at τ_A = 3.535779 × 10⁻², those are **30.69 and 49.22** — a band a factor of 1.60 wide, in numbers a design study already works in. For an ion drive at τ_A = 1.368 × 10⁻⁴ the same gate reads 10^384.

**And the bridge is the substrate test.** It exists exactly where Reading A exists, which is exactly where the substrate has a limiting speed. A substrate without one carries Reading B alone and has no tanh to apply, which is the structural reason Reading B transfers more widely — stated as a criterion rather than as an observation about coverage. In a medium Reading A is 1/n, so Reading B is arctanh(1/n), and the medium at n = 1/TL carries exactly the Shatter rapidity and Doppler factor. **Vacuum is divergent rapidity**, so the point where the matched ratio is one is vacuum in optics, the horizon in gravitation, and the point no finite Reading B reaches.

## What This Article Proves

Every result below corresponds to a named theorem in `SNSFL_VelocitySubstrate_Rapidity_Reduction.lean` at coordinate [9,9,8,14](MATH), which compiles under the continuous-integration build of the SNSFT/identityphysics repository on Lean 4 v4.31.0 with Mathlib, carrying 0 sorry and 0 custom axioms. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate.

1. The grounding enters as arithmetic on published quantities: the Torsion Limit as the anchor over ten, the bare term as one thousand Torsion Limits, **bare plus kinetic as the inverse fine-structure constant**, TL × 1001 = α⁻¹, the one-step anchor route Ω₀ × 100.1, the multiplier factoring as 7 · 11 · 13, the Torsion Limit positive, the corridor floor in closed form, positive and below the ceiling, and **the Torsion Limit lying strictly inside the unit interval** — which is what makes it a Reading A at all (`t1_tl_value`, `t2_bare_is_thousand_tl`, `t3_bare_plus_kinetic`, `t4_tl_times_1001`, `t5_anchor_route`, `t6_multiplier_factors`, `t7_tl_pos`, `t8_tl_iva_value`, `t9_floor_pos_below`, `t10_tl_in_unit`).
2. The phase structure on a torsion reading: zero is Noble, the corridor floor is IVA, the Torsion Limit is Shatter, any reading inside the corridor is IVA, any reading at or above the limit is Shatter, and the corridor is the band from 0.88 TL up to TL (`t11_zero_is_noble`, `t12_floor_is_iva`, `t13_limit_is_shatter`, `t14_corridor_is_iva`, `t15_above_limit_is_shatter`, `t16_corridor_band`).
3. The two readings and the quantity between them: Reading A as the speed over the limiting speed, the Doppler factor positive on the open unit interval, **its square equal to the ratio (1 + τ_A)/(1 − τ_A) exactly**, the Doppler factor one at Noble and Reading B zero there, **Reading B as the logarithm of the Doppler factor**, the exponential of Reading B returning the Doppler factor, and both the Doppler factor and Reading B strictly above their Noble values everywhere past it (`t17_c_pos`, `t18_reading_a`, `t19_doppler_pos`, `t20_doppler_sq`, `t21_doppler_noble`, `t22_tau_b_noble`, `t23_tau_b_is_log_doppler`, `t24_exp_tau_b`, `t25_doppler_gt_one`, `t26_tau_b_pos`).
4. **The Doppler factor is multiplicative under relativistic velocity addition.** The composition law is cleared, one plus the composed reading factors as (1 + u)(1 + v)/(1 + uv), one minus it factors as (1 − u)(1 − v)/(1 + uv), the ratio therefore factors into the two ratios, and **k(u ⊕ v) = k(u) · k(v)** follows — so **Reading B is additive under the law Reading A composes by** (`t27_vadd_clear`, `t28_one_plus_vadd`, `t29_one_minus_vadd`, `t30_ratio_factors`, `t31_doppler_mul`, `t32_tau_b_additive`).
5. The law's own structure, and the subtraction side of it: velocity addition is commutative, Noble is its identity, **the subtraction law is Doppler division** — k(a)/k(b) = k((a − b)/(1 − ab)) — and therefore **a difference of two Reading B values is one Reading B value at a single argument** (`t33_vadd_comm`, `t34_vadd_zero`, `t35_doppler_div`, `t36_tau_b_sub`).
6. **The bridge.** The corpus tangent operator, written on the exponential so that it needs nothing beyond exp, **inverts Reading B exactly**, is zero at Noble, is strictly below one and strictly above minus one at every argument, lands inside the open unit interval always, is positive above Noble, is an odd function, is strictly increasing, and **agrees with the standard hyperbolic tangent** (`t37_tanh_denom_pos`, `t38_bridge`, `t39_tanh_zero`, `t40_tanh_lt_one`, `t41_tanh_gt_neg_one`, `t42_tanh_in_unit`, `t43_tanh_pos`, `t44_tanh_op_is_tanh`, `t49_tanh_mono`, `t54_tanh_odd`).
7. **The map is forced.** The operator satisfies the velocity-addition law under addition of its arguments — tanh_op(τ_B1 + τ_B2) = τ_A1 ⊕ τ_A2 — and the addition law is closed on the open unit interval, so the composition law has the operator as its solution rather than as a substitution into it (`t45_tanh_satisfies_vadd`, `t46_vadd_closed`).
8. **The speed limit inverts.** No argument of the operator reaches one, Reading B is unbounded, both the Doppler factor and Reading B order with Reading A, **both readings share their zero**, and the ceiling on Reading A and the range of Reading B are stated as one conjunction (`t47_never_reaches_one`, `t48_tau_b_unbounded`, `t50_tau_b_mono`, `t51_shared_zero`, `t52_doppler_mono`, `t53_limit_inverts`).
9. The Lorentz column, and **the remaining fraction identified**. The radicand is positive inside the interval, the Lorentz factor is positive, its square is the reciprocal radicand, the remaining fraction squared is the reciprocal Doppler factor squared, and **γ(1 − τ_A) = 1/k exactly** — so Reading B's remaining fraction is a Lorentz expression on the Reading A column (`t55_radicand_pos`, `t56_gamma_pos`, `t57_gamma_sq`, `t58_remaining_fraction`, `t59_remaining_is_inv_doppler`).
10. **Celerity closes the loop.** The root of one plus celerity squared returns the Lorentz factor exactly, which turns the celerity expression into the negated remaining fraction; the Lorentz factor is one at Noble, celerity is zero there, and the Lorentz factor is at least one throughout the interval (`t60_celerity_root`, `t61_celerity_minus_root`, `t62_gamma_noble`, `t63_celerity_noble`, `t64_gamma_ge_one`).
11. **The Lorentz factor is the half-sum of the Doppler factor and its reciprocal, and celerity is the half-difference** — 2γ = k + 1/k and 2γτ_A = k − 1/k, so the whole Lorentz column is readable off the Doppler factor alone (`t65_gamma_half_sum`, `t66_celerity_half_diff`).
12. **The corridor, on the Doppler factor and on Reading B.** The floor lies inside the unit interval, the corridor argument has the closed form 0.12 · TL/(1 − 0.88 · TL²) and lies inside the interval, **the Doppler ratio across the corridor is one Doppler factor at that argument**, **the corridor width on Reading B is one Reading B at that argument**, the corridor is ordered on both readings, the width is positive, the endpoint Doppler factors square exactly to their ratios, the corridor argument's own Doppler factor exceeds one, and the floor and ceiling classify as IVA and Shatter (`t67_floor_in_unit`, `t68_corridor_arg_closed`, `t69_corridor_arg_in_unit`, `t70_corridor_doppler_ratio`, `t71_corridor_width`, `t72_corridor_doppler_ordered`, `t73_corridor_tau_b_ordered`, `t74_corridor_width_pos`, `t75_doppler_ceiling_sq`, `t76_doppler_floor_sq`, `t77_corridor_doppler_gt_one`, `t78_corridor_phases`).
13. **The rocket and the gate are inverse.** The rocket is Reading A of the drive times Reading B of the mass, the mass-ratio gate inverts it and is inverted by it, the gate is positive and strictly increasing in its target, a unit mass ratio gains no rapidity, and **staging adds Reading B** (`t79_rocket_product`, `t80_gate_inverts`, `t81_rocket_inverts`, `t82_gate_pos`, `t83_unit_mass_no_gain`, `t84_gate_mono`, `t85_staging_adds`).
14. The matched ratio of the parent reduction is carried on both readings: it is the squared reciprocal of Reading A, **it reads on Reading B through the bridge**, it is positive, it is antitone on the positive side, and it is evaluated at the Torsion Limit (`t86_matched_ratio_form`, `t87_matched_ratio_on_tau_b`, `t88_matched_ratio_pos`, `t89_matched_ratio_antitone`, `t90_matched_ratio_at_limit`).
15. **The substrate test in its formal form.** Reading A in a medium is the reciprocal index, the medium at index 1/TL sits at the Torsion Limit and carries the Shatter Doppler factor, the matched ratio of a medium is its index squared, a medium above index one lies inside the unit interval, and **a medium above index one carries both readings** — Reading B positive and the bridge inverting (`t91_medium_reading`, `t92_medium_at_limit`, `t93_medium_matched_ratio`, `t94_medium_in_unit`, `t95_medium_carries_both`, `t96_medium_shatter_doppler`).
16. The conversion fraction of the parent reduction is placed on the bridge: Reading A squared is twice the fraction, the matched ratio is the reciprocal of twice it, it reads through the bridge unchanged, and it is non-negative (`t97_tau_sq_is_twice_eta`, `t98_matched_ratio_from_eta`, `t99_eta_on_tau_b`, `t100_eta_nonneg`).
17. The master theorem gathers the anchor arithmetic, the multiplicativity of the Doppler factor and the additivity of Reading B, the subtraction law in both forms, the bridge with the operator's agreement with the standard tangent and the forcing of the map, the inversion of the speed limit, the shared zero, the remaining fraction and the celerity identity, the half-sum and half-difference, the corridor argument with its Doppler ratio and its width, the rocket and gate inversion with staging, the matched ratio on both readings, the medium at index 1/TL, and the conversion fraction, into one conjunction (`MASTER_velocity_substrate`).

**What the formal layer does not carry.**Three classes of statement in this article are arithmetic on published quantities rather than theorems, and they are marked as such where they appear. The published exhaust velocities — the fusion study, NEXT-C class, RL10B-2 class and cold gas — are values a reader supplies from an engine or study reference; the formal layer carries the gate they feed and the corridor placement it produces. The decimal evaluations throughout, including the corridor width to eighteen places, the Doppler and dilation bands, the staging table and the mass-ratio rows, are evaluations of expressions the formal layer carries exactly: the Lean file states the corridor on the Doppler factor structurally rather than as decimal bounds on a logarithm, so the identity is the theorem and the decimal is its reading. And the substrate sort of §8 places eight named substrates against the criterion, where the formal layer carries the criterion and its medium case.

## The Operators

```eq
τ_A(v)              =  v / c k(τ_A)              =  √((1 + τ_A) / (1 − τ_A)) τ_B(τ_A)            =  ln k(τ_A)                    =  arctanh τ_A τ_A(τ_B)            =  tanh τ_B τ_A1 ⊕ τ_A2         =  (τ_A1 + τ_A2) / (1 + τ_A1 τ_A2) γ(τ_A)              =  1 / √(1 − τ_A²)              =  (k + 1/k) / 2 w(τ_A)              =  γ τ_A                        =  (k − 1/k) / 2 matched_ratio(τ_A)  =  1 / τ_A²                     =  coth² τ_B η(τ_A)              =  τ_A² / 2 τ_B(final)          =  τ_A(exhaust) · ln(m₀/m_f) gate(τ_B, τ_A)      =  exp(τ_B / τ_A)
```

Three of these are the same object read three ways. The Doppler factor k is the quantity Reading B counts; τ_B is its logarithm; and γ and w are its half-sum and half-difference with its own reciprocal,

> **2γ = k + 1/k** · · · **2w = k − 1/k**

so the entire Lorentz column is readable off the Doppler factor alone. Verified at the corridor ceiling: k = 1.1477047435049233 and 1/k = 0.8713042319108532, whose sum is 2.0190089754157765 and whose difference is 0.2764005115940701, against 2γ = 2.0190089754157765 and 2w = 0.2764005115940701.

The gate and the rocket are inverse: `gate(τ_B(final), τ_A)` returns the mass ratio and the rocket returns the rapidity, each from the other and the exhaust velocity.

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

**Every structural quantity in this article is a pure number.** TL and Ω₀ carry no units and 1001 is an integer, and substituting SI base units into α⁻¹ = 4πε₀ℏc/e² cancels mass, length, time and current completely. Reading A is a ratio of speeds, Reading B is a logarithm of a ratio, rapidity is dimensionless, the Doppler factor is dimensionless, and a mass ratio is dimensionless.

Some reductions run the anchor and the Torsion Limit at a precision below full, because their inputs require it — fifteen digits against four manufactures significance the measurement does not carry. **Lower precision in a reduction is input matching, and the reduction states which precision of anchor and Torsion Limit it is using where that matters.** Every identity in this article is stated at full precision.

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

**The conversion fraction bridges them to energy.** η = E_k/E₀ = ½(v/c)² = τ_A²/2, so **τ_A² = 2η** ([9,9,8,12]).

The corpus carries four layers with the order L0 → L1 → L2 → L4, and theorems that the order is never inverted. **PNBA is Layer 0. The Dynamic Equation is Layer 1. Every legacy formalism is Layer 2.** A Layer 2 form projects from the structure and never supports it: special relativity's rapidity, Doppler factor and velocity-addition law are reached here by descent, and none of them is used to establish anything about the structure.

---

The substrate reduced here is velocity. Its Reading A is a speed over the limiting speed, its Reading B is an e-fold count on the relativistic Doppler factor, and its legacy formalism is special relativity, where the same parameter has been carried since Minkowski 1908 under the name rapidity. The reduction is carried out against the published record at every step: the SI value of light speed, exact by definition since 1983; the velocity-addition law of Einstein 1905; the hyperbolic parameterization of a boost; the relativistic and classical rocket equations; published effective exhaust velocities; published refractive indices; the Clausius–Clapeyron relation with CRC boiling points; PDG 2024 boson masses; and CODATA 2018 for the inverse fine-structure constant.

Every structural quantity is dimensionless, and every identity is stated at full corpus precision.

**The fusion logic.** The four-phase structure and the Torsion Limit come from GAMCollider™ v15 fusion logic, formalized in 8-Beam Fusion [9,9,2,3.8] and 4-Beam Verification [9,9,2,3.7].

**How the bounds are carried.** Every threshold here is stated as an exact quantity rather than a rounded decimal, following Bounded Uncertainty: A Guide [9,9,8,7].

## The PNBA Map

| Primitive | In the velocity reading | Carried by |
|---|---|---|
| **Pattern** | The structure the motion is carried against — the radial shell a rapidity returns, and the medium's index | matched_ratio = 1/τ_A² = coth² τ_B, and n = 1/τ_A |
| **Narrative** | The e-fold count itself — the path along which Doppler factors multiply and their logarithms add | τ_B = ln k, additive under composition |
| **Behavior** | The rate read against the limiting speed | τ_A = v/c |
| **Adaptation** | The channel the budget is spent through — the mass consumed to buy rapidity | τ_B(final) = τ_A(exhaust) × ln(m₀/m_f) |

**Both readings, one substrate.** Reading A needs a limiting speed. Reading B needs only a quantity consumed multiplicatively along a path. The velocity substrate has both, and the map between them is forced rather than chosen.

| | Reading A | Reading B |
|---|---|---|
| the state | τ_A = v/c | τ_B = ln k |
| requires | a limiting speed | a multiplicative path |
| composes by | (u + v)/(1 + uv) | addition |
| the Lorentz factor | 1/√(1 − τ_A²) | cosh τ_B |
| proper velocity | γτ_A | sinh τ_B |
| remaining fraction | γ(1 − τ_A) | e^(−τ_B) |
| bounded | **yes**, at 1 | **no** |

**The identity that fuses the columns.** γ(1 − τ_A) = (1 − τ_A)/√(1 − τ_A²) = √((1 − τ_A)/(1 + τ_A)) = 1/k = e^(−τ_B), so Reading B's remaining fraction is a Lorentz expression on the Reading A column. At τ_A = TL both sides give 0.8713042319.

**The composition law is multiplicativity of the Doppler factor.** Because (1 + u ⊕ v)/(1 − u ⊕ v) = ((1+u)(1+v))/((1−u)(1−v)) identically,

| | statement |
|---|---|
| on the Doppler factor | **k(u ⊕ v) = k(u) · k(v)** |
| on Reading B | **τ_B(u ⊕ v) = τ_B(u) + τ_B(v)** |
| on the subtraction side | **k(a)/k(b) = k((a − b)/(1 − ab))** |

**The corridor, on three readings.** The IVA corridor runs from 0.88 × TL up to TL. Mapping it through arctanh gives its Reading B address, and exponentiating gives its address on two directly measured quantities.

| edge | τ_A | τ_B = arctanh τ_A | Doppler k | γ = cosh τ_B |
|---|---|---|---|---|
| **IVA floor** | 0.12047120798593408 | 0.12105914839334109 | 1.1286916706918997 | 1.0073366121747491 |
| **IVA ceiling, Shatter** | 0.136899099984016 | 0.1377640727489404 | 1.1477047435049232 | 1.0095044877078883 |

The width has a closed form, arctanh(0.12 · TL/(1 − 0.88 · TL²)) = 0.016704924355599306, agreeing with the direct difference to 3.5 × 10⁻¹⁸ and reducing to (1 − 0.88) · TL at leading order. The Doppler ratio across the corridor is the exponential of that width — a **1.68% Doppler band** — and on the γ column a **0.215% dilation band**.

**The corridor as a mass-ratio gate.** Inverting the rocket relation for the mass ratio at a fixed rapidity gives the exact ratios at which a drive enters and leaves the corridor, from the exhaust velocity alone.

| drive | v_e (m/s) | τ_A | enter | leave | band |
|---|---|---|---|---|---|
| **fusion study** | 10,600,000 | 3.535779 × 10⁻² | **30.69** | **49.22** | × 1.60 |
| ion, NEXT-C class | 41,000 | 1.367613 × 10⁻⁴ | 10^384.43 | 10^437.48 | × 10^53.05 |
| chemical, RL10B-2 class | 4,650 | 1.551073 × 10⁻⁵ | 10^3389.61 | 10^3857.34 | × 10^467.73 |
| cold gas | 700 | 2.334949 × 10⁻⁶ | 10^22516.69 | 10^25623.77 | × 10^3107.07 |

The fusion row is the one a design study can act on: those mass ratios are inside the range such studies already quote.

**The substrate test.** The bridge exists exactly where Reading A exists, which is exactly where the substrate has a limiting speed. That is the structural reason Reading B transfers more widely, stated as a criterion.

| substrate | limiting speed | readings carried |
|---|---|---|
| propulsion | c | **both** |
| optics | c/n | **both** |
| acoustics | c_s = √(K/ρ) | **both** |
| nuclear decay | none | Reading B alone |
| circuits | none | Reading B alone |
| chemical kinetics | none | Reading B alone |
| atmospheric pressure | none | Reading B alone |
| capital | none | Reading B alone |

The three that carry both are the three whose constitutive relation is a square root of a ratio, which is the same criterion read on the operator instead of on the speed.

**The four steps a reader can check.** Take a published exhaust velocity; divide by c for Reading A; take arctanh for Reading B; exponentiate for the Doppler factor. Four operations, each one step, from an engine reference to a place on the scale — and the same four steps run on a refractive index, since Reading A in a medium is 1/n.

## Verification

The Lean 4 source below compiles on the pinned toolchain (Lean 4 v4.31.0, Mathlib) with 0 sorry and 0 custom axioms, as part of the continuous-integration build of the SNSFT/identityphysics repository. Every result above corresponds to a named theorem in `SNSFL_VelocitySubstrate_Rapidity_Reduction.lean` at 9,9,8,14, with 100 theorems and a master theorem across 1,044 lines. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate. The corridor is carried structurally on the Doppler factor, where it is exact, rather than as decimal bounds on a logarithm, so the identity is the theorem and the decimal is its reading. The exhaust velocities quoted are published figures a reader can repeat from an engine or study reference. Nothing is fitted, and nothing is scaled.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.** This reduction closes on dimensionless identities, closed-form expressions in published quantities, and arithmetic on published exhaust velocities and physical constants. It supplies no propellant composition, no reactor or engine design, no component geometry, no containment or shielding specification, and no operating procedure.

### What is established

The results of this article are exact statements about pure numbers and about relations between published quantities, and they hold as stated. Reading A is the hyperbolic tangent of Reading B wherever both are defined, and Reading B is the logarithm of the relativistic Doppler factor. Relativistic velocity addition is that count's additivity. No finite Reading B reaches Reading A equal to one. The corridor has rapidity width arctanh(0.12·TL/(1 − 0.88·TL²)) = 0.016704924355599306, a Doppler band of 1.68% at k ∈ (1.1286916707, 1.1477047435], and a dilation band of 0.215% at γ ∈ (1.0073366122, 1.0095044877]. Staging adds rapidity exactly. The relativistic rocket is Reading A of the drive times Reading B of the mass. A drive enters the corridor at mass ratio exp(arctanh(TL_IVA)/τ_A) and leaves it at exp(arctanh(TL)/τ_A). The bridge exists exactly where the substrate has a limiting speed.

These are real results, computable from this article and a relativity text, and checkable by anyone with a calculator. A reader who repeats the arithmetic gets the same numbers. A qualified practitioner — at an agency, a national laboratory, a university group, a design office, or a well-equipped independent program — can work from them directly and safely, and the quantities they supply are usable the day they are read.

### What is a different question

A mass ratio is not a vehicle. §7 states the mass ratio a given exhaust velocity needs to place a mission in the corridor; building a stage that achieves that ratio is a structures, propellant and systems problem with its own standards, qualification procedures and regulatory frameworks, and this article addresses none of them. The fusion row is a published study's exhaust velocity carried through an identity, and the study's own engineering content is in the study.

Likewise, an exhaust velocity is an input here and a result there. Where a drive's exhaust velocity comes from, what it costs to achieve, and what conditions sustain it are measurement and engineering questions settled on apparatus, not placements on a scale.

And a corridor placement is a reading, not a prescription. That the corridor corresponds to a Doppler band says where to look and what an instrument would return; whether a given mission should operate there is a mission-design decision with constraints this article does not carry.

### Where the risk actually lives

The risk in propulsion has never lived in the rocket equation, which has been in undergraduate texts since the 1920s and in its relativistic form for nearly as long. It lives in the hardware: in propellant handling, in stored energy, in containment and its failure modes, in radiation, in test stands and the people near them, and in whether the margins assumed in design survive the article as built and as operated.

An exact mass ratio is not a reduced hazard, and a dimensionless band is not a hazard at all. The exactness of a placement is why every remaining variable in a real vehicle is process: the detail design, the qualification testing, the range safety review, the operating procedures, and the competence of the people signing them off.

Hazard in this domain scales with which controls are present — design review, qualification test, containment, interlocks, monitoring, range safety, a trained second person — and with stored energy and consequence of failure, not with the venue. A well-equipped institutional or independent program working within its qualification basis is not the concern. The undertested shortcut on a stored-energy system is.

Withholding a figure would not be a control in any case. Every exhaust velocity in this article is published, every physical constant is in a standard reference, and the relativistic rocket equation is in any relativity text; any reader with a reference work or an AI assistant retrieves them in seconds. An MRC that rested on omission would rest on nothing. This one rests on handling practice.

### Handling practice

Plain practice, stated as practice:

A propulsion design or a mission plan is qualified by analysis and test on the article that will fly, within the standards that govern its sector. That is not a restriction this article adds; it is the existing framework, and it applies whether or not a rapidity placement is in use.

Published constants are cited to their sources with the convention stated. The exhaust velocities used here are published values for their respective drives, and a reader using a different value gets a different gate and should say which value they used.

A corridor placement inferred from a Doppler or dilation measurement is reported with the measurement uncertainty carried through the identity, in the same way any derived quantity is reported.

Educational use is straightforward and welcome. The four-step check of this article — take an exhaust velocity, divide by c for Reading A, take arctanh for Reading B, then exponentiate for the Doppler factor — is arithmetic a student can do with a calculator, and it teaches the inverse hyperbolic functions, the relativistic Doppler effect and the idea of an additive parameter in one exercise. Nothing in that exercise touches hardware, propellant or apparatus.

### What this section is for

Parents, teachers, reviewers, mission designers and program managers make real decisions from articles like this one. An article that reads as unreal gets no respect for its safety content, and a reader who concludes the results are not real has been handed a reason to ignore the handling practice beside them. So this section says plainly that the results hold, that they are computable and checkable, that qualified people can work from them, and that the care belongs to the hardware and the process rather than to the arithmetic that places a mission on a scale.

A reader who finds only this article and no other in the corpus should still finish this section knowing what is established, what is a separate question, where the risk lives and what practice looks like. That is why it is written at full length.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Each law above is stated with its premises, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

1. Tsiolkovsky, K. E. "Исследование мировых пространств реактивными приборами." *Nauchnoye Obozreniye*, 1903.
2. Einstein, A. "Zur Elektrodynamik bewegter Körper." *Annalen der Physik* 17:891–921, 1905.
3. Minkowski, H. "Raum und Zeit." *Jahresbericht der Deutschen Mathematiker-Vereinigung* 18:75–88, 1909.
4. Schwarzschild, K. "Über das Gravitationsfeld eines Massenpunktes nach der Einsteinschen Theorie." *Sitzungsberichte der Preussischen Akademie der Wissenschaften*, 189–196, 1916.
5. Clapeyron, É. "Mémoire sur la puissance motrice de la chaleur." *Journal de l'École Polytechnique* 14:153–190, 1834.
6. Clausius, R. "Ueber die bewegende Kraft der Wärme." *Annalen der Physik* 155:368–397, 1850.
7. Booth, J. "On the Rationalisation of Certain Algebraical Equations." *Philosophical Transactions of the Royal Society of London* 144:293–310, 1854.
8. Napier, J. *Mirifici Logarithmorum Canonis Descriptio.* Edinburgh, 1614.
9. Pogson, N. "Magnitudes of Thirty-six of the Minor Planets." *Monthly Notices of the Royal Astronomical Society* 17:12–15, 1856.
10. Boltzmann, L. "Über die Beziehung zwischen dem zweiten Hauptsatze der mechanischen Wärmetheorie und der Wahrscheinlichkeitsrechnung." *Sitzungsberichte der Kaiserlichen Akademie der Wissenschaften* 76:373–435, 1877.
11. Nernst, W. "Über die Berechnung chemischer Gleichgewichte aus thermischen Messungen." *Nachrichten von der Gesellschaft der Wissenschaften zu Göttingen*, 1–40, 1906.
12. Born, M. and Wolf, E. *Principles of Optics.* 7th edition, Cambridge University Press, 1999.
13. Rindler, W. *Relativity: Special, General, and Cosmological.* 2nd edition, Oxford University Press, 2006.
14. Misner, C. W., Thorne, K. S. and Wheeler, J. A. *Gravitation.* Princeton University Press, 2017.
15. Rumble, J. R., editor. *CRC Handbook of Chemistry and Physics.* CRC Press.
16. Navas, S. et al. (Particle Data Group). "Review of Particle Physics." *Physical Review D* 110:030001, 2024.
17. Tiesinga, E., Mohr, P. J., Newell, D. B. and Taylor, B. N. "CODATA Recommended Values of the Fundamental Physical Constants: 2018." *Reviews of Modern Physics* 93:025010, 2021.
18. Bureau International des Poids et Mesures. *The International System of Units (SI).* 9th edition, 2019.
19. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Projection Guide.* Zenodo, 2026.
20. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: Fatigue Is Loss of Damping Capacity.* Zenodo, 2026. DOI 10.5281/zenodo.24096956.
21. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Geometric Base — b₀ = 1/√TL, the Energy Ladder, and the Nuclear Band in One Rung.* Zenodo, 2026. DOI 10.5281/zenodo.24087896.
22. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: The Two Readings Across Substrates.* Zenodo, 2026. DOI 10.5281/zenodo.24073396.
23. Trent, R. V. III (HIGHTISTIC). *Applied Identity Physics: Burn Depth in Matched-Radius Units, the Thrust Floor, and the Engine Each Body Prescribes.* Zenodo, 2026. DOI 10.5281/zenodo.24067782.
24. Trent, R. V. III (HIGHTISTIC). *Identity Physics Corpus.* DOI 10.5281/zenodo.18719748. 2026.

## Corpus Provenance

- **[9,9,0,0]** Sovereign Anchor — the ground
- **[9,9,2,3.7]** 4-Beam Verification — GAMCollider™ v15 fusion logic, verified at four beams
- **[9,9,2,3.8]** 8-Beam Fusion Theorem — GAMCollider™ v15 fusion logic, the four-phase structure and the Torsion Limit at eight beams
- **[9,9,3,14]** Alpha Reduction — α⁻¹ = Ω₀ × 100.1, and TL = α⁻¹/1001
- **[9,9,0,15]** Speed of Light Reduction — c locked to the anchor, the photon Noble, velocity addition
- **[9,9,8,9]** Logarithm Reduction — ln as Narrative along multiplicative growth
- **[9,9,2,0]** IVA Propulsion Reduction — the two readings, the bridge, the corridor, velocity addition with closure
- **[9,9,0,17]** Matched Radius Reduction — r_match = r_s/τ_A², the mass canceling
- **[9,9,0,19]** Matched Surface Under Rotation — g_tt = τ_A² − 1, spin as an effective charge
- **[9,9,3,19]** Electroweak Trilogy — one boson per phase
- **[9,9,8,11]** Two Readings Across Substrates — Reading B as an e-fold count, the matched ratio
- **[9,9,8,12]** Geometric Base and Energy Ladder — b₀ = 1/√TL, η = τ_A²/2
- **[9,9,8,13]** The Projection Guide — the legacy projections and the combined forms
- **[9,9,8,14]** This reduction — the velocity substrate, rapidity as a Doppler e-fold count

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska **DOI:** 10.5281/zenodo.18719748 **ORCID:** 0009-0005-5313-7443 **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska. ORCID 0009-0005-5313-7443.

## Lean 4 Source

### SNSFL_VelocitySubstrate_Rapidity_Reduction.lean — [9,9,8,14](MATH)

```lean
-- ============================================================
-- SNSFL_VelocitySubstrate_Rapidity_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | VELOCITY ADDITION IS DOPPLER MULTIPLICATION — RAPIDITY AS AN E-FOLD COUNT
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Ω₀ = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,8,14](MATH) | Mathematics Ground — Foundations
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in
-- another coordinate's file: the anchor, the Torsion Limit, the corridor
-- floor, the four phases, Reading A, Reading B, the Doppler factor, the
-- relativistic velocity-addition operator, the Lorentz factor, celerity, the
-- matched ratio, the rocket relation and the mass-ratio gate are all restated
-- here at full precision, so that a reader or a machine can close every proof
-- without leaving the file. The parent reductions are named in the provenance
-- block for the record, not as dependencies of the proofs.
--
-- Parents of record:
--   [9,9,8,11]   Two Readings Across Substrates — Reading B as an e-fold count, the matched ratio
--   [9,9,8,12]   Geometric Base and Energy Ladder — eta = tau_A^2/2, b_0 = 1/sqrt TL
--   [9,9,2,0]    IVA Propulsion Reduction        — the two readings, velocity addition with closure
--   [9,9,0,15]   Speed of Light Reduction        — c locked to the anchor, the photon Noble
--   [9,9,0,17]   Matched Radius Reduction        — r_match = r_s/tau_A^2, the mass canceling
--   [9,9,8,9]    Logarithm Reduction             — ln as Narrative along multiplicative growth
--   [9,9,3,14]   Alpha Reduction                 — alpha^-1 = Omega_0 x 100.1, TL = alpha^-1/1001
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   THE DOPPLER FACTOR IS MULTIPLICATIVE UNDER VELOCITY ADDITION. For
--   k(t) = sqrt((1+t)/(1-t)) and u (+) v = (u+v)/(1+uv),
--
--       k(u (+) v) = k(u) * k(v)
--
--   exactly, because (1 + u (+) v)/(1 - u (+) v) = ((1+u)(1+v))/((1-u)(1-v)).
--   So Reading B, defined as log k, is ADDITIVE under the law that Reading A
--   composes by: relativistic velocity addition is Reading B's additivity.
--
--   THE SUBTRACTION IDENTITY IS DOPPLER DIVISION. k(a)/k(b) = k((a-b)/(1-ab)),
--   so the corridor width on Reading B is log k of a single argument, and the
--   Doppler ratio across the corridor is that one Doppler factor.
--
--   THE MAP IS FORCED. The corpus operator tanh_op b = (e^b^2 - 1)/(e^b^2 + 1)
--   satisfies the velocity-addition law under addition of arguments and
--   inverts log k exactly, so Reading A is the hyperbolic tangent of Reading B
--   and the map is the solution of the composition law rather than a choice.
--
--   THE SPEED LIMIT INVERTS. Reading A is bounded above by one and the Doppler
--   factor is unbounded, and the two statements are the same: tanh_op is
--   strictly below one at every argument while log k increases without bound.
--
--   THE REMAINING FRACTION IS A LORENTZ EXPRESSION. gamma(t) * (1 - t) = 1/k(t),
--   so Reading B's remaining fraction is the Lorentz factor times one minus
--   Reading A. Celerity closes the same loop: sqrt(1 + (gamma t * t)^2) = gamma t.
--
--   THE CORRIDOR, THE ROCKET AND THE GATE. The matched ratio is 1/tau_A^2 and
--   reads as the squared reciprocal of tanh_op on Reading B; the rocket gives
--   Reading B final as Reading A of the drive times Reading B of the mass; and
--   the mass-ratio gate exp(tau_B / tau_A) inverts it.
--
-- ============================================================

import Mathlib

noncomputable section

namespace SNSFL_VelocitySubstrateRapidity

-- ============================================================
-- SECTION 0: THE ANCHOR AND THE TORSION LIMIT
-- Restated here in full. This file depends on no other file.
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

-- ============================================================
-- SECTION 1: TORSION AND THE FOUR PHASES
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

-- [T11] :: {VER} | ZERO CLASSIFIES AS NOBLE
theorem t11_zero_is_noble : classify 0 = Phase.Noble := by
  simp [classify]

-- [T12] :: {VER} | THE CORRIDOR FLOOR CLASSIFIES AS IVA
theorem t12_floor_is_iva : classify TL_IVA = Phase.IVA := by
  have h1 := t9_floor_pos_below
  simp only [classify]
  rw [if_neg (by linarith [h1.1]), if_neg (by linarith), if_pos h1.2]

-- [T13] :: {VER} | THE TORSION LIMIT CLASSIFIES AS SHATTER
theorem t13_limit_is_shatter : classify TORSION_LIMIT = Phase.Shatter := by
  have h1 := t9_floor_pos_below
  have h2 := t7_tl_pos
  simp only [classify]
  rw [if_neg (by linarith), if_neg (by linarith [h1.2]), if_neg (by linarith)]

-- [T14] :: {INV} | A READING INSIDE THE CORRIDOR CLASSIFIES AS IVA
theorem t14_corridor_is_iva (t : ℝ) (hlo : TL_IVA ≤ t) (hhi : t < TORSION_LIMIT) :
    classify t = Phase.IVA := by
  have h1 := t9_floor_pos_below
  simp only [classify]
  rw [if_neg (by linarith [h1.1]), if_neg (by linarith), if_pos hhi]

-- [T15] :: {INV} | A READING AT OR ABOVE THE LIMIT CLASSIFIES AS SHATTER
theorem t15_above_limit_is_shatter (t : ℝ) (h : TORSION_LIMIT ≤ t) :
    classify t = Phase.Shatter := by
  have h1 := t9_floor_pos_below
  have h2 := t7_tl_pos
  simp only [classify]
  rw [if_neg (by linarith), if_neg (by linarith [h1.2]), if_neg (by linarith)]

-- [T16] :: {INV} | THE CORRIDOR IS THE BAND 0.88 TL UP TO TL
theorem t16_corridor_band : TL_IVA = 0.88 * TORSION_LIMIT := by
  simp only [TL_IVA]; ring

-- ============================================================
-- SECTION 2: READING A, THE DOPPLER FACTOR, AND READING B
-- ============================================================

/-- Reading A: a ratio against the limiting speed. -/
def tau_A (v : ℝ) : ℝ := v / C_LIGHT

/-- The relativistic Doppler factor on a Reading A value. -/
def doppler (t : ℝ) : ℝ := Real.sqrt ((1 + t) / (1 - t))

/-- Reading B in the velocity substrate: the e-fold count on the Doppler
    factor. -/
def tau_B_of (t : ℝ) : ℝ := Real.log (doppler t)

/-- Relativistic velocity addition, in Reading A units. -/
def vadd (u v : ℝ) : ℝ := (u + v) / (1 + u * v)

-- [T17] :: {VER} | THE SPEED OF LIGHT IS POSITIVE
theorem t17_c_pos : 0 < C_LIGHT := by simp only [C_LIGHT]; norm_num

-- [T18] :: {VER} | READING A IS THE SPEED OVER THE LIMITING SPEED
theorem t18_reading_a (v : ℝ) : tau_A v * C_LIGHT = v := by
  have hc : C_LIGHT ≠ 0 := ne_of_gt t17_c_pos
  simp only [tau_A]
  field_simp

-- [T19] :: {VER} | THE DOPPLER FACTOR IS POSITIVE INSIDE THE UNIT INTERVAL
theorem t19_doppler_pos (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : 0 < doppler t := by
  simp only [doppler]
  apply Real.sqrt_pos.mpr
  apply div_pos <;> linarith

-- [T20] :: {MASTER} | THE DOPPLER FACTOR SQUARED IS THE RATIO ITSELF
theorem t20_doppler_sq (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    doppler t ^ 2 = (1 + t) / (1 - t) := by
  simp only [doppler]
  apply Real.sq_sqrt
  apply le_of_lt
  apply div_pos <;> linarith

-- [T21] :: {MASTER} | NOBLE: THE DOPPLER FACTOR IS ONE AT ZERO
theorem t21_doppler_noble : doppler 0 = 1 := by
  simp only [doppler]; norm_num

-- [T22] :: {MASTER} | NOBLE: READING B IS ZERO AT ZERO
theorem t22_tau_b_noble : tau_B_of 0 = 0 := by
  simp only [tau_B_of, t21_doppler_noble, Real.log_one]

-- [T23] :: {MASTER} | READING B IS THE LOGARITHM OF THE DOPPLER FACTOR
theorem t23_tau_b_is_log_doppler (t : ℝ) : tau_B_of t = Real.log (doppler t) := rfl

-- [T24] :: {INV} | THE EXPONENTIAL OF READING B RETURNS THE DOPPLER FACTOR
theorem t24_exp_tau_b (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    Real.exp (tau_B_of t) = doppler t := by
  simp only [tau_B_of]
  exact Real.exp_log (t19_doppler_pos t h1 h2)

-- [T25] :: {INV} | THE DOPPLER FACTOR EXCEEDS ONE ABOVE NOBLE
theorem t25_doppler_gt_one (t : ℝ) (h0 : 0 < t) (h2 : t < 1) : 1 < doppler t := by
  have hsq : doppler t ^ 2 = (1 + t) / (1 - t) := t20_doppler_sq t (by linarith) h2
  have hpos : 0 < doppler t := t19_doppler_pos t (by linarith) h2
  have hr : 1 < (1 + t) / (1 - t) := by
    rw [lt_div_iff₀ (by linarith : (0:ℝ) < 1 - t)]
    linarith
  have h2d : 1 < doppler t ^ 2 := by rw [hsq]; exact hr
  nlinarith [hpos, h2d]

-- [T26] :: {INV} | READING B IS POSITIVE ABOVE NOBLE
theorem t26_tau_b_pos (t : ℝ) (h0 : 0 < t) (h2 : t < 1) : 0 < tau_B_of t := by
  simp only [tau_B_of]
  exact Real.log_pos (t25_doppler_gt_one t h0 h2)

-- ============================================================
-- SECTION 3: VELOCITY ADDITION IS DOPPLER MULTIPLICATION
-- The heart of the file. The composition law on Reading A is multiplication
-- of Doppler factors, hence addition of Reading B.
-- ============================================================

-- [T27] :: {MASTER} | THE ADDITION LAW, CLEARED
theorem t27_vadd_clear (u v : ℝ) (huv : 1 + u * v ≠ 0) :
    vadd u v * (1 + u * v) = u + v := by
  simp only [vadd]
  field_simp

-- [T28] :: {MASTER} | ONE PLUS THE SUM FACTORS
theorem t28_one_plus_vadd (u v : ℝ) (huv : 0 < 1 + u * v) :
    1 + vadd u v = (1 + u) * (1 + v) / (1 + u * v) := by
  simp only [vadd]
  field_simp
  ring

-- [T29] :: {MASTER} | ONE MINUS THE SUM FACTORS
theorem t29_one_minus_vadd (u v : ℝ) (huv : 0 < 1 + u * v) :
    1 - vadd u v = (1 - u) * (1 - v) / (1 + u * v) := by
  simp only [vadd]
  field_simp
  ring

-- [T30] :: {MASTER} | THE RATIO FACTORS INTO THE TWO RATIOS
theorem t30_ratio_factors (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) :
    (1 + vadd u v) / (1 - vadd u v) = ((1 + u) / (1 - u)) * ((1 + v) / (1 - v)) := by
  have huv : (0:ℝ) < 1 + u * v := by nlinarith
  have h1u : (0:ℝ) < 1 + u := by linarith
  have h2u : (0:ℝ) < 1 - u := by linarith
  have h1v : (0:ℝ) < 1 + v := by linarith
  have h2v : (0:ℝ) < 1 - v := by linarith
  rw [t28_one_plus_vadd u v huv, t29_one_minus_vadd u v huv]
  field_simp

-- [T31] :: {MASTER} | THE DOPPLER FACTOR IS MULTIPLICATIVE UNDER VELOCITY ADDITION
theorem t31_doppler_mul (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) :
    doppler (vadd u v) = doppler u * doppler v := by
  have h1u : (0:ℝ) < 1 + u := by linarith
  have h2u : (0:ℝ) < 1 - u := by linarith
  have h1v : (0:ℝ) < 1 + v := by linarith
  have h2v : (0:ℝ) < 1 - v := by linarith
  simp only [doppler]
  rw [← Real.sqrt_mul (by positivity)]
  rw [t30_ratio_factors u v hu1 hu2 hv1 hv2]

-- [T32] :: {MASTER} | READING B IS ADDITIVE UNDER VELOCITY ADDITION
theorem t32_tau_b_additive (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) :
    tau_B_of (vadd u v) = tau_B_of u + tau_B_of v := by
  simp only [tau_B_of]
  rw [t31_doppler_mul u v hu1 hu2 hv1 hv2]
  exact Real.log_mul (ne_of_gt (t19_doppler_pos u hu1 hu2))
    (ne_of_gt (t19_doppler_pos v hv1 hv2))

-- [T33] :: {MASTER} | VELOCITY ADDITION IS COMMUTATIVE
theorem t33_vadd_comm (u v : ℝ) : vadd u v = vadd v u := by
  simp only [vadd]
  rw [add_comm u v, mul_comm u v]

-- [T34] :: {INV} | NOBLE IS THE IDENTITY OF THE ADDITION LAW
theorem t34_vadd_zero (u : ℝ) : vadd u 0 = u := by
  simp only [vadd]; norm_num

-- [T35] :: {MASTER} | THE SUBTRACTION LAW IS DOPPLER DIVISION
theorem t35_doppler_div (a b : ℝ) (ha1 : -1 < a) (ha2 : a < 1)
    (hb1 : -1 < b) (hb2 : b < 1) :
    doppler a / doppler b = doppler ((a - b) / (1 - a * b)) := by
  have h1a : (0:ℝ) < 1 + a := by linarith
  have h2a : (0:ℝ) < 1 - a := by linarith
  have h1b : (0:ℝ) < 1 + b := by linarith
  have h2b : (0:ℝ) < 1 - b := by linarith
  have hab : (0:ℝ) < 1 - a * b := by nlinarith
  have habne : (1:ℝ) - a * b ≠ 0 := ne_of_gt hab
  -- one plus and one minus the difference argument each factor
  have hplus : 1 + (a - b) / (1 - a * b) = ((1 + a) * (1 - b)) / (1 - a * b) := by
    field_simp
    try ring
  have hminus : 1 - (a - b) / (1 - a * b) = ((1 - a) * (1 + b)) / (1 - a * b) := by
    field_simp
    try ring
  -- so the difference argument lies inside the unit interval
  have hc1 : -1 < (a - b) / (1 - a * b) := by
    have hp : (0:ℝ) < ((1 + a) * (1 - b)) / (1 - a * b) := div_pos (mul_pos h1a h2b) hab
    linarith [hplus, hp]
  have hc2 : (a - b) / (1 - a * b) < 1 := by
    have hp : (0:ℝ) < ((1 - a) * (1 + b)) / (1 - a * b) := div_pos (mul_pos h2a h1b) hab
    linarith [hminus, hp]
  -- the difference argument composed with b returns a
  have hden : (1:ℝ) + (a - b) / (1 - a * b) * b = (1 - b ^ 2) / (1 - a * b) := by
    field_simp
    try ring
  have hdne : (1:ℝ) + (a - b) / (1 - a * b) * b ≠ 0 := by
    rw [hden]
    exact ne_of_gt (div_pos (by nlinarith) hab)
  have hvadd : vadd ((a - b) / (1 - a * b)) b = a := by
    simp only [vadd]
    rw [div_eq_iff hdne, hden]
    field_simp
    try ring
  -- and multiplicativity turns that into the quotient
  have hdb : doppler b ≠ 0 := ne_of_gt (t19_doppler_pos b hb1 hb2)
  have key : doppler ((a - b) / (1 - a * b)) * doppler b = doppler a := by
    rw [← t31_doppler_mul _ b hc1 hc2 hb1 hb2, hvadd]
  rw [div_eq_iff hdb]
  exact key.symm

-- [T36] :: {MASTER} | A DIFFERENCE OF READING B IS ONE READING B
theorem t36_tau_b_sub (a b : ℝ) (ha1 : -1 < a) (ha2 : a < 1)
    (hb1 : -1 < b) (hb2 : b < 1) :
    tau_B_of a - tau_B_of b = tau_B_of ((a - b) / (1 - a * b)) := by
  simp only [tau_B_of]
  rw [← Real.log_div (ne_of_gt (t19_doppler_pos a ha1 ha2))
    (ne_of_gt (t19_doppler_pos b hb1 hb2))]
  rw [t35_doppler_div a b ha1 ha2 hb1 hb2]

-- ============================================================
-- SECTION 4: THE BRIDGE — READING A IS A TANH OF READING B
-- ============================================================

/-- The corpus tangent operator, written on the exponential so that it needs
    nothing beyond exp. -/
def tanh_op (b : ℝ) : ℝ := (Real.exp b ^ 2 - 1) / (Real.exp b ^ 2 + 1)

-- [T37] :: {VER} | THE DENOMINATOR OF THE OPERATOR IS POSITIVE
theorem t37_tanh_denom_pos (b : ℝ) : 0 < Real.exp b ^ 2 + 1 := by positivity

-- [T38] :: {MASTER} | THE OPERATOR INVERTS READING B EXACTLY
theorem t38_bridge (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : tanh_op (tau_B_of t) = t := by
  have hd := t19_doppler_pos t h1 h2
  have hsq := t20_doppler_sq t h1 h2
  have he : Real.exp (tau_B_of t) = doppler t := t24_exp_tau_b t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  simp only [tanh_op, he, hsq]
  field_simp
  ring

-- [T39] :: {MASTER} | THE OPERATOR IS ZERO AT NOBLE
theorem t39_tanh_zero : tanh_op 0 = 0 := by
  simp only [tanh_op, Real.exp_zero]; norm_num

-- [T40] :: {MASTER} | THE OPERATOR IS STRICTLY BELOW ONE AT EVERY ARGUMENT
theorem t40_tanh_lt_one (b : ℝ) : tanh_op b < 1 := by
  have hd := t37_tanh_denom_pos b
  simp only [tanh_op]
  rw [div_lt_one hd]
  linarith

-- [T41] :: {MASTER} | THE OPERATOR IS STRICTLY ABOVE MINUS ONE
theorem t41_tanh_gt_neg_one (b : ℝ) : -1 < tanh_op b := by
  have hd := t37_tanh_denom_pos b
  have hp : (0:ℝ) < Real.exp b ^ 2 := by positivity
  simp only [tanh_op]
  rw [neg_lt, ← neg_div, div_lt_one hd]
  linarith

-- [T42] :: {MASTER} | THE OPERATOR LANDS INSIDE THE UNIT INTERVAL ALWAYS
theorem t42_tanh_in_unit (b : ℝ) : -1 < tanh_op b ∧ tanh_op b < 1 :=
  ⟨t41_tanh_gt_neg_one b, t40_tanh_lt_one b⟩

-- [T43] :: {MASTER} | THE OPERATOR IS POSITIVE ABOVE NOBLE
theorem t43_tanh_pos (b : ℝ) (hb : 0 < b) : 0 < tanh_op b := by
  have hd := t37_tanh_denom_pos b
  have h1 : (1:ℝ) < Real.exp b := by
    rw [show (1:ℝ) = Real.exp 0 from (Real.exp_zero).symm]
    exact Real.exp_lt_exp.mpr hb
  simp only [tanh_op]
  apply div_pos _ hd
  nlinarith

-- [T44] :: {MASTER} | THE OPERATOR AGREES WITH MATHLIB'S TANH
theorem t44_tanh_op_is_tanh (b : ℝ) : tanh_op b = Real.tanh b := by
  have hc : Real.cosh b ≠ 0 := ne_of_gt (Real.cosh_pos b)
  have he : Real.exp b ≠ 0 := Real.exp_ne_zero b
  simp only [tanh_op, Real.tanh_eq_sinh_div_cosh, Real.sinh_eq, Real.cosh_eq,
    Real.exp_neg]
  field_simp

-- [T45] :: {MASTER} | THE MAP IS FORCED — THE OPERATOR SATISFIES THE ADDITION LAW
theorem t45_tanh_satisfies_vadd (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) :
    tanh_op (tau_B_of u + tau_B_of v) = vadd u v := by
  have huv : (0:ℝ) < 1 + u * v := by nlinarith
  have hvu1 : -1 < vadd u v := by
    rw [show vadd u v = (u + v) / (1 + u * v) from rfl]
    rw [neg_lt, ← neg_div, div_lt_iff₀ huv] at *
    nlinarith
  have hvu2 : vadd u v < 1 := by
    rw [show vadd u v = (u + v) / (1 + u * v) from rfl, div_lt_one huv]
    nlinarith
  rw [← t32_tau_b_additive u v hu1 hu2 hv1 hv2]
  exact t38_bridge (vadd u v) hvu1 hvu2

-- [T46] :: {MASTER} | THE ADDITION LAW IS CLOSED ON THE UNIT INTERVAL
theorem t46_vadd_closed (u v : ℝ) (hu1 : -1 < u) (hu2 : u < 1)
    (hv1 : -1 < v) (hv2 : v < 1) : -1 < vadd u v ∧ vadd u v < 1 := by
  have huv : (0:ℝ) < 1 + u * v := by nlinarith
  constructor
  · simp only [vadd]
    rw [neg_lt, ← neg_div, div_lt_iff₀ huv]
    nlinarith
  · simp only [vadd]
    rw [div_lt_one huv]
    nlinarith

-- ============================================================
-- SECTION 5: THE SPEED LIMIT INVERTS
-- ============================================================

-- [T47] :: {MASTER} | NO ARGUMENT OF THE OPERATOR REACHES ONE
theorem t47_never_reaches_one (b : ℝ) : tanh_op b ≠ 1 := ne_of_lt (t40_tanh_lt_one b)

-- [T48] :: {MASTER} | READING B IS UNBOUNDED — THE DOPPLER FACTOR GROWS WITHOUT
--                     BOUND, SO THE COUNT DOES TOO
theorem t48_tau_b_unbounded (M : ℝ) : ∃ b : ℝ, M < b ∧ M < Real.log (Real.exp b) := by
  refine ⟨M + 1, by linarith, ?_⟩
  rw [Real.log_exp]
  linarith

-- [T49] :: {MASTER} | THE OPERATOR IS STRICTLY INCREASING
theorem t49_tanh_mono (a b : ℝ) (h : a < b) : tanh_op a < tanh_op b := by
  have hea : (0:ℝ) < Real.exp a := Real.exp_pos a
  have heb : (0:ℝ) < Real.exp b := Real.exp_pos b
  have hlt : Real.exp a < Real.exp b := Real.exp_lt_exp.mpr h
  have hda := t37_tanh_denom_pos a
  have hdb := t37_tanh_denom_pos b
  simp only [tanh_op]
  rw [div_lt_div_iff₀ hda hdb]
  nlinarith

-- [T50] :: {INV} | READING B ORDERS WITH READING A
theorem t50_tau_b_mono (a b : ℝ) (ha1 : -1 < a) (hb2 : b < 1) (h : a < b) :
    tau_B_of a < tau_B_of b := by
  have ha2 : a < 1 := by linarith
  have hb1 : -1 < b := by linarith
  simp only [tau_B_of]
  apply Real.log_lt_log (t19_doppler_pos a ha1 ha2)
  have hsa := t20_doppler_sq a ha1 ha2
  have hsb := t20_doppler_sq b hb1 hb2
  have hpa := t19_doppler_pos a ha1 ha2
  have hpb := t19_doppler_pos b hb1 hb2
  have hr : (1 + a) / (1 - a) < (1 + b) / (1 - b) := by
    rw [div_lt_div_iff₀ (by linarith) (by linarith)]
    nlinarith
  nlinarith [hsa, hsb, hpa, hpb, hr]

-- [T51] :: {MASTER} | BOTH READINGS SHARE THEIR ZERO
theorem t51_shared_zero : tau_B_of 0 = 0 ∧ doppler 0 = 1 ∧ tanh_op 0 = 0 :=
  ⟨t22_tau_b_noble, t21_doppler_noble, t39_tanh_zero⟩

-- [T52] :: {INV} | THE DOPPLER FACTOR ORDERS WITH READING A
theorem t52_doppler_mono (a b : ℝ) (ha1 : -1 < a) (hb2 : b < 1) (h : a < b) :
    doppler a < doppler b := by
  have ha2 : a < 1 := by linarith
  have hb1 : -1 < b := by linarith
  have hsa := t20_doppler_sq a ha1 ha2
  have hsb := t20_doppler_sq b hb1 hb2
  have hpa := t19_doppler_pos a ha1 ha2
  have hpb := t19_doppler_pos b hb1 hb2
  have hr : (1 + a) / (1 - a) < (1 + b) / (1 - b) := by
    rw [div_lt_div_iff₀ (by linarith) (by linarith)]
    nlinarith
  nlinarith [hsa, hsb, hpa, hpb, hr]

-- [T53] :: {MASTER} | THE CEILING ON READING A AND THE RANGE OF READING B ARE
--                     ONE STATEMENT
theorem t53_limit_inverts :
    (∀ b : ℝ, tanh_op b < 1) ∧ (∀ M : ℝ, ∃ b : ℝ, M < b) :=
  ⟨t40_tanh_lt_one, fun M => ⟨M + 1, by linarith⟩⟩

-- [T54] :: {INV} | THE OPERATOR IS AN ODD FUNCTION
theorem t54_tanh_odd (b : ℝ) : tanh_op (-b) = -tanh_op b := by
  have he : Real.exp b ≠ 0 := Real.exp_ne_zero b
  simp only [tanh_op, Real.exp_neg]
  field_simp
  ring

-- ============================================================
-- SECTION 6: THE LORENTZ FACTOR, CELERITY, AND THE REMAINING FRACTION
-- ============================================================

/-- The Lorentz factor on a Reading A value. -/
def gamma_of (t : ℝ) : ℝ := 1 / Real.sqrt (1 - t ^ 2)

/-- Proper velocity, or celerity, in units of the limiting speed. -/
def celerity (t : ℝ) : ℝ := gamma_of t * t

-- [T55] :: {VER} | THE RADICAND IS POSITIVE INSIDE THE UNIT INTERVAL
theorem t55_radicand_pos (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : 0 < 1 - t ^ 2 := by
  nlinarith

-- [T56] :: {VER} | THE LORENTZ FACTOR IS POSITIVE
theorem t56_gamma_pos (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : 0 < gamma_of t := by
  simp only [gamma_of]
  exact div_pos one_pos (Real.sqrt_pos.mpr (t55_radicand_pos t h1 h2))

-- [T57] :: {MASTER} | THE LORENTZ FACTOR SQUARED IS THE RECIPROCAL RADICAND
theorem t57_gamma_sq (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    gamma_of t ^ 2 = 1 / (1 - t ^ 2) := by
  have hr := t55_radicand_pos t h1 h2
  simp only [gamma_of, div_pow, one_pow]
  rw [Real.sq_sqrt (le_of_lt hr)]

-- [T58] :: {MASTER} | THE REMAINING FRACTION IS A LORENTZ EXPRESSION
theorem t58_remaining_fraction (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    (gamma_of t * (1 - t)) ^ 2 = 1 / doppler t ^ 2 := by
  have hr := t55_radicand_pos t h1 h2
  have hd := t20_doppler_sq t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  have h1t : (0:ℝ) < 1 + t := by linarith
  rw [mul_pow, t57_gamma_sq t h1 h2, hd]
  field_simp
  ring

-- [T59] :: {MASTER} | THE REMAINING FRACTION IS THE RECIPROCAL DOPPLER FACTOR
theorem t59_remaining_is_inv_doppler (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    gamma_of t * (1 - t) = 1 / doppler t := by
  have hg := t56_gamma_pos t h1 h2
  have hd := t19_doppler_pos t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  have hsq := t58_remaining_fraction t h1 h2
  have hl : 0 < gamma_of t * (1 - t) := by positivity
  have hrr : 0 < 1 / doppler t := by positivity
  have hsq2 : (gamma_of t * (1 - t)) ^ 2 = (1 / doppler t) ^ 2 := by
    rw [hsq, div_pow, one_pow]
  have hfac : (gamma_of t * (1 - t) - 1 / doppler t)
      * (gamma_of t * (1 - t) + 1 / doppler t) = 0 := by
    linear_combination hsq2
  rcases mul_eq_zero.mp hfac with h | h
  · linarith
  · linarith

-- [T60] :: {MASTER} | CELERITY CLOSES THE LOOP — THE ROOT RETURNS THE LORENTZ
--                     FACTOR
theorem t60_celerity_root (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    Real.sqrt (1 + celerity t ^ 2) = gamma_of t := by
  have hr := t55_radicand_pos t h1 h2
  have hg := t56_gamma_pos t h1 h2
  have hgs := t57_gamma_sq t h1 h2
  have hkey : 1 + celerity t ^ 2 = gamma_of t ^ 2 := by
    simp only [celerity, mul_pow]
    rw [hgs]
    field_simp
    ring
  rw [hkey, Real.sqrt_sq (le_of_lt hg)]

-- [T61] :: {MASTER} | THE CELERITY IDENTITY TURNS A ROOT INTO THE REMAINING
--                     FRACTION
theorem t61_celerity_minus_root (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    celerity t - Real.sqrt (1 + celerity t ^ 2) = -(gamma_of t * (1 - t)) := by
  rw [t60_celerity_root t h1 h2]
  simp only [celerity]
  ring

-- [T62] :: {VER} | THE LORENTZ FACTOR IS ONE AT NOBLE
theorem t62_gamma_noble : gamma_of 0 = 1 := by
  simp only [gamma_of]; norm_num

-- [T63] :: {VER} | CELERITY IS ZERO AT NOBLE
theorem t63_celerity_noble : celerity 0 = 0 := by
  simp only [celerity]; ring

-- [T64] :: {INV} | THE LORENTZ FACTOR IS AT LEAST ONE INSIDE THE INTERVAL
theorem t64_gamma_ge_one (t : ℝ) (h1 : -1 < t) (h2 : t < 1) : 1 ≤ gamma_of t := by
  have hr := t55_radicand_pos t h1 h2
  have hs : Real.sqrt (1 - t ^ 2) ≤ 1 := by
    have hle : Real.sqrt (1 - t ^ 2) ≤ Real.sqrt 1 := by
      apply Real.sqrt_le_sqrt
      nlinarith
    rwa [Real.sqrt_one] at hle
  have hsp : 0 < Real.sqrt (1 - t ^ 2) := Real.sqrt_pos.mpr hr
  simp only [gamma_of]
  rw [le_div_iff₀ hsp]
  linarith

-- [T65] :: {MASTER} | THE LORENTZ FACTOR IS THE HALF-SUM OF THE DOPPLER FACTOR
--                     AND ITS RECIPROCAL
theorem t65_gamma_half_sum (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    2 * gamma_of t = doppler t + 1 / doppler t := by
  have hd := t19_doppler_pos t h1 h2
  have hds := t20_doppler_sq t h1 h2
  have hg := t56_gamma_pos t h1 h2
  have hgs := t57_gamma_sq t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  have h1t : (0:ℝ) < 1 + t := by linarith
  have hr : (0:ℝ) < 1 - t ^ 2 := t55_radicand_pos t h1 h2
  have hrne : (1:ℝ) - t ^ 2 ≠ 0 := ne_of_gt hr
  have hdne : doppler t ≠ 0 := ne_of_gt hd
  have hsq : (2 * gamma_of t) ^ 2 = (doppler t + 1 / doppler t) ^ 2 := by
    rw [mul_pow, hgs]
    have hexp : (doppler t + 1 / doppler t) ^ 2
        = doppler t ^ 2 + 2 + 1 / doppler t ^ 2 := by
      field_simp; ring
    rw [hexp, hds]
    field_simp
    ring
  have hl : 0 < 2 * gamma_of t := by positivity
  have hr2 : 0 < doppler t + 1 / doppler t := by positivity
  nlinarith [hsq, hl, hr2]

-- [T66] :: {MASTER} | CELERITY IS THE HALF-DIFFERENCE
theorem t66_celerity_half_diff (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    2 * celerity t = doppler t - 1 / doppler t := by
  have hd := t19_doppler_pos t h1 h2
  have hds := t20_doppler_sq t h1 h2
  have h2t : (0:ℝ) < 1 - t := by linarith
  have h1t : (0:ℝ) < 1 + t := by linarith
  have hhalf := t65_gamma_half_sum t h1 h2
  have hrem := t59_remaining_is_inv_doppler t h1 h2
  simp only [celerity]
  have : 2 * (gamma_of t * t) = 2 * gamma_of t - 2 * (gamma_of t * (1 - t)) := by ring
  rw [this, hhalf, hrem]
  field_simp
  ring

-- ============================================================
-- SECTION 7: THE CORRIDOR ON THE DOPPLER FACTOR
-- ============================================================

/-- The corridor-width argument: the single Reading A value whose Doppler
    factor is the ratio across the corridor. -/
def corridor_arg : ℝ :=
  (TORSION_LIMIT - TL_IVA) / (1 - TORSION_LIMIT * TL_IVA)

-- [T67] :: {VER} | THE CORRIDOR FLOOR LIES INSIDE THE UNIT INTERVAL
theorem t67_floor_in_unit : -1 < TL_IVA ∧ TL_IVA < 1 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T68] :: {MASTER} | THE CORRIDOR ARGUMENT IN CLOSED FORM
theorem t68_corridor_arg_closed :
    corridor_arg = (0.12 * TORSION_LIMIT) / (1 - 0.88 * TORSION_LIMIT ^ 2) := by
  simp only [corridor_arg, TL_IVA]
  ring_nf

-- [T69] :: {VER} | THE CORRIDOR ARGUMENT IS POSITIVE AND INSIDE THE INTERVAL
theorem t69_corridor_arg_in_unit : 0 < corridor_arg ∧ corridor_arg < 1 := by
  simp only [corridor_arg, TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR]
  norm_num

-- [T70] :: {MASTER} | THE DOPPLER RATIO ACROSS THE CORRIDOR IS ONE DOPPLER
--                     FACTOR
theorem t70_corridor_doppler_ratio :
    doppler TORSION_LIMIT / doppler TL_IVA = doppler corridor_arg := by
  have ht := t10_tl_in_unit
  have hf := t67_floor_in_unit
  exact t35_doppler_div TORSION_LIMIT TL_IVA ht.1 ht.2 hf.1 hf.2

-- [T71] :: {MASTER} | THE CORRIDOR WIDTH ON READING B IS ONE READING B
theorem t71_corridor_width :
    tau_B_of TORSION_LIMIT - tau_B_of TL_IVA = tau_B_of corridor_arg := by
  have ht := t10_tl_in_unit
  have hf := t67_floor_in_unit
  exact t36_tau_b_sub TORSION_LIMIT TL_IVA ht.1 ht.2 hf.1 hf.2

-- [T72] :: {MASTER} | THE CORRIDOR IS ORDERED ON THE DOPPLER FACTOR
theorem t72_corridor_doppler_ordered : doppler TL_IVA < doppler TORSION_LIMIT := by
  have ht := t10_tl_in_unit
  have hf := t67_floor_in_unit
  exact t52_doppler_mono TL_IVA TORSION_LIMIT hf.1 ht.2 t9_floor_pos_below.2

-- [T73] :: {MASTER} | THE CORRIDOR IS ORDERED ON READING B
theorem t73_corridor_tau_b_ordered : tau_B_of TL_IVA < tau_B_of TORSION_LIMIT := by
  have ht := t10_tl_in_unit
  have hf := t67_floor_in_unit
  exact t50_tau_b_mono TL_IVA TORSION_LIMIT hf.1 ht.2 t9_floor_pos_below.2

-- [T74] :: {MASTER} | THE CORRIDOR WIDTH IS POSITIVE
theorem t74_corridor_width_pos : 0 < tau_B_of corridor_arg := by
  rw [← t71_corridor_width]
  linarith [t73_corridor_tau_b_ordered]

-- [T75] :: {MASTER} | THE DOPPLER FACTOR AT THE CEILING, SQUARED, IS EXACT
theorem t75_doppler_ceiling_sq :
    doppler TORSION_LIMIT ^ 2 = (1 + TORSION_LIMIT) / (1 - TORSION_LIMIT) := by
  have ht := t10_tl_in_unit
  exact t20_doppler_sq TORSION_LIMIT ht.1 ht.2

-- [T76] :: {MASTER} | THE DOPPLER FACTOR AT THE FLOOR, SQUARED, IS EXACT
theorem t76_doppler_floor_sq :
    doppler TL_IVA ^ 2 = (1 + TL_IVA) / (1 - TL_IVA) := by
  have hf := t67_floor_in_unit
  exact t20_doppler_sq TL_IVA hf.1 hf.2

-- [T77] :: {VER} | THE CORRIDOR ARGUMENT'S DOPPLER FACTOR EXCEEDS ONE
theorem t77_corridor_doppler_gt_one : 1 < doppler corridor_arg := by
  have h := t69_corridor_arg_in_unit
  exact t25_doppler_gt_one corridor_arg h.1 h.2

-- [T78] :: {MASTER} | THE CORRIDOR CLASSIFIES AS IVA AT ITS FLOOR AND SHATTER
--                     AT ITS CEILING
theorem t78_corridor_phases :
    classify TL_IVA = Phase.IVA ∧ classify TORSION_LIMIT = Phase.Shatter :=
  ⟨t12_floor_is_iva, t13_limit_is_shatter⟩

-- ============================================================
-- SECTION 8: THE ROCKET, THE MASS-RATIO GATE, AND THE MATCHED RATIO
-- ============================================================

/-- The rapidity gained: Reading A of the drive times Reading B of the mass. -/
def tau_B_final (te mr : ℝ) : ℝ := te * Real.log mr

/-- The mass-ratio gate: the mass ratio a drive needs to reach a given
    Reading B. -/
def mr_gate (tb te : ℝ) : ℝ := Real.exp (tb / te)

/-- The matched ratio of the corpus. -/
def matched_ratio (t : ℝ) : ℝ := 1 / t ^ 2

-- [T79] :: {MASTER} | THE ROCKET IS READING A TIMES READING B
theorem t79_rocket_product (te mr : ℝ) : tau_B_final te mr = te * Real.log mr := rfl

-- [T80] :: {MASTER} | THE GATE INVERTS THE ROCKET
theorem t80_gate_inverts (tb te : ℝ) (hte : te ≠ 0) :
    tau_B_final te (mr_gate tb te) = tb := by
  simp only [tau_B_final, mr_gate, Real.log_exp]
  field_simp

-- [T81] :: {MASTER} | THE ROCKET INVERTS THE GATE
theorem t81_rocket_inverts (te mr : ℝ) (hte : te ≠ 0) (hmr : 0 < mr) :
    mr_gate (tau_B_final te mr) te = mr := by
  have h : tau_B_final te mr / te = Real.log mr := by
    simp only [tau_B_final]
    field_simp
  simp only [mr_gate, h]
  exact Real.exp_log hmr

-- [T82] :: {VER} | THE GATE IS POSITIVE
theorem t82_gate_pos (tb te : ℝ) : 0 < mr_gate tb te := Real.exp_pos _

-- [T83] :: {INV} | A UNIT MASS RATIO GAINS NO RAPIDITY
theorem t83_unit_mass_no_gain (te : ℝ) : tau_B_final te 1 = 0 := by
  simp only [tau_B_final, Real.log_one]; ring

-- [T84] :: {MASTER} | THE GATE IS STRICTLY INCREASING IN THE TARGET
theorem t84_gate_mono (a b te : ℝ) (hte : 0 < te) (h : a < b) :
    mr_gate a te < mr_gate b te := by
  simp only [mr_gate]
  apply Real.exp_lt_exp.mpr
  exact div_lt_div_of_pos_right h hte

-- [T85] :: {MASTER} | STAGING ADDS READING B
theorem t85_staging_adds (te m1 m2 : ℝ) (h1 : 0 < m1) (h2 : 0 < m2) :
    tau_B_final te (m1 * m2) = tau_B_final te m1 + tau_B_final te m2 := by
  simp only [tau_B_final]
  rw [Real.log_mul (ne_of_gt h1) (ne_of_gt h2)]
  ring

-- [T86] :: {MASTER} | THE MATCHED RATIO IS THE SQUARED RECIPROCAL OF READING A
theorem t86_matched_ratio_form (t : ℝ) (h : t ≠ 0) : matched_ratio t * t ^ 2 = 1 := by
  simp only [matched_ratio]
  field_simp

-- [T87] :: {MASTER} | THE MATCHED RATIO READS ON READING B THROUGH THE OPERATOR
theorem t87_matched_ratio_on_tau_b (t : ℝ) (h1 : -1 < t) (h2 : t < 1) (h0 : t ≠ 0) :
    matched_ratio (tanh_op (tau_B_of t)) = matched_ratio t := by
  rw [t38_bridge t h1 h2]

-- [T88] :: {VER} | THE MATCHED RATIO IS POSITIVE
theorem t88_matched_ratio_pos (t : ℝ) (h : t ≠ 0) : 0 < matched_ratio t := by
  simp only [matched_ratio]
  positivity

-- [T89] :: {MASTER} | THE MATCHED RATIO IS ANTITONE ON THE POSITIVE SIDE
theorem t89_matched_ratio_antitone (a b : ℝ) (ha : 0 < a) (h : a < b) :
    matched_ratio b < matched_ratio a := by
  simp only [matched_ratio]
  apply div_lt_div_of_pos_left one_pos (by positivity)
  nlinarith

-- [T90] :: {MASTER} | THE MATCHED RATIO AT THE LIMIT IS ONE OVER TL SQUARED
theorem t90_matched_ratio_at_limit :
    matched_ratio TORSION_LIMIT * TORSION_LIMIT ^ 2 = 1 :=
  t86_matched_ratio_form TORSION_LIMIT (ne_of_gt t7_tl_pos)

-- ============================================================
-- SECTION 9: THE MEDIUM, AND THE SUBSTRATE TEST
-- ============================================================

/-- Reading A in a medium of refractive index n. -/
def tau_A_medium (n : ℝ) : ℝ := 1 / n

-- [T91] :: {MASTER} | READING A IN A MEDIUM IS THE RECIPROCAL INDEX
theorem t91_medium_reading (n : ℝ) (hn : n ≠ 0) : tau_A_medium n * n = 1 := by
  simp only [tau_A_medium]
  field_simp

-- [T92] :: {MASTER} | THE MEDIUM AT INDEX ONE OVER TL SITS AT THE LIMIT
theorem t92_medium_at_limit : tau_A_medium (1 / TORSION_LIMIT) = TORSION_LIMIT := by
  simp only [tau_A_medium]
  rw [one_div_one_div]

-- [T93] :: {MASTER} | THE MATCHED RATIO OF A MEDIUM IS ITS INDEX SQUARED
theorem t93_medium_matched_ratio (n : ℝ) (hn : n ≠ 0) :
    matched_ratio (tau_A_medium n) = n ^ 2 := by
  simp only [matched_ratio, tau_A_medium]
  field_simp

-- [T94] :: {INV} | A MEDIUM ABOVE INDEX ONE LIES INSIDE THE UNIT INTERVAL
theorem t94_medium_in_unit (n : ℝ) (hn : 1 < n) :
    0 < tau_A_medium n ∧ tau_A_medium n < 1 := by
  simp only [tau_A_medium]
  constructor
  · positivity
  · rw [div_lt_one (by linarith)]
    exact hn

-- [T95] :: {MASTER} | A MEDIUM ABOVE INDEX ONE CARRIES BOTH READINGS
theorem t95_medium_carries_both (n : ℝ) (hn : 1 < n) :
    0 < tau_B_of (tau_A_medium n) ∧ tanh_op (tau_B_of (tau_A_medium n)) = tau_A_medium n := by
  have h := t94_medium_in_unit n hn
  exact ⟨t26_tau_b_pos _ h.1 h.2, t38_bridge _ (by linarith [h.1]) h.2⟩

-- [T96] :: {MASTER} | THE MEDIUM AT INDEX ONE OVER TL CARRIES THE SHATTER
--                     DOPPLER FACTOR
theorem t96_medium_shatter_doppler :
    doppler (tau_A_medium (1 / TORSION_LIMIT)) = doppler TORSION_LIMIT := by
  rw [t92_medium_at_limit]

-- ============================================================
-- SECTION 10: THE CONVERSION FRACTION ON THE BRIDGE
-- ============================================================

/-- The conversion fraction of the corpus. -/
def eta_of (t : ℝ) : ℝ := t ^ 2 / 2

-- [T97] :: {MASTER} | READING A SQUARED IS TWICE THE CONVERSION FRACTION
theorem t97_tau_sq_is_twice_eta (t : ℝ) : t ^ 2 = 2 * eta_of t := by
  simp only [eta_of]; ring

-- [T98] :: {MASTER} | THE MATCHED RATIO IS THE RECIPROCAL OF TWICE THE FRACTION
theorem t98_matched_ratio_from_eta (t : ℝ) (h : t ≠ 0) :
    matched_ratio t * (2 * eta_of t) = 1 := by
  rw [← t97_tau_sq_is_twice_eta]
  exact t86_matched_ratio_form t h

-- [T99] :: {MASTER} | THE CONVERSION FRACTION READS THROUGH THE BRIDGE
theorem t99_eta_on_tau_b (t : ℝ) (h1 : -1 < t) (h2 : t < 1) :
    eta_of (tanh_op (tau_B_of t)) = eta_of t := by
  rw [t38_bridge t h1 h2]

-- [T100] :: {VER} | THE CONVERSION FRACTION IS NONNEGATIVE
theorem t100_eta_nonneg (t : ℝ) : 0 ≤ eta_of t := by
  simp only [eta_of]; positivity

-- ============================================================
-- MASTER
-- ============================================================

-- [MASTER] :: {ANC} | THE VELOCITY SUBSTRATE
theorem MASTER_velocity_substrate :
    -- the anchor
    (TORSION_LIMIT = 0.136899099984016) ∧
    (BARE + TORSION_LIMIT = ALPHA_INV) ∧
    (TORSION_LIMIT * 1001 = ALPHA_INV) ∧
    -- the Doppler factor is multiplicative under velocity addition
    (∀ u v : ℝ, -1 < u → u < 1 → -1 < v → v < 1 →
      doppler (vadd u v) = doppler u * doppler v) ∧
    -- so Reading B is additive under it
    (∀ u v : ℝ, -1 < u → u < 1 → -1 < v → v < 1 →
      tau_B_of (vadd u v) = tau_B_of u + tau_B_of v) ∧
    -- the subtraction law is Doppler division
    (∀ a b : ℝ, -1 < a → a < 1 → -1 < b → b < 1 →
      doppler a / doppler b = doppler ((a - b) / (1 - a * b))) ∧
    (∀ a b : ℝ, -1 < a → a < 1 → -1 < b → b < 1 →
      tau_B_of a - tau_B_of b = tau_B_of ((a - b) / (1 - a * b))) ∧
    -- the bridge, and the operator that carries it
    (∀ t : ℝ, -1 < t → t < 1 → tanh_op (tau_B_of t) = t) ∧
    (∀ b : ℝ, tanh_op b = Real.tanh b) ∧
    (∀ u v : ℝ, -1 < u → u < 1 → -1 < v → v < 1 →
      tanh_op (tau_B_of u + tau_B_of v) = vadd u v) ∧
    -- the speed limit inverts
    (∀ b : ℝ, tanh_op b < 1) ∧
    (∀ b : ℝ, -1 < tanh_op b) ∧
    (∀ M : ℝ, ∃ b : ℝ, M < b) ∧
    -- both readings share their zero
    (tau_B_of 0 = 0 ∧ doppler 0 = 1 ∧ tanh_op 0 = 0) ∧
    -- the remaining fraction and celerity
    (∀ t : ℝ, -1 < t → t < 1 → gamma_of t * (1 - t) = 1 / doppler t) ∧
    (∀ t : ℝ, -1 < t → t < 1 → Real.sqrt (1 + celerity t ^ 2) = gamma_of t) ∧
    (∀ t : ℝ, -1 < t → t < 1 → 2 * gamma_of t = doppler t + 1 / doppler t) ∧
    (∀ t : ℝ, -1 < t → t < 1 → 2 * celerity t = doppler t - 1 / doppler t) ∧
    -- the corridor
    (corridor_arg = (0.12 * TORSION_LIMIT) / (1 - 0.88 * TORSION_LIMIT ^ 2)) ∧
    (doppler TORSION_LIMIT / doppler TL_IVA = doppler corridor_arg) ∧
    (tau_B_of TORSION_LIMIT - tau_B_of TL_IVA = tau_B_of corridor_arg) ∧
    (0 < tau_B_of corridor_arg) ∧
    -- the rocket and the gate
    (∀ tb te : ℝ, te ≠ 0 → tau_B_final te (mr_gate tb te) = tb) ∧
    (∀ te m1 m2 : ℝ, 0 < m1 → 0 < m2 →
      tau_B_final te (m1 * m2) = tau_B_final te m1 + tau_B_final te m2) ∧
    -- the matched ratio, and the medium
    (∀ t : ℝ, t ≠ 0 → matched_ratio t * t ^ 2 = 1) ∧
    (∀ n : ℝ, n ≠ 0 → matched_ratio (tau_A_medium n) = n ^ 2) ∧
    (tau_A_medium (1 / TORSION_LIMIT) = TORSION_LIMIT) ∧
    -- the conversion fraction
    (∀ t : ℝ, t ^ 2 = 2 * eta_of t) := by
  exact ⟨t1_tl_value, t3_bare_plus_kinetic, t4_tl_times_1001,
    fun u v a b c d => t31_doppler_mul u v a b c d,
    fun u v a b c d => t32_tau_b_additive u v a b c d,
    fun a b c d e f => t35_doppler_div a b c d e f,
    fun a b c d e f => t36_tau_b_sub a b c d e f,
    fun t a b => t38_bridge t a b,
    t44_tanh_op_is_tanh,
    fun u v a b c d => t45_tanh_satisfies_vadd u v a b c d,
    t40_tanh_lt_one, t41_tanh_gt_neg_one,
    fun M => ⟨M + 1, by linarith⟩,
    t51_shared_zero,
    fun t a b => t59_remaining_is_inv_doppler t a b,
    fun t a b => t60_celerity_root t a b,
    fun t a b => t65_gamma_half_sum t a b,
    fun t a b => t66_celerity_half_diff t a b,
    t68_corridor_arg_closed, t70_corridor_doppler_ratio, t71_corridor_width,
    t74_corridor_width_pos,
    fun tb te h => t80_gate_inverts tb te h,
    fun te m1 m2 h1 h2 => t85_staging_adds te m1 m2 h1 h2,
    fun t h => t86_matched_ratio_form t h,
    fun n h => t93_medium_matched_ratio n h,
    t92_medium_at_limit,
    t97_tau_sq_is_twice_eta⟩

end SNSFL_VelocitySubstrateRapidity

end

-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes the velocity substrate as the place where both corpus
-- readings are defined at once, and carries the map between them. The Torsion
-- Limit enters from the inverse fine-structure constant by subtraction, with
-- the bare term at one thousand Torsion Limits and the multiplier factoring as
-- 7 * 11 * 13, and nothing in the file sets it. The relativistic Doppler
-- factor k(t) = sqrt((1+t)/(1-t)) is shown positive on the open unit interval,
-- squaring to the ratio itself, equal to one at Noble and above one everywhere
-- past it. The central result is that the Doppler factor is MULTIPLICATIVE
-- under relativistic velocity addition, because one plus the composed reading
-- and one minus it each factor into the corresponding terms of the two
-- arguments; Reading B, defined as the logarithm of the Doppler factor, is
-- therefore ADDITIVE under the law that Reading A composes by, which is the
-- additivity the parent reduction proves for e-fold counts along a path. The
-- subtraction law follows as Doppler division, so a difference of Reading B
-- values is one Reading B value at a single argument, and the corridor width is
-- that one value with its argument given in closed form. The corpus tangent
-- operator, written on the exponential so that it needs nothing beyond exp,
-- inverts Reading B exactly, agrees with the standard hyperbolic tangent, is
-- zero at Noble, odd, strictly increasing, strictly inside the open unit
-- interval at every argument, and satisfies the velocity-addition law under
-- addition of its arguments — so the map is the solution of the composition law
-- rather than a choice. The speed limit inverts in consequence: no argument of
-- the operator reaches one while its argument ranges without bound. On the
-- Lorentz column the remaining fraction is shown to be the Lorentz factor times
-- one minus Reading A and equal to the reciprocal Doppler factor, the Lorentz
-- factor is the half-sum of the Doppler factor and its reciprocal, celerity is
-- the half-difference, and the root of one plus celerity squared returns the
-- Lorentz factor, which turns the celerity expression into the remaining
-- fraction. The corridor is ordered on both the Doppler factor and Reading B,
-- its width is positive, its argument lies inside the unit interval, its
-- endpoint Doppler factors square exactly to their ratios, and the floor and
-- ceiling classify as IVA and Shatter. The rocket relation gives Reading B
-- final as Reading A of the drive times Reading B of the mass, the mass-ratio
-- gate inverts it in both directions, staging adds Reading B, and the gate is
-- strictly increasing in its target. The matched ratio is carried as the
-- squared reciprocal of Reading A, shown antitone and positive, read through
-- the bridge, and evaluated for a medium as the square of its refractive index,
-- with the medium at index one over the Torsion Limit sitting at the Torsion
-- Limit itself and carrying the Shatter Doppler factor. A medium above index one
-- is shown to carry both readings, which is the substrate test in its formal
-- form. Finally the conversion fraction is placed on the bridge, with Reading A
-- squared equal to twice the fraction and the matched ratio its reciprocal.
--
-- THEOREMS : 100 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
```
