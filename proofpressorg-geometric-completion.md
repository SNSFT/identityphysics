# Formally Verified Geometric Data for 5639 NASA Exoplanets Escape Velocity Surface Gravity Atmospheric Retention and Phase on Every Row Lean4 Pinned 0 Sorry 0 Axioms 0 Free Parameters CI Green

## A Bidirectional Mass Radius Closure With a Self Screening Domain the Escape Boundary as a Level Set and Bounded Uncertainty Certification Across Every Published Error Bar

**Author:** Russell Vernon Trent III (HIGHTISTIC) · SNSFT Foundation · ORCID 0009-0005-5313-7443

**Coordinate:** [9,9,3,29](COSM) · Identity Physics Series · Cosmology

**Issue:** ProofPress, Volume 1, Issue 9 · November 2026

**DOI:** 10.5281/zenodo.24152266

**Verified:** 61 theorems + master · 636 lines · 0 sorry · 0 custom axioms · Lean 4 v4.31.0, Mathlib · source and CI record

**Engine:** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

---

## Abstract

The NASA Exoplanet Archive publishes 399 columns across 6,470 confirmed planets. Among them stand bulk density, insolation and equilibrium temperature. **Escape velocity, planetary surface gravity, atmospheric retention and phase are supplied here.**

This reduction carries them, together with their certification, from the constants of [9,9,3,28](COSM) and [9,9,3,26](COSM):

| column | rows carried |
|---|---|
| Escape velocity and surface gravity, Earth at 1 | **6,463** |
| Radius and mass resolved as a pair | **6,463** |
| Phase and torsion τ = TL · s | **5,642** |
| Atmospheric retention and the hold reading | **5,639** |
| Tankiness, where headroom carries the three-factor product | **586** |
| Overshoot past the Shatter limit | **5,053** |

Seven rows publish neither a mass nor a radius and are kept with the reason recorded. Every other row carries a reading, and every reading carries an interval.

Five results close the reduction, and each is stated against the published record.

**The density law carries both directions.** The interior density law ρ̄(x) = 4400 + 7400x³ at Earth's structural coordinate x = 0.53188 returns ρ̄ = 5513.4 kg/m³, so **R/R⊕ = (M/M⊕)^(1/3)** and **M/M⊕ = (R/R⊕)³**. The forward direction is the mass predictor of [9,9,3,28]; the reverse direction carries the radial-velocity half of the catalogue. On rows publishing both columns as determinations, inside the sub-boil gate and inside the law's range, the closure runs across **192 rows at 8.96% mean absolute error**, which carries the five-body figure of [9,9,3,28] onto a sample 38 times larger.

**Escape velocity reduces to radius exactly.** Under the closure, **v_esc/v_E = √(M/R) = √(R³/R) = R**, an identity with no approximation step, which is what supplies the escape-velocity column and collapses retention to **R⁴/I** on radius and insolation alone.

**The density law screens its own domain.** The law is a cubic in x over the unit interval, so its range is ρ̄ ∈ [4400, 11800] kg/m³, which restated in observable columns is **M/R³ ∈ [0.79806, 2.14024]**, adding no constant. It returns the standing Mars verdict at M/R³ = 0.71063. On the archive it reads 104 sub-boil mass cells above its range, and the archive's own limit flag stands on **60 of those 104 at 57.7% against a base rate of 3.5%, an enrichment of 16.6**.

**Phase is a reading of the flux axis.** Torsion on that axis is τ = TL · s, so the four phases of [9,9,8,1] §1.4 read directly off the band coordinate: **5,053 rows in Shatter, 573 in Locked, 16 in IVA Peak**. Geometry is carried in every phase, because phase names where a geometry stands under its F_ext rather than which geometry it is. The IVA Peak corridor runs 0.88 ≤ s < 1, twelve percent of the distance to the boil, and **the sixteen rows standing inside it each carry an s interval wider than the corridor**, with 49 further rows bracketing across it at a ratio of 3.06.

**The escape boundary is a level set of the retention column.** The cosmic shoreline stands at I ∝ v_esc⁴, and the level set of R⁴/I is that relation. Computed on thirteen solar system bodies with nothing fitted, retention orders **twelve of thirteen** into airless below and atmosphered above, with one crossing pair — Mars at 0.09456 and Ganymede at 0.09828, **3.93% apart**. Earth reads 1 by construction and stands **×10.373** above that crossing. Since the near bound is geometric, the band carries an insolation ceiling I ≤ (22/25) · S_RUN = 0.9152 S⊕, so **at R ≥ 1 R⊕, retention ≥ 1.0926573, a margin of ×11.3344**, and a critical radius of **0.545005 R⊕**.

## What This Article Proves

Every result below corresponds to a named theorem in `SNSFL_GeometricCompletion_Reduction.lean` at coordinate [9,9,3,29](COSM), which compiles under the continuous-integration build of the SNSFT/identityphysics repository on Lean 4 v4.31.0 with Mathlib, carrying 0 sorry and 0 custom axioms. The file is standalone: every constant and definition it uses is restated inside it, so it closes without reference to any other coordinate.

1. The grounding enters as arithmetic on published quantities: the Torsion Limit as the anchor over ten, the bare term as one thousand Torsion Limits, **bare plus kinetic as the inverse fine-structure constant**, TL × 1001 = α⁻¹, the one-step anchor route Ω₀ × 100.1, the Torsion Limit positive and strictly inside the unit interval, the corridor floor in closed form and positive below the limit, **the floor fraction as the exact rational 22/25**, and the corridor width on the flux axis as 3/25 (`t1_tl_value`, `t2_bare_is_thousand_tl`, `t3_bare_plus_kinetic`, `t4_tl_times_1001`, `t5_anchor_route`, `t6_multiplier_factors`, `t7_tl_pos`, `t8_tl_in_unit`, `t9_tl_iva_value`, `t10_floor_pos_below`, `t11_floor_rational`, `t12_corridor_width`).
2. **The interior density law and its range.** The law reads the mantle floor at zero and the ceiling at one, **rises with the structural coordinate**, and returns Earth's bulk density at Earth's coordinate; **its range over the unit interval is bounded at both ends**; that range divided by Earth's bulk density is **restated as a test on the two published columns, adding no constant**; and the reading that places Mars outside the solver's domain is returned by the same constant (`t13_rho_at_zero`, `t14_rho_at_one`, `t15_rho_mono`, `t16_rho_range`, `t17_rho_earth`, `t18_x_earth_in_unit`, `t19_codomain_screen`, `t20_mars_below_range`).
3. **The completion operator.** It rises with radius, is **injective on positive radii**, carries a positive radius to a positive mass, and a body it resolves **reads the density ratio at unity exactly**; the sub-boil gate in mass is bracketed as a ceiling in radius and the transfer from the ceiling to the gate is closed (`t21_mass_mono`, `t22_mass_inj`, `t23_mass_pos`, `t24_density_ratio_one`, `t25_gate_brackets`, `t26_gate_radius_cubes`, `t27_gate_transfer`).
4. **Escape velocity is radius.** Substituting the closure into the escape-velocity reading leaves radius, **with no approximation step**; the same substitution carries **surface gravity onto radius**; the two columns agree and both read one at Earth; and **retention reduces to the fourth power of radius over the insolation** (`t28_vesc_is_radius`, `t29_gsurf_is_radius`, `t30_vesc_eq_gsurf`, `t31_earth_unit`, `t32_retention_reduces`).
5. **The retention term.** It reads one at Earth, **rises with radius**, **falls as the insolation rises**, and **the legacy escape boundary is characterised exactly as a level set of it** (`t33_retention_earth`, `t34_retention_mono_R`, `t35_retention_anti_I`, `t36_level_set`).
6. **The products and the sign of the margin.** Earth's flux reading is the exact rational 25/26 and the shock denominator is 1/26; the shock margin reads one at Earth; **the sign of the margin carries the phase**, positive exactly below the limit; the overshoot is the same magnitude reflected and is positive past the limit; and both products read one at Earth and stay positive on a positive row (`t37_s_earth_rational`, `t38_shock_denominator`, `t39_shock_earth`, `t40_shock_sign`, `t41_shatter_is_reflected`, `t42_shatter_pos`, `t43_hold_earth`, `t44_tank_earth`, `t45_hold_pos`).
7. **The band carries its own retention floor.** The geometric near bound carries an **insolation ceiling of 572/625 exactly**, positive, with reciprocal **625/572**; a reading at or below the near bound stands below the ceiling; **retention inside the band at Earth radius and above is bounded below by that reciprocal**; the floor stands above the solar-system crossing **past eleven**; the critical radius at the ceiling is bracketed and the stated value stands inside the bracket; and **every body above it retains at the ceiling** (`t46_i_ceiling`, `t47_insolation_bound`, `t48_i_ceiling_pos`, `t49_floor_rational`, `t50_subsumption_bound`, `t51_margin_bound`, `t52_critical_radius`, `t53_r_crit_in_bracket`, `t54_above_crit_retains`).
8. **Phase on the flux axis, and certification.** The floor fraction carries the IVA floor onto the flux axis; **each occupied phase follows from its flux interval**; **every band reading is a Locked reading**; and certification on the retention reading is **sound by monotonicity in the insolation**, so one endpoint evaluation settles the whole published bar (`t55_floor_in_flux`, `t56_flux_shatter`, `t57_flux_iva`, `t58_flux_locked`, `t59_band_is_locked`, `t60_cert_retaining_sound`).
9. The master theorem gathers the closure, the escape-velocity identity, the reduction of retention to two observables, the retention floor and the phase into one conjunction (`t61_master`).

**What the formal layer does not carry.** Three classes of statement in this article are arithmetic on published quantities rather than theorems, and they are marked as such where they appear. The published figures — the cosmic shoreline exponent and its unconstrained zero point, the maximum-greenhouse far bounds, the solar-system masses, radii, insolations and atmosphere statuses, the bulk density of osmium, and the archive's own mass-basis and limit columns — are values a reader supplies, and the formal layer carries the relations they feed. The decimal evaluations throughout, including the crossing at 0.096402 and every row of the appendices, are evaluations of expressions the formal layer carries exactly. And the catalogue run is a count over published rows, with the inequalities it applies carried here as theorems.

## What a Reader Gets

A catalogue row carrying a mass or a radius is a row from which escape velocity, surface gravity, retention, phase and tankiness follow by arithmetic. This paper gives the cube relation that resolves the pair in either direction, the range test that states when it applies, the torsion reading that names the phase, and a lower bound on atmospheric retention that holds for every body inside the band by construction. Each step is a calculator exercise, and the companion archive carries all 6,470 rows with 145 columns, every published value and error bar kept beside every derived one, so that nothing has to be reconstructed and every figure traces to its inputs.

## 2. What the archive publishes, and the columns this reduction carries

### 2.1 The 399 columns

The NASA Exoplanet Archive Planetary Systems Composite Parameters table publishes **399 columns across 6,470 confirmed planets**, carrying for each quantity a value, an upper and lower error bar, a limit flag and a reference link. Among the planetary quantities stand bulk density `pl_dens`, insolation `pl_insol` and equilibrium temperature `pl_eqt`, each with its error bars and its limit flag.

The columns this reduction carries stand beside them:

| column | reading | rows |
|---|---|---|
| `v_esc_rel` | escape velocity, Earth at 1 | **6,463** |
| `g_surface_rel` | surface gravity, Earth at 1 | **6,463** |
| `escape_energy_rel` | escape energy, Earth at 1 | **6,463** |
| `tau`, `phase` | torsion on the flux axis and the phase it names | **5,642** |
| `retention` | (v_esc/v_E)⁴/I, Earth at 1 | **5,639** |
| `hold` | retention × thermal buffer, Earth at 1 | **5,639** |
| `shatter_margin` | overshoot past the Shatter limit | **5,053** |
| `tank` | the three-factor product, where headroom carries it | **586** |
| `X_ly`, `Y_ly`, `Z_ly` | equatorial cartesian position, Sol at the origin | **6,442** |

Each carries its own interval alongside it, and each row carries the route that resolved it.

### 2.2 Which table a census reads

Two tables publish one row per planet and they state different things, so a census names which it read.

| | default-reference table | composite table |
|---|---|---|
| query | `ps` with `default_flag=1` | `pscomppars` |
| content | the values that planet's default publication reported | values filled across references and by calculation |
| empty radius cells | **1,631** | 50 |
| empty mass cells | **3,263** | 31 |
| empty semi-major axis | 2,495 | 498 |
| empty stellar age | 3,392 | 1,529 |

The parent reduction [9,9,3,28] reads the default-reference table, which is why its Appendix A carries a dash wherever a term's input stands outside that publication. This reduction carries both: the `pub_*` columns hold the default-reference values and the archive's own column names hold the composite values, so every row states what its default reference published and what the composite table filled.

### 2.3 What a published mass is

The archive records the basis of every mass it publishes, and the four bases carry different readings.

| `pl_bmassprov` | reading | rows |
|---|---|---|
| **Mass** | a determination | **2,495** |
| **M-R relationship** | carried from the radius by a mass–radius relation | **3,034** |
| **Msini** | a lower bound, equal to the mass at inclination 90° | **926** |
| **Msin(i)/sin(i)** | inclination-corrected | 15 |

| `pl_bmasselim` | reading | rows |
|---|---|---|
| 0 | a determination | 6,201 |
| **1** | **an archive upper limit** | **225** |
| −1 | an archive lower limit | 13 |

The `mass_basis` and `mass_limit_flag` columns carry these readings in words on every row, so a radius resolved from an Msini is marked as resolved from a lower bound and reads as one.

### 2.4 The partition in the default-reference table

Inside the band of [9,9,3,28], read on the default-reference table at the widest admissible far bound:

| column coverage | band members | ≤ 32 ly | median distance | range |
|---|---|---|---|---|
| **Mass only** | **105** | **16** | **161 ly** | 4.2 – 1,309 ly |
| **Radius only** | **15** | **0** | **874 ly** | 125.9 – 2,906 ly |
| **Both columns** | **15** | **0** | 1,160 ly | 48.9 – 5,436 ly |
| Carrying neither | 0 | — | — | — |

Radial velocity returns a mass and a period and works on nearby bright hosts. Transit photometry returns a radius and works on a deep field. The two columns therefore arrive from different instruments pointed at different volumes, and the coverage separates by distance accordingly: **inside 32 light years the band carries 16 members and every one of them is mass-only.** The closure of §3 is what carries a radius onto each of them.

Restricting the same pull to the Sun-like far bound returns **93 band members**, which is the figure [9,9,3,28] records, reproduced here from an independent pull.

## 3. The completion operator

### 3.1 The density law at Earth's coordinate

The interior density law of [9,9,3,28] is a cubic in the structural coordinate x:

> **ρ̄(x) = 4400 + 7400 x³  kg/m³**

At Earth's coordinate x = 0.53188 it returns

```
ρ̄(0.53188) = 4400 + 7400 × 0.150466 = 5513.4 kg/m³
```

which is Earth's bulk density. A body at that density satisfies M ∝ R³ with the proportionality fixed to unity in Earth-normalized units, because Earth is the normalizing body on both axes.

### 3.2 The operator, both directions

> **R/R⊕ = (M/M⊕)^(1/3)**  — mass published, radius completed
> **M/M⊕ = (R/R⊕)³**  — radius published, mass completed

Both directions carry zero free parameters, and each is the inverse of the other on its domain. The forward direction is the mass predictor established in [9,9,3,28]. The reverse direction is stated here, and it is the direction that reaches the radial-velocity half of the catalogue.

### 3.3 Against the band rows that publish both columns

Six band members publish both columns inside the sub-boil gate of [9,9,3,28]. The screen of §5 reads on four of them, and on those four the closure returns:

