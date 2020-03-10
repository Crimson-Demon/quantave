classdef drift_diffusion_sde
  properties (Access = public)
    x0;
    drift;
    diffusion;
    ddiffusion;
  endproperties

  methods (Access = protected)
    function sde = drift_diffusion_sde(x0, drift, diffusion, ddiffusion)
      if (nargin == 0)
        return;
      endif
      sde.x0 = x0;
      sde.drift = drift;
      sde.diffusion = diffusion;
      sde.ddiffusion = ddiffusion;
    endfunction
  endmethods
endclassdef