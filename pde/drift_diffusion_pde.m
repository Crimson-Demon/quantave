classdef drift_diffusion_pde
  properties
    drift;
    diffusion;
    source;
    zero;
  endproperties

  methods
    function pde = drift_diffusion_pde(drift, diffusion, source, zero)
      pde.drift = drift;
      pde.diffusion = diffusion;
      pde.source = source;
      pde.zero = zero;
    endfunction 
  endmethods
endclassdef