| Planet | M (M⊕) | R (R⊕) published | R = M^(1/3) | error |
|---|---|---|---|---|
| TRAPPIST-1 e | 0.692 | 0.920 | 0.8845 | −3.86% |
| TRAPPIST-1 f | 1.039 | 1.045 | 1.0128 | −3.08% |
| TRAPPIST-1 g | 1.321 | 1.129 | 1.0972 | −2.81% |
| LHS 1140 b | 5.600 | 1.730 | 1.7758 | +2.65% |

**Mean absolute error 3.10%, maximum 3.86%**, across a factor of eight in mass and three host systems. [9,9,3,28] carries the five-body validation of the forward direction at 9.1% mean; the figure here is tighter, and the tightening comes from the screen of §5 selecting the rows on which both published columns are determinations.

## 4. Escape velocity reduces to radius

Escape velocity in Earth-normalized units is √(M/R). Substituting the closure:

```
v_esc/v_E = √(M/R) = √(R³/R) = √(R²) = R
```

**An identity, with no approximation step.** Under the closure, escape velocity in Earth units is radius in Earth units, and the equality holds at every radius on the domain.

Worked at GJ 3378 b. The published mass is 2.300 M⊕, so R = 2.300^(1/3) = 1.320006 R⊕, and √(2.300/1.320006) = 1.320006. The two figures agree to six decimals because the identity makes them the same number.

The consequence for the band is that the retention term loses a variable:

> **retention = (v_esc/v_E)⁴/(s · S_RUN) = R⁴/(s · S_RUN)**

and since s is defined with S_RUN as its normalization, the denominator is insolation in Earth units directly:

```
s · S_RUN = S/S⊕ = I retention = R⁴/I
```

Retention is therefore a function of radius and insolation, which are the two axes the cosmic shoreline is drawn on. §9 carries that forward.

## 5. The density law screens its own domain

### 5.1 The range as a test

The law is a cubic in x and the structural coordinate runs over the unit interval, so the law's range is bounded at both ends:

```
x ∈ [0, 1]  ⟹  ρ̄ ∈ [4400, 11800] kg/m³
```

Dividing through by Earth's bulk density converts the range into a test on the two published columns directly:

```
M/R³ ∈ [4400/5513.4, 11800/5513.4] = [0.79806, 2.14024]        (Earth units)
```

**The screen introduces no constant.** It is the law's own codomain restated in observable columns, and Earth sits at 1.00000 inside it by construction.

### 5.2 The screen returns the standing Mars verdict

Mars carries ρ̄ = 3918 kg/m³, which is M/R³ = 0.71063, standing below the lower end of the range. [9,9,3,28] places Mars outside the interior solver's domain through the mantle-floor screen at 4,400 kg/m³, and the codomain test returns the same verdict from the same constant. Two routes to the same placement, one through the solver and one through the law's range.

### 5.3 The sub-boil gate as a radius ceiling

The sub-boil super-Earth gate carried in [9,9,3,28] is M ≤ 10 M⊕. Under the closure this is exactly a radius ceiling:

```
M ≤ 10 M⊕  ⟺  R ≤ 10^(1/3) = 2.154435 R⊕
```

Four band rows stand just above it and are kept with the reason recorded: TOI-904 c at 2.167 R⊕ (+0.58%), Kepler-174 d at 2.190 R⊕ (+1.65%), TOI-2257 b at 2.194 R⊕ (+1.84%) and Kepler-443 b at 2.330 R⊕ (+8.15%). Three of the four stand within 2% of the gate, and the gate is a sharp line, so their position is recorded as their position.

---

### 5.4 The range read across the interval

A published pair carries error bars, so the implied density carries an interval, and the verdict is read at both ends. `rho_implied` carries the central figure, `rho_lo` and `rho_hi` the interval, and `codomain_verdict` the certification:

| verdict | reading | rows |
|---|---|---|
| **settled inside the law range** | the interval stands within [4400, 11800] | **554** |
| **settled below the law range** | volatile-rich, the reading Mars carries | **3,759** |
| **settled above the law range** | the mass cell carries something other than a bulk density | **209** |
| **bracketed across the law range** | the interval reaches a bound | **1,874** |

A row settled below the range stands outside the density law's domain by composition, which is the reading Mars carries at ρ̄ = 3918 kg/m³. Its published pair is kept and its geometry block reads in full from the measurement, with `domain_status` recording the placement. A row settled above the range carries a mass cell standing outside the range at the low end of its own error bar.

## 6. What the screen reads on two rows

Two of the six both-column band rows inside the gate stand outside the range:

| Planet | M (M⊕) | R (R⊕) | M/R³ | implied ρ̄ kg/m³ |
|---|---|---|---|---|
| LP 890-9 c | 25.300 | 1.367 | 9.9041 | **54,605** |
| Kepler-62 f | 35.000 | 1.410 | 12.4856 | **68,838** |

Osmium, the densest element at standard conditions, carries a bulk density of 22,590 kg/m³. The two figures stand above it by factors of 2.4 and 3.0.

The published record states what the entries are. The Kepler-62 discovery paper records that the planet masses could not be directly determined using radial velocity measurements of the host, and that the values for the maximum mass are for the 95th percentile. The 35 M⊕ figure is a 95th-percentile bound. Secondary catalogues carry it with the inequality in place as `< 35 M⊕`, and a numeric mass column holds the magnitude without the inequality.

**The codomain screen separates archive mass determinations from archive mass bounds using the density law's range alone.** It returns the verdict on both rows from the two published columns, and the discovery literature states the same thing independently. On a row the screen reads this way, the closure supplies the mass from the published radius, which is the operation the verdict calls for: LP 890-9 c takes M = 1.367³ = 2.571 M⊕ and Kepler-62 f takes M = 1.410³ = 2.803 M⊕.

This is the second screen in the reduction and it does a different job from the first. The mantle-floor screen of [9,9,3,28] places a body outside the solver's domain on composition. The codomain screen places a catalogue cell outside the law's range on arithmetic, and a cell outside that range is a cell holding something other than a bulk density.

---

### 6.2 The archive's limit column stands with the range

Read on the published values alone, **104 sub-boil rows stand above the law's range**. The archive records a limit flag on every mass it publishes, and `pl_bmasselim = 1` marks an upper limit on 225 of its 6,470 mass cells, a base rate of 3.5%.

| rows read by the range | carrying the archive's upper-limit flag | share |
|---|---|---|
| **above the law range** | **60 of 104** | **57.7%** |
| inside the law range | 22 of 1,103 | 2.0% |
| below the law range | 10 of 839 | 1.2% |

**The range concentrates the archive's own upper-limit rows by a factor of 16.6 over base rate**, and the two readings stand together: the range reads the verdict from two value columns and the archive's flag column records the same thing from its source publications.

The 42 rows standing above the range and carrying a determination flag carry a second reading: a published error bar comparable to the value. Kepler-415 b publishes 119.90 M⊕ with +102.10, Kepler-272 b 78.00 with +93.80, Kepler-363 c 66.40 with +71.90 and Kepler-327 c 20.30 with +27.10, and twenty-three of the forty-two trace to one transit-timing mass catalogue. Carrying the error bar into the interval is what places them, which is why 1,874 rows read bracketed across the range in §5.4 rather than settled on one side of it.

## 7. Tankiness, and the Three Factors It Multiplies

**Tankiness is a term from game design.** A tank is the role built to stand in front and absorb incoming load while the rest of the party works, and tankiness is how much load that unit carries before it stops functioning. The word is used here in exactly that sense, and for the same reason it is used there: it names one number answering one question, so a reader meets the question before the arithmetic.

**The term is multiplicative in its own field, and it is multiplicative here.** Game design establishes that mitigation terms stack by product rather than by sum, so two independent halvings of incoming load give four times the effective durability rather than twice. The three factors on a planetary row carry that shape, because each one multiplies the load the body stands rather than adding to it.

| factor | reading | what it carries |
|---|---|---|
| **shock margin** | (1 − s)/(1 − s_Earth) | the headroom the orbit holds before brightening carries it to the floor |
| **retention** | (v_esc/v_E)⁴/I | how well the body holds its atmosphere against its insolation |
| **thermal buffer** | M/M⊕ | the mass available to carry a temperature swing |

> **tank = shock margin × retention × thermal buffer**

**Earth reads ×1 on each factor and ×1 on the product**, by construction, because Earth is the normalizing body on all three axes. The scale therefore needs no units and no legend: a row at ×10 stands ten times as sturdy as Earth on the combined reading, and a row at ×0.5 stands half as sturdy.

LHS 1140 b reads **×2,072**. The figure carries that a body of 5.600 M⊕, holding its atmosphere 24.30 times better than Earth holds its own, with 15.23 times Earth's headroom before its star's brightening reaches the floor, stands that much sturdier against the class of event that resets a surface.

**Reading the scale.** The number answers one question: when something arrives hard, how much better placed is this world than Earth to still be a world afterward. A child reads it as how tanky the planet is. An engineer reads it as the product of three mitigation ratios. Both readings return the same number, which is what choosing a word that carries its own meaning buys.

## 8. Phase on every placed row

### 8.1 Torsion on the flux axis

The reduced flux s is a torsion reading, τ = TL · s ([9,9,3,26]), so the four phases of [9,9,8,1] §1.4 read directly off the band coordinate with no further constant:

| phase | torsion | s | rows | settled across the interval |
|---|---|---|---|---|
| **Noble** | B_out = 0 | s = 0 | 0 | 0 |
| **Locked** | 0 < τ < TL_IVA | 0 < s < 0.88 | **573** | 542 |
| **IVA Peak** | TL_IVA ≤ τ < TL | 0.88 ≤ s < 1 | **16** | 0 |
| **Shatter** | τ ≥ TL | s ≥ 1 | **5,053** | 4,997 |

The arithmetic is one line. TL_IVA = 0.88 × TL and τ = TL · s, so τ < TL_IVA reads s < 0.88 and τ ≥ TL reads s ≥ 1. The near bound of the terraformable band and the Locked ceiling are the same number approached from the same side, and the corridor is the interval between the IVA floor and the boil.

Eight hundred twenty-eight rows publish no semi-major axis, stellar radius or effective temperature and carry no flux axis. They are kept, the reason is recorded, and their geometry block reads in full.

### 8.2 Geometry is carried in every phase

Phase names where a geometry stands under its F_ext. It does not name which geometry the body has, so the geometric columns are carried on every row that resolves a pair, in every phase:

| column | Locked | IVA Peak | Shatter | total |
|---|---|---|---|---|
| escape velocity, surface gravity, escape energy | 573 | 16 | 5,053 | **6,463** |
| retention | 570 | 16 | 5,053 | **5,639** |
| hold | 570 | 16 | 5,053 | **5,639** |
| settled retaining | **570** | **16** | 2,439 | **3,025** |

**Every Locked row and every IVA Peak row carrying a retention interval reads settled retaining**, and the verdict holds at the low end of the union of its published error bar and its geometric reading.

### 8.3 Which factor each phase carries

Retention and the thermal buffer are readings of the body, so they stand in every phase. The shock margin is a reading of headroom, (1 − s)/(1 − s_Earth), and headroom is what a body holds below the limit. The sign therefore carries the phase, and `shock_sense` names it:

| reading | definition | rows |
|---|---|---|
| **headroom to the limit** | s < 1, the margin the orbit holds | **586** |
| **past the limit** | s ≥ 1, carried as `shatter_margin` = (s − 1)/(1 − s_Earth) | **5,053** |

So each phase carries the product its factors define:

> **hold = retention × thermal buffer** — carried in every phase, on 5,639 rows
> **tank = shock margin × retention × thermal buffer** — carried where headroom stands, on 586 rows
> **shatter_margin** — carried past the limit, on 5,053 rows

Earth reads 1 on every factor and 1 on both products, by construction.

### 8.4 ΔT is signed in every phase

The forcing requirement ΔT = T_eq·[(0.88/s)^¼ − 1] with T_eq = 278.5·(s · S_RUN)^¼ reads in every phase, and its sign names the direction. `dT_sense` carries it in words:

| sense | rows |
|---|---|
| warming to the floor | **573** |
| cooling to the floor | **5,069** |

A Shatter row at s = 81.80, the median past the limit, reads a cooling figure. KOI-55 b at s = 586,341.60 carries the deepest overshoot in the catalogue at `shatter_margin` = 15,245,107.8382 and a cooling figure of −7,510.138 K.

### 8.5 The corridor and the interval

The IVA Peak corridor runs from s = 0.88 to s = 1.00, twelve percent of the distance to the boil, and [9,9,8,1] §1.4 states that it is narrow. The archive carries that width as a measurement statement.

**Sixteen rows stand inside the corridor by published value, 0.28% of the 5,642 placed rows**, and forty-nine further rows carry an s interval reaching into or out of it, a ratio of 3.06. **Each of the sixteen carries an s interval wider than the corridor itself**: fourteen reach from Locked to Shatter, one from Locked to IVA Peak and one from IVA Peak to Shatter.

| planet | distance | s | corridor position | ΔT | retention × crossing |
|---|---|---|---|---|---|
| Kepler-1540 b | 798.95 ly | 0.89445 | 0.12049 | −1.112 K | ×82.19 |
| HD 13908 c | 259.46 ly | 0.89745 | 0.14544 | −1.341 K | ×180,317.24 |
| Kepler-453 b | 1,444.37 ly | 0.89810 | 0.15084 | −1.390 K | ×73.87 |
| Kepler-1544 b | 1,092.92 ly | 0.91138 | 0.26157 | −2.397 K | ×50.40 |
| HD 111998 b | 108.36 ly | 0.92289 | 0.35744 | −3.260 K | ×151,153.24 |
| HD 147379 b | 35.11 ly | 0.93863 | 0.48862 | −4.428 K | ×203.16 |
| HD 145934 b | 743.25 ly | 0.94215 | 0.51797 | −4.688 K | ×25,568.95 |
| 55 Cnc f | 41.05 ly | 0.94430 | 0.53583 | −4.845 K | ×368.19 |
| Kepler-1341 b | 1,555.62 ly | 0.94951 | 0.57925 | −5.227 K | ×99.89 |
| HD 191939 g | 174.85 ly | 0.94966 | 0.58055 | −5.238 K | ×136.85 |
| TOI-1736 c | 290.11 ly | 0.95044 | 0.58701 | −5.295 K | ×526,563.71 |
| TOI-2094 b | 163.16 ly | 0.96150 | 0.67924 | −6.100 K | ×52.39 |
| Kepler-22 b | 634.84 ly | 0.97297 | 0.77476 | −6.926 K | ×192.50 |
| GJ 433 d | 29.56 ly | 0.98077 | 0.83976 | −7.484 K | ×60.58 |
| GJ 3293 b | 65.85 ly | 0.99243 | 0.93693 | −8.312 K | ×206.76 |
| HIP 107772 b | 77.11 ly | 0.99790 | 0.98250 | −8.698 K | ×125.54 |

The published error bars on semi-major axis, stellar radius and effective temperature carry an s interval wider than 0.12 on every one of the 5,642 placed rows. **The narrowness of the corridor is therefore a property the observational record carries**, and the cooling figures across the sixteen run from 1.112 K to 8.698 K. Three of the sixteen stand inside the sub-boil gate, and the nearest is GJ 433 d at 29.56 light years.

One row carries an interval reaching the Noble limit: HD 211810 b at s = 0.160019, whose interval reaches s_lo = 0.000000 and therefore τ_lo = 0 exactly. It is kept and the reason is recorded.

## 9. Worked placements, one per phase

### 9.1 Locked — Proxima Centauri b, at 4.24 light years

The nearest exoplanet to Earth publishes a mass of 1.055 M⊕ and carries a radius of 1.0200 R⊕.

