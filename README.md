# Q6b — Toward Effective Spacetime Geometry from Admissible Non-Injective Projection

This repository contains the source of the **Q6b Cosmochrony paper**
*Toward Effective Spacetime Geometry from Admissible Non-Injective Projection: A Conditional Rank-Three Co-Metric
and Newtonian Exterior*.

Q6b assembles the effective spacetime geometry that the admissibility framework of Foundation M yields
conditionally, on a supplied Heisenberg carrier. Every step of the chain
$\Pi_q \to \mathcal{L}_\Pi \to g^{\mu\nu}_{(3)} \to g^{\mu\nu} \to G_{\mu\nu}$ carries its own condition, and the
paper states each one.

## Inputs and their status

- **Spatial limit, [H-L] (not established).** Q5a shows the following.
  - With the pipeline's initial vector, the canonical filtration is a toric Fourier window.
  - For uniformly bounded weights, the published admissibility forms converge to the zero form.
  - Under [H-depth] and [H-w′], no common scalar normalisation produces a non-trivial toric differential operator.

  The operator $\mathcal{L}_\Pi = -A\partial_x^2$ therefore enters only as Q5b's hypothesis [H-L].
- **Lifting hypothesis, [H-lift] (open).** Q9 gives sufficient conditions for a kinetic Mosco limit and does not
  discharge it.
- **Heisenberg carrier (supplied).** The Heisenberg–Schrödinger representation $\pi_c$ is a supplied input, and it
  is distinct from its Weil action. The admissibility axioms do not select it.

## Results

1. **Rank-three co-metric (conditional on [H-L] and [H-lift]).** In the left-invariant frame, Q5b gives
   $g^{\mu\nu} = \mathrm{diag}(-A_\tau, A_H, A_H, 0)$, with the temporal term stipulated. No lower-order term fills
   the central slot. A full-rank co-metric needs a new operator with a central term of homogeneous degree four and
   the length scale it carries; deriving such an extension from the admissibility structure is the open problem
   Q5b-O2. No value of $A_\tau$, $A_H$ or $A_z$ is established.
2. **Signature on the non-degenerate block (conditional on [H-hyp$_{\mathrm{red}}$]).** The block
   $(-A_\tau, A_H, A_H)$ has signature $(-,+,+)$ with $\tau$ time-like. The signs are stipulated rather than
   derived. The signature $(-,+,+,+)$ holds only for a supplied extension, for instance
   $\mathrm{diag}(-A_\tau, A_H, A_H, A_z)$ with $A_z > 0$.
3. **Newtonian exterior and conditional Schwarzschild form (Proposition 3.2).** The setting is a supplied rank-four
   extension that is spherically symmetric and asymptotically flat in the exterior of a localised stationary
   obstruction.
   - (i) Flux conservation gives the Newtonian profile $\Phi = \Phi_0 - C/r$.
   - (ii) The Schwarzschild form, with $r_s = 2C$, follows only with exterior homogeneity $A_r \equiv 1$ and, as
     external dynamical input, the closure $f_t f_r = 1$ and the exact temporal identification $f_t = 1 + 2\Phi$
     with $\Phi_0 = 0$ (Born–Infeld paper, §8).

   No uniqueness claim is made: Schwarzschild–de Sitter and Reissner–Nordström exteriors are excluded only by the
   supplied inputs.
4. **The required extension.** No extension diagonal in the left-invariant frame qualifies: its spatial part is
   a left-invariant Riemannian metric, which is not flat and, being homogeneous, not asymptotically flat. An
   asymptotically flat exterior grows as $r^3$, whereas the Carnot structure grows as $r^4$, so a qualifying
   extension would not preserve the large-scale Carnot structure. Flat extensions with these properties exist, for
   example the flat metric of the exponential chart. Whether the admissibility structure supplies one is open.
5. **Horizon (interpretation).** In the conditional Schwarzschild exterior, the degeneracy at $r = r_s$ is
   chart-relative; it is not an invariant breakdown of the effective operator.
6. **Relation to the Einstein equations (conditional).**
   - The Gravity paper works with $A_g = -\nabla_g^2$ on Riemannian backgrounds. Its Einstein coefficient is a
     matching datum, and so are its sign and Newton's constant.
   - The spectral-stationarity paper gives
     $G_{\mu\nu} + \Lambda_{\mathrm{ren}} g_{\mu\nu} = 8\pi G_N T^{(\Pi)}_{\mu\nu}$, assuming an infrared response
     and an effective matter functional.
   - Applying either to the effective geometry would need the supplied extension and a Lorentzian formulation.

**Interpretive outlook.** The conditional results are compatible with reading spacetime geometry as an effective
propagation structure rather than as primitive substrate data; they do not show that admissibility selects it.

## Open directions

- Establishing or replacing [H-L] (question Q5).
- Q5b-O1, i.e. [H-lift].
- Q5b-O2: a full-rank extension derived from the admissibility structure with the exterior properties.
- Q5b-O3: the coefficient values.
- Additional scales in the exterior.

## Keywords

Non-injective projection, emergent spacetime, admissibility, effective metric, Lorentzian geometry, sub-Riemannian
geometry, Heisenberg group, principal symbol, Schwarzschild solution, Einstein equations, spectral geometry, induced
gravity.

## Repository Contents

```
q6b/
├── tex/         # LaTeX sources (main, cosmochrony-bibliography.bib, external-refs.bib)
├── compile.sh   # Build script (output in out/, not versioned)
├── zenodo.json  # Zenodo deposition metadata
├── CITATION.cff
└── README.md
```

## Links

- 🔗 DOI: [10.5281/zenodo.19744005](https://doi.org/10.5281/zenodo.19744005)
- 🌐 Website: https://cosmochrony.org/science/emergent-geometry/q6/b/

## Citation

> J. Beau, *Toward Effective Spacetime Geometry from Admissible Non-Injective Projection: A Conditional Rank-Three
> Co-Metric and Newtonian Exterior*, Zenodo, 2026. DOI: 10.5281/zenodo.19744005.

## Acknowledgements

Portions of the editorial refinement benefited from iterative interactions with large language models used as
analytical assistants for exploring alternative formulations, checking internal consistency, and improving clarity.
All claims, interpretations, and final formulations remain the sole responsibility of the author.
