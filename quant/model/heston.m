classdef heston
  properties (Access = public)
    s0;
    v0;
    mu;
    kappa;
    theta;
    volvol;
    asset_sde;
    vol_sde;
  endproperties

  methods (Access = public)
    function model = heston(s0, v0, mu, kappa, theta, volvol)
      model.s0 = s0;
      model.v0 = v0;
      model.mu = mu;
      model.kappa = kappa;
      model.theta = theta;
      model.volvol = volvol;
      model.asset_sde = drift_diffusion(s0, @(s) mu * s, @(s, v) s * sqrt(v));
      model.vol_sde = cir(v0, kappa, theta, volvol);
    endfunction
  endmethods
endclassdef