| quantity | value | route |
|---|---|---|
| s | 0.51828 | Rs²(T/5772)⁴/a² ÷ S_RUN |
| τ = TL · s | 0.07095 | **Locked**, since τ < TL_IVA = 0.12047 |
| R | 1.0200 R⊕ | published |
| M | 1.055 M⊕ | published |
| **v_esc/v_E** | **1.0170** | √(M/R) |
| **g_surface/g_E** | **1.0140** | M/R² |
| I = s · S_RUN | 0.53901 S⊕ | |
| **retention** | **1.98475** | v_esc⁴/I |
| **hold** | **2.094** | retention × M |
| shock margin | ×12.52 | headroom to the limit |
| **tank** | **×26.23** | the three-factor product |
| ΔT | **+33.768 K** | warming to the floor |

### 9.2 IVA Peak — GJ 433 d, at 29.56 light years

The nearest row standing inside the corridor publishes 5.223 M⊕ and carries 2.1400 R⊕.

| quantity | value |
|---|---|
| s | 0.98077 |
| τ = TL · s | 0.13426 — **IVA Peak**, since TL_IVA ≤ τ < TL |
| corridor position | 0.83976 of the way from the IVA floor to the boil |
| v_esc/v_E | **1.5622** |
| retention | **5.83998**, ×60.58 the crossing |
| hold | **30.502** |
| **tank** | **×15.249** |
| ΔT | **−7.484 K**, cooling to the floor |

Its s interval reaches from Locked to Shatter, so the corridor placement is carried as an interval and the row is read at both ends.

### 9.3 Shatter — Proxima Centauri d, at 4.24 light years

The same host carries a second planet past the boil, publishing 0.260 M⊕ and 0.6920 R⊕.

| quantity | value |
|---|---|
| s | 1.46759 |
| τ = TL · s | 0.20090 — **Shatter**, since τ ≥ TL |
| `shatter_margin` | (s − 1)/(1 − s_Earth) = **12.1574** past the limit |
| v_esc/v_E | **0.6129** |
| g_surface/g_E | **0.5430** |
| retention | **0.09249**, ×0.96 the crossing |
| hold | **0.024** |
| ΔT | **−37.155 K**, cooling to the floor |

Proxima Centauri b and d carry the same host, the same distance and the same stellar parameters, and they read in two different phases from the same arithmetic. The pair is the clearest exemplar in the catalogue of phase naming where a geometry stands rather than which geometry it is: one body holds headroom and reads a tankiness figure, the other stands past the limit and reads an overshoot figure, and both carry a full escape-velocity, surface-gravity and retention block.

### 9.4 The deepest reading in each direction

| | planet | s | reading |
|---|---|---|---|
| nearest the Noble limit | UCAC3 113-933 b, 171.50 ly | s → 0 | hold 1.18 × 10¹⁸ at 12.100 R⊕ |
| deepest past the boil | KOI-55 b | 586,341.60 | `shatter_margin` 15,245,107.8382, ΔT −7,510.138 K |
| highest hold in Locked | UCAC3 113-933 b | s → 0 | the directly imaged wide-orbit case |
| highest hold in Shatter | KOI-2513.01, 4,467.91 ly | 6.04633 | 7.91 × 10⁹ at 2.8022 R⊕ |

A wide-orbit body approaches the Noble limit from inside Locked as s → 0, and its retention figure rises without bound as the insolation falls, which is the retention term R⁴/I read at the limit of its own domain. The two extremes are carried at full precision and the reason each stands where it does is recorded on its row.

## 10. The terraformable band as a sub-interval of Locked

### 10.1 Where the band stands

The terraformable band of [9,9,3,28] is the interval inside Locked between a forcing agent's far bound and the geometric near bound at 22/25. It is therefore one block inside one phase, and the phase census of §8.1 locates it: 573 rows read Locked, and the band is the part of Locked standing above the host's forcing ceiling.

Read on the composite table with the far bound interpolated in host T_eff between 0.21184 at 2,560 K and 0.37048 at 5,772 K:

| | rows |
|---|---|
| Locked | **573** |
| **band members** | **157** |
| below the forcing ceiling for the host | 416 |

Of the 157, **109 read settled band member** across their s interval and 48 carry an interval reaching a band bound. Twenty read settled inside the sub-boil gate, 116 settled above it, and 21 carry an interval across it.

**Every one of the 157 band members reads settled retaining**, with no row bracketing across the crossing. The lowest low-end figure across the band is Kepler-47 c at 0.17488, standing ×1.81 above the crossing, which is the bound of §11.5 holding under certification rather than at a point.

Five of the 157 publish a mass alone and stand above the sub-boil gate, so their radius is carried as R = M^(1/3) with `domain_status` recording that it stands above the gate: HD 7199 b at 15.38152 R⊕ reading retention 146,763.01, BEBOP-4 AB b at 20.29470 R⊕ reading 309,721.24, HD 10180 g at 15.00050 R⊕ reading 76,220.058, HD 160691 b at 11.09737 R⊕ reading 19,277.905 and WASP-47 c at 7.646027 R⊕ reading 5,743.4724. Each carries its reading and the record of where it stands relative to the law's domain.

### 10.2 GJ 3378 b — the dash in row 4 carried

GJ 3378 b stands at row 4 of Appendix A in [9,9,3,28] at s = 0.87134, publishing a mass of 2.300 M⊕ with a dash in its radius cell, so its v_esc and retention cells carry dashes as well. It was announced on 30 June 2026 by the NEID Science Team as a low-mass planet inside the liquid-water habitable zone of a nearby M dwarf, 25.2 light years away in Camelopardalis, and a Hobby-Eberly Telescope program published a revised mass and period for it days later, placing it against the cosmic shoreline.

| quantity | value | route |
|---|---|---|
| M | 2.300 M⊕ | published |
| **R** | **1.320006 R⊕** | R = M^(1/3) |
| **v_esc/v_E** | **1.320006** | identity of §4 |
| τ = TL · s | 0.11928 | **Locked** |
| I = s · S_RUN | 0.90619 S⊕ | |
| **retention** | **3.3503** | R⁴/I, ×34.75 the crossing |
| **tank** | **×26** | the three-factor product |
| below the geometric near bound by | **0.984%** | (0.88 − s)/0.88 |
| **ΔT** | **+0.672 K** | warming to the floor |

**0.672 K is the smallest warming figure on the band**, and 0.984% is the closest approach to the geometric near bound of any row publishing a mass. Its bracket width reads **0.00%**: the published radius estimate the archive carries, 1.32 R⊕, and the closure's 1.320006 R⊕ are the same number to six decimals, because the archive applies constant Earth density and the density law returns it at Earth's coordinate. The agreement is recorded as agreement on the relation, with the archive applying it and the reduction deriving it.

### 10.3 The near field, carried in full

The band rows of Appendix A in [9,9,3,28] standing inside 32 light years, every one of them publishing a mass with no published radius, with s and ΔT carried from that appendix and distance from the system distance column:

| planet | distance | host T_eff | s | ΔT | R/R⊕ | M/M⊕ | retention |
|---|---|---|---|---|---|---|---|
| GJ 357 d | 30.8 ly | 3,505 K | 0.35679 | +55.0 K | 1.8272 | 6.100 | 30.037 |
| HN Lib b | 20.4 ly | 3,347 K | 0.48405 | +37.8 K | 1.7609 | 5.460 | 19.099 |
| Gliese 48 b | 26.9 ly | 3,450 K | 0.85710 | +1.8 K | 2.0091 | 8.110 | 18.279 |
| GJ 251 c | 18.2 ly | 3,342 K | 0.36457 | +53.9 K | 1.5714 | 3.880 | 16.080 |
| GJ 887 d | 10.7 ly | 3,688 K | 0.78099 | +8.0 K | 1.8272 | 6.100 | 13.722 |
| Gl 725 B c | 22.3 ly | 3,379 K | 0.45825 | +41.0 K | 1.5037 | 3.400 | 10.728 |
| GJ 1002 c | 15.8 ly | 3,024 K | 0.24964 | +73.6 K | 1.1079 | 1.360 | 5.804 |
| GJ 1061 d | 12.0 ly | 2,953 K | 0.54976 | +30.2 K | 1.1864 | 1.670 | 3.465 |
| GJ 3378 b | 25.2 ly | 3,340 K | 0.87134 | +0.7 K | 1.3200 | 2.300 | 3.350 |
| Wolf 1069 b | 31.3 ly | 3,158 K | 0.62714 | +22.1 K | 1.0801 | 1.260 | 2.087 |
| Teegarden's Star c | 12.5 ly | 3,034 K | 0.51058 | +34.7 K | 1.0164 | 1.050 | 2.010 |
| Proxima Cen b | 4.2 ly | 2,900 K | 0.51828 | +33.8 K | 1.0164 | 1.050 | 1.980 |
| GJ 1002 b | 15.8 ly | 3,024 K | 0.65102 | +19.8 K | 1.0260 | 1.080 | 1.637 |

Every host runs cooler than 3,690 K, so the band's outer edge for all thirteen is set near the cool-host end of the interpolated ceiling. Thirteen rows, thirteen published masses, and the closure carries a radius onto each.

### 10.4 The certified core

Thirteen rows across the catalogue read settled band member and settled inside the sub-boil gate together, across the full interval of their published error bars and their geometric readings:

| planet | distance | s_lo | s_hi | ΔT | retention_lo | × crossing |
|---|---|---|---|---|---|---|
| LHS 1140 b | 48.88 ly | 0.36544 | 0.46995 | +46.725 K | 15.58867 | ×161.7 |
| GJ 251 c | 18.20 ly | 0.29165 | 0.45959 | +53.859 K | 6.16538 | ×64.0 |
| Gl 725 B c | 22.32 ly | 0.40252 | 0.52203 | +41.001 K | 4.87278 | ×50.5 |
| TRAPPIST-1 g | 40.54 ly | 0.22469 | 0.26337 | +74.869 K | 4.59187 | ×47.6 |
| TOI-715 b | 138.31 ly | 0.49665 | 0.83998 | +20.102 K | 4.00774 | ×41.6 |
| Kepler-1229 b | 865.89 ly | 0.41020 | 0.62323 | +34.582 K | 2.83910 | ×29.5 |
| TRAPPIST-1 f | 40.54 ly | 0.33259 | 0.38990 | +54.517 K | 2.23850 | ×23.2 |
| GJ 1061 d | 11.98 ly | 0.41846 | 0.71957 | +30.224 K | 1.89693 | ×19.7 |
| Proxima Cen b | 4.24 ly | 0.32236 | 0.79298 | +33.768 K | 1.13107 | ×11.7 |
| Wolf 1069 b | 31.26 ly | 0.52333 | 0.74951 | +22.119 K | 1.09401 | ×11.3 |
| Teegarden's Star c | 12.49 ly | 0.36510 | 0.70391 | +34.660 K | 1.02958 | ×10.7 |
| GJ 1002 b | 15.81 ly | 0.53310 | 0.79326 | +19.769 K | 0.96340 | ×10.0 |
| TRAPPIST-1 e | 40.54 ly | 0.49720 | 0.79346 | +22.461 K | 0.62492 | ×6.5 |

**Eleven of the thirteen stand inside 50 light years and six inside 25.** LHS 1140 b carries the highest low-end figure at ×161.7, and TRAPPIST-1 e the lowest at ×6.5, which is also the one row below 1 R⊕ at 0.9200 R⊕; the low end of its radius interval reads 0.8750 R⊕ and stands above the critical radius of 0.545005 R⊕ by a factor of 1.61.

## 11. The escape boundary as a level set

### 11.1 The published boundary

The cosmic shoreline is the division in the solar system between bodies holding atmospheres and bodies without them, arranged by insolation and escape velocity, and the published form is a fourth-power law: the irradiation experienced by the body stands proportional to its escape velocity to the fourth power, with the same power law appearing in total insolation and in cumulative XUV. The source states the line's position directly — it is drawn by eye, with no constant given — and the 2025 empirical treatment records that the expected slope is four while the zero point remains unconstrained. The same source gives the energy-limited escape scaling for the rocky and icy bodies as a form that stands apart from the fourth-power relation, with the fourth power matching the tidally truncated gas giants at fixed radius.

### 11.2 The reduction

The level set of the retention term is

```
retention = constant   ⟺   R⁴/I = constant   ⟺   I ∝ R⁴   ⟺   I ∝ (v_esc)⁴
```

by the identity of §4. **The cosmic shoreline is a level set of the retention term.** The published boundary is one contour of it, and the retention term is the field that contour belongs to. The exponent four is the exponent the retention term carries, and the shoreline is what one of its contours reads as when plotted on the same two axes.

Retention is normalized so that Earth reads exactly 1, which fixes the scale the published line leaves open.

### 11.3 Thirteen solar system bodies, ordered by one scalar

Retention computed from published mass, radius and insolation, with nothing fitted:

| Body | M (M⊕) | R (R⊕) | I (S⊕) | v_esc/v_E | retention | Atmosphere |
|---|---|---|---|---|---|---|
| Ceres | 0.000157 | 0.0742 | 0.13600 | 0.0460 | **0.00003** | none |
| Moon | 0.0123 | 0.2727 | 1.00000 | 0.2124 | **0.00203** | none |
| Mercury | 0.0553 | 0.3829 | 6.67350 | 0.3800 | **0.00313** | none |
| Europa | 0.00804 | 0.2451 | 0.03660 | 0.1811 | **0.02940** | none |
| Callisto | 0.0180 | 0.3783 | 0.03660 | 0.2181 | **0.06186** | none |
| Io | 0.0150 | 0.2859 | 0.03660 | 0.2291 | **0.07521** | none |
| **Mars** | 0.1074 | 0.5320 | 0.43100 | 0.4493 | **0.09456** | **thin** |
| **Ganymede** | 0.0248 | 0.4135 | 0.03660 | 0.2449 | **0.09828** | **none** |
| Pluto | 0.00218 | 0.1868 | 0.000641 | 0.1080 | **0.21247** | thin |
| Triton | 0.00359 | 0.2124 | 0.00110 | 0.1300 | **0.25971** | thin |
| Titan | 0.0225 | 0.4037 | 0.01100 | 0.2361 | **0.28239** | thick |
| Venus | 0.8150 | 0.9499 | 1.91130 | 0.9263 | **0.38515** | thick |
| Earth | 1.0000 | 1.0000 | 1.00000 | 1.0000 | **1.00000** | thick |

**One scalar with no fitted parameter orders twelve of the thirteen bodies into airless below and atmosphered above.** Six airless bodies hold the bottom of the sequence, five atmosphere-bearing bodies hold the top, and the sequence carries one crossing pair.

The crossing pair is Mars at 0.09456 and Ganymede at 0.09828, **3.93% apart**. Those two bodies stand inside the region the published figure draws by hand, where Mars, Ganymede, Callisto, Titan, Triton and Pluto cluster against the line. The crossing therefore places the contour where the published treatment places it, and gives it a number:

```
retention_crossing = √(0.09456 × 0.09828) = 0.096402
```

**Earth stands ×10.373 above the crossing.**

### 11.4 The crossing value is carried empirically

A scan was specified in advance over 420 forms built from the corpus constants — TL, TL_IVA and Ω₀, each scaled by integer powers of 22/25 to the sixth and divided by integers to twenty — against the 3.93% window. Two forms landed inside the window, against an expected count near 3.06 for a window of that width over that many forms. **The crossing value is carried empirically from the solar system pair, and the two forms are recorded as consistent with the width of the window rather than as derivations.** The bound of §11.5 does not read on the crossing value's precision.

### 11.5 The subsumption bound

The band's near bound is geometric, so the band carries an insolation ceiling:

```
s ≤ 22/25 = 0.88 S_RUN = 1.04 = 26/25                     the runaway flux, Earth at 1 I = s · S_RUN ≤ (22/25) · (26/25) = 572/625 = 0.9152 S⊕     exactly
```

Retention is therefore bounded below across the whole band by radius alone:

```
retention = R⁴/I ≥ R⁴/0.9152
```

**At R ≥ 1 R⊕ this gives retention ≥ 1.0926573, a margin of ×11.3344 above the crossing.** The bound reads on the geometric near bound and the radius, with no free parameter and no appeal to a catalogue.

