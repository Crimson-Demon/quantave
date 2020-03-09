classdef drift_diffusion
  properties (Access = public)
    x0;
    drift;
    diffusion;
    ddiffusion;
  endproperties

  methods (Access = public)
    function sde = drift_diffusion(x0, drift, diffusion, ddiffusion)
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