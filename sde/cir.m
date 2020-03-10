classdef cir < drift_diffusion_sde
  properties (Access = public)
    kappa;
    theta;
    eta;
  endproperties
  
  methods (Access = public)
    function sde = cir(x0, kappa, theta, eta)
      sde.x0 = x0;
      sde.drift = @(x) kappa * (theta - x);
      sde.diffusion = @(x) eta * sqrt(x);
      sde.ddiffusion = @(x) 0.5 * eta / sqrt(x);
      sde.kappa = kappa;
      sde.theta = theta;
      sde.eta = eta;
    endfunction
  endmethods
endclassdef