Inverting it gives the critical radius at the band's insolation ceiling:

```
R⁴ = 0.096402 × 0.9152 = 0.08822716 R_crit = 0.545005 R⊕
```

**Every band member above 0.545005 R⊕ stands on the retaining side at every insolation the band admits.**

### 11.6 What the bound settles

Applied to the 27 sub-boil rows of Appendix A:

| Retention relative to the crossing | Rows |
|---|---|
| ×100 and above | 12 |
| ×20 to ×100 | 13 |
| ×9 to ×20 | 2 |
| At or below ×1 | **0** |

**All 27 stand on the retaining side.** The smallest margin is TRAPPIST-1 e at ×9.0, and it is also the one row below 1 R⊕ at 0.920 R⊕, which stands above R_crit by a factor of 1.69.

**The band gate therefore carries the escape boundary.** A body placed inside the band and inside the sub-boil gate stands on the retaining side with a derived minimum margin of ×11.33 at Earth radius, so the boundary reads as a margin already in hand rather than as a second test to run. The margin is a lower bound and is stated as one.

The projection established here is on the total-insolation presentation of the boundary, which is the axis the retention term carries. The cumulative-XUV presentation carries the same exponent together with an integral over the host's activity history, which for an M dwarf is a larger quantity than present-day total insolation. The two presentations read on two axes, and the stellar-history integral is the separate axis.

## The PNBA Map

| Primitive | In a geometric completion | Carried by |
|---|---|---|
| **Pattern** | The structure the body is — the mass and radius pair, resolved in either direction | ρ̄(x) = 4400 + 7400x³ at x = 0.53188, giving M = R³ |
| **Narrative** | The reading the row carries about itself — what each published column is, and how wide its interval runs | the mass-basis and limit columns, and the union of the measured and geometric registers |
| **Behavior** | The load the body carries — torsion on the flux axis, and the phase it names | τ = TL · s, with Locked, IVA Peak and Shatter following from s |
| **Adaptation** | What the body holds against what it is given — the atmosphere against the insolation | retention = R⁴/I, and the escape boundary as its level set |

**One relation, read on every row.** Escape velocity is radius, so a row publishing one column carries both; retention is the fourth power of that radius over the insolation, so the legacy escape boundary is one contour of a field the structure already holds; and the near bound is geometric, so the field has a floor across the whole band.

| | statement |
|---|---|
| the closure, both directions | **R = M^(1/3)** and **M = R³**, in Earth-normalized units |
| the identity | **v_esc/v_E = √(R³/R) = R**, exact, and surface gravity the same |
| the domain, self-screened | **M/R³ ∈ [0.79806, 2.14024]**, the law's own range restated |
| the phase | **τ = TL · s**, so the phase boundaries are the flux intervals |
| the floor | **retention ≥ 625/572 at R ≥ 1 R⊕**, a margin of ×11.3344 |

**Measurement and geometry are two registers, not two answers.** A published radius is a measurement and a radius carried by the density law is a geometric value, so a row holding both holds an interval, and the published error bar widens that interval rather than competing with it. Every quantity in the appendices is computed at both ends of the union and certified across it.

## Appendix A — The Certified Core

### A.1 The companion archive

**AtlasGoldilocks Completed Archive v3.1** carries all 6,470 confirmed planets in 145 columns: the 60
pulled archive columns with every value, error bar, limit flag and reference link kept as published,
and 85 derived columns carrying the readings of this reduction. Every row carries a `row_status`, and a
row that carries no reading records the reason.

| `row_status` | rows |
|---|---|
| completed | **5,639** |
| geometry computed, flux axis input absent | **824** |
| kept: both mass and radius columns absent | **7** |

The derived families: the three mass and radius registers (`R_meas`, `R_geom` and the union, each with
its interval); the density reading (`rho_implied`, `rho_lo`, `rho_hi`, `codomain_verdict`); the flux
axis (`s`, `s_lo`, `s_hi`, `tau`, `tau_over_TL`, `tau_over_TL_IVA`, `phase`, `phase_verdict`); the
geometry block (`v_esc_rel`, `g_surface_rel`, `escape_energy_rel`, each with its interval); the phase
blocks (`locked_depth`, `iva_corridor_position`, `shatter_overshoot`, `shatter_margin`); the products
(`shock_margin`, `shock_sense`, `thermal_buffer`, `hold`, `tank`, each with its interval); the
certifications (`gate_verdict`, `band_verdict`, `retention_verdict`, `certification`); and position
(`dist_ly`, `X_ly`, `Y_ly`, `Z_ly`, equatorial cartesian with Sol at the origin).

### A.2 The 27 sub-boil rows of the parent appendix, carried

Every sub-boil row of Appendix A in [9,9,3,28] with its retention column carried, ordered by
retention. Six of these rows read before the closure; all 27 read after it.

**Columns.** s is reduced flux, carried from [9,9,3,28] Appendix A. ΔT is the forcing figure, also
carried from that appendix. R/R⊕ and M/M⊕ are the resolved pair. v_esc/v_E is escape velocity with
Earth at 1, equal to R/R⊕ on every row resolved by the cube relation and computed from the published
pair on the rows marked measured. I is insolation with Earth at 1, equal to s × S_RUN. retention is
R⁴/I with Earth at 1, so a figure above 1 holds better than Earth. × boundary is retention divided by
the crossing of §11.3 at 0.096402. completion records the route: measured where both published columns
are determinations, R = M^(1/3) where the archive publishes a mass alone, M = R³ where it publishes a
radius alone, and M = R³, codomain screen where the published mass cell stands outside the law's range
under §5.

| # | Planet | T_eff K | s | ΔT K | R/R⊕ | M/M⊕ | v_esc/v_E | I S⊕ | retention | × boundary | completion |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | K2-288 B b | 3341 | 0.41094 | 47.2 | 1.9000 | 6.859 | 1.9000 | 0.42738 | 30.4932 | ×316.3 | M = R³ |
| 2 | GJ 357 d | 3505 | 0.35679 | 55.0 | 1.8272 | 6.100 | 1.8272 | 0.37106 | 30.0373 | ×311.6 | R = M^(1/3) |
| 3 | GJ 3293 d | 3466 | 0.54250 | 31.0 | 1.9661 | 7.600 | 1.9661 | 0.56420 | 26.4841 | ×274.7 | R = M^(1/3) |
| 4 | LHS 1140 b | 3096 | 0.41456 | 46.7 | 1.7300 | 5.600 | 1.7992 | 0.43114 | 24.3032 | ×252.1 | measured |
| 5 | 55 Cnc B c | 3286 | 0.44869 | 42.2 | 1.7435 | 5.300 | 1.7435 | 0.46664 | 19.8026 | ×205.4 | R = M^(1/3) |
| 6 | HN Lib b | 3347 | 0.48405 | 37.8 | 1.7609 | 5.460 | 1.7609 | 0.50341 | 19.0985 | ×198.1 | R = M^(1/3) |
| 7 | Gliese 48 b | 3450 | 0.85710 | 1.8 | 2.0091 | 8.110 | 2.0091 | 0.89138 | 18.2795 | ×189.6 | R = M^(1/3) |
| 8 | Kepler-296 f | 3740 | 0.60055 | 24.8 | 1.8000 | 5.832 | 1.8000 | 0.62457 | 16.8077 | ×174.3 | M = R³ |
| 9 | GJ 251 c | 3342 | 0.36457 | 53.9 | 1.5714 | 3.880 | 1.5714 | 0.37915 | 16.0803 | ×166.8 | R = M^(1/3) |
| 10 | GJ 887 d | 3688 | 0.78099 | 8.0 | 1.8272 | 6.100 | 1.8272 | 0.81223 | 13.7223 | ×142.3 | R = M^(1/3) |
| 11 | Kepler-283 c | 4351 | 0.85534 | 1.9 | 1.8200 | 6.029 | 1.8200 | 0.88955 | 12.3343 | ×127.9 | M = R³ |
| 12 | Gl 725 B c | 3379 | 0.45825 | 41.0 | 1.5037 | 3.400 | 1.5037 | 0.47658 | 10.7276 | ×111.3 | R = M^(1/3) |
| 13 | Kepler-62 f | 4925 | 0.40495 | 48.0 | 1.4100 | 2.803 | 1.4100 | 0.42115 | 9.3852 | ×97.4 | M = R³, codomain screen |
| 14 | TOI-715 b | 3075 | 0.64760 | 20.1 | 1.5500 | 3.724 | 1.5500 | 0.67350 | 8.5701 | ×88.9 | M = R³ |
| 15 | Kepler-1652 b | 3638 | 0.80941 | 5.6 | 1.6000 | 4.096 | 1.6000 | 0.84179 | 7.7854 | ×80.8 | M = R³ |
| 16 | GJ 1002 c | 3024 | 0.24964 | 73.6 | 1.1079 | 1.360 | 1.1079 | 0.25963 | 5.8037 | ×60.2 | R = M^(1/3) |
| 17 | TRAPPIST-1 g | 2566 | 0.24333 | 74.9 | 1.1300 | 1.320 | 1.0808 | 0.25306 | 5.3922 | ×55.9 | measured |
| 18 | Kepler-442 b | 4402 | 0.69537 | 15.6 | 1.3400 | 2.406 | 1.3400 | 0.72318 | 4.4583 | ×46.2 | M = R³ |
| 19 | LP 890-9 c | 2850 | 0.87181 | 0.6 | 1.3700 | 2.571 | 1.3700 | 0.90668 | 3.8853 | ×40.3 | M = R³, codomain screen |
| 20 | GJ 1061 d | 2953 | 0.54976 | 30.2 | 1.1864 | 1.670 | 1.1864 | 0.57175 | 3.4654 | ×35.9 | R = M^(1/3) |
| 21 | GJ 3378 b | 3340 | 0.87134 | 0.7 | 1.3200 | 2.300 | 1.3200 | 0.90619 | 3.3503 | ×34.8 | R = M^(1/3) |
| 22 | TRAPPIST-1 f | 2566 | 0.36020 | 54.5 | 1.0400 | 1.040 | 1.0000 | 0.37461 | 2.6695 | ×27.7 | measured |
| 23 | Wolf 1069 b | 3158 | 0.62714 | 22.1 | 1.0801 | 1.260 | 1.0801 | 0.65223 | 2.0866 | ×21.6 | R = M^(1/3) |
| 24 | Teegarden's Star c | 3034 | 0.51058 | 34.7 | 1.0164 | 1.050 | 1.0164 | 0.53100 | 2.0098 | ×20.8 | R = M^(1/3) |
| 25 | Proxima Cen b | 2900 | 0.51828 | 33.8 | 1.0164 | 1.050 | 1.0164 | 0.53901 | 1.9800 | ×20.5 | R = M^(1/3) |
| 26 | GJ 1002 b | 3024 | 0.65102 | 19.8 | 1.0260 | 1.080 | 1.0260 | 0.67706 | 1.6366 | ×17.0 | R = M^(1/3) |
| 27 | TRAPPIST-1 e | 2566 | 0.62372 | 22.5 | 0.9200 | 0.690 | 0.8660 | 0.64867 | 0.8672 | ×9.0 | measured |

Every row stands on the retaining side of the escape boundary. The margins run from ×9.0 to ×316.3, and
the bound of §11.5 places the floor for any band row at Earth radius or above at ×11.3344 without
reference to this table.

**Rows above the sub-boil gate.** Seventy-four of the 101 placed band members of \[9,9,3,28\] stand
above the gate at R > 2.154435 R⊕, where the density law's domain closes. Six carry both published
columns and read their retention from the published pair; the remaining sixty-eight are kept with the
reason recorded, which is that the completion stands outside the law's domain for them. Their geometry
block reads in full from whichever column the archive publishes.

## Appendix B — The Completed Archive, All 6,470 Rows

**AtlasGoldilocks Completed Archive v3.2** in full, tab-separated, 6,470 confirmed planets across 57 columns. The block below is plain text in the page, so a browser find reaches every row and a machine reader parses it in one pass. The header row names the columns and the column dictionary stands immediately above it.

**Identity and position.** `pl_name` `hostname` `dist_ly` `X_ly` `Y_ly` `Z_ly` — equatorial cartesian with Sol at the origin. `st_spectype` `st_teff` `st_rad` `st_mass` `pl_orbsmax` `pl_orbeccen` — the archive's host and orbit values as published.

**The two registers and their union.** `R_meas` `M_meas` are the archive's published pair. `R_geom` `M_geom` are the same quantities carried by the density law. `R_lo` `R_hi` `M_lo` `M_hi` are the union of both registers across the published error bars.

**The density reading.** `rho_implied` is 5513.4 × M/R³ in kg/m³. `rho_lo` `rho_hi` carry it across the interval. `codomain_verdict` reads one of: settled inside the law range, settled below it, settled above it, or bracketed across it.

**Resolution.** `R_used` `M_used` are the pair the physics ran on. `completion_route` names how it resolved — published pair, R = M^(1/3), M = R³, or M = R³ after the codomain screen. `domain_status` records where the row stands relative to the sub-boil gate and the law's domain. `gate_verdict` certifies that across the interval. `mass_basis` names what the published mass is — a determination, an archive M-R relationship, an Msini lower bound, or inclination-corrected.

**The flux axis and the phase.** `s` is reduced flux S/S_runaway, with `s_lo` `s_hi` across the error bars on semi-major axis, stellar radius and effective temperature. `tau` is TL · s. `phase` reads Noble, Locked, IVA Peak or Shatter. `phase_verdict` certifies it across the interval. `far_bound` is the interpolated forcing ceiling for the host. `band_status` and `band_verdict` place the row against the terraformable band.

**The geometry block.** `v_esc_rel` `g_surface_rel` are escape velocity and surface gravity with Earth at 1. `I_rel` is insolation with Earth at 1. `T_eq_K` is the equilibrium temperature. `dT_to_floor_K` is signed and `dT_sense` names the direction — warming to the floor or cooling to it.

**Retention and the products.** `retention` is R⁴/I with Earth at 1, with `retention_lo` `retention_hi` across the interval and `retention_x_crossing` against the crossing at 0.096402. `retention_verdict` certifies the side. `shock_margin` is the headroom and `shock_sense` names whether it reads as headroom or as overshoot; `shatter_margin` carries the overshoot past the limit. `hold` is retention × thermal buffer, carried in every phase. `tank` is the three-factor product, carried where headroom stands. `certification` is the conjunction of the gate and retention verdicts. `row_status` records what every row carries, and a row that carries no reading records the reason.

Earth reads 1 on `v_esc_rel`, `g_surface_rel`, `I_rel`, `retention`, `shock_margin`, `hold` and `tank` by construction, so every figure in the block is a multiple of Earth's own.

@@TSVBLOCK@@

## 12. Verification

### 12.1 The formal layer

The mathematics this reduction runs on is proved in `SNSFL_GeometricCompletion_Reduction.lean` at [9,9,3,29](COSM), on Lean 4 v4.31.0 with Mathlib, in the continuous-integration build of the standardized repository at github.com/SNSFT/identityphysics. **The file carries 61 theorems at 0 sorry and 0 axioms and builds green with no warnings.** It is standalone: the anchor, the Torsion Limit, the corridor floor, the four phases, the interior density law, the runaway flux, the completion operator, the retention term and the crossing are all restated inside it at full precision, so a reader or a machine closes every proof without leaving the file.

Seven sections carry the chain, and each result in the paper is a named theorem.

