classdef heat_eq < drift_diffusion_pde
  methods
    function pde = heat_eq(diffusion)
      pde.drift = @(x) 0;
      pde.diffusion = diffusion;
      pde.source = @(x) 0;
      pde.zero = @(x) 0;
    endfunction
  endmethods
endclassdef
