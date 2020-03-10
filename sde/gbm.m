classdef gbm < drift_diffusion_sde
  properties (Access = public)
    mu;
    sigma;
  endproperties

  methods (Access = public)
    function sde = gbm(x0, mu, sigma)
      sde.x0 = x0;
      sde.drift = @(s) mu * s;
      sde.diffusion = @(s) sigma * s;
      sde.ddiffusion = @(s) sigma;
      sde.mu = mu;
      sde.sigma = sigma;
    endfunction
    
    function val = solve(sde, t, wt)
      val = sde.s0 * exp((sde.mu - 0.5 * sde.sigma^2) * t + sde.sigma * wt);
    endfunction
  endmethods
endclassdef