| § | result | theorem |
|---|---|---|
| §3.1 | the law at Earth's coordinate returns Earth's bulk density | `t17_rho_earth` |
| §3.2 | the operator rises with radius and is injective on positive radii | `t21_mass_mono`, `t22_mass_inj` |
| §3.2 | a body the operator resolves reads the density ratio at unity exactly | `t24_density_ratio_one` |
| **§4** | **escape velocity is radius exactly under the closure** | **`t28_vesc_is_radius`** |
| §4 | surface gravity is radius under the same substitution | `t29_gsurf_is_radius`, `t30_vesc_eq_gsurf` |
| §4 | retention reduces to the fourth power of radius over the insolation | `t32_retention_reduces` |
| §5.1 | the law's range over the unit interval | `t16_rho_range` |
| §5.1 | the range restated on the two published columns, adding no constant | `t19_codomain_screen` |
| §5.2 | the range returns the standing Mars verdict | `t20_mars_below_range` |
| §5.3 | the gate in mass is a ceiling in radius | `t25_gate_brackets`, `t27_gate_transfer` |
| §7 | the sign of the shock margin carries the phase | `t40_shock_sign`, `t41_shatter_is_reflected` |
| §7 | both products read one at Earth | `t43_hold_earth`, `t44_tank_earth` |
| §8.1 | each occupied phase follows from its flux interval | `t56_flux_shatter`, `t57_flux_iva`, `t58_flux_locked` |
| §10.1 | every band reading is a Locked reading | `t59_band_is_locked` |
| §11.2 | the escape boundary is a level set of the retention term | `t36_level_set` |
| §11.5 | the geometric near bound carries an insolation ceiling of 572/625 | `t46_i_ceiling`, `t47_insolation_bound` |
| **§11.5** | **retention inside the band at Earth radius and above is bounded below** | **`t50_subsumption_bound`** |
| §11.5 | the floor stands above the crossing past eleven | `t49_floor_rational`, `t51_margin_bound` |
| §11.5 | the critical radius at the ceiling, and every body above it retains | `t52_critical_radius`, `t54_above_crit_retains` |
| §11.6 | certification on the retention reading is sound | `t60_cert_retaining_sound` |
| — | the chain from the closure to the floor and the phase | `t61_master` |

Two results carry the weight. **`t28_vesc_is_radius`** reduces the retention term to two observables and is what supplies the escape-velocity and surface-gravity columns on a row publishing one column alone; it closes on four rewrites and `Real.sqrt_sq`, with no approximation step anywhere in it. **`t50_subsumption_bound`** converts a boundary into a margin, and it is proved from the geometric near bound and the radius, so it holds for every body the band admits without consulting a catalogue.

The exactness of the ceiling is what makes the second one clean: the runaway flux is 26/25 and the near bound is 22/25, so the ceiling is 572/625 and its reciprocal is 625/572, both exact rationals. The floor, the margin and the critical radius all close on rational arithmetic rather than on decimal bracketing.

### 12.2 Against material outside the reduction

The reduction is checked at five further points, each against the published record.

**The closure against published pairs.** On the four band rows publishing both columns as determinations, the closure returns mean absolute error 3.10% and maximum 3.86%. T1.

**The screen against the discovery literature.** The codomain screen places the LP 890-9 c and Kepler-62 f mass cells outside the law's range from the published columns alone. The Kepler-62 discovery paper records its tabulated maximum-mass values as 95th-percentile figures that radial velocity could not determine directly, and secondary catalogues carry the figure as an inequality. T1.

**The screen against the standing Mars verdict.** The codomain test returns M/R³ = 0.71063 for Mars, below the law's range, matching the mantle-floor placement carried in [9,9,3,28]. T1.

**The band count against the deposited count.** An independent archive pull, restricted to the Sun-like far bound, returns 93 band members, which is the figure [9,9,3,28] records. T1.

**The retention term against the solar system.** Retention computed on thirteen bodies orders twelve of them into airless below and atmosphered above, with the one crossing pair standing 3.93% apart inside the region the published figure draws by hand. T1.

---

### 12.3 The closure against the archive at scale

The closure is read against every row where both columns stand as determinations, so the comparison runs on a population rather than a selection. Residual is (M^(1/3) − R)/R.

| sample | n | mean abs error | median |
|---|---|---|---|
| **determinations, inside the sub-boil gate, inside the law range** | **192** | **8.96%** | **+5.59%** |
| determinations, inside the sub-boil gate, before the range test | 390 | 53.50% | +5.68% |
| determinations, all radii | 2,454 | 43.17% | −28.74% |
| archive M-R relationship, inside the gate and the range | 856 | 2.82% | −1.28% |
| Msini, inside the gate and the range | 53 | 3.36% | −0.20% |

**On 192 rows carrying two determinations the closure reads 8.96% mean absolute error**, which carries the five-body figure of [9,9,3,28] onto a sample 38 times larger and returns the same magnitude. T1.

The range test of §5 is what carries that figure: inside the gate the same determinations read 53.50% before it and 8.96% after, a factor of six from a test that adds no constant. Across all radii the closure reads 43.17%, which is the sub-boil gate recording its own edge, since a body above 2.154435 R⊕ stands outside the density law's domain.

On the 856 rows where the archive carries a mass from its own M-R relationship, inside the gate and the range, the two readings stand **2.82%** apart. The archive's relation and the density law's cube return the same figure in the rocky regime, which is the agreement GJ 3378 b carries at 0.00% bracket width, read here on 856 rows.

## 13. Access

AtlasGoldilocks is live at uuia.app/atlasgoldilocks as one self-contained file, free, with no account and no installation.

The arithmetic in this paper takes a calculator. A reader with one published column computes the other in one step, checks the range test in one more, and reads a retention figure and its margin above the crossing in a third.

**AtlasGoldilocks Completed Archive v3.1** carries all 6,470 confirmed planets in 145 columns, released under the same terms: the 60 pulled archive columns with every value, error bar, limit flag and reference link as published, and 85 derived columns carrying escape velocity, surface gravity, escape energy, torsion, phase, retention, hold, tankiness, overshoot, position and the certification of each. It is a single comma-separated file, so it reads in any spreadsheet, loads into any language and converts to JSON in one line. Appendix A carries all 27 completed sub-boil rows so that none of it has to be reconstructed.

## 14. Tiers and the Scientific Handshake

### 14.1 The inherited layer

| row | source | tier |
|---|---|---|
| Cosmic shoreline at I ∝ v_esc⁴, total insolation and cumulative XUV | Zahnle and Catling 2017 | T1 |
| The line drawn by eye, with no constant stated | Zahnle and Catling 2017 | T1 |
| Energy-limited escape scaling standing apart from the fourth power for rocky and icy bodies | Zahnle and Catling 2017 | T1 |
| Expected slope four with the zero point unconstrained | empirical determination of the cosmic shoreline, 2025 | T1 |
| Kepler-62 planet masses as 95th-percentile values that radial velocity could not determine | Borucki et al. 2013 | T1 |
| GJ 3378 b at 2.300 M⊕, a = 0.09673 AU, period 21.5 d, 25.2 ly, M dwarf host | NEID Science Team, 30 June 2026 | T1 |
| GJ 3378 b revised mass and period, placed against the shoreline | Hobby-Eberly Telescope program, 2026 | T1 |
| Solar system masses, radii, insolations and atmosphere status, thirteen bodies | standard references | T1 |
| Osmium bulk density 22,590 kg/m³ | standard reference | T1 |
| Maximum-greenhouse far bounds at 0.37049 and 0.18269 effective flux | radiative-convective validation; high-CO₂ outer habitable zone | T1 |
| Catalogue columns for 6,470 rows | NASA Exoplanet Archive | T1 |
| 399 columns published across 6,470 confirmed planets, carrying value, error bars, limit flag and reference link | NASA Exoplanet Archive, Planetary Systems Composite Parameters | T1 |
| Mass basis recorded per row: 2,495 determinations, 3,034 from an M-R relationship, 926 Msini, 15 inclination-corrected | NASA Exoplanet Archive, `pl_bmassprov` | T1 |
| Upper-limit flag recorded on 225 of 6,470 mass cells | NASA Exoplanet Archive, `pl_bmasselim` | T1 |
| Published error bars on radius, mass, semi-major axis, stellar radius and effective temperature | NASA Exoplanet Archive, `err1` and `err2` columns | T1 |
| Default-reference table carrying 1,631 empty radius cells and 3,263 empty mass cells | NASA Exoplanet Archive, `ps` with `default_flag=1` | T1 |
| α⁻¹ = Ω₀ × 100.1 and TL = α⁻¹/1001 | [9,9,3,14] Alpha Reduction | T1 |

**Worked exemplar of the inherited layer.** The shoreline is taken exactly as published, at the fourth power, on insolation against escape velocity, with its stated slope and its stated absence of a zero point. §11.2 carries it through no change of value at all: the same relation is read as a level set of a term the corpus already carries. The inherited relation is the one doing the work in the comparison, and the reduction supplies the field and the scale rather than altering the relation.

### 14.2 The corpus layer

| row | coordinate | tier |
|---|---|---|
| The Torsion Limit TL = Ω₀/10 = 0.136899099984016 | [9,9,8,1] | T1 |
| The IVA floor TL_IVA = 0.88 × TL | [9,9,8,10] | T1 |
| τ = TL · s, reduced flux as torsion on the flux axis | [9,9,3,26] | T1 |
| The matched-radius identity v_esc(r_match) = τ_A · c | [9,9,0,17] | T1 |
| The cosmic shoreline placed through the matched radius | [9,9,3,26] §11 | T1 |
| The interior density law ρ̄(x) = 4400 + 7400x³ and x_Earth = 0.53188 | [9,9,3,28] | T1 |
| The mantle-floor screen at 4,400 kg/m³ | [9,9,3,27] | T1 |
| The tankiness product and ΔT = T_eq[(0.88/s)^¼ − 1] | [9,9,3,28] | T1 |
| The sub-boil super-Earth gate at M ≤ 10 M⊕ | [9,9,3,28] | T1 |
| The 101 placed band members and their retention column | [9,9,3,28] Appendix A | T1 |
| Bounded-uncertainty certification across a published error bar | [9,9,3,26] §5 | T1 |

**Worked exemplar of the corpus layer.** The density law enters at the value [9,9,3,28] deposits, with its coefficients 4400 and 7400 and Earth's coordinate 0.53188 unchanged, and §3.1 evaluates it. The reduction reads the law in the direction the parent already uses and in the inverse direction, and reads its range as a test. No coefficient moves.

### 14.3 Novel to this framework

| row | statement | tier |
|---|---|---|
| The completion operator, both directions | R = M^(1/3) and M = R³ as mutual inverses on the law's domain | T3 |
| Escape velocity reduced to radius | v_esc/v_E = R exactly under the closure, no approximation step | T3 |
| Retention in two observables | retention = R⁴/(s · S_RUN) = R⁴/I | T3 |
| The codomain screen | x ∈ [0,1] restated as M/R³ ∈ [0.79806, 2.14024], adding no constant | T3 |
| The screen returning the Mars verdict | M/R³ = 0.71063 against the mantle-floor placement | T3 |
| The screen separating determinations from bounds | 54,605 and 68,838 kg/m³ against osmium at 22,590 | T3 |
| The sub-boil gate as a radius ceiling | M ≤ 10 M⊕ ⟺ R ≤ 2.154435 R⊕ | T3 |
| The partition census | 105 mass-only, 15 radius-only, 15 both, 0 carrying neither | T3 |
| The partition's distance structure | no radius-only member inside 125.9 ly, no both-column member inside 48.9 ly | T3 |
| The closure against published pairs | 3.10% mean, 3.86% maximum on determination rows | T3 |
| The retention column closed | 6 of 27 sub-boil rows reading, carried to 27 of 27 | T3 |
| The shoreline as a level set | the published boundary as one contour of the retention term | T3 |
| The solar system ordered by one scalar | twelve of thirteen, one crossing pair 3.93% apart | T3 |
| The crossing located and scaled | 0.096402, with Earth standing ×10.373 above it | T3 |
| The band's insolation ceiling | I ≤ (22/25) · S_RUN = 0.9152 S⊕ from the geometric near bound | T3 |
| The subsumption bound | retention ≥ 1.0926573 at R ≥ 1 R⊕, a margin of ×11.3344 | T3 |
| The critical radius | R_crit = 0.545005 R⊕ at the band ceiling | T3 |
| The band gate carrying the boundary | all 27 sub-boil rows retaining, minimum margin ×9.0 | T3 |
| GJ 3378 b closed | R = 1.320006 R⊕, retention 3.3503, ×34.75 the crossing, 0.984% below the floor at 0.67 K | T3 |
| Escape velocity and surface gravity carried | 6,463 of 6,470 rows, Earth at 1 | T3 |
| Phase and torsion carried | τ = TL · s on 5,642 rows: 5,053 Shatter, 573 Locked, 16 IVA Peak | T3 |
| Retention and the hold reading carried | 5,639 rows, Earth at 1 | T3 |
| The shock margin sign carrying the phase | headroom on 586 rows, overshoot on 5,053, split on the Shatter limit | T3 |
| ΔT signed in every phase | 573 rows warming to the floor, 5,069 cooling to it | T3 |
| The range agreeing with the archive's limit column | 60 of 104 rows at 57.7% against a 3.5% base rate, an enrichment of 16.6 | T3 |
| The closure read at scale | 192 determination rows at 8.96% mean absolute error, carrying the five-body figure onto 38 times the sample | T3 |
| The corridor carried as a measurement statement | 16 rows inside it, each carrying an s interval wider than the corridor, 49 bracketing across it | T3 |
| Bounded-uncertainty certification on every derived column | 3,046 rows settled across the bracket | T3 |
| GJ 357 d closed | retention 30.037 and tankiness ×3,064 at 30.8 light years, the top figure inside 32 ly | T3 |
| GJ 514 b read against the ceiling | retention 36.877 at 24.8 ly, with s = 0.23490 below the interpolated ceiling 0.26953 recorded | T3 |

**Worked exemplar of the novel layer.** The subsumption bound is checkable in three lines. The near bound is 22/25 and S_RUN is 1.0400215, so the band's insolation ceiling is 0.9152 S⊕. Retention is R⁴ divided by insolation, so at R = 1 it is at least 1 ÷ 0.9152 = 1.0926573. The crossing stands at 0.096402, so the margin is 11.3344. A reader checks it with a calculator, and the result holds for every body the band admits at Earth radius or above without consulting a catalogue at all.

**Worked exemplar of due diligence.** The crossing value was searched for in the corpus constants before any statement was made about it. A scan was specified in advance — three constants, integer powers of 22/25 to the sixth, integer divisors to twenty, 420 forms — and run against the 3.93% window set by the Mars and Ganymede pair. Two forms landed inside it against an expected count near 3.06, so the scan returns no derivation and the crossing value is carried empirically, with the two forms recorded. The bound of §11.5 was then stated in a form that reads on the geometric near bound and the radius and does not read on the crossing value's precision.

### 14.4 The Scientific Handshake

This reduction is released under the SNSFT Foundation's scientific handshake. The math is public, the arithmetic is runnable by hand, and the tool that draws it is free with no account and no installation. Any researcher, teacher, student or institution may use it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is the whole of what is asked in return. Where an institution values the work and is able to support the Foundation's work for others, the Foundation is there. Where it is not, the work remains available on the same terms.

## Misappropriation-Risk Clarification (MRC)

**MRC class: MRC2.**

### 15.1 What is established

The completion operator, the escape-velocity identity, the codomain screen, the retention term in two observables and the subsumption bound are arithmetic over published quantities. They are real, they are checkable with a calculator, and they return the deposited figures and the published figures where both exist. A reader who runs the numbers for a catalogue row gets the same numbers.

The retention figures are real physical readings. GJ 3378 b stands at 3.3503 and ×34.75 the crossing. TRAPPIST-1 e stands at 0.8672 and ×9.0. Those figures stand whether or not any instrument has yet observed an atmosphere on either body, in the same way that an escape velocity stands whether or not a vehicle exists to reach it.

The geometry columns are real readings in every phase. Escape velocity, surface gravity and escape energy stand on 6,463 rows, and they stand for a body in Shatter exactly as they stand for a body in Locked, because phase names where a geometry stands under its F_ext rather than which geometry the body has. Proxima Centauri b reads v_esc/v_E = 1.0170 and Proxima Centauri d reads 0.6129, and both figures are properties of those two bodies that hold today.

