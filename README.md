# quantave

## Introduction

Octave library for quantitative and computational finance, developed as part of my masters project on "American Option Valuation in Stochastic Volatility using Multilevel Monte Carlo".

## Functionality
The following libraries are part of the project:

### PDE library
- Drift-diffusion PDE abstract class with heat equation and BS PDE classes for modelling.
- Solver utilising FDM (forward/backwar Euler, Crank-Nicolson, ADI).

### SDE library
- Drift-diffusion SDE abstract class with GBM and CIR process classes for modelling.
- SDE simulation class utilising numeric schemes (Euler-Maruyama, Milstein).

### Quant library
- Market model abstract class with Black-Scholes, Heston and SABR model classes for modelling.
- Vanilla option abstract class with European and American option classes for modelling.
- Longstaff-Schwarz algorithm for American Option valuation.