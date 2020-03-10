classdef bs_pde < drift_diffusion_pde
  methods
    function pde = bs_pde(r, sigma)
      pde.drift = @(s) r*s;
      pde.diffusion = @(s) 0.5 * sigma^2 * s^2;
      pde.source = @(s) 0;
      pde.zero = @(s) -r;
    endfunction
  endmethods
endclassdef