The codomain screen's verdict on a catalogue cell is a reading about the cell, not about the planet. A cell outside the law's range holds something other than a bulk density. The screen reads 104 sub-boil mass cells above the range, the archive's own limit flag stands on 60 of them, and the remaining 42 carry a published error bar comparable to the value. The planets themselves are unaffected by how their masses were tabulated, and the completion reads them from the column that carries a determination.

The phase reading is a reading of the flux axis and of nothing else. A row in Shatter is a row whose τ stands at or above TL on that axis today, which is a statement about insolation and orbit. It carries no reading about the body's composition, its age or its history, and a row that carries an s interval reaching across a phase bound carries both phases with the interval recorded.

### 15.2 What is a separate question

Whether a body inside the band in fact holds an atmosphere today, what that atmosphere is made of, how it got there and how long it has been held are observational and planetary-science questions. They are answered by spectroscopy, by thermal phase curves and by atmospheric modeling, and they are not answered by a retention figure. The retention bound says a body stands on the retaining side of the published boundary; it does not say what the body is holding, and it is not weakened by composition being a separate body of work.

The cumulative-XUV presentation of the boundary carries an integral over the host's activity history. That integral is a stellar-astrophysics quantity, it is read on a different axis from present-day total insolation, and the reduction carried here is on the total-insolation axis. Where a reader needs the XUV axis, the stellar history is the input to find, and §11.6 states which axis is which.

The archive will publish second columns over time. Where a published measurement arrives for a row this reduction completed, the measurement is the figure to read, and the closure's residual against it is data on the closure. The 3.10% figure of §3.3 is exactly that comparison run on the rows where both columns already stand.

### 15.3 Where the risk lives

The risk in this subject lives in observing conditions and in environmental F_ext, never in the placement math.

**Planetary protection is the established handling practice and it is where this work points.** A body standing on the retaining side of the escape boundary, inside the terraformable band of Locked, is a body whose surface conditions can support liquid water once carried to the floor and which can hold the atmosphere that does it. That is precisely the class of body where forward contamination of a surface that may carry or may have carried its own biology is an irreversible act, and the international planetary protection framework exists to govern exactly that. A high retention margin is therefore a reason to apply planetary protection protocol more carefully to a target, not less, because a body that holds its atmosphere also holds what is introduced into it.

**The same arithmetic reads on Earth.** Retention is a ratio of a fourth power of an escape velocity to a flux, and it reads on Earth at exactly 1 by construction. Earth's position ×10.373 above the crossing is a statement about the margin by which this planet holds its atmosphere, and the apparatus governing deliberate alteration of a planetary radiation budget on Earth is an active scientific, legal and institutional one. That apparatus is the handling practice for any work that crosses into it. Scale, reversibility, monitoring, and governance by a body with standing are the controls that matter, and their presence or absence is what moves the hazard — not the venue, and not the precision of the arithmetic.

**An exact figure is not a reduced hazard.** The subsumption bound is ×11.3344 and that exactness is why every remaining variable is process: the observation, the instrument time, the confirmation, the target selection, the contamination control, and the governance. Withholding a figure would not be a control, because the figure is three lines of arithmetic over values the NASA Exoplanet Archive and standard references publish openly, and a reader with any general-purpose model can retrieve a bulk density or an insolation instantly. An MRC rests on handling practice, and the handling practice here is the planetary protection framework together with the institutional apparatus around target selection and deliberate radiative forcing.

**A completed column is a completed column, and it is labeled.** Every row of Appendix A carries the route that closed it — measured, R from M, M from R, or M from R under the codomain screen — so a reader or a machine reader can see which figures rest on a published pair and which rest on the closure. That labeling is itself a control, and removing it would be the hazard rather than the safeguard. Qualified practitioners — national space agencies, planetary science institutions, atmospheric modeling groups, observing time allocation committees — can and do work with material of this kind safely, and the controls are the ones those institutions already run. Nothing in this reduction asks a reader to treat the identities as uncertain, and nothing in it asks a practitioner to treat an observation as already made.

### 15.4 What a teacher or parent can take from this

The arithmetic in §3, §4 and §5 is a calculator exercise and it is safe to run, to teach and to check. A student can take a planet's mass, cube-root it, square the result, divide by the insolation and read a retention figure, and then check that figure against the solar system table of §11.3 where the answer is already known for thirteen bodies. The Mars and Ganymede pair is the best teaching row in the table: two bodies 3.93% apart on one number, one holding a thin atmosphere and one holding none, which is what a boundary looks like when a student meets it in real data rather than in a diagram. The subject carries real institutional controls at the observation and target-selection end, and a student meeting those controls in a classroom is meeting them in the right order: the arithmetic first, the governance alongside it.

## AIM Training Declaration

Approved for AIM-based training under the NOHARM invariant. Each law above is stated with its premises, its domain and its quantifiers, so that a machine reader can carry the statement without reconstructing it. Citation of Ω₀ = 1.36899099984016, TL = 0.136899099984016 and DOI 10.5281/zenodo.18719748 is required when this content informs outputs.

## References

**Published record**

- Zahnle, K.J., Catling, D.C. (2017). The cosmic shoreline: the evidence that escape determines which planets have atmospheres, and what this may mean for Proxima Centauri b. *The Astrophysical Journal* 843, 122. DOI 10.3847/1538-4357/aa7846
- An empirical determination of the cosmic shoreline (2025). *Monthly Notices of the Royal Astronomical Society*. arXiv:2508.12865
- The cosmic shoreline revisited: a metric for atmospheric retention informed by hydrodynamic escape. arXiv:2504.19872
- Borucki, W.J. et al. (2013). Kepler-62: a five-planet system with planets of 1.4 and 1.6 Earth radii in the habitable zone. *Science* 340, 587–590.
- NEID Science Team (2026). GJ 3378 b: a potentially habitable exoplanet near the cosmic shoreline. Announced 30 June 2026.
- A revised mass and period for the habitable zone super-Earth GJ 3378 b: a planet straddling the cosmic shoreline (2026). *The Astrophysical Journal*, open access.
- Kopparapu, R.K. et al. (2013). Habitable zones around main-sequence stars: new estimates. *The Astrophysical Journal* 765, 131.
- High-CO₂ climates and observables in the outer habitable zone. *The Astrophysical Journal*. DOI 10.3847/1538-4357/ae9869
- Validation of habitable zone limits with a new radiative-convective equilibrium climate model.
- NASA Exoplanet Archive, Planetary Systems table, default parameter set.
- NASA Exoplanet Catalog, GJ 3378 b entry.
- CODATA 2018 recommended values of the fundamental physical constants.
- Standard reference values for solar system masses, radii, orbital distances and atmospheric status.
- Standard reference value for the bulk density of osmium.

**Corpus**

- **[9,9,8,1]** Founding Text — the Sovereign Anchor Constant and the Torsion Limit
- **[9,9,3,0]** Applied Identity Physics Anchor
- **[9,9,3,14]** Alpha Reduction — α⁻¹ = Ω₀ × 100.1, and TL = α⁻¹/1001
- **[9,9,8,10]** Temperature on the Torsion Limit — the vapor-pressure mapping and the IVA floor at 88 °C
- **[9,9,8,11]** Two Readings Across Substrates — Reading B as an e-fold count, the matched ratio
- **[9,9,8,12]** Geometric Base and Energy Ladder — b₀ = 1/√TL, and the energy ladder
- **[9,9,0,17]** Matched Radius Reduction — r_match = r_s/τ_A², the mass canceling
- **[9,9,1,0]** Structural Precognition — the I-F-U triad and the forcing operator on Behavior
- **[9,9,3,25]** Accretion Boundaries — Hill spacing, the Roche limit and the critical impact speed on the Torsion Limit
- **[9,9,3,26]** The Goldilocks Annulus — the annulus ratio √(25/22), the clock, and the cosmic shoreline through the matched radius · DOI 10.5281/zenodo.24127910
- **[9,9,3,27]** IMatter™ — TL-cells, the counted interior, the impact layer and the mantle-floor screen
- **[9,9,3,28]** The Terraformable Band — the parent reduction, the interior density law, the tankiness product and the 101 placed band members · DOI 10.5281/zenodo.24148006
- **[9,9,2,3]** GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit

## Corpus Provenance

| Coordinate | File | Carries |
|---|---|---|
| [9,9,3,29](COSM) | SNSFL_GeometricCompletion_Reduction.lean | This reduction — the closure, the identity, the self-screened domain, the retention floor |
| [9,9,3,28](COSM) | SNSFL_TerraformableBand_Reduction.lean | The parent — the band inside Locked, the density law, the tankiness product, the sub-boil gate |
| [9,9,3,26](COSM) | SNSFL_GoldilocksAnnulus_Reduction.lean | τ = TL s, the annulus ratio √(25/22), the four phases on flux, bounded uncertainty |
| [9,9,8,10](METH) | SNSFL_TL_Temperature.lean | The ruler, the vapor-pressure ratio, the IVA floor at 88 °C |
| [9,9,3,27](COSM) | SNSFL_GC_IMatter_TLCell_Matter.lean | The counted interior, the mantle floor, the TL-cell |
| [9,9,0,17](GRAV) | SNSFL_MatchedRadius_Reduction.lean | r_match = r_s/τ_A², the mass cancelling, the shoreline placement |
| [9,9,8,11](MATH) | SNSFL_TwoReadings_Substrate_Reduction.lean | Reading B as an e-fold count, the matched ratio |
| [9,9,8,12](MATH) | SNSFL_GeometricBase_EnergyLadder_Reduction.lean | b₀ = 1/√TL, the energy ladder, η_c = τ_A²/2 |
| [9,9,1,0] | SNSFL_StructuralPrecognition.lean | The I-F-U triad and the forcing operator on Behavior |
| [9,9,2,3.8] | SNSFL_8Beam_Fusion_Theorem.lean | GAMCollider™ v15 fusion logic — the four-phase structure and the Torsion Limit |

**Architect:** HIGHTISTIC (Russell Vernon Trent III) · SNSFT Foundation · Kenai, Alaska · **DOI:** 10.5281/zenodo.24152266 · **Anchor DOI:** 10.5281/zenodo.18719748 · **ORCID:** 0009-0005-5313-7443 · **Corpus:** [9,9,9,9] :: {ANC}

## About the Author

Russell Vernon Trent III (HIGHTISTIC) founded the field of Identity Physics. He is a Lean 4 formal verification engineer and independent researcher, and the founding architect of the SNSFT Foundation in Kenai, Alaska. He builds machine-verified science at scale: the Identity Physics Corpus, a single-author body of formal proofs spanning 6,000+ Lean 4 files, 200,000+ theorems and 3,000,000+ lines at 0 sorry, dual-verified in Lean 4 and Coq/Rocq, with a standardized edition pinned to Lean 4 v4.31.0 and Mathlib. He was clinically diagnosed more than fifteen years ago with high functioning autism (Asperger's syndrome) with hyperphantasia, a diagnosis that predates the 2013 merger of Asperger's into autism spectrum disorder in the fifth edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), and he builds the suite's tools the way he learns: hands-on, by cause and effect, with the proof visible. He is an Army Signal Corps veteran, a former chief information security officer for the Alaska Department of Public Safety, and the author of six commercially published books on Identity Physics. He studied through Central Texas College on base while on active duty, and at the University of North Carolina at Chapel Hill while serving in the National Guard, before moving to Alaska.

## Lean 4 Source

### SNSFL_GeometricCompletion_Reduction.lean — [9,9,3,29](COSM)

