classdef sabr
  properties (Access = public)
    s0;
    v0;
    asset_sde;
    vol_sde;
    alpha;
    beta;
    rho;
  endproperties

  methods (Access = public)
    function model = sabr(s0, v0, mu, alpha, beta, rho, kappa, theta)
      model.s0 = s0;
      model.v0 = v0;
      model.alpha = alpha;
      model.beta = beta;
      model.rho = rho;
      model.asset_sde = drift_diffusion(s0, @(s) mu * s, @(s, v) v * s.^beta);
      model.vol_sde = drift_diffusion(v0, @(v) kappa * (theta - v), @(v) alpha * v);
    endfunction
  endmethods
endclassdef
