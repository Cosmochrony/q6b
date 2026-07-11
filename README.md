This repository contains the source of the **Q6b Cosmochrony paper**
[*Effective Spacetime Geometry from Admissible Non-Injective Projection*](out/Q6b.pdf).

Q6b is the geometric companion to Q6a. While Q6a derives the gauge group from fibre
invariants of the non-injective projection, Q6b analyses the base geometric structure —
the effective Lorentzian manifold on which those gauge fields propagate — and closes the
geometric chain from the admissibility filter to the Einstein tensor.

## Conceptual Overview

The paper proceeds in four logical steps:

1. **Import of the Q5a–Q5b geometric chain**
   The admissibility filter $\Pi_q$ converges, under Q5a's Mosco hypotheses, to an
   effective operator $\mathcal{L}_{\mathrm{eff}}$ on
   $\mathbb{R}_\tau \times \mathrm{Heis}_3(\mathbb{R})$.
   Q5b Theorems 5.2 and 6.1 then extract a four-dimensional effective metric tensor
   $g^{\mu\nu}(x) \propto A^{\mu\nu}(x)$ of Lorentzian signature $(-,+,+,+)$.

2. **Effective metric and Hamilton–Jacobi propagation**
   Once $g^{\mu\nu}$ is reconstructed from the principal symbol, the associated eikonal
   equation $g^{\mu\nu}\partial_\mu S\,\partial_\nu S = 0$ is the Hamilton–Jacobi
   equation for massless propagation in the emergent geometry.
   This describes the characteristic propagation structure in the already-projected
   geometric regime, not the admissibility layer itself.

3. **Schwarzschild geometry from flux conservation**
   In the presence of a localised stationary obstruction to the admissibility flow with
   spherical symmetry, flux conservation through admissible spheres forces the unique
   stationary exterior solution to be the Schwarzschild metric
   $ds^2 = -(1-r_s/r)\,dt^2 + (1-r_s/r)^{-1}dr^2 + r^2\,d\Omega^2$.
   The horizon $r = r_s$ arises as a degeneracy of the principal symbol, not as a
   singularity of the underlying admissible structure.

4. **Einstein equations as consistency conditions**
   Via the spectral entropy functional $S_\Pi[g] = \frac{1}{2}\log\det'\mathcal{L}_\Pi$
   (Gravity paper), the renormalised metric variation produces the Einstein tensor
   $G_{\mu\nu}$ at the infrared two-derivative order.
   The Einstein equations emerge as consistency conditions of the emergent geometry, not
   as microscopic laws.

## Core Results

1. **Effective metric with Lorentzian signature**
   The admissibility filter $\Pi_q$ selects degrees of freedom whose continuum limit
   carries a Lorentzian metric with signature $(-,+,+,+)$ (Q5b Theorems 5.2, 6.1).

2. **Fully determined co-metric**
   With Q8 (Casimir rigidity: $A_z = 2$), Q10 ($A_H = 2$ via spectral universality),
   and Q11 (temporal Casimir rigidity: $A_\tau = 2$), the effective co-metric is now
   fully explicit:
   $$g^{\mu\nu} = \mathrm{diag}(-2,\,2,\,2,\,2).$$

3. **Schwarzschild metric from bounded admissibility** *(Theorem)*
   Under spherical symmetry, stationarity, and no additional microscopic scales, the
   unique stationary exterior solution of the admissible geometry is the Schwarzschild
   metric. Uniqueness follows from flux conservation and the Born–Infeld admissibility
   bound, not from symmetry alone.

4. **Horizon as projection degeneracy**
   The Schwarzschild horizon is the locus where the principal symbol of
   $\mathcal{L}_{\mathrm{eff}}$ becomes degenerate. The underlying admissible structure
   remains regular; only its projection develops a degeneracy at $r = r_s$.

5. **Einstein equations as consistency conditions**
   The Gravity paper establishes $G_{\mu\nu}$ as the infrared response of the spectral
   entropy functional. Q6b provides the explicit co-metric that enters this variation,
   supplying the middle link of the chain.

6. **Chain closure**
   The geometric chain
   $$\Pi_q \;\xrightarrow{\text{Q5a}}\; \mathcal{L}_\Pi \;\xrightarrow{\text{Q5b}}\;
   g^{\mu\nu} \;\xrightarrow{\text{Gravity}}\; G_{\mu\nu}$$
   is closed by Q6b, which identifies the symbol-extracted metric of Q5b with the one
   entering the variational argument of the Gravity paper.

## Conditional Status

The results are **conditional on Q5a** (hypotheses H1, H-w, H-E1, Conjecture C), which
provide the Mosco convergence of the effective operator. The [H-lift] hypothesis,
previously carried from Q5b, has been **proved unconditionally in Q9** via generator
suppression at rate $O(q^{-1/2})$, removing that source of conditionality entirely.

Remaining conditionality: rigorous proofs of H1, H-w, H-E1, Conjecture C in Q5a would
make all geometric results of Q6b fully unconditional.

## What This Paper Does Not Assume

- No background spacetime or metric postulated
- No independent metric field equations (Einstein equations are derived, not assumed)
- No free parameters beyond the Born–Infeld saturation constant $c_{\mathrm{BI}}$
- No energy-momentum tensor postulated (arises from localised obstructions)
- No cosmological constant or charge added by hand
- Hamilton–Jacobi formalism appears as an effective description, not as a primitive layer

## Keywords

Non-injective projection, emergent spacetime, admissibility, effective metric,
Lorentzian geometry, sub-Riemannian geometry, Heisenberg group, principal symbol,
Schwarzschild solution, Einstein equations, spectral geometry, induced gravity

## Repository Contents

```
q6b/
├── out/           # Compiled paper PDF
├── tex/           # LaTeX sources
├── zenodo.json    # Zenodo metadata
└── README.md
```

## Links

- Preprint: https://doi.org/10.5281/zenodo.20257944
- Website: https://cosmochrony.org/science/spectral/program/q6/b/

## Citation

If you reference this work, please cite:

> J. Beau, *Effective Spacetime Geometry from Admissible Non-Injective Projection*, 2026.
> doi:10.5281/zenodo.20257944

## Acknowledgements

Portions of the editorial refinement benefited from iterative interactions with large
language models used as analytical assistants for exploring alternative formulations,
checking internal consistency, and improving clarity. All claims, interpretations, and
final formulations remain the sole responsibility of the author.