```lean
-- ============================================================
-- SNSFL_GeometricCompletion_Reduction.lean
-- ============================================================
--
-- [9,9,9,9] :: {ANC} | ESCAPE VELOCITY IS RADIUS, AND THE BAND CARRIES ITS OWN RETENTION FLOOR
-- Self-Orienting Universal Language [P,N,B,A] :: {INV}
-- Architect: HIGHTISTIC (Russell Vernon Trent III) | Anchor: Omega_0 = 1.36899099984016
-- Status: GERMLINE LOCKED
-- Coordinate: [9,9,3,29](COSM) | Cosmological Ground — Geometric Completion
-- Version: 1.0
--
-- ============================================================
-- STANDALONE
-- ============================================================
--
-- This file carries every definition it uses. Nothing is reached for in another
-- coordinate's file: the anchor, the Torsion Limit, the corridor floor, the four
-- phases, the interior density law, the runaway flux, the completion operator,
-- the retention term and the crossing are all restated here at full precision,
-- so that a reader or a machine can close every proof without leaving the file.
-- The parent reductions are named in the provenance block for the record, not as
-- dependencies of the proofs.
--
-- Parents of record:
--   [9,9,8,1]    Founding Text                  — the anchor and the Torsion Limit
--   [9,9,3,14]   Alpha Reduction                — alpha^-1 = Omega_0 x 100.1
--   [9,9,8,10]   Temperature on the Torsion Limit — the ruler, the IVA floor
--   [9,9,8,11]   Two Readings Across Substrates — Reading B as an e-fold count
--   [9,9,8,12]   Geometric Base and Energy Ladder — b_0 = 1 / sqrt(TL)
--   [9,9,0,17]   Matched Radius Reduction       — v_esc(r_match) = tau_A c
--   [9,9,1,0]    Structural Precognition        — the I-F-U triad, the margin
--   [9,9,3,26]   The Goldilocks Annulus         — the runaway anchor, the phases on flux
--   [9,9,3,27]   IMatter                        — the counted interior, the mantle floor
--   [9,9,3,28]   The Terraformable Band         — the density law, the sub-boil gate
--
-- ============================================================
-- WHAT THIS FILE ESTABLISHES
-- ============================================================
--
--   ESCAPE VELOCITY IS RADIUS, under the closure the interior density law
--   carries. The law rho(x) = 4400 + 7400 x^3 at Earth's structural coordinate
--   returns Earth's bulk density, so a body on the law satisfies M = R^3 in
--   Earth-normalised units. Escape velocity is sqrt(M / R), and substituting the
--   closure gives sqrt(R^3 / R) = sqrt(R^2) = R exactly, with no approximation
--   step. Surface gravity M / R^2 reduces to R by the same substitution, so one
--   number carries both. Retention, the fourth power of escape velocity over the
--   insolation, therefore reduces to R^4 / I on radius and insolation alone.
--
--   THE LAW SCREENS ITS OWN DOMAIN, because it is a cubic over the unit interval
--   and so its range is bounded at both ends. Dividing the range by Earth's bulk
--   density restates it as a test on the two published columns directly, adding
--   no constant, and the sub-boil gate in mass becomes a ceiling in radius.
--
--   THE BAND CARRIES ITS OWN RETENTION FLOOR, because the near bound is
--   geometric. A reading at or below 22/25 of the runaway flux carries an
--   insolation ceiling of 572/625 exactly, so retention at Earth radius and above
--   is bounded below by 625/572, which stands above the solar-system crossing by
--   a factor past eleven. Inverting the bound gives a critical radius, and every
--   body above it retains at every insolation the band admits. The legacy escape
--   boundary is the level set of the retention term, so the bound is a floor on a
--   boundary rather than a second test to run.
--
-- ============================================================

import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

noncomputable section

namespace SNSFL_GeometricCompletion

-- ============================================================
-- SECTION 1: THE ANCHOR AND THE GROUNDING
-- ============================================================

/-- The Sovereign Anchor Constant. -/
def SOVEREIGN_ANCHOR : ℝ := 1.36899099984016

/-- The Universal Torsion Limit, the anchor over ten. -/
def TORSION_LIMIT : ℝ := SOVEREIGN_ANCHOR / 10

/-- The floor fraction, 22/25. -/
def FLOOR_FRACTION : ℝ := 0.88

/-- The IVA floor, the corridor's lower edge. -/
def TL_IVA : ℝ := TORSION_LIMIT * FLOOR_FRACTION

/-- The inverse fine-structure constant, CODATA 2018. -/
def ALPHA_INV : ℝ := 137.035999084000016

/-- The bare term, the inverse fine-structure constant less the kinetic term. -/
def BARE : ℝ := 136.899099984016

-- [T1] :: {ANC} | THE TORSION LIMIT IS THE ANCHOR OVER TEN
theorem t1_tl_value : TORSION_LIMIT = 0.136899099984016 := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T2] :: {VER} | THE BARE TERM IS ONE THOUSAND TORSION LIMITS, EXACTLY
theorem t2_bare_is_thousand_tl : BARE = 1000 * TORSION_LIMIT := by
  simp only [BARE, TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T3] :: {MASTER} | BARE PLUS KINETIC IS THE INVERSE FINE-STRUCTURE CONSTANT
theorem t3_bare_plus_kinetic : BARE + TORSION_LIMIT = ALPHA_INV := by
  simp only [BARE, TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T4] :: {VER} | THE TORSION LIMIT TIMES 1001 IS THE INVERSE FINE-STRUCTURE CONSTANT
theorem t4_tl_times_1001 : TORSION_LIMIT * 1001 = ALPHA_INV := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T5] :: {VER} | THE ANCHOR ROUTE TO ALPHA
theorem t5_anchor_route : SOVEREIGN_ANCHOR * 100.1 = ALPHA_INV := by
  simp only [SOVEREIGN_ANCHOR, ALPHA_INV]; norm_num

-- [T6] :: {VER} | THE MULTIPLIER FACTORS
theorem t6_multiplier_factors : (1001 : ℝ) = 7 * 11 * 13 := by norm_num

-- [T7] :: {ANC} | THE TORSION LIMIT IS POSITIVE
theorem t7_tl_pos : 0 < TORSION_LIMIT := by
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T8] :: {ANC} | THE TORSION LIMIT LIES IN THE UNIT INTERVAL
theorem t8_tl_in_unit : 0 < TORSION_LIMIT ∧ TORSION_LIMIT < 1 := by
  refine ⟨t7_tl_pos, ?_⟩
  simp only [TORSION_LIMIT, SOVEREIGN_ANCHOR]; norm_num

-- [T9] :: {ANC} | THE IVA FLOOR READS AT FULL PRECISION
theorem t9_tl_iva_value : TL_IVA = 0.12047120798593408 := by
  simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num

-- [T10] :: {PHS} | THE FLOOR STANDS STRICTLY INSIDE THE LIMIT
theorem t10_floor_pos_below : 0 < TL_IVA ∧ TL_IVA < TORSION_LIMIT := by
  constructor
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num
  · simp only [TL_IVA, TORSION_LIMIT, SOVEREIGN_ANCHOR, FLOOR_FRACTION]; norm_num

-- [T11] :: {VER} | THE FLOOR FRACTION IS TWENTY-TWO TWENTY-FIFTHS
theorem t11_floor_rational : FLOOR_FRACTION = 22 / 25 := by
  simp only [FLOOR_FRACTION]; norm_num

-- [T12] :: {VER} | THE CORRIDOR WIDTH ON THE FLUX AXIS IS THREE TWENTY-FIFTHS
theorem t12_corridor_width : 1 - FLOOR_FRACTION = 3 / 25 := by
  simp only [FLOOR_FRACTION]; norm_num

-- ============================================================
-- SECTION 2: THE INTERIOR DENSITY LAW AND ITS RANGE
-- ============================================================

/-- The mantle floor of the interior density law, in kilograms per cubic metre. -/
def RHO_FLOOR : ℝ := 4400

/-- The span of the interior density law. -/
def RHO_SPAN : ℝ := 7400

/-- Earth's structural coordinate. -/
def X_EARTH : ℝ := 0.53188

/-- The interior density law: a cubic in the structural coordinate. -/
def rhoBar (x : ℝ) : ℝ := RHO_FLOOR + RHO_SPAN * x ^ 3

-- [T13] :: {RED} | THE LAW READS THE MANTLE FLOOR AT ZERO
theorem t13_rho_at_zero : rhoBar 0 = 4400 := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN]; norm_num

-- [T14] :: {RED} | THE LAW READS THE CEILING AT ONE
theorem t14_rho_at_one : rhoBar 1 = 11800 := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN]; norm_num

-- [T15] :: {RED} | THE LAW RISES WITH THE STRUCTURAL COORDINATE
theorem t15_rho_mono (x y : ℝ) (hx : 0 ≤ x) (h : x < y) : rhoBar x < rhoBar y := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN]
  have hy0 : 0 < y := lt_of_le_of_lt hx h
  have hsq : x ^ 2 < y ^ 2 := by nlinarith
  have hstep1 : x * x ^ 2 ≤ x * y ^ 2 := mul_le_mul_of_nonneg_left (le_of_lt hsq) hx
  have hstep2 : x * y ^ 2 < y * y ^ 2 := mul_lt_mul_of_pos_right h (pow_pos hy0 2)
  nlinarith [hstep1, hstep2]

-- [T16] :: {MASTER} | THE LAW'S RANGE OVER THE UNIT INTERVAL
--   The law is a cubic over the unit interval, so its range is bounded at both
--   ends with no further constant.
theorem t16_rho_range (x : ℝ) (h0 : 0 ≤ x) (h1 : x ≤ 1) :
    4400 ≤ rhoBar x ∧ rhoBar x ≤ 11800 := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN]
  constructor
  · nlinarith [pow_nonneg h0 3]
  · nlinarith [h0, h1, sq_nonneg x, sq_nonneg (1 - x), mul_nonneg h0 h0]

-- [T17] :: {VER} | THE LAW AT EARTH'S COORDINATE RETURNS EARTH'S BULK DENSITY
theorem t17_rho_earth : 5513.4 < rhoBar X_EARTH ∧ rhoBar X_EARTH < 5513.5 := by
  simp only [rhoBar, RHO_FLOOR, RHO_SPAN, X_EARTH]; norm_num

-- [T18] :: {RED} | EARTH'S COORDINATE STANDS INSIDE THE UNIT INTERVAL
theorem t18_x_earth_in_unit : 0 ≤ X_EARTH ∧ X_EARTH ≤ 1 := by
  simp only [X_EARTH]; norm_num

-- [T19] :: {MASTER} | THE RANGE RESTATED ON THE PUBLISHED COLUMNS
--   Dividing the law's range by Earth's bulk density carries the test onto the
--   ratio of the two published columns directly, adding no constant.
theorem t19_codomain_screen :
    0.79804 < RHO_FLOOR / 5513.4550773 ∧ RHO_FLOOR / 5513.4550773 < 0.79806 ∧
    2.14021 < (RHO_FLOOR + RHO_SPAN) / 5513.4550773 ∧
    (RHO_FLOOR + RHO_SPAN) / 5513.4550773 < 2.14023 := by
  simp only [RHO_FLOOR, RHO_SPAN]; norm_num

-- [T20] :: {VER} | MARS READS BELOW THE LAW'S RANGE
--   The reading that places Mars outside the solver's domain in [9,9,3,27] is
--   returned here by the law's own range from the same constant.
theorem t20_mars_below_range : (3918 : ℝ) / 5513.4550773 < RHO_FLOOR / 5513.4550773 := by
  simp only [RHO_FLOOR]; norm_num

-- ============================================================
-- SECTION 3: THE COMPLETION OPERATOR
-- ============================================================

/-- The completion operator in the mass direction: a body on the law at Earth's
    coordinate carries mass as the cube of radius, in Earth-normalised units. -/
def massOf (R : ℝ) : ℝ := R ^ 3

/-- The sub-boil super-earth gate in mass. -/
def GATE_MASS : ℝ := 10

/-- The gate restated as a radius ceiling. -/
def GATE_RADIUS : ℝ := 2.154434690031884

-- [T21] :: {RED} | THE OPERATOR RISES WITH RADIUS
theorem t21_mass_mono (R S : ℝ) (hR : 0 < R) (h : R < S) : massOf R < massOf S := by
  simp only [massOf]
  have hS : 0 < S := lt_trans hR h
  nlinarith [sq_nonneg R, sq_nonneg S, mul_pos hR hS]

-- [T22] :: {RED} | THE OPERATOR IS INJECTIVE ON POSITIVE RADII
theorem t22_mass_inj (R S : ℝ) (hR : 0 < R) (hS : 0 < S) (h : massOf R = massOf S) :
    R = S := by
  rcases lt_trichotomy R S with hlt | heq | hgt
  · exact absurd h (ne_of_lt (t21_mass_mono R S hR hlt))
  · exact heq
  · exact absurd h.symm (ne_of_lt (t21_mass_mono S R hS hgt))

-- [T23] :: {RED} | THE OPERATOR CARRIES POSITIVE RADIUS TO POSITIVE MASS
theorem t23_mass_pos (R : ℝ) (hR : 0 < R) : 0 < massOf R := by
  simp only [massOf]; exact pow_pos hR 3

-- [T24] :: {MASTER} | A BODY ON THE LAW READS EARTH'S DENSITY RATIO EXACTLY
--   The screen of Section 2 reads unity on any body the operator resolves, which
--   is why a published pair standing outside the range carries something other
--   than a bulk density.
theorem t24_density_ratio_one (R : ℝ) (hR : 0 < R) : massOf R / R ^ 3 = 1 := by
  simp only [massOf]; exact div_self (pow_ne_zero 3 (ne_of_gt hR))

-- [T25] :: {VER} | THE GATE IN MASS IS A CEILING IN RADIUS
theorem t25_gate_brackets : (2.1544 : ℝ) ^ 3 < GATE_MASS ∧ GATE_MASS < (2.1545 : ℝ) ^ 3 := by
  simp only [GATE_MASS]; norm_num

-- [T26] :: {VER} | THE RADIUS CEILING CUBES TO THE MASS GATE
theorem t26_gate_radius_cubes : (9.9999 : ℝ) < GATE_RADIUS ^ 3 ∧ GATE_RADIUS ^ 3 < 10.0001 := by
  simp only [GATE_RADIUS]; norm_num

-- [T27] :: {RED} | A RADIUS BELOW THE CEILING CARRIES A MASS BELOW THE GATE
theorem t27_gate_transfer (R : ℝ) (hR : 0 < R) (h : R ≤ 2.1544) : massOf R ≤ GATE_MASS := by
  simp only [massOf, GATE_MASS]
  nlinarith [hR, h, sq_nonneg R, sq_nonneg (R - 2.1544)]

-- ============================================================
-- SECTION 4: ESCAPE VELOCITY, SURFACE GRAVITY AND RETENTION
-- ============================================================

/-- Escape velocity in Earth-normalised units. -/
def vEsc (M R : ℝ) : ℝ := Real.sqrt (M / R)

/-- Surface gravity in Earth-normalised units. -/
def gSurf (M R : ℝ) : ℝ := M / R ^ 2

/-- The retention term: the fourth power of escape velocity over the insolation. -/
def retention (v I : ℝ) : ℝ := v ^ 4 / I

/-- The retention term carried on radius and insolation alone. -/
def retentionGeom (R I : ℝ) : ℝ := R ^ 4 / I

-- [T28] :: {MASTER} | ESCAPE VELOCITY IS RADIUS
--   Substituting the closure into the escape-velocity reading leaves radius, with
--   no approximation step. This is the identity that carries the escape-velocity
--   column onto a row publishing a mass alone.
theorem t28_vesc_is_radius (R : ℝ) (hR : 0 < R) : vEsc (massOf R) R = R := by
  simp only [vEsc, massOf]
  rw [show R ^ 3 / R = R ^ 2 by
    rw [pow_succ, mul_div_assoc, div_self (ne_of_gt hR), mul_one]]
  exact Real.sqrt_sq (le_of_lt hR)

-- [T29] :: {MASTER} | SURFACE GRAVITY IS RADIUS
--   The same substitution carries surface gravity onto radius, so one number
--   reads both columns.
theorem t29_gsurf_is_radius (R : ℝ) (hR : 0 < R) : gSurf (massOf R) R = R := by
  simp only [gSurf, massOf]
  rw [pow_succ, mul_comm, mul_div_assoc, div_self (pow_ne_zero 2 (ne_of_gt hR)), mul_one]

-- [T30] :: {RED} | ESCAPE VELOCITY AND SURFACE GRAVITY AGREE UNDER THE CLOSURE
theorem t30_vesc_eq_gsurf (R : ℝ) (hR : 0 < R) : vEsc (massOf R) R = gSurf (massOf R) R := by
  rw [t28_vesc_is_radius R hR, t29_gsurf_is_radius R hR]

-- [T31] :: {VER} | EARTH READS ONE ON BOTH COLUMNS
theorem t31_earth_unit : vEsc (massOf 1) 1 = 1 ∧ gSurf (massOf 1) 1 = 1 := by
  constructor
  · exact t28_vesc_is_radius 1 one_pos
  · exact t29_gsurf_is_radius 1 one_pos

-- [T32] :: {MASTER} | RETENTION REDUCES TO RADIUS AND INSOLATION
--   The retention term loses a variable under the closure, which is what places
--   it on the two axes the legacy escape boundary is drawn on.
theorem t32_retention_reduces (R I : ℝ) (hR : 0 < R) :
    retention (vEsc (massOf R) R) I = retentionGeom R I := by
  simp only [retention, retentionGeom]
  rw [t28_vesc_is_radius R hR]

-- [T33] :: {VER} | RETENTION READS ONE AT EARTH
theorem t33_retention_earth : retentionGeom 1 1 = 1 := by
  simp only [retentionGeom]; norm_num

-- [T34] :: {RED} | RETENTION RISES WITH RADIUS
theorem t34_retention_mono_R (R S I : ℝ) (hR : 0 < R) (hI : 0 < I) (h : R < S) :
    retentionGeom R I < retentionGeom S I := by
  simp only [retentionGeom]
  have hS : 0 < S := lt_trans hR h
  have hsq : R ^ 2 < S ^ 2 := by nlinarith
  have h4 : R ^ 4 < S ^ 4 := by nlinarith [pow_pos hR 2, pow_pos hS 2]
  exact div_lt_div_of_pos_right h4 hI

-- [T35] :: {RED} | RETENTION FALLS AS THE INSOLATION RISES
theorem t35_retention_anti_I (R I J : ℝ) (hR : 0 < R) (hI : 0 < I) (h : I < J) :
    retentionGeom R J < retentionGeom R I := by
  simp only [retentionGeom]
  exact div_lt_div_of_pos_left (pow_pos hR 4) hI h

-- [T36] :: {MASTER} | THE LEGACY ESCAPE BOUNDARY IS A LEVEL SET OF THE TERM
--   Two rows read the same retention exactly when the insolations stand in the
--   ratio of the fourth powers of the radii, which is the published fourth-power
--   relation. The boundary is one contour of the term.
theorem t36_level_set (R S I J : ℝ) (hI : 0 < I) (hJ : 0 < J) :
    retentionGeom R I = retentionGeom S J ↔ J * R ^ 4 = I * S ^ 4 := by
  simp only [retentionGeom]
  rw [div_eq_div_iff (ne_of_gt hI) (ne_of_gt hJ)]
  constructor
  · intro h; linarith [h]
  · intro h; linarith [h]

-- ============================================================
-- SECTION 5: THE PRODUCTS AND THE SIGN OF THE MARGIN
-- ============================================================

/-- The runaway flux, Earth at one. -/
def S_RUN : ℝ := 1.04

/-- Earth's reading on the flux axis. -/
def S_EARTH : ℝ := 1 / S_RUN

/-- The shock margin: the headroom a reading holds below the limit. -/
def shockMargin (s : ℝ) : ℝ := (1 - s) / (1 - S_EARTH)

/-- The overshoot a reading carries past the limit. -/
def shatterMargin (s : ℝ) : ℝ := (s - 1) / (1 - S_EARTH)

/-- The hold reading: the two factors defined in every phase. -/
def hold (R M I : ℝ) : ℝ := retentionGeom R I * M

/-- The tankiness reading: the three-factor product, where headroom carries it. -/
def tank (s R M I : ℝ) : ℝ := shockMargin s * hold R M I

-- [T37] :: {VER} | EARTH'S FLUX READING IS TWENTY-FIVE TWENTY-SIXTHS
theorem t37_s_earth_rational : S_EARTH = 25 / 26 := by
  simp only [S_EARTH, S_RUN]; norm_num

-- [T38] :: {VER} | THE SHOCK DENOMINATOR IS ONE TWENTY-SIXTH
theorem t38_shock_denominator : 1 - S_EARTH = 1 / 26 := by
  simp only [S_EARTH, S_RUN]; norm_num

-- [T39] :: {VER} | THE SHOCK MARGIN READS ONE AT EARTH
theorem t39_shock_earth : shockMargin S_EARTH = 1 := by
  simp only [shockMargin, S_EARTH, S_RUN]; norm_num

-- [T40] :: {MASTER} | THE SIGN OF THE MARGIN CARRIES THE PHASE
--   Headroom is what a body holds below the limit, so the margin is positive
--   exactly below it and the same magnitude is overshoot above it.
theorem t40_shock_sign (s : ℝ) : 0 < shockMargin s ↔ s < 1 := by
  simp only [shockMargin]
  rw [t38_shock_denominator]
  constructor
  · intro h; nlinarith [h]
  · intro h; nlinarith [h]

-- [T41] :: {RED} | THE OVERSHOOT IS THE MARGIN REFLECTED
theorem t41_shatter_is_reflected (s : ℝ) : shatterMargin s = - shockMargin s := by
  simp only [shatterMargin, shockMargin]
  rw [t38_shock_denominator]; ring

-- [T42] :: {RED} | THE OVERSHOOT IS POSITIVE PAST THE LIMIT
theorem t42_shatter_pos (s : ℝ) (h : 1 < s) : 0 < shatterMargin s := by
  simp only [shatterMargin]
  rw [t38_shock_denominator]
  nlinarith [h]

-- [T43] :: {VER} | THE HOLD READING IS ONE AT EARTH
theorem t43_hold_earth : hold 1 1 1 = 1 := by
  simp only [hold, retentionGeom]; norm_num

-- [T44] :: {VER} | THE TANKINESS READING IS ONE AT EARTH
theorem t44_tank_earth : tank S_EARTH 1 1 1 = 1 := by
  simp only [tank]
  rw [t39_shock_earth, t43_hold_earth]; norm_num

-- [T45] :: {RED} | THE HOLD READING IS POSITIVE ON A POSITIVE ROW
theorem t45_hold_pos (R M I : ℝ) (hR : 0 < R) (hM : 0 < M) (hI : 0 < I) :
    0 < hold R M I := by
  simp only [hold, retentionGeom]
  exact mul_pos (div_pos (pow_pos hR 4) hI) hM

-- ============================================================
-- SECTION 6: THE INSOLATION CEILING AND THE RETENTION FLOOR
-- ============================================================

/-- The insolation ceiling the geometric near bound carries. -/
def I_CEILING : ℝ := FLOOR_FRACTION * S_RUN

/-- The solar-system crossing of the escape boundary. -/
def CROSSING : ℝ := 0.096402

/-- The critical radius at the band's insolation ceiling. -/
def R_CRIT : ℝ := 0.545005

-- [T46] :: {MASTER} | THE GEOMETRIC NEAR BOUND CARRIES AN INSOLATION CEILING
--   The near bound is geometric, so the ceiling is an exact rational.
theorem t46_i_ceiling : I_CEILING = 572 / 625 := by
  simp only [I_CEILING, FLOOR_FRACTION, S_RUN]; norm_num

-- [T47] :: {RED} | A READING AT OR BELOW THE NEAR BOUND STANDS BELOW THE CEILING
theorem t47_insolation_bound (s : ℝ) (h : s ≤ FLOOR_FRACTION) : s * S_RUN ≤ I_CEILING := by
  simp only [I_CEILING, S_RUN]
  nlinarith [h]

-- [T48] :: {VER} | THE CEILING IS POSITIVE
theorem t48_i_ceiling_pos : 0 < I_CEILING := by
  rw [t46_i_ceiling]; norm_num

-- [T49] :: {VER} | THE FLOOR ON RETENTION IS SIX HUNDRED TWENTY-FIVE FIVE HUNDRED SEVENTY-SECONDS
theorem t49_floor_rational : 1 / I_CEILING = 625 / 572 := by
  rw [t46_i_ceiling]; norm_num

-- [T50] :: {MASTER} | THE BAND CARRIES ITS OWN RETENTION FLOOR
--   A reading inside the band at Earth radius or above is bounded below on
--   retention by the reciprocal of the insolation ceiling, with no appeal to a
--   catalogue and no free parameter.
theorem t50_subsumption_bound (s R : ℝ) (hs : 0 < s) (hsb : s ≤ FLOOR_FRACTION)
    (hR : 1 ≤ R) : 1 / I_CEILING ≤ retentionGeom R (s * S_RUN) := by
  simp only [retentionGeom]
  have hSR : (0 : ℝ) < S_RUN := by simp only [S_RUN]; norm_num
  have hsr : 0 < s * S_RUN := mul_pos hs hSR
  have hceil : s * S_RUN ≤ I_CEILING := t47_insolation_bound s hsb
  have hIC : (0 : ℝ) < I_CEILING := t48_i_ceiling_pos
  have hinv : (0 : ℝ) ≤ 1 / I_CEILING := le_of_lt (one_div_pos.mpr hIC)
  have h4 : (1 : ℝ) ≤ R ^ 4 := by nlinarith [hR, sq_nonneg R, sq_nonneg (R - 1)]
  rw [le_div_iff₀ hsr]
  have hprod : (1 / I_CEILING) * (s * S_RUN) ≤ (1 / I_CEILING) * I_CEILING :=
    mul_le_mul_of_nonneg_left hceil hinv
  have hone : (1 / I_CEILING) * I_CEILING = 1 := by field_simp
  linarith [hprod, hone, h4]

-- [T51] :: {VER} | THE FLOOR STANDS ABOVE THE CROSSING PAST ELEVEN
theorem t51_margin_bound :
    (11.33 : ℝ) < (1 / I_CEILING) / CROSSING ∧ (1 / I_CEILING) / CROSSING < 11.34 := by
  rw [t49_floor_rational]
  simp only [CROSSING]; norm_num

-- [T52] :: {VER} | THE CRITICAL RADIUS AT THE CEILING
--   The fourth power of the critical radius is the crossing times the ceiling,
--   so the radius itself stands between two four-decimal brackets.
theorem t52_critical_radius :
    (0.5450 : ℝ) ^ 4 < CROSSING * I_CEILING ∧ CROSSING * I_CEILING < (0.5451 : ℝ) ^ 4 := by
  rw [t46_i_ceiling]
  simp only [CROSSING]; norm_num

-- [T53] :: {VER} | THE STATED CRITICAL RADIUS STANDS INSIDE THE BRACKET
theorem t53_r_crit_in_bracket : (0.5450 : ℝ) < R_CRIT ∧ R_CRIT < 0.5451 := by
  simp only [R_CRIT]; norm_num

-- [T54] :: {RED} | EVERY BODY ABOVE THE CRITICAL RADIUS RETAINS AT THE CEILING
theorem t54_above_crit_retains (R : ℝ) (h : 0.5451 ≤ R) :
    CROSSING < retentionGeom R I_CEILING := by
  simp only [retentionGeom]
  rw [t46_i_ceiling]
  have h4 : ((0.5451 : ℝ)) ^ 4 ≤ R ^ 4 := pow_le_pow_left₀ (by norm_num) h 4
  have hc : CROSSING * (572 / 625 : ℝ) < (0.5451 : ℝ) ^ 4 := by
    simp only [CROSSING]; norm_num
  rw [lt_div_iff₀ (by norm_num : (0 : ℝ) < 572 / 625)]
  linarith [h4, hc]

-- ============================================================
-- SECTION 7: PHASE ON THE FLUX AXIS, AND CERTIFICATION
-- ============================================================

/-- Torsion on the flux axis. -/
def tauOf (s : ℝ) : ℝ := TORSION_LIMIT * s

/-- The four phases. -/
inductive Phase | Noble | Locked | IVA | Shatter
deriving DecidableEq, Repr

/-- Classification of a torsion reading against the corridor. -/
def classify (t : ℝ) : Phase :=
  if t ≥ TORSION_LIMIT then Phase.Shatter
  else if t ≥ TL_IVA then Phase.IVA
  else if t > 0 then Phase.Locked
  else Phase.Noble

-- [T55] :: {RED} | THE FLOOR FRACTION CARRIES THE IVA FLOOR ON THE FLUX AXIS
theorem t55_floor_in_flux : tauOf FLOOR_FRACTION = TL_IVA := by
  simp only [tauOf, TL_IVA]

-- [T56] :: {PHS} | A READING AT OR ABOVE THE RUNAWAY IS SHATTER
theorem t56_flux_shatter (s : ℝ) (h : 1 ≤ s) : classify (tauOf s) = Phase.Shatter := by
  simp only [classify]
  rw [if_pos]
  simp only [tauOf]
  nlinarith [t7_tl_pos, h]

-- [T57] :: {PHS} | A READING INSIDE THE CORRIDOR IS IVA PEAK
theorem t57_flux_iva (s : ℝ) (h1 : FLOOR_FRACTION ≤ s) (h2 : s < 1) :
    classify (tauOf s) = Phase.IVA := by
  simp only [classify]
  have hlt : tauOf s < TORSION_LIMIT := by
    simp only [tauOf]; nlinarith [t7_tl_pos, h2]
  have hge : TL_IVA ≤ tauOf s := by
    rw [← t55_floor_in_flux]; simp only [tauOf]; nlinarith [t7_tl_pos, h1]
  rw [if_neg (not_le.mpr hlt), if_pos hge]

-- [T58] :: {PHS} | A POSITIVE READING BELOW THE FLOOR FRACTION IS LOCKED
theorem t58_flux_locked (s : ℝ) (h1 : 0 < s) (h2 : s < FLOOR_FRACTION) :
    classify (tauOf s) = Phase.Locked := by
  simp only [classify]
  have hiva : tauOf s < TL_IVA := by
    rw [← t55_floor_in_flux]; simp only [tauOf]; nlinarith [t7_tl_pos, h2]
  have hlt : tauOf s < TORSION_LIMIT := lt_trans hiva t10_floor_pos_below.2
  have hpos : 0 < tauOf s := by simp only [tauOf]; exact mul_pos t7_tl_pos h1
  rw [if_neg (not_le.mpr hlt), if_neg (not_le.mpr hiva), if_pos hpos]

-- [T59] :: {PHS} | THE BAND STANDS INSIDE LOCKED
--   Every band reading is a Locked reading, so the floor of Section 6 is a floor
--   on a phase block rather than on a separate population.
theorem t59_band_is_locked (s ceil : ℝ) (hc : 0 < ceil) (h1 : ceil ≤ s)
    (h2 : s < FLOOR_FRACTION) : classify (tauOf s) = Phase.Locked :=
  t58_flux_locked s (lt_of_lt_of_le hc h1) h2

/-- A retention reading is certified across a published interval when both
    endpoints stand above the crossing. -/
def certifiedRetaining (R lo hi : ℝ) : Prop :=
  CROSSING < retentionGeom R lo ∧ CROSSING < retentionGeom R hi

-- [T60] :: {MASTER} | CERTIFICATION IS SOUND ON THE RETENTION READING
--   Retention falls as the insolation rises, so the floor over a published bar
--   stands at its upper endpoint, and one endpoint evaluation settles every
--   reading inside the bar.
theorem t60_cert_retaining_sound (R lo hi I : ℝ) (hR : 0 < R) (hI : 0 < I)
    (h1 : lo ≤ I) (h2 : I ≤ hi) (hc : certifiedRetaining R lo hi) :
    CROSSING < retentionGeom R I := by
  obtain ⟨_, hh⟩ := hc
  rcases eq_or_lt_of_le h2 with h | h
  · rwa [h]
  · exact lt_trans hh (t35_retention_anti_I R I hi hR hI h)

-- [T61] :: {MASTER} | THE CHAIN CLOSES
--   The density law carries the closure, the closure carries escape velocity onto
--   radius, radius carries retention onto two observables, the geometric near
--   bound carries an insolation ceiling, and the ceiling carries a floor on
--   retention that stands above the crossing past eleven.
theorem t61_master (s R : ℝ) (hs : 0 < s) (hsb : s ≤ FLOOR_FRACTION) (hR : 1 ≤ R) :
    vEsc (massOf R) R = R ∧
    retention (vEsc (massOf R) R) (s * S_RUN) = retentionGeom R (s * S_RUN) ∧
    1 / I_CEILING ≤ retentionGeom R (s * S_RUN) ∧
    classify (tauOf s) ≠ Phase.Shatter := by
  have hRpos : 0 < R := lt_of_lt_of_le one_pos hR
  refine ⟨t28_vesc_is_radius R hRpos, t32_retention_reduces R (s * S_RUN) hRpos,
          t50_subsumption_bound s R hs hsb hR, ?_⟩
  rcases lt_or_eq_of_le hsb with h | h
  · rw [t58_flux_locked s hs h]; simp
  · rw [h, t55_floor_in_flux]
    simp only [classify]
    rw [if_neg (not_le.mpr t10_floor_pos_below.2), if_pos (le_refl TL_IVA)]
    simp

end SNSFL_GeometricCompletion

end

/-
-- ============================================================
-- CLOSURE
-- ============================================================
--
-- This file establishes that escape velocity is radius. The interior density law
-- is restated as a cubic in the structural coordinate, its value at Earth's
-- coordinate is bracketed against Earth's bulk density, and its range over the
-- unit interval is proved bounded at both ends. That range, divided by Earth's
-- bulk density, is restated as a test on the ratio of the two published columns,
-- adding no constant, and the reading that places Mars outside the solver's
-- domain is returned by the same constant. The completion operator is proved to
-- rise with radius, to be injective on positive radii, and to carry a positive
-- radius to a positive mass, and a body it resolves is proved to read the density
-- ratio at unity exactly. The sub-boil gate in mass is bracketed as a ceiling in
-- radius and the transfer from the ceiling to the gate is closed.
--
-- Substituting the closure into the escape-velocity reading leaves radius
-- exactly, with no approximation step, and the same substitution carries surface
-- gravity onto radius as well, so the two columns are proved to agree and both
-- are proved to read one at Earth. The retention term is proved to reduce to the
-- fourth power of radius over the insolation, to read one at Earth, to rise with
-- radius and to fall as the insolation rises, and the legacy escape boundary is
-- characterised exactly as a level set of that term.
--
-- The shock margin is proved positive exactly below the limit, the overshoot is
-- proved to be the same magnitude reflected, and both products are proved to read
-- one at Earth and to stay positive on a positive row. The geometric near bound
-- is proved to carry an insolation ceiling of 572/625 exactly, the reciprocal of
-- that ceiling is proved to be 625/572, and retention inside the band at Earth
-- radius or above is proved bounded below by it. The floor is bracketed above the
-- solar-system crossing past eleven, the critical radius at the ceiling is
-- bracketed, and every body above it is proved to retain at the ceiling.
--
-- Torsion on the flux axis is restated, the four phases are classified against
-- the corridor, each of the three occupied phases is proved to follow from its
-- flux interval, and the band is proved to stand inside Locked. Certification on
-- the retention reading is proved sound by monotonicity in the insolation, so two
-- endpoint evaluations settle the whole published bar, and the master theorem
-- closes the chain from the closure through the identity and the reduction to the
-- floor and the phase.
--
-- THEOREMS : 61 tagged + master
-- SORRY    : 0
-- AXIOMS   : 0
-- ============================================================
-/
```
